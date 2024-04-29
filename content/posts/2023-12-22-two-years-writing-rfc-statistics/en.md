---
title = "Two years writing RFC — statistics"
tags = [ "thinking", "practice", "development", "reflection", "systems", "theory",]
published_at = "2024-04-15T12:00:00+00:00"
description = "Statistics for two years of practicing writing RFC in the team. With notes on the correlation of metrics with the dynamics of the team."
seo_image = "images/two-years-writing-rfc-statistics-rfc-count-per-year.png"
---

/// brigid-images
src = "images/two-years-writing-rfc-statistics-rfc-count-per-year.png"
alt = "The number of RFCs over two years"
///

More than two years ago I became a Lead/Engineering Manager at Palta's payment team. At the end of 2023 I left the company for another [subbatical]{post:@choose-nearest-language:the-results-of-the-sabbatical-2019-2021}.

It is time to sum up. I will start with my favorite initiative.

From the first month, I was promoting the idea of preceding major changes with text documents — [RFC](https://en.wikipedia.org/wiki/Request_for_Comments) — Request for Comments.

In this post, I will analyze two years of applying this practice. To share the experience, summarize the results, and have convincing arguments for my next job.

<!-- more -->

## What is RFC, what do they look like, and why are they needed

The RFC concept is quite well known by engineers, but it is not precisely defined. Everyone understands it in their own way.

So, first, I will briefly outline my vision, which is based on several postulates:

- Comfort of people is more important than formalities.
- Most of developers are not making Google, most of companies are not the size of Google, etc. Most of us are not responsible for the lives and health of people.
- It is more convenient to work in small teams.
- Therefore, we can work simpler.

### Request For Comments vs Request For Change

People interpret the abbreviation RFC differently:

- Request for Comments
- Request for Change

I prefer the first option because it is broader and less demanding on developers.

When a developer writes a request for change, they are formally sign this request "with their own blood," which is not always possible and can be uncomfortable. It takes more time to prepare such a document, and the potential profit may not exceed the costs.

By requesting comments, an author can relax a little, allow themself to make mistakes. Therefore, a developer can be more creative and prepare the document faster. Yes, something may be missed, but such errors can be caught at the next stages of development.

### Document structure

The most famous documents of this kind: [classical RFC](https://en.wikipedia.org/wiki/Request_for_Comments), [Python Enhancement Proposal](https://en.wikipedia.org/wiki/Python_(programming_language)#Development), and others — are very formal. It is understandable, more responsibility leads to more formalities. Writing internet standards or changing a programming language is no joke.

But we, although we are a payment team, are not responsible for the future of all humanity and do not have hundreds of stakeholders. Therefore, RFCs were initially introduced without a fixed structure. The main criterion was "the readers should understand the document".

We discussed several times the formalization of the RFC structure. We agreed that on our scale, the harm from tightening the screws would be greater than the benefit.

In fact, after some practice, the general structure was applied without explicit standardization. Teammates look at each other's documents and adopt the best practices, but there is no requirement to follow a specific form.

For example, I am a little obsessed with the formal structure, but I do not require this from others. Quick preparation of structured documents is a separate skill that not everyone has, and not everyone wants to develop it. We should not force people to learn such skills unless they absolutely need them.

### Examples of RFC topics

The topics of our RFC were limited to four themes: architecture, processes, analysis, and planning. Later in the post you will see a lot of plots with these themes, but for now, just a few real RFC titles to avoid being unfounded:

- The architecture of our fraud prevention system
- Synchronization of subscriptions changes
- Metrics
- Architecture vision
- Comments on OKRs for Q1/23
- Requirements for a project management tool
- Testing and test process
- Review & better classification of technical tasks
- Open questions about work processes

### Why RFC are helpful

In short, this is the practice of [thinking through writing](post:@choose-nearest-language:thinking-through-writing) at the team level. Read the text at the link if you want to dive deeper into the topic.

**Each activity should leave an artifact.** RFC is an artifact of the mental work that all developers do, but almost never save the results. This leads to loss of a lot of work over time — it fades from memory. RFCs save these results.

**By transferring thoughts into text, a person verifies their [mental models](post:@choose-nearest-language:life-and-work-with-models).** Even the fact of writing down thoughts improves understanding of the task, reveals errors, and so on.

**Cheap knowledge base.** Cheap because RFCs do not need to be kept up to date, like regular documentation. At the same time, they remain useful and relevant. This is the history of the project's development, that is very convenient when you have to deal with technological archeology.

**Knowledge exchange.** It is not always possible to quickly transfer developers between parts of the project so that they share knowledge in practice. This is expensive. Discussing RFCs allows team members to share basic knowledge about the project.

**Fast feedback.** The sooner you find a mistake, the cheaper it is to fix it. RFCs allow you to find problems before they are transferred to a code, which is very cheap.

**Simplifies onboarding.** A new employee can be sent to read the RFCs in order, and after that, they will more or less understand what is happening and what path the project has taken.

**Asynchronous discussions** (chats, forums, comments) are more effective than synchronous (meetings). I have not yet met a person who could immediately discuss complex things in real time. I can't do it either. Asynchronous communication not only improve discussions but also do not break the day of developers, which is very important — they stay in their flow.

## Introduction to collected statistics

In the following text there will be several parts with graphs. At the beginning of each part there will be an introduction: what is shown, what the graphs indicate, etc.

But first, a few notes on the data and the collection method:

- I am the initiator of the practice and I analyzed it myself. Some distortions are inevitable, take this into account.
- We keept the documentation in Notion. To get some data, I had to export the documents as HTML and parse them. The code was checked, but even the best make mistakes.
- For some documents, it was difficult to determine the author: was it a full collaboration or one person made the document template and the other filled it in. In this case, I tried to determine the main author from memory.
- I determined the topic of the RFC and the document status according to my expert opinion and memory. The history is only for two years, the documents are quite clear, everything has passed through me, so there should be no significant inaccuracies. But I could make a couple of typos in the table on which the graphs were built.
- The data is maximally anonymized. No names, nicknames, titles, etc. Only numbers and graphs. The project is alive, tied to money. I don't want to deal with unnecessary approvals
- The statistics were collected exactly for two calendar years. During this time, both the team and the project changed. This should be taken into account. Also, it is visible in the graphs.
- The core team grew from 3 to 7 people. At the end of the year, there are 19 people on the team's Slack channel, all of them can be considered stakeholders of the practice. Most of them participated in the discussion of at least one document.

## Statistics

### The dynamics of RFC preparation

- A total of 76 RFCs were prepared.
- The number of RFCs in the first year is twice as high as in the second. The first year was about laying the groundwork, the second was about tuning and implementing more business tasks.
- The dynamics of the number of RFCs per quarter shows how the development gained momentum, reached its peak in the third quarter of the first year, after which the number of major changes began to gradually decrease. I think they will remain at the level of 3 +/- 1 RFC per quarter.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-per-year.png"
alt = "The number of RFCs over two years."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter.png"
alt = "The number of RFCs per quarter."
///

### Author breakdown

- The statistics are anonymous. Names are replaced with letters. If you are from my team, write me a direct message, I will give you a decryption.
- You can guess that `A` is me — the author with the most of the RFCs. Firstly, I was the lead. Secondly, you can only introduce practices by your own example.
- It was pleasantly surprising that only a third of the RFCs are created by me. I thought it would be about a half.
- The breakdown of authors by year shows how the team had changed. New people came, someone left.
- Everyone wrote RFC. In most cases, the first RFC document is prepared during the probationary period. We try to provide an opportunity to do something significant during this period.
- On annual graphs, you can see that all team members participate in the RFC preparation approximately equally. With a correction for spikes, which are typical for a small sample: at one time we actively work on one part of the project with one team member as an expert, at another time — on another part with another team member as the leader of development.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-author.png"
alt = "The number of RFCs for each author."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-author.png"
alt = "The number of RFCs for each author by year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-author-percents.png"
alt = "The share of RFCs for each author by year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-author.png"
alt = "The number of RFCs for each author by quarter."
///

### Актуальность документов

Мы не обновляем RFC — это история. Поэтому, с исторической точки зрения, все они актуальны.

Но всё-таки их можно разделить по их отражению на текущем состоянии проекта.

Я выделил 4 состояния:

- `applied` — как-минимум часть RFC применена в каком-то виде к проекту. Она сейчас есть в коде или процессах.
- `planned` — RFC обсуждён командой, одобрен, но ещё не применён из-за других приоритетов планирования. Обычно это какие-то крупные изменения в архитектуре, которые не нужно делать прямо сейчас, но к которым нужно готовиться.
- `applied & deprecated` — изменения были применены, но потом от них полнолстью отказались. Например, они не сработали, или изменилась концепция проекта.
- `not applied & deprecated` — обсудили, но не одобрили. Или запланировали, но потом концепция поменялась.

В итоге:

- Большая часть RFC применена и актуальна.
- Полностью «бесполезных» RFC около 13%. На мой взгляд это хороший показатель — мы обсуждаем то, что надо. А что не надо — не обсуждаем.
- Чем дальше в прошлое, тем больше `deprecated` RFC. Чем ближе к настоящему, тем больше `planned` RFC. Выглядит логично.
- Можно заметить, что Q3/22 был особенно богат на неприменённые RFC. Это хорошо коррелирует с изменениями планов и команды, которые произошли в Q4/22.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-state.png"
alt = "График количества RFC по актуальности."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-state.png"
alt = "График количества RFC по актуальности по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-state-percents.png"
alt = "График доли RFC по актуальности по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-state.png"
alt = "График количества RFC по актуальности по кварталам."
///

### RFC по доле исследовательской работы

Написание любого RFC предполагает исследовательскую работу. Но мне было интересно разделить документы по усилиям на исследования:

- `no research` — просто сел и написал из своего опыта.
- `with research` — собрал данные, поговорил с людьми, сделал анализ, синтезировал результат.

В итоге:

- Глубокого исследования у нас было не очень много. Особенно в 2022 году, в 2023 стало больше в процентном отношении.
- Я это связываю с тем, что в 2022 команда была маленькой, надо было фигачить, процессы ещё не устоялись, люди не сработались. В 2023 порешали кучу проблем, наладили работу и смогли больше времени уделить исследованиям.
- Большая часть бизнесового планирования у нас находится вне команды. Мне это не особо нравится, но как есть. Поэтому, например, мы не выбираем сервисы с какими интегрироваться. Куда скажут, туда и копаем :-)

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-research.png"
alt = "График количества исследовательских RFC."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-research.png"
alt = "График количества исследовательских RFC по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-research-percents.png"
alt = "График доли исследовательских RFC по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-research.png"
alt = "График количества исследовательских RFC по кварталам."
///

### Распределение по тематике

Как я упоминал, у нас четыре тематики для RFC: архитектура, процессы, анализ (текущего состояния чего-то) и планирование. Этот список не дан свыше, мы его не обсуждали. Фактически, это вещи, о которых мы посчитали необходимым писать RFC.

RFC может закрывать несколько тем. Например, анализ показателей проекта, предложение изменение архитектуры и планирование реализации. Поэтому на графиках сегментов больше четырёх.

Что можно увидеть:

- Около 80% RFC посвящено архитектуре. Неудивительно, всё-таки мы программисты.
- Около 21% — процессы. Когда мержить, как тестировать, как с конфигами работать, как задачи создавать, etc.
- Около 15% — анализ. Например, через полгода разработки я готовил документ с описанием состояния проекта, рисков, динамики, etc.
- Около 8% — планирование. Что когда делать и почему.
- Во втором году уменьшилось количество RFC чисто по архитектуре и увеличилось по всему остальному. Это связано с ростом и перестройкой команды, становлением проекта.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-meta-thematics.png"
alt = "График количества RFC по метатематике."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-thematics.png"
alt = "График количества RFC по тематике."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-thematics.png"
alt = "График количества RFC по тематике по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-thematics-percents.png"
alt = "График доли RFC по тематике по годам "

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-thematics.png"
alt = "График количества RFC по тематике по кварталам."
///

### Количество вопросов на RFC

Notion позволяет комментировать документы. Тут сделан анализ количества потоков обсуждения (threads) на документ. Каждое обсуждение может содержать несколько комментариев. Фактически, это нижняя оценка количества вопросов к документу.

Что важно учитывать:

- Notion позволяет комментировать часть документа (выделенный текст). Одно выделение считается одним обсуждением.
- Notion позволяет комментировать весь документ (отдельный блок в шапке). Весь блок считается одним обсуждением, так как автоматически определить количество вопросов в нём не получится.

Что можно увидеть:

- Четверть документов без обсуждения. Это не значит, что их не обсуждали. Обсуждение могло быть на созвоне или в Slack. Но также есть довольно простые документы, которые просто надо сделать и услышать «всё ок».
- Доля документов без обсуждения в 2023 в два раза меньше, чем в 2022 (15% vs 30%). Команда втянулась, набили руку.
- ~50% RFC содержат больше трёх обсуждений. ~25% — больше восьми. Каждое обсуждение — закрытый риск, обнаруженная ошибка, обмен знаниями. Короткий цикл обратной связи работает.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-comment-threads.png"
alt = "График количества RFC по веткам комментариев."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comment-threads.png"
alt = "График количества RFC по веткам комментариев по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comment-threads-percents.png"
alt = "График доли RFC по веткам комментариев по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-comment-threads.png"
alt = "График количества RFC по веткам комментариев по кварталам."
///

### Количество комментариев на RFC

Аналогично предыдущим выводам. Со временем обсуждать стали активнее.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-comments.png"
alt = "График количества RFC по комментариям."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments.png"
alt = "График количества RFC по комментариям по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments-percents.png"
alt = "График доли RFC по комментариям по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-comments.png"
alt = "График количества RFC по комментариям по кварталам."
///

### Количество комментариев на дискуссию

- Длинных дискуссий в комментариях нет. Либо всё решается быстро, либо переходим на другие каналы общения. В основном потому, что комментарии Notion очень неудобны.
- На второй год дискуссии стали более конкретными. Больше дискуссий с комментариями, но меньше с большим количеством комментариев. Думаю, частично научились обсуждать, частично вопросы стали более приземлёнными — меньше философии и абстракций.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-comments-per-discussion.png"
alt = "График количества RFC по комментариям на ветку."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments-per-discussion.png"
alt = "График количества RFC по комментариям на ветку по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments-percents-per-discussion.png"
alt = "График доли RFC по комментариям на ветку по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-comments-per-discussion.png"
alt = "График количества RFC по комментариям на ветку по кварталам."
///

### Количество участников в обсуждениях

Количество людей, которые написали хоть один комментарий к RFC. За вычетом автора.

- Доля RFC без участников обсуждений чуть больше, чем доля без обсуждений. Иногда автор сам пишет комментарий или вопрос к своему тексту. Этот вопрос может быть отвечен не в Notion.
- Часть RFC обсуждается подгруппой команды — только заинтересованными людьми. На мой взгляд это нормально. Не надо отвлекать всех от работы и тратить время людей. В большинстве случаев заинтересованные сами приходят в обсуждение.
- Больше половины RFC обсуждаются тремя и более людьми. Это хорошо. Значит несколько пар глаз верифицируют текст, понимают его достаточно, чтобы задать вопрос. Следовательно снижаются риски, шарятся знания.
- Большинство RFC обсуждаются внутри команды, но иногда мы приглашаем людей из вне.
- В 2023 году больше людей стало обсуждать RFC. С одной стороны команда выросла, с другой — практика прижилась.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-participants.png"
alt = "График количества RFC по участникам обсуждения."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-participants.png"
alt = "График количества RFC по участникам обсуждения по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-participants-percents.png"
alt = "График доли RFC по участникам обсуждения по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-participants.png"
alt = "График количества RFC по участникам обсуждения по кварталам."
///

### Участие людей в написании RFC в разбивке по людям

- По аналогии с первыми графиками, `A` — это я.
- Все пишут примерно поровну, кроме меня.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-members-author-of-rfcs.png"
alt = "График разбивки количества RFC по авторам по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-members-author-of-rfcs-percents.png"
alt = "График разбивки доли RFC по авторам по годам."
///

### Участие людей в обсуждениях в разбивке по людям

- По аналогии с первыми графиками, `A` — это я.
- На второй год, RFC стало меньше, но каждый стал принимать больше участия в их обсуждении.
- Можно заметить, что в команде и проекте были сильные изменения.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-members-participated-in-rfc.png"
alt = "График разбивки количества RFC по участникам обсуждения."

[[images]]
src = "images/two-years-writing-rfc-statistics-members-participated-in-rfc-percents.png"
alt = "График разбивки доли RFC по участникам обсуждения."
///

## Выводы

Внедрение RFC было большим экспериментом для меня. Я знал, что практика точно будет работать для меня лично и что, в теории, мышление письмом должно работать для всех. Но не было уверенности, что команда примет практику и что результаты будут позитивными.

По сути, это был прыжок веры для меня.

На мой взгляд, эксперимент удался:

- Команда приняла практику: все пишут и обсуждают RFC.
- Шаринг знаний идёт.
- Быстрая обратная связь работает.
- Асинхронные обсуждения работают.

Неожиданное: статистика по RFC хорошо отображает состояние команды и проекта, их динамику. В следующий раз попробую сделать её метрикой здоровья команды.

Ложка неизвестности: очень интересно как практика продолжится без меня. Поскольку я лид, то часто инициировал написание RFC, в духе «этот вопрос слишком сложный для устной дискуссии, давайте готовить RFC». Поэтому не ясно будет ли команда писать RFC без подталкивания с моей стороны. Через год кого-нибудь выловлю и спрошу как дела. А может выпрошу себе временный доступ к текстам.
