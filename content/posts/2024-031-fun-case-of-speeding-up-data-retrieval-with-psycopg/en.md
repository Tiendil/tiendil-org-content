---
title = "Fun case of speeding up data retrieval from PostgreSQL with Psycopg"
tags = ["practice", "development", "python", "backend", "feeds-fun", "interesting", "databases"]
published_at = "2024-11-22T12:00:00+00:00"
seo_description = "Unexpected pitfalls when working with Psycopg and how to overcome them, illustrated on a specific example."
seo_image = "cover.png"
---

/// brigid-images
src = "./cover.png"
caption = "Speed of data retrieval from the PostgreSQL for each of the optimizations. In percentages of the base implementation speed. Note how the number of retrieved rows has little effect on execution time."
///

Once in a year or two, I have to remember that Python, umm... is not C++. It usually happens suddenly, like this time.

~~After a thoughtful analysis~~ I got tired of waiting 10 seconds for news to load on [feeds.fun](https://feeds.fun/), so I rolled up my sleeves and started optimizing. I almost jumped into an epic refactoring, but remembered just in time: measure first, then cut. In this case, the advice is literal — I took a profiler — [py-spy](https://github.com/benfred/py-spy) — and checked what exactly was causing the slowdown

It turned out that the problem is not in entire logic, but in a very specific place where the code extracts ~100000 rows from a PostgreSQL table, plus-minus 20000. The indexes are in place, I ran the tests with a database on a RAM disk, so everything should have been fine from the database side.

Don't be surprised by such a number of rows:

- Firstly, I have a large news flow.
- Secondly, for each news item, the reader currently assigns about 100 tags.

Armed with py-spy and the sources of [psycopg](https://github.com/psycopg/psycopg), I went through three stages of optimization, **reducing the function execution time approximately 4x solely by changing the format of the requested columns in SELECT query  and the result processing code**.

In the following text, I will tell you about the sequence of curious discoveries I made in the process.

/// attention | Attention!
This post is not a study of Psycopg or Python performance, but a description of a specific experience with a specific task and specific data.
///

<!-- more -->

## Оригинальная задача

Сокращённое описание таблицы, в которой хранятся данные (убрал лишнее, чтобы не ехало форматирование):

```
ffun=# \d o_relations
                                       Table "public.o_relations"
   Column   |           Type           | Collation | Nullable |
------------+--------------------------+-----------+----------+
 id         | bigint                   |           | not null |
 entry_id   | uuid                     |           | not null |
 tag_id     | bigint                   |           | not null |
 created_at | timestamp with time zone |           | not null |
Indexes:
    "o_relations_pkey" PRIMARY KEY, btree (id)
    "idx_o_relations_entry_id_tag_id" UNIQUE, btree (entry_id, tag_id)
```

**Задача проблемной Python функции:** извлечь все `tag_id` для переданного списка `entry_id` и вернуть словарь со множеством `tag_id` для каждого `entry_id`.

Результат функции должен быть примерно такой:

```
{
    "uuid-1": {1, 2, 3, 4, 5},
    "uuid-2": {1, 7, 8},
    ....
}
```

Никакой магии, один `SELECT` плюс формирование словаря.

## Оговорки и описание тестов

Чтобы избежать влияния сторонних факторов, я слегка упростил оригинальную задачу:

- Вместо передачи списка `entry_id` я передавал количество записей, которые нужно извлечь (1000, 10000, 100000).
- Не использовал фабрику строк Psycopg [dict_row](https://www.psycopg.org/psycopg3/docs/api/rows.html#psycopg.rows.dict_row), чтобы исключить лишние преобразования.
- Замеряемые функции синхронны, оригинальный код был асинхронным.
- Тестовые данные брал с прода.

Также обратите внимание:

- Измерялось время выполнения Python функции с необходимым преобразованием данных, а не чистое время работы Psycopg. Так как важна именно скорость получения необходимого результата.
- Пробовал явно включать использование бинарного протокола коммуникации с PostgreSQL, но изменения были незаметны, поэтому далее об этом варианте не говорю.
- Перед измерением каждая из тестовых функций выполнялась 1 раз, чтобы прогреть базу.
- Для измерения каждой функции я делал 100 запусков и усреднял результаты.
- Указывать конкретные числа не буду, так как задача и данные специфичны для конкретного проекта, и даже для моего конкретного аккаунта в нём, поэтому ничего не скажут стороннему читателю.

/// details | Полный код теста
```
--8<-- "./optimizations.py"
```
///

Базовая версия функции:

```
--8<-- "./optimizations.py:version_1"
```

## Оптимизация 1

Первое, что показал профайлер — большое время проведённое кодом в [psycopg/types/datetime.py](https://github.com/psycopg/psycopg/blob/master/psycopg/psycopg/types/datetime.py) — больше 18%! Как вы можете заметить, никакой работы со временем в коде функции нет.

«Ага» — сказал я себе — «Зря ты, Tiendil, звёздочку в SELECT поставил, тебе только две колонки надо, а время парсить всегда дорого».

И заменил звёздочку на конкретные колонки:

```
--8<-- "./optimizations.py:version_2"
```

## Оптимизация 2

Запуск профайлера показал, что стало лучше, но всё-ещё много времени тратится на парсинг `UUID` — типа колонки `entry_id`.

Как я уже упоминал, особенность данных в том, что для одного значения `entry_id` может быть порядка 100 записей в таблице. Поэтому нет смысла парсить `entry_id` для каждой строки.

Что если запрашивать `entry_id` как строку, а парсить уже на стороне Python, но только один раз для уникального значения?

```
--8<-- "./optimizations.py:version_3"
```

## Оптимизация 3

Стало ещё лучше (смотрите заглавную картинку).

На этот раз py-spy завёл меня в куда более интересное место: [psycopg/pq/pq_ctypes.py](https://github.com/psycopg/psycopg/blob/master/psycopg/psycopg/pq/pq_ctypes.py), а точнее в [PGresult.get_value](https://github.com/psycopg/psycopg/blob/d38cf7798b0c602ff43dac9f20bbab96237a9c38/psycopg/psycopg/pq/pq_ctypes.py#L925-L934).

`PGresult.get_value` возвращает одно значение из результата запроса по номеру строки и колонки. Попутно в нём происходит конвертация данных из формата C в формат Python, в частности, с помощью вызова [ctypes.string_at](https://docs.python.org/3/library/ctypes.html#ctypes.string_at).

Так вот, преобразование данных из формата C в формат Python — очень дорогое удовольствие. Даже не так, ОЧЕНЬ ДОРОГОЕ удовольствие. Особенно когда этих преобразований много, например, по два на каждую из 100000 строк.

Можно ли сократить количество преобразований? Конечно, давайте на стороне базы собирать колонки в одну, а на стороне Python разбирать их обратно.

Сказано — сделано, вот наш финальный вариант:

```
--8<-- "./optimizations.py:version_4"
```

Результаты этой версии примерно в 4 раза быстрее базовой (на моих данных).

/// attention | На всякий случай проговорю словами
Отформатировать и склеить колонки результата на стороне PostgreSQL и распарсить Python-ом может быть быстрее, чем запрашивать колонки как отдельные значения.
///

По крайней мере это справедливо для конкретного случая использования Psycopg. Я люблю эту библиотеку, поэтому думаю, что у альтернатив ситуация не лучше.
