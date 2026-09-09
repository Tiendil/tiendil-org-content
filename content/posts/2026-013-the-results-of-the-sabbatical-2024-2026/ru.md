---
title = "Итоги творческого отпуска 2024-2026 годов"
tags = [ "open-source", "blog", "practice", "reflection",]
published_at = "2026-09-01T12:00:00+00:00"
seo_description = ""
seo_image = ""
---

<!-- TODO: tags -->
<!-- TODO: description -->
<!-- TODO: seo image -->
<!-- TODO: cover image as a tag cloud(?) -->

В 2023 году [Юля](https://www.linkedin.com/in/burankova/) сделала таблицу из 1000 лаб, выбрала из них одну, переехала в Геманию и начала делать PhD в ней. Мы год полетали друг к другу между Польшей и Германией, поняли что это жуть как неудобно и дорого, поэтому в я уволился из [Palta](https://palta.com/) и в начале 2024 года перехал прицепом жены в Германию.

«Отличный повод уйти в очередной творческий отпуск» — подумал я, после чего так и сделал. Два с половиной года спустя пришло время ~~искать работу~~ подводить итоги.

В этом посте вы найдёте полный отчёт о проделанном отдыхе: что было запланировано, как изменились планы, что удалось сделать, а что нет.

<!-- TODO: краткие итоги (собрать самое интересное после подготовки тела поста)-->

Ссылки для лучшего понимания поста:

- [Что такое творческий отпуск и почему я в них хожу]{post:sabbaticals}.
- Это мой второй полноценный саббатикал, вот [отчёт по первому]{post:the-results-of-the-sabbatical-2019-2021}.

<!-- more -->

## План

Отпуск планировался зарнее и включал следующие направления.

Главные цели:

- `[done]` Завершить переезд семьи в Германию, решить бытовые вопросы.
- `[done]` Подтянуть теоретические знания по менеджменту.
- `[90%]` Попробовать запустить минимум один свой проект.

Второстепенные цели:

- `[50%]`Отдохнуть.
- `[in progress]`Улучшить английский.
- `[50%]`Разгрести накопившуюся очередь из книг.
- `[done]`Обновить блог.

На всё это удовольствие я выделил себе 2 года, но потом добавились новые цели и в итоге получилось 2 года 9 месяцев.

Внезапные цели:

- `[done]` закончить курс World Builders про разработку интеллектуальной собственности и создание вымышленных миров.
- `[done]` разобраться с ИИ хайпом: что есть что и куда всё движется.
- `[in progress]` разобраться с coding agents, научиться эффективно их использовать.

## Результаты с высокой колокольни

Результатами я доволен, но лишние 9 месяцев, конечно, раздражают и портят картину.

Идея была в том, чтобы в лёгком темпе закрыть накопившиеся вопросы и двигаться дальше. Вместо этого пришлось довольно сильно напрягаться, чтобы совсем не вылететь из графика. В итоге с отдыхом, например, не задалось.

Задержка, конечно, свяазана с дополнительными целями, каждая из которых отъела по 3-6 месяцев. С другой стороны, если участие в World Builders и было потенциально неверным осознаным выбором, то ИИ влез в планы без спроса и ничего с этим не поделать. Я рад, что взлёт LLM и coding agents пришёлся на саббатикал — совершенно не представляю как без стресса с этим можно было разобраться в рабочих условиях.

Про World Builders я ещё скажу отдельно, но ситуация примерно следующая: большой прямой пользы эта активность не нанесла, но зато создала много небольших полезных моментов.

Самой заметной неудачей я считаю «не запуск» свеого проекта. Главных причин две:

- До завершения курса World Builders было не ясно, что это будет: игра или [feeds.fun](https://feeds.fun/).
- Моя боязнь немецкой бюрократии и нежелание тратить лишние деньги. В итоге в Feeds Fun для подключения платежей готово всё, кроме юридического лица и обработчика веб-хуков от сервиса платежей. Поэтому этой цели поставлен прогресс в 90%. Подключу платежи как только определюсь, что буду делать после саббатикала.

Теперь можно рассказать подробнее чем именно я занимался. Мелкие и личные вещи опущу, пройдёмся по основным направлениям.

## Open source

Эти проекты должны быть раскиданы по нижележащим главам, но я решил дополнительно собрать их тут, чтобы иметь перечень моей open source активности.

<!-- TODO: не открыл, исправить формулировку -->
За саббатикал я открыл исходники следующих штук:

- [feeds.fun](https://github.com/Tiendil/feeds.fun) — web-based self-hosted читалка новостей с тегами и правилами приоритезации новостей.
- [brigid](https://github.com/Tiendil/brigid) — движок этого блога.
- [changy](https://github.com/Tiendil/changy) — CLI менеджер/генератор changelog для людей — его используют все моим проекты.
- [donna](https://github.com/Tiendil/donna) — CLI для контроля потока исполнения вашего агента, чтобы агент шёл строго по workflow.
- [depmesh](https://github.com/tiendil/depmesh) — CLI для фиксации зависимостей между файлами вашего проекта, чтобы агенты могли быстрее и экономнее формировать контекст.
- [Лор Сказки](https://the-tale.notion.site/) тоже открыт под лицензей `CC BY 4.0`. На всякий случай, вот [сайт игры](https://the-tale.org) и [исходники](https://github.com/the-tale).

Большинство штук приносит пользу не только мне, но и другим людям — это радует.

Всё, кроме Feeds Fun и лора Сказки реализовано во время саббатикла.

## Feeds Fun

/// brigid-images
src = "./feeds-fun-stars.png"
caption = "Динамика звёзд репозитория [feeds.fun](https://github.com/Tiendil/feeds.fun)."
///

Сначала я как-то вгрустнул по поводу прогресса проекта, но потом посмотрел, что количество звёзд у репозитория выросло ~~с 10 до 400~~ с 11 до 394, и пошёл смотреть [CHANGELOG](https://github.com/Tiendil/feeds.fun/blob/main/CHANGELOG.md).

На самом деле было сделано много чего, особенно в плане «невидимой» работы.

Подготовлено много штук для сообщества: [roadmap](https://github.com/users/Tiendil/projects/1), docker images, [примеры испольования](https://github.com/Tiendil/feeds.fun/tree/main/docs/examples), [блог](https://feeds.fun/blog/en), [Discord](https://discord.gg/C5RVusHQXy), [Reddit](https://www.reddit.com/r/feedsfun/).

Кроме собственных задач, периодически делал фичи по запросу пользователей. Это говорит о том, что читалкой пользуются.

Для self-hosted пользователей сделал отдельный режим с одним пользователем, чтобы не надо было настраивать аутентификацию.

Доработал интерфейс до уровня «не стыдно показать людям».

/// brigid-images
src = "./feeds-fun-screenshot.png"
caption = "Текущий вид интерфейса"
///

Наконец закрыл гештальт по идеалогически верной организации аутентификации. Это стоило больше двух месяцев непрерывных [фейспалмов]{post:crazy-ory-infrastructure}, но оно того стоило.

В очередной раз [актуализировал знания о сборе метрик]{post:notes-on-backend-metrics-in-2024}, сделал крутые дашборды для метрик бизнеса и производительности.

Разобрался как контролировать качество работы LLM и сделал небольшую систему контроля качества выставляемых тегов. После этого, опираясь на метрики, реализовал нормализицию тегов, что уменьшило количество уникальных тегов примерно в 5 раз.

/// brigid-images
src = "./feeds-fun-tags-dynamic.png"
caption = "Количество уникальных тегов в месяц до и после включения нормализации."
///

Оптимизировал производительность, параллельно наткнулся на довольно [показательную проблему Python при работе со внешними библиотеками]{post:fun-case-of-speeding-up-data-retrieval-with-psycopg}.

[Сделал маркетинговый тест]{posts:feeds-fun-marketing-test}, который показал довольно слабые метрики; я предположил, что это из-за требования к пользователям вводить свой OpenAI/Gemini API key, поэтому решил довести проект до монетизации и повторить тест. [Расчёт необходимых цен уже произведён]{post:feeds-fun-monetization-approaches}, код для начисления и траты «новостных токенов» готов, осталось оформиться юридически и подключить реальные платежи.

## Менеджмент

Пока я работал в Palta, обратил внимание, что мне не хватает понятийного аппарата, чтобы легко и быстро доносить свои безусловно мудрые менеджерские идеи до коллег. Плюс, некоторые мои идеи на поверку оказались сыроваты, недостаточно продуманны. Поэтому было решено синхронизироваться с реальностью.

Для этого я выбрал [топ книг по менеджменту]{post:vantage-on-management-books} и прочитал их. Заняло это больше времени, чем я планировал, так как:

1. Книги таки оказались топовыми, хорошо ложились на мой опыт, а значит пораждали кучу заметок и идей, которые необходимо было переварить.
2. Оказалось у меня куда больше идей, чем я думал, особенно о природе инженерии, её связи с наукой и о том, что из этого следует, поэтому итоговые посты писались значительно дольше. Но оно того стоило.

В итоге я сформулировал свой подход к менеджменту, местами немного радикальный (если сравнивать с общепринятыми практиками) и написал серию постов, которую всем рекомендую почитать, особенно часть про сходство инженерии и науки.

/// brigid-series
tag = "vantage-on-management"
///

## Искусственный интеллект

   - 2024-013-my-gpts
   - 2024-024-top-llm-frameworks-may-not-be-as-reliable-as-you-may-think
   - 2024-028-ai-notes-2024-industry-transparency
   - 2024-029-ai-notes-2024-generative-knowledge-base
   - 2024-032-ai-notes-2024-the-current-state
   - 2024-035-ai-notes-2024-prognosis
   - 2024-030-prompt-engineering-building-prompts-from-business-cases
   - 2025-016-reasoning-llms-are-wandering-solution-explorers
   - 2026-003-donna-introduction
   - 2026-004-llms-think-breadth-first-humans-think-depth-first
   - 2026-007-notes-on-coding-agents
   - 2026-008-two-capitals-podcast-about-ai-agents
   - 2026-011-donna-is-ready-to-use
   - 2026-012-depmesh-introduction
   - coding agents
   - coding agents are used for feeds fun


## World Builders

   - 2024-003-making-a-fictional-universe-quantity-survey
   - 2024-006-making-a-fictional-universe-quantity-survey-cleaning
   - 2024-007-making-a-fictional-universe-quantity-survey-processing
   - 2024-010-simulation-of-public-opinion-in-a-game
   - 2024-014-world-builders-2023-final-presentation
   - 2024-021-world-builders-2023-business-plan-example
   - 2026-010-rust-the-language-things-get-rewritten-in
   - 2026-010-rust-the-language-things-get-rewritten-in
   - Godot
   - Rust
   - clio

## Open source

   - 2024-004-blog-moved-to-brigid-engine
   - 2026-003-donna-introduction
   - 2026-012-depmesh-introduction
   - more tools (installer, consistency, harness are not published yet)
   - https://github.com/Tiendil/changy
   - 2024-033-the-tale-lore-cc-by

## Книги

   - 2024-008-about-book-economics-the-users-guide
   - 2024-011-about-book-the-net-and-the-butterfly
   - 2024-016-about-book-piranesi
   - 2024-018-review-of-the-signal-and-the-noise
   - 2024-034-about-book-harry-potter
   - 2025-013-vantage-on-management-books

## Прочее

8. The Tale
   - 2024-026-two-capitals-podcast-about-the-tale
   - 2024-033-the-tale-lore-cc-by
7. Подкасты
   - 2024-026-two-capitals-podcast-about-the-tale
   - 2026-008-two-capitals-podcast-about-ai-agents
2. Блог
   - 2024-004-blog-moved-to-brigid-engine
   - 2024-005-hello-en-world
   - statistics
1. Английский
   - blog
   - duocards
   - tutor
2. Германия.

<!-- TODO -->
## TODO

За подробностями смотри отчёты по годам:

- 2025-001-results-of-2024-for-me-and-the-blog
- 2025-020-results-of-2025-for-me-and-the-blog

<!-- TODO: intro: moved to germany -->
<!-- TODO: primary directions -->
<!-- TODO: reference initial plan -->
<!-- TODO: reference post about sabbaticals -->
<!-- TODO: reference previos sabbatical -->
<!-- TODO: open source projects -->
<!-- TODO: posts -->
<!-- TODO: management -->
<!-- TODO: what else? -->
<!-- TODO: auth -->
<!-- TODO: books -->
<!-- TODO: the tale was stopped before sabbatical or on it? -->
<!-- TODO: troubles -->
<!-- TODO: translate previos sabbsatical post? -->
<!-- TODO: translate the post about the blog? -->
<!-- TODO: обновить post:sabbaticals ссылкой на этот отчёт-->
<!-- TODO: что пошло хорошо, что пошло плохо -->
<!-- TODO: total posts number: 68 -->
<!-- TODO: link to 2026-009-looking-for-partners-and-projects -->
<!-- TODO: о фичах clio -->
<!-- TODO: о будущих тулах для ИИ -->
