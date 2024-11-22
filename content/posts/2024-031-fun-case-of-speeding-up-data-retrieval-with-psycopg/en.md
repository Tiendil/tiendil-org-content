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

## Original task

Here is a shortened description of the table where the data is stored (I removed the extra to avoid formatting issues):

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

**The task of the target Python function:** extract all `tag_id` for the passed list of `entry_id` and return a dictionary with a set of `tag_id` for each `entry_id`.

The result of the function should look like this:

```
{
    "uuid-1": {1, 2, 3, 4, 5},
    "uuid-2": {1, 7, 8},
    ....
}
```

No magic, just one `SELECT` plus dictionary creation.

## Caveats and test description

To avoid the influence of external factors, I slightly simplified the original task:

- Instead of passing a list of `entry_id`, I passed the number of records to extract (1000, 10000, 100000).
- I did not use the Psycopg [dict_row](https://www.psycopg.org/psycopg3/docs/api/rows.html#psycopg.rows.dict_row) factory to exclude unnecessary data transformations.
- The measured functions are synchronous, the original code was asynchronous.
- The test data was taken from production.

Also, note:

- I measured the execution time of the target Python function with all necessary data transformations, not just the Psycopg execution time. This is because the focus is on the speed of obtaining the desired result, not just "any" data from the database.
- I tried explicitly enabling the binary communication protocol with PostgreSQL, but the changes were negligible, so I don't mention this option further.
- Before measuring, each of the test functions was executed once to warm up the database.
- To measure each function, I made 100 runs and averaged the results.

The average execution time of the function was:

- For the base version: 2.28, 23.18, 227.91 seconds for 1000, 10000, 100000 records respectively.
- For the final version: 0.58, 5.83, 57.27 seconds for 1000, 10000, 100000 records respectively.

But keep in mind, the task and data are specific to a particular project, and even to my specific account within it, so they may not be very meaningful to an outside reader.

/// desired | The full test code
```
--8<-- "./optimizations.py"
```
///

The base version of the measured function:

```
--8<-- "./optimizations.py:version_1"
```

## Optimization 1

The first thing the profiler showed was a lot of time spent in [psycopg/types/datetime.py](https://github.com/psycopg/psycopg/blob/master/psycopg/psycopg/types/datetime.py) — more than 18%! As you may noticed, there is no time-related work in the function code.

"Ah-ha," I said to myself, "You, Tiendil, put a star in the SELECT — you only need two columns, and parsing time is always expensive."

And I replaced the star with specific columns:

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
