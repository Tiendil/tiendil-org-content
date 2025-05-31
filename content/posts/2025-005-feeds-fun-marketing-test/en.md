---
title = "Feeds Fun: marketing test"
tags = [ "practice", "development", "monetization", "business", "feeds-fun"]
published_at = "2025-05-31T12:00:00+00:00"
seo_description = "I ran a marketing test for Feeds Fun. Here are the results and conclusions."
seo_image = "cover.jpg"
---

<!-- This is a ongoing translation from Russian to English -->

/// brigid-images
src = "cover.jpg"
alt = "One of the images I used in the test advertisement for Feeds Fun on Reddit."
///

Since the [Feeds Fun](https://feeds.fun) has been in production for a long time and provides some value to users, I decided to run a test advertisement campaign to understand how viable monetization of the project is in its current state.

/// note | Reminder
[Feeds Fun](https://feeds.fun) is a news reader that automatically assigns tags to each news item using LLM. Users can create rules that evaluate news based on tags. For example, `nasa + fake-news -> -50`. This allows filtering and sorting news to read only the most relevant ones.

The project is open-sourced: [github.com/Tiendil/feeds.fun](https://github.com/Tiendil/feeds.fun).
///

It turned out one does not simply launch advertisements on modern platforms: one needs to implement GDPR support, user agreement, privacy policy, cookie consent, event/metric tracking, improve the GUI, create an acceptable landing page, etc. The work stretched for almost half a year (in the background, of course, not full-time), but in the end, I implemented everything, designed the experiment, and am ready to share the results with you.

<!-- more -->

## Goals of the experiment

The primary goal is to assess how realistic it is to achieve positive unit economics with paid traffic in the current state of the project.

The secondary goal is to test a number of hypotheses about potential users that guided me during development.

### Questions I wanted to answer

1. How will the metrics of paid traffic look without tuning:
    1. How much can one registration cost?
    2. How much can one click cost?
    3. How much can it cost to attract one subscriber / one purchase?
2. How interested is each target group in Feeds Fun? See groups below.
    1. Which group will convert better into registrations?
    2. What will the funnels look like for each group?
    3. Which group will show the best retention?
3. Do the public news collections help pushing visitors towards registration?
4. How to position Feeds Fun? What message to focus on? See below for positioning.

/// note | Public collections
Currently, there are two public news collections that are always tagged:

- [Scientific Papers](https://feeds.fun/show/scientific-papers) — all the latest papers from arXiv.
- [Entrepreneurship & Startups](https://feeds.fun/show/entrepreneurship) — all the latest news from subreddits about business and some other channels.

The hypothesis was that public collections would help users in understanding what Feeds Fun is without registration, thus nudging them towards registration when users see the benefits.
///

## Strip down the questions by dimensions

I was able to break down the original questions into features along three dimensions:

- groups of users;
- message;
- focus of the tool.

This allowed me to make the experiment more structured and understandable; it created a measurement lattice through which one can look not only at the results of specific ads/groups but also at supergroups. For example, to observe user behavior independently of the ads message, or user behavior on a specific message independently of the group.

### Groups of users

I always intended Feeds Fun to be a tool for professionals, because regular users, if they want to manage their news feed, do not need such deep and detailed control. Plus, I needed exactly such a tool, which eventually turned out.

But targeting professionals in a broad sense is not very convenient. Therefore, I always has in mind two groups that should be particularly interested in Feeds Fun: scientists and entrepreneurs.

For the purpose of the experiment, I added a third group — news readers. It would be strange not to check their behavior for a product that is designed for news consumption.

As a result, I ended up with three groups:

- Scientists — people who work in science or follow scientific news.
- Entrepreneurs — people who are engaged in business, startups, or follow business news.
- News readers — people who simply read a lot of news.

### Message

In addition to user groups, I wanted to clarify how to convey to people the value of Feeds Fun — what to emphasize in advertising and in communication with users.

After some reasoning, I identified three groups of focal messages, each with two messages:

- Functionality:
    - news with tags;
    - scoring news by tags/rules;
- Value:
    - saving time on reading news;
    - reading only the most important/interesting news;
- Emotions:
    - being smarter: reading news in a smart way;
    - control: understanding why you read these news and not others.

### Focus of the tool

I did not plan to add this dimension initially, but the first run of the experiment showed too poor results, and I had to figure out what went wrong.

I hypothesized that the reader was positioned too abstractly and tried replacing parts of the text messages from "News reader" to "RSS reader".

The second run showed significantly better results, so an additional dimension appeared in the experiment:

- Feeds Fun is a news reader/
- Feeds Fun is an RSS reader/
- Feeds Fun is a collection of tagged news/

You can notice that question 3 from the goals of the experiment neatly fits into this dimension.

## Experiment design

### Restrictions

I had two main restrictions for the experiment.

Firstly, I am not a marketer, designer, or copywriter, so I would not be able to create really cool professional advertising artifacts anyway. Therefore, I tried to keep them simple and straightforward.

Secondly, the budget. Running ads is expensive. Especially if you want to get reliable results. After a quick estimate, I planned to spend about 500 EUR. Because of the restart of the experiment in the middle, I ended up spending 650 EUR.

### Target platform

I chose Reddit as the platform for the campaign because:

- I used it before when conducting [a survey of player preferences in strategy games](post:making-a-fictional-universe-quantity-survey-cleaning).
- Reddit has very straightforward and clear targeting — you can select specific subreddits that match the target user groups.
- I am active on Reddit and see a positive reaction to Feeds Fun posts, so I felt that Reddit is a suitable platform.
- I generally have no clear vision of the modern advertising landscape, so I have no criterias for rejecting Reddit in favor of other platforms.

### Таргетирование

Для каждой группы пользователей выбирал 1-2 самых популярных тематических сабреддита:

- Учёные: [r/Science](https://www.reddit.com/r/science/)
- Предприниматели: [r/Entrepreneur](https://www.reddit.com/r/entrepreneur/) & [r/Startups](https://www.reddit.com/r/startups/)
- Читатели новостей: [r/worldnews](r/worldnews) ([r/news](https://www.reddit.com/r/news/) не подошёл, так как есть заметный перекос в локальные новости США).

Устройства: только Desktop, так как интерфейс читалки только под него и заточен.

География: любая. По-хорошему надо было бы выдвинуть несколько гипотез о локациях пользователей, но бюджет не позволяет и трафик органики идёт со всего мира. Поэтому решил пока не обрезать аудиторию по этому признаку, оставил на следующий раз.

### Дизайн объявлений

Для каждой группы пользователей я сделал по скриншоту рабочего интерфейса Feeds Fun с релевантными группе новостями. Пример скриншота вы можете найти на заглавной картинке.

Изначально я планировал делать `3 группы * 6 посылов = 18` вариантов подписей, но в итоге оказалось, что достаточно 6, так как они получились не специфичными для группы пользователей.

Вот подписи для первого запуска:

- News reader with smart tags — try Feeds Fun
- Rank news with your own rules and read the best first — try Feeds Fun
- Save news-reading time by filtering out the noise — try Feeds Fun
- Read relevant news — skip the noise — try Feeds Fun
- Read news smarter — create rules to focus on the stories that count — try Feeds Fun
- Control your news: smart tags + scoring rules = zero noise. Try Feeds Fun

И для второго:

- RSS reader with smart tags — try Feeds Fun
- Rank RSS news with your own rules and read the best first — try Feeds Fun
- Save RSS-reading time by filtering out the noise — try Feeds Fun
- Read relevant RSS news — skip the noise — try Feeds Fun
- Read RSS news smarter — create rules to focus on the stories that count — try Feeds Fun
- Control your RSS news: smart tags + scoring rules = zero noise. Try Feeds Fun

Плюс был тестовый прогон для получения baseline, с текстом: «Personalized news reader – follow the topics you care about»

И два специализированных объявления для публичных коллекций во втором запуске (со ссылкой на страницу коллекции, вместо главной страницы):

- Tagged arXiv papers — follow relevant research with Feeds Fun
- Tagged Reddit business posts — follow relevant news with Feeds Fun

### Воронка

Воронка была следующей:

- Reddit: показ объявления.
- Reddit: клик по объявлению.
- Feeds Fun: регистрация.
- Feeds Fun: пользователь подписался на рассылку (свою или из коллекции).
- Feeds Fun: пользователь воспользовался фильтром тегов.
- Feeds Fun: пользователь создал правило оценки новостей.
- Feeds Fun: пользователь ввёл API ключ для OpenAI или Gemeni.

Шаг ввода API ключа я расцениваю как примерный эквивалент оплаты / подписки на сервис, так как это довольно сложный этап и может предполагать траты со стороны пользователя (Gemini имеет бесплатный тариф, у OpenAI только платное использование).

Дополнительно смотрел путь пользователей на сайте от перехода до входа в Feeds Fun, чтобы понять как влияют коллекции на регистрацию.

## Ход эксперимента

Бюджет был установлен на 5 eur / день на объявление.

Изначальный план выглядел так:

- Тестовый запуск на пару дней одного нейтрального объявления для получения baseline.
- Запуск на неделю 18 объявлений.
- Анализ результатов.
- Запуск на неделю объявлений про коллекции, оптимизированных по результатам анализа.
- Полный анализ.

В итоге получилось так:

- Тестовый запуск на пару дней одного нейтрального объявления для получения baseline.
- Первый запуск был остановлен на 4-ый день, т.к. результаты были очень плохие.
- На следующей неделе (чтобы совпадали дни) был сделан второй запуск с откорректированными объявлениями и объявлениям про коллекции.
- Второй запуск был остановлен через столько же времени, что и первый, чтобы в обоих случаях были сопоставимые объёмы выборок.
- Анализ — вы его сейчас читаете.

## Результаты

Сырые и аггрегированные данные можно найти в [таблице](https://docs.google.com/spreadsheets/d/1WeclS5GYIz_JhfYW7WyWp3byo5nexE6cJCZcxLdDj_0/edit?usp=sharing)

Средняя температура по больнице:

- Потрачено: 605 eur (без учёта baseline запуска);
- Показов: 631277;
- Кликов: 6089;
- Цена клика: $0.10 eur;
- Регистраций: 18;
- Цена регистрации: $33.61 eur;
- Пользователей, которые создавали правила: 2;
- Пользователей, которые ввели API ключ: 0.

## Наблюдения / инсайты

Данных для достоверной картины середины (и тем более последних шагов) воронки собрано мало, выводы по ним делать сложно. Точнее все выводы по ним получаются пессимистичными.

**Ответ на главный вопрос эксперимента:** сходу запустить монетизацию на основе покупного трафика в Feeds Fun не получится, необходимы заметные доработки по разным направлениям.

**Органический трафик больше и показывает лучшие результаты, чем покупной.** Буквально перед запуском эксперимента я сделал докер контейнеры для Feeds Fun и [запостил новость на Reddit](https://www.reddit.com/r/selfhosted/comments/1kqe865/feeds_fun_opensource_news_reader_releases/) — один этот пост привёл пользователей (судя по временным рамкам) больше, чем весь эксперимент. Одновременно эти же пользователи показали лучшие результаты по воронке, чем пользователи из эксперимента.

**Гипотезы**:

- Контент-маркетинг может быть более эффективным, чем покупная реклама, так как продукт слишком специализированный.
- Программисты и близкие к ним группы могут быть более заинтересованы в Feeds Fun, чем учёные и предприниматели.

### Целевые группы

Группа | CTR | CPC | Стоимость регистрации
--- | --- | --- | ---
Учёные | 0.38% | 0.21 eur | 40 eur
Предприниматели | 0.49% | 0.26 eur | 24 eur
Читатели новостей | 1.93% | 0.05 eur | 41 eur

Неожиданно для меня, учёные продемонстрировали худшую заинтересованность (минимальный CTR). Учитывая, что мои знакомые от науки (даже жена!) читалкой пользуются, дело может быть в подаче, или в неверном выборе сабреддита.

В то же время конверсия читателей новостей в регистрации просто ужасная. На сколько я понимаю, CTR 2% — это (очень?) хороший показатель для Reddit. Тем страньше низкая конвесия в регистрации. Это может быть признаком расхождения ожиданий и лендинга, либо каких-то мощных барьеров при регистрации.

**Гипотезы**:

- Feeds Fun не несёт ценности для людей интересующихся наукой (подписчики r/Science), но несёт ценность для профессиональных учёных (подписчики очень специализированных сабреддитов).
- Ценность Feeds Fun для учёных надо доносить отдельным специфическим способом.
- Лендинг (единственный сейчас) может быть непонятен для казуальных пользователей.
- GUI всё ещё выглядит недостаточно «профессионально» и может отпугивать часть пользователей.
- Процесс регистрации может быть непонятным для казуальных пользователей.

### Фокус инструмента

Объявления с упоминанием RSS показывают заметно лучшие результаты CTR, CPC и регистраций, чем объявления с упоминанием просто новостей. Единственное где показатели падают — это CTR для читателей новостей (для news больше чем для RSS). Это может быть как статистическим отклонением, так и признаком казуальности пользователей в выбранной группе (не знают что такое RSS).

Коллекции показали себя «никак»: нет хороших показателей, пользователи не заходят на страницы коллекций с главной страницы.

**Гипотезы**:

- Чем конкретнее и техничнее позиционировать инструмент, тем лучше будут результаты среди профессионалов.
- Коллекции не выглядят полезными для незарегистрированных пользователей, либо не демонстрируют полезность должным образом.

### Посыл / message

Если смотреть на регистрации.

Лучшие результаты показывают объявления с посылом на релевантность:

- Read relevant RSS news — skip the noise — try Feeds Fun

Второе и третье место делят теги и правила (правила чуть лучше):

- Rank RSS news with your own rules and read the best first — try Feeds Fun
- RSS reader with smart tags — try Feeds Fun

Остальные посылы значительно ниже по метрикам.

**Гипотезы**:

- Утилитарные свойства (релевантность, теги, правила) более понятны и ценны для пользователей.

### Лучшая группа

Лучшая цена результата у объявления с упоминанием RSS и релевантности, стоимость регистрации 12.5 eur.

Если смотреть пристальнее, то стоимость регистрации у группы учёных с этим объявлением ~8 eur, но я не готов делать выводы по выбокам такого размера.

### Последние шаги воронки

Данных для оцени нет — только несколько человек дошли до создания правил и никто не ввёл API ключ.

Для сравнения, по органическому трафику данные есть:

- Есть большой провал в конверсии между шагом добавления рассылки (своей или из коллекции) и шагом использования фильров тега.
- Конверсия шага регистрации в шаг добавление рассылки: 80%. При разбивке на типы рассылок, добавление коллекции происходит в 50% случаев. То есть коллекции полезны, но (пока что) только после регистрации.
- API ключ вводит 5% зарегистрировавшихся пользователей. На мой взгляд, это хороший показатель, который говорит что ценность Feeds Fun приносит, надо только понять кому.

**Гипотезы**:

- Если улучшить поведение сервиса между добавлением рассылки и использованием фильтров тегов, то значительно улучшатся последние шаги воронки.
- Если улучшить onboarding/tutorial, то значительно улучшатся последние шаги воронки.

## Общие выводы

Заметно уточнил своё представление о том, как люди смотрят на Feeds Fun, что им важно и нужно. Буду ещё долго крутить в голове разные мысли.

Запустить монетизацию на покупном трафике в одни рабочие руки за разумное время не получится, так как нужно много времени на доработку и много денег на эксперименты.

Вариант 1: сосредоточиться на органическом трафике и контент-маркетинге, растить сообщество проекта пока не наберётся критическая масса пользователей и трафика для включения монетизации.

Вариант 2: искать инвесторов с экспертизой в бизнес части, деньгами на команду и маркетинг.

## Action points

Что конкретно из этого буду делать, решу позже. На всё времени не хватит, надо выбирать с умом.

- Сделать план контент маркетинга на лето и попытаться оценить влияние этой практики на рост органического трафика.
- Сделать план SEO на лето и попытаться оценить влияние этой практики на рост органического трафика.
- Доработать интерфейса регистрации, сейчас он действительно нестандартный и может быть непонятен. Хотя я считаю его идеалогически верным :-)
- Провести сессию планирование по вопросам:
    - Как сфокусировать функциональность Feeds Fun на релеватности новостей?
    - Как лучше доносить ценность Feeds Fun в области релевантности новостей?
- Заморозить развитие коллекций, но не удалять, так как позитивно влияют на шаги после регистрации.
- Провести серию интервью:
    - С представителями науки на предмет «что не так?»
    - С казуальными пользователями на предмет понятности лендинга.
    - С любыми пользователями на предмет понятности/доступности интерфейса onboarding/tutorial.
- Сделать редизайн сайта руками профессионального дизайнера.
- Собрать грубую экономическую модель на платном трафике, чтобы оценить необходимый порядок улучений показателей покупного трафика.
- Собрать прототип презентации для инвесторов, чтобы посмотреть на проект со стороны.

## Заметки для следующих экспериментов

- Проверять меньшеее количество гипотез за раз, чтобы получать более достоверные результаты.
- Проверить группу программистов.
- Проверить группу «профессиональные учёные».
- Проверить разные варианты лендингов.
- Проверить отличия в географии пользователей.
- Сосредоточиться на сообщениях о релевантности новостей.
- Подумать над ещё более точными и конкретными формулировками текстов.
- По возможности проверить сообщения с упоминанием тегов и правил.
- Проверить эффективность рекламы на других платформах: Google Ads, Facebook, etc.
