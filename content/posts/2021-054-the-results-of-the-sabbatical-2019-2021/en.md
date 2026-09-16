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

### Направления деятельности

Время в отпуске разделилось между следующими активностями:

- Прототипирование, изучение новых технологий.
- Формализация опыта в геймдеве.
- Формализация опыта в разработке ПО.
- Рефлексия и проработка приёмов мышления.
- Книги.
- Обновления [Сказки](https://the-tale.org/) — выпустил 5 штук.
- Рефлексия на события вокруг меня, как технические, так и не очень.

Со Сказкой и рефлексией на события всё ясно. Про остальное расскажу подробнее.

Ещё раз обращу внимание: каждый пост — отчёт о проделанной работе.

### Прототипирование и учёба

Основное время ушло на эти занятия. Одновременно их результаты я считаю самыми интересными.

Прототипировал прикольные штуки, все исходники открыты:

- [Smart Imports](https://github.com/Tiendil/smart-imports) — библиотека для автоматического импорта зависимостей во время импорта модулей Python.
- [Morphologic](https://tiendil.github.io/morphologic/#/) — софт для [морфологического анализа](https://ru.wikipedia.org/wiki/%D0%9C%D0%BE%D1%80%D1%84%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7_(%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B5%D1%82%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE)) пространства решений. Заодно освежил знания фронтенда, посмотрел на Vue.
- [Pydicates](https://github.com/Tiendil/pydicates) — предикаты для Python. Пакет родился как побочный продукт других экспериментов.
- [Coulson](https://github.com/Tiendil/coulson) — попытка анализа типов во время выполнения Python программы. Работает, но развитие отложил до лучших времён.
- [Урок по процедурной генерации подземелий.]{post:dungeon-generation-from-simple-to-complex}

Пяток проектов по разным причинам не дошло до релиза. В частности, были эксперименты с процедурной генерацией.

Глубоко изучал базисные технологии:

- Анализ типов Python: [статической и динамический]{post:trendy-typing-in-python}, делал свой [анализатор типов во время исполнения]{post:python-types-are-not-great}.
- Julia: [в теории]{post:julia-is-next-python} и [на практике]{post:julia-experience}. Учебным проектом выбрал [DSL для процедурной генерации](https://github.com/Tiendil/pcg-julia).
- Стандартах API: [GraphQL]{post:graphql-and-python}, [OpenAPI]{post:python-and-openapi}.
- [Библиотеках, утилитах для миграции баз данных]{post:backend-migrations-in-practice}.
- State of the art подходах к тестированию. Посмотрел [hypothesis]{post:python-hypothesis}, наконец перешёл на pytest.

В последние месяцы разбирался с машинным обучением и нейронными сетями:

- [Вспомнил матанализ]{post:how-to-teach-and-not-teach-math}.
- [Прошёл вводный курс MIT по Deep Learning]{post:6-s191-introduction-to-deep-learnin}.
- Сделал ряд учебных проектов, [опубликовал на github](https://github.com/Tiendil/public-jupyter-notebooks):
    - [подготовка инфраструктуры для DL]{post:you-cant-just-take-and-run-dl};
    - [распознавание символов]{post:kaggle-digit-recognizer-solution}, глянул на Kaggle;
    - [реализация Generative Adversarial Network]{post:generative-adversarial-network-implementation}.
- Сделал прогнозы о перспективах ML:
    - [в технических областях]{post:feature-programming};
    - [в социальных областях]{post:ai-will-not-or-will-replace-us-all}.

Также:

- [Посмотрел на топовые ЯП в целом.]{post:thoughts-on-programming-languages}
- Пересмотрел рабочее окружение, [обновил конфиги Emacs]{post:update-emacs-configs}.

### Геймдев

Я уходил в отпуск с чётким ощущением, что необходимо хорошо обдумать итоги работы над Сказкой, чего мне никак не удавалось сделать ни при работе над ней, ни во время работы в Melsoft.

Оказалось я действительно получил много опыта, есть что рассказать:

- о проектировании [миров]{post:about-worlds-building} и [подземелий]{post:how-to-design-a-dungeon}
- [о механиках игры, как преобразователях ресурсов]{post:resource-model-of-the-game-resources} и [работе с ними]{post:about-resource-gathering-mechanics}
- о ММО:
    - [направлениях развития]{post:next-gamedesign-frontier}
    - [дизайне механик]{post:space-of-mmo-mechanics}
    - [динамике фана]{post:about-the-degradation-of-fun} и [восприятии игры игроками]{post:the-significance-of-the-event-in-the-mmo}
    - [проблемах многопользовательских миров]{post:bots-and-twinks-in-games}
- [о влиянии массового рынка на концепцию игры]{post:one-form-two-products}

Если вы планируете делать игру с социальными взаимодействиями, тем более ММО, я определённо вам пригожусь.

Плюс, начал публиковать копившиеся на складе концепты игр: [Сказка]{post:the-tale-concept-document}, [News Makers]{post:concept-document-news-makers}, [NoCraft]{post:concept-document-nocraft}, [Сказания]{post:concept-document-for-the-game-tales}.

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
