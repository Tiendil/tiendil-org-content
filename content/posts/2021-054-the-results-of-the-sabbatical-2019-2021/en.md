---
title = "The results of the sabbatical 2019-2021"
tags = [ "blog", "practice", "reflection",]
published_at = "2021-09-01T12:00:00+00:00"
seo_description = "The results of my two-year sabbatical or 'How I wrote a volume of War and Peace'."
seo_image = ""
---

/// brigid-youtube
id = "7zok9co_8E4"
caption = """
Every single day 'cause I love my occupation<br/>
A-a-ay, I'm on vacation<br/>
If you don't like your life, then you should go and change it
"""
///

Or how to write a volume of "War and Peace" in 2 years.

In June 2019 I resigned from [Melsoft](https://melsoft-games.com/) and went on a sabbatical, which has lasted for 2 years and 2 months. It's time to assess the results.

I'll tell you why I did that, what I was doing, what worked out, what didn't, and what I think about that experience.

Shortly: I recommend it to everyone.

<!-- more -->

## Motivation

**Updated:** I wrote a separate post about [my approach to sabbaticals]{post:about-sabbatical}.

I wanted to write something inspiring, like "why everyone should go on a sabbatical right now", but maybe some other time. I have exceeded my quota for long posts in this week.

Here is a short description of my case.

Historically, my time has been split into three parts:

- sleep;
- primary job during the day;
- hobbies / rest in the evening.

My hobbies and work overlap only partially.

Simplifying a bit, my interests are concentrated in areas other people aren't going to pay me for: experimental gamedev, exploring the state of the art in programming languages, experimenting with code analysis, studying evolution and cognition.

My hobbies improve my skills and make me more valuable to an employer, but they do so in the long run with no clear KPIs.

In theory, I have a chance of making an self-sufficient income from them, but so far it hasn't worked out. Indie gamedev didn't work out on the first try, and when it comes to consulting, I'm not particularly good at networking — yet, perhaps.

As a result, I have no enough time for:

- analysis of my activities, retrospection;
- reading and studying — the most interesting books are hard to read before bed or on public transport;
- properly working through my hobby projects — they're complex.

Also, I advocate for honest, open relationships between employee and employer. Therefore, I don't solve personal issues at the expense of work time.

So, that leaves a single way to find time — going on a long vacation.

That was my motivation when I left Wargaming in 2012, and again when I left Melsoft in 2019.

I don't regret either decision.

Of course, I'm working on how to combine my hobbies and my job better, as well as on using my time more efficiently. But that's a long and difficult process.

## Non-technical results

The timing of my subbatical turned out to be extremely fortunate.

Around three months after my resignation, I was treated for one thing or another — I burned out at work more than I expected. It will be a lesson for me.

The first six months my girlfriend and I without rushing studied the real estate market, and without stress found a good apartment at a good price.

Easily went into self-isolation with the arrival of COVID.

At the time of the well-known events in Belarus, I was able to focus on reflection; there were no need to force myself working. As a result, I revised my personal worldview and reflected events.

The political problems, of course, broke all plans for the subbatical. But I was able to revise them, in my opinion, successfully.

This summer I got married :-)

## Technical results

I practice [thinking through writing]{post:thinking-through-writing} — fix every finished intellectual effort with a qualitative text. The blog works as a base of reports on the work done. Therefore, there will be many links to report-essays below. Follow them if you want to know more about a specific activity.

### Blog

The main discovery of these years for me was my productivity as a writer.

During two years, I wrote 141 essays — more than one text per week. Considering the size and content of the essays, this seems like a significant achievement to me.

The total volume of text exceeded 130,000 words. One and a half times more than in the first Harry Potter novel. About the same as in the volume of "War and Peace".

Couldn't say that before going on sabbatical I was able to write a lot of useful texts in a fast way. There were several successful posts on Habr, but that was all. Looking at the first months of the sabbatical, it is clear that the essays were mainly about the books I read, rather than unique topics.

Practice gave me a lot of experience. At the beginning of the vacation, I could spend more than a week working through the material and preparing a post; now a complex essay takes about three days, some are written in hours. Therefore, I expect to continue writing in comparable volumes after returning to work.

The outcome of thinking through writing exceeded my wildest expectations. I unloaded my head, reorganized the information in it, freed up resources for thinking about complex stuff. It's hard to convey these feelings, you have to try it.

And now I don't need to remember what I thought years ago to argue in discussions. I have texts with clear arguments at hand. Very convenient.

[More about the blog]{post:@choose-nearest-language:about-blog} I spoke in a separate post.

### Areas of focus

