---
title = "The results of the sabbatical 2024-2026"
tags = [ "blog", "practice", "reflection"]
published_at = "2026-09-01T12:00:00+00:00"
seo_description = "The results of my sabbatical 2024-2026: what was achieved and what was not."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "Idiomatically spending a sabbatical."
///

In 2023, [Yuliya](https://www.linkedin.com/in/burankova/) made a table of 1000 labs (!), chose one, moved to Germany, and started doing a PhD there. For a year, we flew back and forth between Poland and Germany, realized it was terribly inconvenient and expensive, so I quit [Palta](https://palta.com/) and, at the beginning of 2024, moved to Germany as a trailing spouse.

"What a great excuse to take another sabbatica" — I thought, and so I did. Two and a half years later, it's time to ~~[look for a job]{post:looking-for-partners-and-projects}~~ take stock.

In this post, you'll find a full report on all the resting I managed to get done: what was planned, how the plans changed, what was achieved, and what was not.

In short: blog updated, 68 posts written, 20 books read, 4 new open-source projects built, more than 400 GitHub stars earned, [feeds.fun](https://feeds.fun) made genuinely usable and ready for monetization, my own approach to management formulated, some weird but interesting courses on intellectual property development completed, AI figured out, coding agents coding, my wife's eye twitching.

A few links to better understand the post:

- [What are sabbaticals and why I take them]{post:sabbaticals}.
- This is my second full sabbatical; here is [the report on the first one]{post:the-results-of-the-sabbatical-2019-2021}.

<!-- more -->

## Plan

The sabbatical was planned in advance and covered the following areas.

Primary goals:

- `[done]` Finish moving the family to Germany, solve household issues.
- `[done]` Brush up on management theory.
- `[90%]` Try to launch at least one project of my own.

Secondary goals:

- `[50%]` Get some rest.
- `[in progress]` Improve my English.
- `[50%]` Clear my book backlog.
- `[done]` Update my blog.

I gave myself 2 years for all this fun, but then new goals cropped up, and in the end it took 2.5 years.

Unexpected goals:

- `[done]` Finish the World Builders course on intellectual property development and fictional world creation.
- `[done]` Make sense of the AI hype: what's what and where it's all going.
- `[in progress]` Understand coding agents, learn to use them effectively.

## Results from 30000 feet

I'm satisfied with the results, but the extra 6 months, of course, is annoying and spoils the picture.

The idea was to work through the accumulated issues at an easy pace and move on. Instead, I ended up having to push pretty hard just to avoid falling completely behind schedule. As a result, the resting part, for example, didn't really work out.

The delay, obviously, was caused by additional goals — each of them ate away 3-6 months. On the other hand, even if World Builders may have been a conscious choice that turned out to be wrong, AI got into the plans without asking, and there is nothing to be done about it. I'm glad the rise of LLMs and coding agents happened during the sabbatical — I can't imagine figuring all of this out without stress while also working.

There will be a section about World Builders, but the situation is roughly as follows: this activity didn't exactly inflict much direct benefit on me, but it did produce a lot of small, useful outcomes.

The most noticeable failure, in my opinion, is the "non-launching" of my own project. There are two primary reasons:

- Before the end of the World Builders course, it was unclear what it would be: a game or [feeds.fun](https://feeds.fun/).
- I'm afraid of the German bureaucracy and don't want to spend extra money. So, Feeds Fun is theoretically ready for payment integration — it requires only a legal entity and a handler for webhooks from the payment service. Therefore, this goal is marked as 90% complete. I will integrate payments as soon as I decide what to do after the sabbatical.

Now I can go into more detail about what exactly I was doing. I'll skip the minor and personal stuff and go over the main areas.

## Open source

These projects are covered in the following chapters, but I collected them here as well to give them a bit more weight.

During the sabbatical, I implemented 4 new projects from scratch and actively worked on two more (Feeds Fun and The Tale).

- [feeds.fun](https://github.com/Tiendil/feeds.fun) — web-based self-hosted news reader with tags and rules for ranking news.
- [brigid](https://github.com/Tiendil/brigid) — the engine of this blog.
- [changy](https://github.com/Tiendil/changy) — CLI changelog manager/generator for humans — used in all my projects.
- [donna](https://github.com/Tiendil/donna) — A CLI tool that helps agents keep long-running work on a predefined path.
- [depmesh](https://github.com/tiendil/depmesh) — CLI for discovering dependencies between files in your project, so agents can form context faster and more economically.
- [The lore of The Tale](https://the-tale.notion.site/) was released under the `CC BY 4.0` license; the game was shut down after 13 years of operation. Just in case, here is [the game website](https://the-tale.org) and [the source code](https://github.com/the-tale).

Most projects bring value not only to me but also to others — that's nice.

## Feeds Fun

/// brigid-images
src = "./feeds-fun-stars.png"
caption = "GitHub stars over time for the [feeds.fun](https://github.com/Tiendil/feeds.fun) repository."
///

At first, I felt a bit down about the project's progress, but then I noticed that the repository had gone from ~~10 to 400~~ 11 to 394 stars, and went off to read the [CHANGELOG](https://github.com/Tiendil/feeds.fun/blob/main/CHANGELOG.md).

A lot has been done in two years, especially behind the scenes.

A bunch of things were set up for the community: a [roadmap](https://github.com/users/Tiendil/projects/1), Docker images, [usage examples](https://github.com/Tiendil/feeds.fun/tree/main/docs/examples), a [blog](https://feeds.fun/blog/en), [Discord](https://discord.gg/C5RVusHQXy), and [Reddit](https://www.reddit.com/r/feedsfun/).

Besides planned work, I periodically implemented features at users' request. This indicates people are using the reader.

For self-hosted users, I created a separate single-user mode so that they don't need to set up authentication.

I got the interface to the "not embarrassing to show people anymore" stage.

/// brigid-images
src = "./feeds-fun-screenshot.png"
caption = "What the interface looks like now."
///

Finally, I closed my gestalt on an ideologically correct authentication approach. It took more than two months of continuous [facepalms]{post:crazy-ory-infrastructure}, but it was worth it.

nce again, I [refreshed my knowledge on backend metrics collection]{post:notes-on-backend-metrics-in-2024} and built cool dashboards for business and performance metrics.

Got the hang of monitoring LLM output quality and built a quality-control system for the tags Feeds Fun assigns to news. Using the resulting metrics, I implemented tag normalization, which reduced the number of unique tags by roughly a factor of five.

/// brigid-images
src = "./feeds-fun-tags-dynamic.png"
caption = "The number of unique tags per month before and after normalization."
///

While optimizing performance, I ran into a rather [illustrative Python problem related to working with external libraries]{post:fun-case-of-speeding-up-data-retrieval-with-psycopg}.

[Ran a marketing test]{post:feeds-fun-marketing-test}, which produced rather weak numbers; I assumed it was because users had to enter their OpenAI/Gemini API key; so I decided to push the project to the monetization stage and repeat the test. [The required pricing has been calculated]{post:feeds-fun-monetization-approaches}, the code for crediting and spending "news tokens" is ready, what remains is to register a legal entity and connect real payments.

## Management

While working at Palta, I noticed that during discussions of managerial issues, I don't always speak in a language people understand — as a result, it is difficult to convey my undoubtedly wise managerial ideas to colleagues quickly and easily. Over the years, I've developed my own conceptual framework, which isn't always convenient for other people — and isn't always necessary for them either. Plus, some of my ideas turned out to be ~~too brilliant~~ raw and unpolished. So it was decided: time to sync with reality and get a little more grounded.

To achieve this, I picked a selection of [top books on management]{post:vantage-on-management-books} and read them. It took more time than I planned:

1. Most of the books turned out to be quite good, they fit well with my experience and consequently spawned tons of notes and ideas that I needed to digest.
2. It turned out I had way more ideas than I thought, especially about the nature of engineering, its connection with science, and what follows from that. That's why the final posts took significantly longer to write. But it was worth it.

As a result, I constructed my own approach to management — a bit radical compared to generally accepted practices — and published a series of essays, which I recommend everyone read, especially the part about the similarity between engineering and science.

/// brigid-series
tag = "vantage-on-management"
///

## Artificial Intelligence

Thanks to the sabbatical, I was able to take my time and figure out, in a calm environment, roughly how it works, what it can and can't do, and what it's likely to be capable of in the near future.

I published numerous posts on this topic — all of them can be found under the tag [large-language-models]{tags:large language models}. Here I'll mention only the most interesting ones.

I got a good handle on what LLMs are and forecast how they would develop in the near future. So far, it's holding up — two years and counting:

/// brigid-series
tag = "ai-notes-2024"
///

Gained hands-on [experience developing with coding agents]{post:notes-on-coding-agents}.

Released two CLI utilities for coding agents:

- [donna](https://github.com/Tiendil/donna) — A CLI tool that helps agents keep long-running work on a predefined path.
- [depmesh](https://github.com/tiendil/depmesh) — CLI for discovering dependencies between files in your project, so agents can form context faster and more economically.

More CLI utilities are coming — follow my posts.

I even participated in a podcast:

/// brigid-youtube
id = "kUvmhGsUTo4"
caption = "What AI agents really change in development (Russian language)."
///

## World Builders course

The most controversial activity, which probably didn't bring me much direct value, but spawned several activities I consider useful enough to justify the time spent. Also, I definitely had some fun.

The idea, according to the authors ([Yaropolk Rash](https://www.linkedin.com/in/yarrrash/) and [Alex Polyakov](https://www.linkedin.com/in/alex-pollackov-347395a8/)), was to grow the course into something like an [MBA](https://en.wikipedia.org/wiki/Master_of_Business_Administration) for creative directors, but in the end there was only one cohort. A shame — the material was interesting.

The courses inflicted the following benefits on me:

- I synced my [world model]{post:life-and-work-with-models} with reality in the area of development planning and virtual world design.
- Conducted [research into the preferences of strategy game players]{post:making-a-fictional-universe-quantity-survey-processing}.
- [Played around with some game mechanics on a game prototype]{post:simulation-of-public-opinion-in-a-game}.
- Got some practice [pitching games]{post:world-builders-2023-final-presentation} and [business planning]{post:world-builders-2023-business-plan-example}.

All of this will likely be useful to me over time — unfortunately, just not right now.

Much more importantly, the courses left me itching to build a more substantial game prototype, so I started looking into [Rust](https://rust-lang.org/) and [Godot](https://godotengine.org/).

I didn't like Godot, though I admit it may be the best option for small indie developers.

[I changed my opinion about Rust]{post:rust-the-language-things-get-rewritten-in} from negative to positive. Now I believe that Rust is the best language for developing with coding agents. If possible, I will do the next commercial project in Rust, instead of Python.

### "Secret" project

While prototyping games, I started developing an experimental game engine — somehow it just happened :-D The development started in manual mode before the rise of coding agents, but now it's also an experiment in vibe-coding complex systems. I do this purely in my free time and without a final goal, so there will be no releases in the near future. But if you're interested, here are some of its features:

- Fully deterministic game logic.
- All parameters of the game entities are organized into a single computational graph.
- Strict separation between the game's backend (logic) and frontend (rendering, UI, audio, input, etc.), to the point where multiple frontends can run on different machines against a single backend.
- Built-in logic programming elements.
- Eventually, I want the backend to present itself to external tools as a relational database.
- GUI is implemented as a full-fledged web interface: HTML + CSS + JS/TS/WebAssembly.
- The engine is focused on building games through vibe coding => no visual editors, only code and configs under version control.

So, it's pretty bizarre. Right now, the code looks extremely dirty and ugly, but there is one honestly vibe-coded game.

/// brigid-images
src = "./game-screenshot.png"
caption = "Screenshot of the fully vibe-coded game."
///

## Books

Books went the way they always do: while I was working through the backlog, I bought more, so the backlog didn't get any smaller.

I read 20 books in total:

- [Economics: The User's Guide]{post:about-book-economics-the-users-guide}
- [The Net And The Butterfly]{post:about-book-the-net-and-the-butterfly}
- [Piranesi]{post:about-book-piranesi} — highly recommended — Susanna Clarke is brilliant, as always.
- [The Signal and the Noise]{post:review-of-the-signal-and-the-noise}
- [7 books about Harry Potter]{post:about-book-harry-potter} — I read them as part of exploring English culture, since pretty much every English-speaking young adult grew up on them. I'm extremely unhappy with how little attention the author gives Hermione: the books are about a privileged jock when they should be about a strong, independent redhead from the lower classes.
- [9 books about management]{post:vantage-on-management-books}.

## Other things

A few other activities are worth mentioning.

Besides [releasing the lore of The Tale under the CC BY 4.0 license]{post:the-tale-lore-cc-by}, I also participated in a podcast about the game, where I talked about its history and features.

/// brigid-youtube
id = "5KODCBqhDu0"
caption = "The game that was ahead of its time."
///

The blog has undergone major changes:

- Moved from WordPress to a custom engine [Brigid](https://github.com/Tiendil/brigid).
- All new posts are now published in both Russian and English.

I've been actively working on my English in several areas at once:

- Write posts in English on the blog.
- Read all my books in English.
- Round out my vocabulary with the help of [Duocards](https://duocards.com/).
- Farm karma on Reddit.
- Finally found a tutor I study with twice a week.

All the practical matters of settling in Germany are, of course, sorted out — not only by me, but by Yuliya as well.

If you need more details, you can find them in the annual reports:

- [Report for 2024]{post:2025-001-results-of-2024-for-me-and-the-blog}
- [Report for 2025]{post:2025-020-results-of-2025-for-me-and-the-blog}

## Takeaways

Besides everything listed above and mentioned in the annual reports, I came away with a few more notes for myself.

**First.** Building a product "for yourself" and building one "to make money" are two different things. Each direction calls for features and architecture that the other doesn't need. So if you try to move in both directions at once, you'll move more slowly. I'm not sure how I could have avoided this with Feeds Fun, but in the future I'll try to separate these goals at the product level.

**Second.** Based on my own experience and what I see in the market, I've concluded that "gamedev for making games" and "gamedev for making money" need to be kept strictly separate. Don't try to kill two birds with one stone — it won't work. The requirements are fundamentally opposed. And, importantly, you can find self-fulfillment in either one, even in both — just not at the same time. It's a kind of continuation of the previous point.

Want to make GAMES? Make them as a hobby and earn your living doing something else. Want to make MONEY — forget about making something unique — your best friends are marketing, endless A/B tests, hype, designing for the average, [gameplay simulacra]{post:one-form-two-products}, etc.

Gamedev is becoming a mass market (well, it became one a long time ago), which means it's starting to play by mass-market rules.

Yes, there are exceptions — there always will be — but I would venture to suggest that if you dig into them, you'll find very rough personal stories, years of expertise, and some serendipitous circumstances.

As you may have noticed, I still have some unresolved issues around separating hobbies from making money :-D

**Third.** Next time, I need to explicitly separate the research track from the product development track. Development should have fixed deadlines and be optimized by cutting scope: anything uncertain gets moved to the research track. Research, on the other hand, should be optimized through prioritization: tackle the most important things first, and whatever doesn't get done simply doesn't get done.
