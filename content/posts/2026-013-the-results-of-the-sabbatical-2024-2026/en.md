---
title = "The results of the sabbatical 2024-2026"
tags = [ "blog", "practice", "reflection",]
published_at = "2026-09-01T12:00:00+00:00"
seo_description = "The results of my sabbatical 2024-2026: what was achieved and what was not."
seo_image = "./cover.jpg"
---

<!-- TODO: translate previos sabbsatical post? -->
<!-- TODO: translate the post about the blog? -->

/// brigid-images
src = "./cover.jpg"
caption = "Idiomatically spending a sabbatical."
///

In 2023, [Yuliya](https://www.linkedin.com/in/burankova/) made a table of 1000 labs (!), chose one of them, moved to Germany, and started doing a PhD in it. For a year we flew back and forth between Poland and Germany, realized that it was terribly inconvenient and expensive, so I quit [Palta](https://palta.com/) and at the beginning of 2024 moved to Germany as a trailing spouse.

"What a great opportunity to start another sabbatical" — I thought, and so I did. Two and a half years later, it's time to ~~[look for a job]{post:looking-for-partners-and-projects}~~ take stock.

In that text, you will find a complete report on how the sabbatical was spent: what was planned, how the plans changed, what was achieved and what was not.

In short: blog updated, 68 posts written, 20 books read, 4 new open-source projects built, more than 400 GitHub stars earned, [feeds.fun](https://feeds.fun) made genuinely usable and ready for monetization, my own approach to management formulated, some weird but interesting courses on intellectual property development completed, AI figured out, coding agents coding, my wife's eye twitching.

A few links to better understand the post:

- [What are sabbaticals and why I take them]{post:sabbaticals}.
- That is my second full sabbatical, here is [the report on the first one]{post:the-results-of-the-sabbatical-2019-2021}.

<!-- more -->

## Plan

The sabbatical was planned in advance and covered the following areas.

Primary goals:

- `[done]` Finish family relocation to Germany, solve household issues.
- `[done]` Improve management theory knowledge.
- `[90%]` Try to launch at least one own project.

Secondary goals:

- `[50%]` Have some rest.
- `[in progress]` Improve my English.
- `[50%]` Clear my book backlog.
- `[done]` Update my blog.

On all those pleasures I gave myself 2 years, but new goals cropped up and in the end it grew to 2.5 years.

Unexpected goals:

- `[done]` Finish the World Builders course on intellectual property development and fictional world creation.
- `[done]` Break AI hype down: what is what and where everything is going.
- `[in progress]` Understand coding agents, learn to use them effectively.

## Results from 30000 feet

I'm satisfied with the results, but the extra half a year, of course, is annoying and spoils the picture.

The idea was to solve accumulated questions in a light pace and move on. Instead, a significant effort was required to keep myself on schedule. Consequently, for example, I didn't rest as much as I planned. However, I still rest a bit.

The delay, obviously, was caused by additional goals — each of them ate away 3-6 months. On the other hand, even if we count participation in World Builders as a potentially wrong choice, AI got into the plans without asking and there is nothing to be done about it. I'm glad that the rise of LLMs and coding agents fell on the sabbatical — it would be much harder to deal with it while you are under obligations at work.

There will be a section about World Builders, but the situation is roughly as follows: this activity did not bring much direct benefit, but it did create a lot of small useful outcomes.

The most noticeable failure, in my opinion, is the "non-launching" of my own project. There are two primary reasons:

- Before the end of the World Builders course, it was unclear what it would be: a game or [feeds.fun](https://feeds.fun/).
- I'm afraid of the German bureaucracy and don't want to spend extra money. So, Feeds Fun is theoretically ready for payment integration — it requires only a legal entity and a webhook handler from the payment service. Therefore, this goal is marked as 90% complete. I will integrate payments as soon as I decide what to do after the sabbatical.

Now I could tell you in detail what I was doing. I will skip minor and personal things and go over the primary tracks.

## Open source

Эти проекты должны быть раскиданы по нижележащим главам, но я решил для пущей важности дополнительно собрать их тут.

За саббатикал я с нуля реализовал 4 новых проекта и активно работал над ещё двумя (Feeds Fun и Сказка).

- [feeds.fun](https://github.com/Tiendil/feeds.fun) — web-based self-hosted читалка новостей с тегами и правилами приоритезации новостей.
- [brigid](https://github.com/Tiendil/brigid) — движок этого блога.
- [changy](https://github.com/Tiendil/changy) — CLI менеджер/генератор changelog для людей — его используют все моим проекты.
- [donna](https://github.com/Tiendil/donna) — CLI для контроля потока исполнения вашего агента, чтобы агент работал строго по workflow.
- [depmesh](https://github.com/tiendil/depmesh) — CLI для определения зависимостей между файлами вашего проекта, чтобы агенты могли быстрее и экономнее формировать контекст.
- [Лор Сказки](https://the-tale.notion.site/) открыт под лицензей `CC BY 4.0`, игра остановлена после 13 лет работы. На всякий случай, вот [сайт игры](https://the-tale.org) и [исходники](https://github.com/the-tale).

Большинство проектов приносит пользу не только мне, но и другим людям — это радует.

## Feeds Fun

/// brigid-images
src = "./feeds-fun-stars.png"
caption = "Динамика звёзд репозитория [feeds.fun](https://github.com/Tiendil/feeds.fun)."
///

Сначала я как-то всгрустнул по поводу прогресса проекта, но потом посмотрел, что количество звёзд у репозитория выросло ~~с 10 до 400~~ с 11 до 394, и пошёл читать [CHANGELOG](https://github.com/Tiendil/feeds.fun/blob/main/CHANGELOG.md).

На самом деле было сделано много чего, особенно в плане «невидимой» работы.

Подготовлено много штук для сообщества: [roadmap](https://github.com/users/Tiendil/projects/1), docker images, [примеры испольования](https://github.com/Tiendil/feeds.fun/tree/main/docs/examples), [блог](https://feeds.fun/blog/en), [Discord](https://discord.gg/C5RVusHQXy), [Reddit](https://www.reddit.com/r/feedsfun/).

Кроме запланированных задач, периодически делал фичи по запросу пользователей. Это говорит о том, что читалкой пользуются.

Для self-hosted пользователей сделал отдельный режим с одним пользователем, чтобы не надо было настраивать аутентификацию.

Доработал интерфейс до уровня «не стыдно показать людям».

/// brigid-images
src = "./feeds-fun-screenshot.png"
caption = "Текущий вид интерфейса"
///

Закрыл гештальт по идеалогически верной организации аутентификации. Это заняло больше двух месяцев непрерывных [фейспалмов]{post:crazy-ory-infrastructure}, но оно того стоило.

В очередной раз [актуализировал знания о сборе метрик]{post:notes-on-backend-metrics-in-2024}, сделал крутые дашборды для метрик бизнеса и производительности.

Разобрался как контролировать качество работы LLM и сделал систему контроля качества выставляемых тегов. После этого, опираясь на метрики, реализовал нормализицию тегов, что уменьшило количество уникальных тегов примерно в 5 раз.

/// brigid-images
src = "./feeds-fun-tags-dynamic.png"
caption = "Количество уникальных тегов в месяц до и после включения нормализации."
///

Оптимизировал производительность, параллельно наткнулся на довольно [показательную проблему Python при работе со внешними библиотеками]{post:fun-case-of-speeding-up-data-retrieval-with-psycopg}.

[Сделал маркетинговый тест]{post:feeds-fun-marketing-test}, который показал довольно слабые метрики; я предположил, что это из-за требования к пользователям вводить свой OpenAI/Gemini API key, поэтому решил довести проект до монетизации и повторить тест. [Расчёт необходимых цен произведён]{post:feeds-fun-monetization-approaches}, код для начисления и траты «новостных токенов» готов, осталось оформиться юридически и подключить реальные платежи.

## Менеджмент

Пока я работал в Palta, обратил внимание, что далеко не всегда разговариваю с людьми на их языке, из-за этого сложно легко и быстро доносить свои безусловно мудрые менеджерские идеи до коллег. За годы у меня в голове сформировался свой понятийный аппарат, который не всегда удобен людям, да и не всегда нужен. Плюс, некоторые мои идеи на поверку оказались ~~слишком гениальными~~ сыроваты, недостаточно продуманны. Поэтому было решено синхронизироваться с реальностью, заземляться.

Для этого я выбрал [топ книг по менеджменту]{post:vantage-on-management-books} и прочитал их. Заняло это больше времени, чем я планировал, так как:

1. Книги таки оказались топовыми, хорошо ложились на мой опыт, а значит пораждали кучу заметок и идей, которые необходимо было переварить.
2. Оказалось у меня куда больше идей, чем я думал, особенно о природе инженерии, её связи с наукой и о том, что из этого следует. Поэтому итоговые посты писались значительно дольше. Но оно того стоило.

В итоге я сформулировал свой подход к менеджменту, местами немного радикальный (если сравнивать с общепринятыми практиками) и написал серию постов, которую всем рекомендую почитать, особенно часть про сходство инженерии и науки.

/// brigid-series
tag = "vantage-on-management"
///

## Искусственный интеллект

Благодаря саббатикалу я смог в спокойной абстановке без спешки разобраться как оно примерно работает, что может, что не может и что сможет в ближайшем будущем.

На эту тему у меня вышло много постов, вы можете найти их по тегу [large-language-models]{tags:large language models}. Далее упомяну только самое интересное.

Разобрался что такое LLM и сделал прогноз их развития на ближайшее будущее, пока сбывается (2 года уже):

/// brigid-series
tag = "ai-notes-2024"
///

Наработал [опыт разработки с coding agents]{post:notes-on-coding-agents}.

Выпустил две CLI утилиты для работы с coding agents:

- [donna](https://github.com/Tiendil/donna) — CLI для контроля потока исполнения вашего агента, чтобы агент шёл строго по workflow.
- [depmesh](https://github.com/tiendil/depmesh) — CLI для определения зависимостей между файлами вашего проекта, чтобы агенты могли быстрее и экономнее формировать контекст.

На подходе ещё несколько — следите за моими постами.

И даже поучаствовал в подскасте:

/// brigid-youtube
id = "kUvmhGsUTo4"
caption = "Что на самом деле меняют ИИ-агенты в разработке"
///

## Курсы World Builders

Самая спорная активность, которая прямой пользы скорее мне не принесла, но породила несколько активностей, которые я считаю достаточно полезными, чтобы оправдать трату времени.

По задумке авторов ([Ярополк Раш](https://www.linkedin.com/in/yarrrash/) и [Алекс Поляков](https://www.linkedin.com/in/alex-pollackov-347395a8/)) курсы должны были перерасти во что-то вроде [MBA](https://ru.wikipedia.org/wiki/Магистр_делового_администрирования) для креативных директоров, но в итоге получился только один набор. Жаль, материал был интересный.

Непосредственно курсами мне была нанесена следующая польза:

- Я синхронизировал с реальностью свою модель мира в области планирования разработки и проектирования виртуальных миров. Часть про планирование была полезна и сама по себе.
- Сделал [исследование предпочтений игроков в стратегические игры]{post:making-a-fictional-universe-quantity-survey-processing}.
- [Обкатал некоторые игровые механики на прототипе игры]{post:simulation-of-public-opinion-in-a-game}.
- Потренировался в [питче игр]{post:world-builders-2023-final-presentation} и расчёте [бизнес-плана]{post:world-builders-2023-business-plan-example}.

Предполагаю, что всё это мне со временем пригодится, к сожалению, не прямо сейчас.

Куда более важно, что по итогам курсов у меня зачесались руки на создание более глубокого игрового прототипа и я пошёл разбираться с [Rust](https://rust-lang.org/) и [Godot](https://godotengine.org/).

Godot мне не понравился, хотя я и признаю, что для indie разработчиков он может быть лучшим вариантом.

[Я поменял своё мнение о Rust]{post:rust-the-language-things-get-rewritten-in} с негативного на позитивное. Теперь я считаю, что Rust — это лучший язык для разработки с помощью coding agents. Если будет возможность, следующий коммерческий проект буду делать на Rust, а не на Python.

### «Секретный» проект

Пока прототипировал игры, я начал разработку собственного экспериментального игрового движка — как-то само получилось :-D Началась разработка в ручном режиме ещё до взлёта coding agents, но сейчас это ещё и эксперимент по вайбкодингу сложных систем. Делаю я это сугубо в свободное время и без конечной цели, поэтому не советую ждать релизов в ближайшее время. Но если интересно, вот некоторые его фичи:

- Полностью детерминистическая игровая логика.
- Все параметры игровых сущностей организованы в общий вычислительный граф.
- Жёское разделение бэкенда (логика) и фронтенда (рендеринг, UI, звук, ввод, etc) игры. Вплоть до возможности запуска нескольких фронтендов на разных машинах (при одном бэкенде).
- Интеграция элементов логического программирования.
- В перспективе хочу, чтобы бэкенд для внешних утилит выглядел как реляционная база данных.
- GUI реализован как полноценный веб интерфейс: HTML + CSS + JS/TS/WebAssembly.
- Фокус на создание игр через вайбкодинг => никаких визуальных редакторов, только код и конфиги под системой контроля версий.

Вот такая жуть. Сейчас это выглядит крайне грязно и некрасиво, зато есть целая честно навайбкоженая игра.

/// brigid-images
src = "./game-screenshot.png"
caption = "Скриншот полностью навибкоженной игры."
///

## Книги

С книгами получилось как всегда: пока разгребал накопившуюся очередь, купил новых — очередь не уменьшилась.

Всего прочитал 20 книг:

- [Как устроена экономика]{post:about-book-economics-the-users-guide}
- [Сеть и бабочка]{post:about-book-the-net-and-the-butterfly}
- [Piranesi]{post:about-book-piranesi} — рекомендую, Сюзанна Кларк, как всегда, бесподобна.
- [Сигнал и Шум]{post:review-of-the-signal-and-the-noise}
- [7 книг про Гарри Поттера]{post:about-book-harry-potter} — читал в рамках знакомства с английской культурой, так как все англоговорящие young adult на них выросли. Крайне недоволен мизерным вниманием автора к Гермионе: книга про спортика-мажора, а должна была быть про сильную и независимую рыжуху из низов.
- [9 книг про менеджмент]{post:vantage-on-management-books}.

## Прочее

Стоит упомянуть ещё несколько активностей.

Кроме того, что я [открыл лор Сказки под лицензией CC BY 4.0]{post:the-tale-lore-cc-by}, я ещё поучаствовал в подкасте про игру, где рассказал о её истории и особенностях.

/// brigid-youtube
id = "5KODCBqhDu0"
caption = "Игра опередившая время"
///

Блог претерпел огромные изменения:

- Перерехал с WordPress на собственный движок [Brigid](https://github.com/Tiendil/brigid).
- Новые посты теперь выходят сразу на двух языках: русском и английском.

Английский активно доучивается сразу по нескольким направлениям:

- Пишу англоязычные посты в блоге.
- Все книги читаю на английском.
- Добиваю словарный запас с помощью [Duocards](https://duocards.com/).
- Фармлю карму на Reddit.
- Наконец-то нашёл репетитора, с которым занимаюсь два раза в неделю.

Бытовые вопросы в Германии, само собой, решены.

Если вам интересны подробности, то их можно найти в годовых отчётах:

- [Отчёт за 2024 год]{post:2025-001-results-of-2024-for-me-and-the-blog}
- [Отчёт за 2025 год]{post:2025-020-results-of-2025-for-me-and-the-blog}

## Выводы для себя

Кроме перечисленного выше и упомянутого в годовых отчётах, для себя я сделал ещё несколько заметок.

**Первое.** Разработка продукта «для себя» и «для зарабатывания денег» — это разные вещи. Каждое направление предполагает фичи и архитектуру, которые не нужны в другом. Поэтому, если двигаться сразу в обе стороны, двигаться будешь медленнее. Как этого можно было избежать в случае с Feeds Fun я слабо представляю, но в будущем попробую эти цели разделять именно на уровне продуктов.

**Второе.** Из своего опыта и из того, что я вижу на рынке, я сделал вывод, что надо жёстко разделять «геймдев для создания игр» и «геймдев для зарабатывания денег» и не пытаться одним выстрелом двух зайцев убить — не получится — требования совершенно противоположные. Причём, хочу обратить внимание, самореализоваться можно в любом из них, даже в двух, но по очереди.

Хотите делать ИГРЫ — делайте их как хобби, а на еду зарабатывайте другим. Хотите зарабатывать ДЕНЬГИ — забудьте о том, что вы делаете что-то уникальное — всё равно не сделаете, ваши лучше друзья — маркетинг, бесконечные A/B тесты, хайп, усреднение, [симулякры геймплея]{post:one-form-two-products}, etc.

Как можно заметить, у меня есть нерешённые вопросы с разделеним хобби и зарабатывания денег :-D

**Третье.** В следующий раз надо явно разделить исследовательский трек и трек разработки продукта(ов). Трек разработки должен иметь фиксированные сроки и оптимизироваться через урезание объёма работа (всё неопределённое перемещается в исследовательский трек), а трек исследования должен оптимизироваться через приоритизацию — с самым важным разбираемся в первую очередь, что не успели — то не успели.