I split my time between the following activities:

- Prototyping and studying new technologies.
- Formalizing my gamedev experience.
- Formalizing my software development experience.
- Reflecting and working through thinking techniques.
- Books.
- Updates for [The Tale](https://the-tale.org/) — released 5 updates.
- Reflecting on the events around me, both technical and not so much.

Everything is pretty clear with "The Tale" and reflection on events. Let me tell you more about the rest.

Once more, I want to emphasize that each post is a report on the work done.

### Prototyping and studying

These activities took most of the time, and their results I consider the most interesting.

I prototyped some cool stuff, all sources are open:

- [Smart Imports](https://github.com/Tiendil/smart-imports) — library for automatic dependency discovery and importing on the time of Python module import.
- [Morphologic](https://tiendil.github.io/morphologic/#/) — software for [morphological analysis](https://en.wikipedia.org/wiki/Morphological_analysis_(problem-solving)) of solution spaces. Simultaniosly, I refreshed my frontend knowledge and looked at Vue.
- [Pydicates](https://github.com/Tiendil/pydicates) — predicates for Python. The package was born as a by-product of other experiments.
- [Coulson](https://github.com/Tiendil/coulson) — an attempt to analyze types during the execution of a Python program. It works, but I postponed its development until better times.
- [Tutorial on procedural dungeons generation]{post:dungeon-generation-from-simple-to-complex}

A handful of projects never made it to release for various reasons. In particular, there were some experiments with procedural generation.

Studied fundamental technologies in depth:

- Type analysis in Python: [static and dynamic]{post:@choose-nearest-language:trendy-typing-in-python}, made my own [runtime type analyzer]{post:@choose-nearest-language:python-types-are-not-great}.
- Julia: [in theory]{post:@choose-nearest-language:julia-is-next-python} and [on practice]{post:@choose-nearest-language:julia-experience}. I choose a [DSL for procedural generation](https://github.com/Tiendil/pcg-julia) as a learning project.
- API standards: [GraphQL]{post:@choose-nearest-language:graphql-and-python}, [OpenAPI]{post:@choose-nearest-language:python-and-openapi}.
- [Database migration libraries and utilities]{post:@choose-nearest-language:backend-migrations-in-practice}.
- State of the art approaches to testing. Experimented with [hypothesis]{post:@choose-nearest-language:python-hypothesis}, finally switched to pytest.

The last months I was digging into machine learning and neural networks:

- [Refreshed my knowledge of calculus]{post:@choose-nearest-language:math-refresher}.
- [Completed MIT’s introductory course on deep learning]{post:@choose-nearest-language:6-s191-introduction-to-deep-learning}.
- Implemented a few learning projects, [published them on github](https://github.com/Tiendil/public-jupyter-notebooks):
  - [setting up infrastructure for DL]{post:@choose-nearest-language:you-cant-just-take-and-run-dl};
  - [digit recognition]{post:@choose-nearest-language:kaggle-digit-recognizer-solution}, with a look at Kaggle;
  - [implementing a Generative Adversarial Network]{post:@choose-nearest-language:generative-adversarial-network-implementation}.
- Made forecasts about the prospects of ML:
  - [in technical fields]{post:@choose-nearest-language:feature-programming};
  - [in social fields]{post:@choose-nearest-language:ai-will-not-or-will-replace-us-all}.

Additoonally:

- [Took a broad look at the leading programming languages]{post:@choose-nearest-language:thoughts-on-programming-languages}
- Revamped my development environment and [updated Emacs configs]{post:@choose-nearest-language:update-emacs-configs}.

### Gamedev

I went on my break with a clear sense that I needed to properly reflect on the results of my work on The Tale — something I had never managed to do either while working on it or during my time at Melsoft.

It turned out I really had gained a lot of experience, and had plenty to talk about:

- [about the worlds building]{post:@choose-nearest-language:about-worlds-building} and [dungeons design]{post:@choose-nearest-language:how-to-design-a-dungeon}
- [about game mechanics as resource converters]{post:@choose-nearest-language:resource-model-of-the-game-resources} and [how to work with them]{post:@choose-nearest-language:about-resource-gathering-mechanics}
- about MMO design:
  - [gamedesing frontier]{post:@choose-nearest-language:next-gamedesign-frontier}
  - [mechanics design]{post:@choose-nearest-language:space-of-mmo-mechanics}
  - [the dynamics of fun]{post:@choose-nearest-language:about-the-degradation-of-fun} and [how players perceive the game]{post:@choose-nearest-language:the-significance-of-the-event-in-the-mmo}
  - [problems of multiplayer worlds]{post:@choose-nearest-language:bots-and-twinks-in-games}
- [about the impact of the mass market on a concept of a game]{post:@choose-nearest-language:one-form-two-products}

So, if you are planning to develop a game with social interactions, especially an MMO, I will definitely be useful to you.

I also started publishing game concept documents that had been piling up in storage: [The Tale]{post:@choose-nearest-language:the-tale-concept-document}, [News Makers]{post:@choose-nearest-language:concept-document-news-makers}, [NoCraft]{post:@choose-nearest-language:concept-document-nocraft}, [Tales]{post:@choose-nearest-language:concept-document-for-the-game-tales}.

### Разработка ПО

Эссе сугубо об опыте разработки вышло не много, по двум причинам:

- эти моменты я обдумывал и до отпуска;
- многие штуки были затронуты в рамках более абстрактных эссе.

В итоге я описал [реализацию GDPR]{post:how-i-did-and-would-do-gdpr-support}, результат [открытия исходников Сказки]{post:what-happens-if-you-open-the-code-of-your-game}, [сложности преобразований данных]{post:infinity-of-data-schemas}, [нюансы верификации ПО]{post:verification-with-special-cases}, [подходы к миграциям backend]{post:about-backend-migrations}.

### Приёмы мышления

За карьеру я часто сталкивался с ошибками людей, включая меня, из-за пробелов в базовых навыках мышления. Точнее в том, что я считаю базовыми навыками :-)

Эти случаи начали настолько меня раздражать, что я решил написать книгу на эту тему. Но быстро обломался — кусок был не по зубам, с наскока не взять.

Поэтому я начал нарабатывать материал для неё. Часть эссе пишу по собственному плану, часть — по наитию, как реакцию на события вокруг меня.

Прогресс идёт медленно, но неотвратимо. Жирным выделено обязательное к прочтению:

- [Интеллект, компетентность и принятие решений]{post:intelligence-competency-and-decision-making}
- [Травмирование формализмом]{post:formalism-injury}
- [**Жизнь и работа с ошибками**]{post:life-and-work-with-mistakes}
- [**Гены, мемы и мемплексы**]{post:genes-memes-memeplexes}
- [Этика передачи знаний]{post:ethics-of-knowledge-transfer}
- [**Учитесь правильно**]{post:learn-right}
- [Ремонт сложных систем]{post:repair-of-complex-systems}
- [Про символы]{post:about-symbols}
- [Организация информации]{post:organization-of-information}
- [**Композиция vs классификация**]{post:composition-vs-classification}
- [**Экзокортекс 3.5**]{post:exocortex-3-5}
- [Как я знакомлюсь с историей]{post:how-do-i-learn-history}
- [Системное мышление на практике]{post:systems-thinking-in-practice}
- [**Жизнь и работа с моделями**]{post:life-and-work-with-models}

### Книги

Прочёл 26 независимых произведений, томов/книг чуть больше — 31. Не все из них достойны внимания, но в целом я ответственно подхожу к выбору литературы, так как читаю долго и своё время ценю. Все рецензии можно найти по тегу [книги]{tags:books}.

Каждое эссе о книге сопровождается отзывом и, если есть смысл, выдержкой самого интересного.

Особенно рекомендую эти:

- [книги Сюзанны Кларк]{post:susanna-clarke-books} — лучшее описание магии, которое встречал;
- [Иллюзия знания]{post:illusion-of-knowledge} — об эволюции и распространении информации;
- [Масштаб]{post:scale} — о базовых физических законах самоорганизующихся систем;
- [Изобретение науки]{post:about-book-invention-of-science} — как появилось то, что мы сейчас зовём наукой;
- [WTF?]{post:about-book-wtf} — о концепции платформы и подрывных технологиях;
- [Сильнейшие]{post:about-book-powerful} — о культуре Netflix.
- [Первая кругосветка Кука]{post:cooks-first-around-the-world-context} — заметки по дневнику Кука в 6 постах.

### Главная неудача

Учитывая проблемы у страны и планеты, невыполнение части планов на отпуск я не считаю неудачей — мир шатало и меня с ним.

Например, хотел завершить отпуск выпуском небольшой игры в steam за полгода, но пришлось потратить это время на другие дела.

Но неудача всё-таки есть — не получилось реализовать личную автоматизированную базу знаний. Посты о разработке можно найти по тегу [Тарантога]{tags:tarantoga}.

Проделал много работы, реализовал два прототипа, но желаемый результат так и не получил, хотя и приблизился к нему. Буду делать третий прототип, но уже в более спокойном темпе.
