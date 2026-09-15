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

These projects are covered in the following chapters, but I decided to collect them here as well, just to give them a bit more weight.

During the sabbatical, I implemented 4 new projects from scratch and actively worked on two more (Feeds Fun and The Tale).

- [feeds.fun](https://github.com/Tiendil/feeds.fun) — web-based self-hosted news reader with tags and rules for ranking news.
- [brigid](https://github.com/Tiendil/brigid) — the engine of this blog.
- [changy](https://github.com/Tiendil/changy) — CLI changelog manager/generator for humans — used in all my projects.
- [donna](https://github.com/Tiendil/donna) — A CLI tool that helps agents keep long-running work on a predefined path..
- [depmesh](https://github.com/tiendil/depmesh) — CLI for discovering dependencies between files in your project, so agents can form context faster and more economically.
- [The lore of The Tale](https://the-tale.notion.site/) was released under the `CC BY 4.0` license, the game was stopped after 13 years of operation. Just in case, here is [the game website](https://the-tale.org) and [the source code](https://github.com/the-tale).

Most of the projects are bringing value not only to me but also to other people — that's nice.

## Feeds Fun

/// brigid-images
src = "./feeds-fun-stars.png"
caption = "The stars dynamics of the [feeds.fun](https://github.com/Tiendil/feeds.fun) repository."
///

At first, I felt a bit down about the project's progress, but then I noticed that the repository had gone from ~~10 to 400~~ 11 to 394 stars, and went off to read the [CHANGELOG](https://github.com/Tiendil/feeds.fun/blob/main/CHANGELOG.md).

A lot has been done in two years, especially in the area of hidden work.

A bunch of things were set up for the community: a [roadmap](https://github.com/users/Tiendil/projects/1), Docker images, [usage examples](https://github.com/Tiendil/feeds.fun/tree/main/docs/examples), a [blog](https://feeds.fun/blog/en), [Discord](https://discord.gg/C5RVusHQXy), and [Reddit](https://www.reddit.com/r/feedsfun/).

Besides the planned work, I periodically implemented features at the request of users. This indicates people are using the reader.

For self-hosted users, I created a separate single-user mode so that they don't need to set up authentication.

I got the interface to the "not embarrassing to show people anymore" stage.

/// brigid-images
src = "./feeds-fun-screenshot.png"
caption = "Current interface view."
///

Finally I closed my gestalt on ideologically correct authentication approach. It took more than two months of continuous [facepalms]{post:crazy-ory-infrastructure}, but it was worth it.

One more time, I [refreshed my knowledge on backend metrics collection]{post:notes-on-backend-metrics-in-2024}, made cool dashboards for business and performance metrics.

Got the hang of monitoring the quality of LLM output and built a quality-control system for the tags Feeds Fun assigns to news. Using the resulting metrics, I implemented tag normalization, which reduced the number of unique tags by roughly a factor of five.

/// brigid-images
src = "./feeds-fun-tags-dynamic.png"
caption = "The number of unique tags per month before and after normalization."
///

Optimized performance, while doing so, I ran into a rather [illustrative Python problem related to working with external libraries]{post:fun-case-of-speeding-up-data-retrieval-with-psycopg}.

[Made a marketing test]{post:feeds-fun-marketing-test}, which showed not-so-good metrics; I assumed it was because users were required to enter their OpenAI/Gemini API key, so I decided to push the project to monetization and repeat the test. [The estimation of necessary prices was made]{post:feeds-fun-monetization-approaches}, the code for earning and spending "news tokens" is ready, what remains is to register a legal entity and connect real payments.

# Management

While working at Palta, I noticed that during discussions of managerial issues, I do not always speak to people in a language they understand — as a result, it is difficult to easily and quickly convey my undoubtedly wise managerial ideas to colleagues. Over the years, I've developed my own conceptual framework, which isn't always convenient for other people — and isn't always necessary to them either. Plus, some my ideas turned out to be ~~too brilliant~~ raw and unpolished. Therefore, it was decided to sync with reality — ground myself a bit.

To achieve this, I chose [top management books]{post:vantage-on-management-books} and read them. It took more time than I planned:

1. Most of the books turned out to be quite good, they fit well with my experience and consequently spawned tons of notes and ideas that needed to boiled down.
2. It turned out I had way more ideas than I thought, especially about the nature of engineering, its connection with science, and what follows from that. That's why the final posts took significantly longer to write. But it was worth it.

As a result, I constructed my own approach to management — a bit radical if compared to generally accepted practices — and published a series of essays, which I recommend everyone to read, especially the part about the similarity between engineering and science.

/// brigid-series
tag = "vantage-on-management"
///

## Artificial Intelligence

Thanks to the sabbatical, I was able to take my time and figure out, in a calm environment, roughly how it works, what it can and can't do, and what it's likely to be capable of in the near future.

I published numerous posts on this topic, all of them can be found under the tag [large-language-models]{tags:large language models}. Here I'll mention only the most interesting ones.

I got a good handle on what LLMs are and made a forecast for how they would develop in the near future. So far, it's holding up — two years and counting:

/// brigid-series
tag = "ai-notes-2024"
///

Gained hands-on [experience developing with coding agents]{post:notes-on-coding-agents}.

Released two CLI utilities for coding agents:

- [donna](https://github.com/Tiendil/donna) — A CLI tool that helps agents keep long-running work on a predefined path..
- [depmesh](https://github.com/tiendil/depmesh) — CLI for discovering dependencies between files in your project, so agents can form context faster and more economically.

More CLI utilities are coming — follow my posts.

I even participated in a podcast:

/// brigid-youtube
id = "kUvmhGsUTo4"
caption = "What AI agents really change in development (Russian language)."
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
