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

## World Builders course

The most controversial activity, which probably didn't bring me much direct value, but spawned several activities that I consider quite useful to justify the time spent.

The idea, according to the authors ([Yaropolk Rash](https://www.linkedin.com/in/yarrrash/) and [Alex Polyakov](https://www.linkedin.com/in/alex-pollackov-347395a8/)), was to grow the course into something like an [MBA](https://en.wikipedia.org/wiki/Master_of_Business_Administration) for creative directors, but in the end there was only one cohort. A shame — the material was interesting.

The courses inflicted the following benefits on me:

- I synced with reality my [world model]{post:life-and-work-with-models} in the area of development planning and virtual world design.
- Conducted [research into the preferences of strategy game players]{post:making-a-fictional-universe-quantity-survey-processing}.
- [Played around with some game mechanics on a game prototype]{post:simulation-of-public-opinion-in-a-game}.
- Got some practice [pitching games]{post:world-builders-2023-final-presentation} and [business planing]{post:world-builders-2023-business-plan-example}.

All of this is likely to be useful to me over time, unfortunately not right now.

Much more importantly, the courses left me itching to build a more substantial game prototype, so I started looking into [Rust](https://rust-lang.org/) and [Godot](https://godotengine.org/).

I didn't like Godot, although I admit that for small indie developers it may be the best option.

[I changed my opinion about Rust]{post:rust-the-language-things-get-rewritten-in} from negative to positive. Now I believe that Rust is the best language for developing with coding agents. If possible, I will do the next commercial project in Rust, instead of Python.

### "Secret" project

During the game prototyping, I started developing an experimental game engine — somehow it just happened :-D The development started in manual mode before the rise of coding agents, but now it's also an experiment in vibe-coding complex systems. I do this purely in my free time and without a final goal, so there will be no releases in the near future. But if you're interested, here are some of its features:

- Fullly deterministic game logic.
- All parameters of the game entities are organized into a single computational graph.
- Strict separation between the game's backend (logic) and frontend (rendering, UI, audio, input, etc.), to the point where multiple frontends can run on different machines against a single backend.
- Built-in logic programming elements.
- Eventually, I want the backend to look like a relational database to external tools.
- GUI is implemented as a full-fledged web interface: HTML + CSS + JS/TS/WebAssembly.
- The focus of the engine is on the vibe-coding games => no visual editors, only code and configs under version control.

So, it's quait a bizarre thing. Currently the code looks extremely dirty and ugly, but there is a one whole honestly vibe-coded game.

/// brigid-images
src = "./game-screenshot.png"
caption = "Screenshot of the fully vibe-coded game."
///

## Books

Books went the way they always do: while I was working through the backlog, I bought more, so the backlog didn't get any smaller.

I totally read 20 books:

- [Economics: The User's Guide]{post:about-book-economics-the-users-guide}
- [The Net And The Butterfly]{post:about-book-the-net-and-the-butterfly}
- [Piranesi]{post:about-book-piranesi} — highly recommended, Susanna Clarke is brilliant, as always.
- [The Signal and the Noise]{post:review-of-the-signal-and-the-noise}
- [7 books about Harry Potter]{post:about-book-harry-potter} — I read them as part of exploring English culture, since pretty much every English-speaking young adult grew up on them. I'm extremely unhappy with how little attention the author gives Hermione: the books are about a privileged jock, when they should have been about a strong, independent redhead from the lower classes.
- [9 books about management]{post:vantage-on-management-books}.

## Other things

A few other activities are worth mentioning.

Besides [opening the lore of The Tale under the CC BY 4.0 license]{post:the-tale-lore-cc-by}, I also participated in a podcast about the game, where I talked about its history and features.

/// brigid-youtube
id = "5KODCBqhDu0"
caption = "The game that was ahead of its time."
///

The blog has undergone major changes:

- Moved from WordPress to a custom engine [Brigid](https://github.com/Tiendil/brigid).
- All new posts are now published in both Russian and English.

I've been actively working on my English in several areas at once:

- Write posts in English on the blog.
- Read books in English.
- Round out my vocabulary with the help of [Duocards](https://duocards.com/).
- Farm karma on Reddit.
- At least I found a tutor with whom I study twice a week.

All the practical matters of settling in Germany are, of course, sorted out. Not only by me, of course, but by Yuliya as well.

If you need more details, you can find them in the annual reports:

- [Report for the 2024]{post:2025-001-results-of-2024-for-me-and-the-blog}
- [Report for the 2025]{post:2025-020-results-of-2025-for-me-and-the-blog}

## Takeaways

Besides everything listed above and mentioned in the annual reports, I came away with a few more notes for myself.

**First.** Building a product "for yourself" and building one "to make money" are two different things. Each direction calls for features and architecture that the other doesn't need. So if you try to move in both directions at once, you'll move more slowly. I'm not sure how I could have avoided this with Feeds Fun, but in the future I'll try to separate these goals at the product level.

**Second.** Based on my own experience and what I see in the market, I've concluded that "gamedev for making games" and "gamedev for making money" need to be kept strictly separate. Don't try to kill two birds with one stone — it won't work. The requirements are fundamentally opposed. And, importantly, you can find self-fulfillment in either one, even in both — just not at the same time. It's a kind of continuation of the previous point.

Want to make GAMES? Make them as a hobby and earn your living doing something else. Want to make MONEY — forget about making something unique — your best friends are marketing, endless A/B tests, hype, averaging things out, [gameplay simulacra]{post:one-form-two-products}, etc.

Gamedev is becoming a mass market (it has already for some time), which means it starts to work according to its laws.

Yes, there are exceptions — there always will be — but I would venture to suggest that if you dig under them, you'll find very heavy personal stories, years of expertise, and some serendipitous circumstances.

As you may have noticed, I still have some unresolved issues around separating hobbies from making money :-D

**Third.** Next time, I need to explicitly separate the research track from the product development track. Development should have fixed deadlines and be optimized by cutting scope by moving uncertain things to research track. Research, on the other hand, should be optimized through prioritization: tackle the most important things first, and whatever doesn't get done simply doesn't get done.
