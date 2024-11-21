---
title = ""
tags = ["practice", "development", "python", "backend", "feeds-fun", "interesting"]
published_at = "2024-11-22T12:00:00+00:00"
seo_description = "TODO"
seo_image = "cover.png"
---

/// brigid-images
src = "./cover.png"
caption = "Ускорение извлечения данныъ из базы для каждой из оптимизаций. Можно обратить внимание, что количество извлекаемых строк слабо влияет на время выполнения."
///

TODO: tag "databases"

Раз в год-два мне таки приходится вспоминать, что Python, ммм… не C++. Обычно, это происходит внезапно, как в этот раз.

~~Проведя вдумчивый анализ~~ Надоело ждать по 10 секунд прогрузки новостей в [feeds.fun](https://feeds.fun/), поэтому я засучил рукава и полез оптимизировать. Сходу чуть не взялся за эпический рефакторинг архитектуры, но вовремя вспомнил, что сначала надо померять, а потом уже резать. Мерять в данном случае совет буквальный — взял профайлер ([py-spy](https://github.com/benfred/py-spy)) и посмотрел что конкретно тормозит.

Оказалось, тормозит не вся логика, а вполне конкретное место с извлечением из таблицы PostgreSQL ~100000 строк. Само-собой, сама таблица оптимизирована, индексы на месте, а тесты проводил вообще на RAM-диске, поэтому со стороны базы всё должно было быть ок.

Такому количеству строк не удивляйтесь:

- Во-первых, у меня большой поток новостей.
- Во-вторых, для каждой новости читалка сейчас ставит около 100 тегов.
- На выборе всех тегов для последних новостей и тормозило.

Вооружившись py-spy и исодникакми [psycopg](https://github.com/psycopg/psycopg), я прошёл через три этапа оптимизации, **уменьшив время выполнения запроса в ~4 раза только за счёт изменения SQL запроса и кода его обработки**.

Далее я расскажу про последовательность любопытных открытий, которые я сделал в процессе.

Но хочу обратить внимание, этот пост — не исследование производительностие psycopg, а описание конкретного опыта на конкретной задаче со специфическими свойствами данных.

<!-- more -->




# Non-binary

 ✔ Container feedsfun-postgresql-1  Running                                                                                                                                                                                                              0.0s
True
Number of records: 1000
Number of measurements: 100
Query 1: 2.28 seconds
Query 2: 1.06 seconds
Query 3: 0.92 seconds
Query 4: 0.58 seconds
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $ ./bin/backend-utils.sh poetry run python ./optimizations.py
[+] Creating 1/0
 ✔ Container feedsfun-postgresql-1  Running                                                                                                                                                                                                              0.0s
True
Number of records: 10000
Number of measurements: 100
Query 1: 23.18 seconds
Query 2: 10.36 seconds
Query 3: 8.98 seconds
Query 4: 5.83 seconds
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $ ./bin/backend-utils.sh poetry run python ./optimizations.py
[+] Creating 1/0
 ✔ Container feedsfun-postgresql-1  Running                                                                                                                                                                                                              0.0s
True
Number of records: 100000
Number of measurements: 100
Query 1: 227.91 seconds
Query 2: 103.69 seconds
Query 3: 88.73 seconds
Query 4: 57.27 seconds

# binary


True
Number of records: 1000
Number of measurements: 100
Query 1: 2.02 seconds
Query 2: 1.02 seconds
Query 3: 0.90 seconds
Query 4: 0.60 seconds
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $ ./bin/backend-utils.sh poetry run python ./optimizations.py
[+] Creating 1/0
 ✔ Container feedsfun-postgresql-1  Running                                                                                                                                                                                                              0.0s
True
Number of records: 10000
Number of measurements: 100
Query 1: 19.59 seconds
Query 2: 10.18 seconds
Query 3: 9.15 seconds
Query 4: 5.75 seconds
