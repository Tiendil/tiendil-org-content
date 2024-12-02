---
title = "The current state"
tags = ["practice", "neural-networks", "ai-notes-2024", "futurology", "business", "economics"]
series = "ai-notes-2024"
published_at = "2024-11-23T17:00:00+00:00"
seo_description = "My notes on the current state of AI at the end of 2024, this part is about the current state of the industry."
seo_image = ""
---

I continue my notes on AI at the end of 2024.

/// brigid-series
tag = "ai-notes-2024"
///

In the previous posts we discussed two theses:

- We can make fairly accurate assumptions about the state of the AI industry by analyzing decisions of major AI developers, such as OpenAI or Google.
- All current progress is based on a single base technology — generative knowledge bases, which are large probabilistic models.

Based on these theses, let's look at the current state of the industry.

<!-- more -->

## View through the prism of model generations

First of all, let's look at how the top implementations of universal LLMs have evolved — the main achievement of recent years.

An ideal example would be the series of models from OpenAI: each new model literally corresponds to a stage in the development of technologies as I see them:

1. Youth — GPT-3 — pushing models to their limits through scaling data and hardware.
2. Coming of Age — GPT-4 — when the possibilities of extensive development are exhausted, we transition to an intensive path of maximizing architectural adaptation. This stage naturally culminated in multimodality — support for various data types such as text, images, and audio.
3. Maturity — o1 — when we can no longer **radically** improve the architecture of the target system, we begin building a metasystem in which the original system becomes one of the components. The [Chain-of-Thought](https://www.promptingguide.ai/techniques/cot) pattern, on which o1 is tuned, can be interpreted as the first such metasystem, albeit a very simple one. It can be seen as the sequential application of the model to a [blackboard](https://en.wikipedia.org/wiki/Blackboard_(design_pattern)). The next step, for example, could involve multi-agent systems and model specialization.
4. Old age (?) — GPT-5 — when all possibilities for radical improvements are exhausted, we shift to the meticulous process of fine-tuning and optimization. The technology can still be improved for a long time and cumulatively made orders of magnitude better, but explosive growth is over. Therefore, there are persistent rumors on the internet that we shouldn't expect a big leap from GPT-5.

I would like to draw your attention to the fact that changing the base model is an extremely expensive operation. Models are not changed on a whim. They are changed exactly when squeezing something new out of the old approach becomes economically unviable compared to investing in a new approach. In other words, when the limit of rapid development is reached.

At some point, it became impractical to invest the majority of resources in scaling data and hardware, so we switched to optimizing the architecture. Once the architecture was fine-tuned, humanity redirected financial flows toward experiments in creating metasystems.

/// note | Therefore, we can make the following assumptions

- There are few opportunities left for explosive extensive growth through scaling data and hardware. If this resource (data and hardware) hadn’t been exhausted, we would still see GPT-3.X models being released, scaled to run on 2, 5, 10, or even 100500 GPUs simultaneously. NVIDIA would be rolling out ultra-optimized hardware designed specifically for running super-simple but massive neural networks, and so on.
- There are few opportunities left for explosive architectural growth. OpenAI, like everyone else, has not been able to invent or buy technology that would allow them to continue modernizing the architecture. Otherwise, instead of o1, OpenAI would have trained GPT-4.5 or GPT-5, significantly surpassing GPT-4 in quality.
- We are currently at the stage of building metasystems on top of generative knowledge bases, as the development of such models is now being prioritized.

///

## Рекогносцировка через призму статистических моделей

Улучшать статистические модели можно несколькими путями:

1. Усложнять подготовку модели: больше данных, дольше обучение — лучше результаты.
2. Усложнять саму модель — изменять архитектуру.
3. Специализировать модель — увеличивать точность, ограничивая область поиска решений.
4. Масштабировать модель горизонтально — корректировать ошибки, создавая множество вариантов ответа. Самый простой вариант: если в двух из трёх запусков модель говорит А, а в одном — Б, то скорее всего правильный ответ — А. Чуть сложнее: запуск нескольких специализированных моделей, каждая из которых решает часть задачи.

Пути 1, 2, 3 определяют конечную форму модели, поэтому они — прерогатива разработчиков моделей.

Вариант 4 не изменяет форму самой модели, но позволяет управлять точностью её ответов, поэтому он больше подходит для пользователей моделей.

Держа в уме поколения моделей, мы можем предположить, что от вариантов 1 и 2 уже не ждут радикальных прорывов.

Идеальным примером третьего пути будет [Suno](https://suno.com/) — сервис для генерации музыки и песен, значительно превосходящий по качеству работу универсальных моделей. Работать над подобными специализациями разработчикам универсальных моделей не выгодно: чтобы собрать данные и натренировать, условно, 100-1000 специализированных моделей (и упаковать их в универсальную мета-модель), нужно 100-1000 команд уровня Suno. Если же вспомнить, что Suno — стартап-лидер — один из многих (погибших в безвестности), то оценка необходимых ресурсов должна вырасти ещё раз в 100.

Вариант 4 не даёт качественного скачка. Если в какой-то области модель ошибается немного, то горизонтальное масштабирование уберёт эту ошибку и ответы станут немного лучше (раз ошибка была небольшой). Если у модели слепое пятно в какой-то области, то это же слепое пятно, скорее всего, останется и после масштабирования.

В этом плане, модель o1 выглядит как попытка «задёшево» двинуть универсальную LLM одновременно по путям 3 и 4. Получилось лучше, чем GPT-4, но не на порядок. Например, я всё ещё пользуюсь своими [кастомными GPT-шками]{post:my-gpts} вместо o1 для некоторых задач.

/// note | Соответственно, мы можем продолжить выдвигать гипотезы

- Возможности генеративных баз более-менее определены — скорее всего они будут оставаться на уровне GPT-4 плюс-минус. Само собой, они будут становиться быстрее, меньше, немного точнее и т.п.
- Разговоры про возможность продолжения быстрого прогресса через масштабирование вычислений на этапе эксплуатации (вариант 4), скорее всего, маркетинговый ~~булшит~~ ход для поддержания хайпа и потока инвестиций. Про это я ещё скажу в следующем эссе про будущее.

///

## Рекогносцировка через изменения на рынках

- ChatGPT 3 вышла летом 2020 — 4 года назад.
- ChatGPT 4 вышла весной 2023 — 1.5 года назад.

На мой взгляд, прошло достаточно времени чтобы делать первые выводы о перспективах технологии: в каких местах она меняет правила игры, в каких делает лучше, а в каких не меняет ничего.

Обратите внимание:

- Всё выше написанное — это моё личное субъективное мнение.
- Всё написанное ниже — это моё ещё более личное и более субъективное мнение. Это не результат исследования, а продукт моего опыта и наблюдений за новостями.

### Подрываемые рынки

Прямо сейчас идут большие изменения в следующих областях:

- **Персональные ассистенты** — LLM чаты на порядки улучшают функциональность всего, что было до них: от вордовской скрепки до умных колонок, меняя правила взаимодействия пользователей с ними.
- **Профессиональный софт** — [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment), [CAD](https://en.wikipedia.org/wiki/Computer-aided_design), графические редакторы — весь профессиональный софт, который хоть как-то формализровал свою область — а это весь крупный профессиональный софт. Профессиональные области становятся на порядок доступнее новичкам, а профессионалы становятся на порядок эффективнее. При этом меняется концепция работы с профессиональным софтом: от директивного к диалоговому. Пока не понятно, где остановятся изменения: будет ли это просто отдельный режим или вся разработка перейдёт в диалоги, но прежними редакторы точно не останутся.
- **Поиск** — пока широко не заметно, но большинство людей пользующихся ChatGPT или аналогами отмечают, что обращаются к классическому поиску значительно реже. На мой взгляд, незаметность обусловлена сочетанием огромной пользовательской базы поисковиков и пока ещё малой распространнённостью чатов. Было бы интересно посмотреть на график количество запросов в Google от среза пользователей вроде «ИТ-шники из Флориды».
- **Музыка** — ряд стартапов, например, [Suno](https://suno.com/) продемонстрировал что генерировать музыку и песни по формализованному заданию значительно проще, чем изображение и видео. Стулья под охранителями интеллектуальных прав шатаются, но те пока держатся. Скрестим пальчики за будущее. Кстати, если задуматься, генерацию музыки можно отнести к профессиональному софту: ноты и разметка текстов — это типичные [DSL](https://en.wikipedia.org/wiki/Domain-specific_language).

### Улучшаемые рынки

В некоторых областях всё становится просто лучше, например:

- **Croudsourcing платформы** вроде [Талаки](https://toloka.ai/) переориентируются с людей на ИИ, но не меняют свою суть.
- **Сервисы модерации, анализа настроений, фильтрации контента** тоже становятся лучше, не меняясь концептуально.
- **No-code платформы**. Для меня странно записывать их сюда, но де-факто ничего революционного в них я не видел, хотя AI явно увеличивает их возможности.
- **Обработка текста**: перевод, «техническая журналистика». Определённо становится удобнее, но ту же автоматизацию написания технических заметок о спортивных матчах, судах и событиях на бирже я не готов считать за подрыв чего-то.
- **Обучение** — LLM находят своё применение, но пока не меняют ничего радикально. Например, нет примеров платформ или школ, в которых ИИ заменил бы учителя.

### Рынки, на которых все ждут изменений, а их всё нет

В некоторых областях быстрого прорыва не случилось, хотя многие ждали:

- **Робототехинка** — штучные гуманоидные роботы вроде появились, но они занимают всё те же ниши развлечений для богатых и вычурного маркетинга.
- **Игры** — не вышло ни одной крупной игры с next-gen NPC или next-gen процедурной генерацией. Нет даже ничего, что сравнилось бы с известными прецендентами из before-deep-learning эпохи, вроде [Creatures](https://en.wikipedia.org/wiki/Creatures_(video_game_series)), [Black and White](https://en.wikipedia.org/wiki/Black_%26_White_(video_game)), etc. Последнее очень подозрительно, свидетельствует либо об очень долгих циклах адаптации технологий в геймдеве, либо о концептуальных недостатках технологии, либо о превращении геймдева в болото. Ставлю на болото.
- **Профессиональная генерация ready-to-view художественного контента** — генерировать контент по точной детальной спецификации всё ещё нельзя и даже близко не заметно когда станет возможным. Работа профессиональных художников, операторов и всех причастных всё ещё нужна и ценна.
- **Профессиональная генерацией ready-to-read художественного контента**. Аналогичная ситуация.
- Скорость внедрения **самоходных повозок** радикально не изменилась.
- **Медицина** — прорывных прорывов пока не заметно, доступность медицины «для бедных» не улучшается.
- **Наука** — [за AlphaFold дали Нобелевку](https://www.nature.com/articles/d41586-024-03214-7), но я пока не встречал новостей в духе «учёные с помощью AlpaFold сделали что-то революционное» (про это же и Nature пишет). AlphaFold, на мой взгляд, находится ближе к области профессионального софта, чем базовой штуки, подрывающей науку. Периодически встречаю статьи про автоматизацию исследований с помощью LLM, но пока не слышал об их практическом применении. Почему его нет и, скорее всего не будет, расскажу в следующем посте.
- **Бюрократия** — пока не было примеров крупной автомтизации работы с бумажками в государственном аппарате.

/// note | Основываясь на этих наблюдениях, добавим ещё несколько гипотез

- ИИ изменяет нашу жизнь к лучшему, но не делает это радикально: улучшения не происходят везде, не происходят быстро, самые сильные изменения сильно локализованы в области профессионального софта и развлечений, тем самым не затрагивая напрямую жизнь большинства людей.
- Существует ряд областей, которые «стоят в очереди» за дарами ИИ и могут рвануть, но это возможность скорее гипотетическая, чем реальная.

///
