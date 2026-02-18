---
title = "Scientific practices for engineering — public artifacts"
tags = [ "theory", "development", "open-source", "interesting", "best", "management", "vantage-on-management", "science"]
series = "vantage-on-management"
published_at = "2026-02-18T12:00:00+00:00"
seo_description = "Public artifacts — such as peer-reviewed papers — are among science's most powerful achievements. In this essay, we'll look at how they can be adapted for engineering."
seo_image = ""
---

/// brigid-images
src = "./cover.jpg"
caption = "An engineer demonstrates their work to the community (c) ChatGPT, Leonardo da Vinci"
///

/// brigid-series
tag = "vantage-on-management"
///

In the [previous essay]{post:engineering-is-science-is-engineering}, we discussed how engineering and science are closely related, and therefore can borrow practices from each other.

Let's talk about those practices. Since I'm interested in the engineering side of things, we'll discuss practices that engineering can borrow from science.

Here and throughout this essay, by engineering I mean engineering in IT / software development. I'm confident that the ideas discussed here apply to engineering as a whole, but that field is vast and extraordinarily diverse. The blog format ~~and my innate modesty~~ does not permit me to make such ambitious claims.

This essay is the first of several planned about practices. It focuses on the practice of creating public artifacts (such as scientific papers), the strength this practice gives to science, and the potential gains engineering might aquire by moving to a similar model.

By publicity in this text, I mean global publicity — the availability of an artifact to everyone who might be interested in it.

We'll discuss the following topics:

- What is a public artifact.
- Artifact verifiability.
- Public artifacts as evidence of competence.
- Public artifacts as a criterion of qualification.
- Public artifacts as an axis of employee evaluation.
- Public artifacts as a health metric.
- Problems of moving development to public artifacts.
- How to start.

This text is not a recommendation, but an invitation to discussion. It is full of idealism and controversial statements. I hope for your understanding and comments.

<!-- more -->

## Disclaimer

### Level of abstraction

I consider the practices under discussion to be complex. Each of them involves not only an inherent "technical" complexity, but also the complexity of the cultural shift that was required for practice formation and adoption in science — behind each practice lies a long historical path.

My primary interest right now is to develop a vision of the development culture I want to move towards. Therefore, I will focus on an idealized description of practices, emphasizing their value and potential.

I'll skip such questions as:

- The business economics of adopting these practices.
- The minimal level of competence and maturity of employees required to adopt these practices.
- Social resistance to adopting these practices.
- Privacy and security issues that may arise when adopting these practices.
- etc.

I do it with the full awareness that implementing each specific practice will require to exame and resolve these questions. But it's much easier to examine and resolve them in the context of a specific company and specific people, than "in general".

In other words, we will discuss "ideal practices in a vacuum", not "specific practices in a specific company".

/// note | A shift in business priorities

Nowadays, we can see a cultural shift in business: people are starting to recognize that alongside profit generation, companies may, can and should bring public good.

New organizational forms of companies are arising, such as [Benefit Corporation](https://en.wikipedia.org/wiki/Benefit_corporation).

As a recent example, [OpenAI has reorganized its commercial part into something like that](https://openai.com/our-structure/).

That's why I believe that the mentioned questions are now slightly less "deadly" than they would have been 10 years ago.

///

### Problems of Science

Modern science is afflicted with many ailments (though when was it ever otherwise?). Things do not always work as they should.

In my view, this is not evidence of the failure of scientific practices, but rather evidence that science continues to develop. And, of course, it is a reflection of human nature.

### Some of mentioned practices are already in use

Some of the mentioned practices are already adopted in some form in certain areas of engineering. I will not dwell on digressions like "yes, this exists in some places, but…". It is safe to assume that if I mention an existing practice, I mean that it should be used more widely, more often, and more consistently.

## Public artifacts

In my view, the practice of creating public artifacts is one of the greatest achievements of science — one that has, to a large extent, made our civilization what it is today.

By artifact, I mean any "physically recorded" result of work. Science has formalized some types of such artifacts: journal publications, open datasets, posters and conference presentations, and so on. However, artifact can also be: a blog post, open-source code, a YouTube video, a formally filed bug report, an [RFC]{post:two-years-writing-rfc-statistics}, documentation, and many other things.

/// note | Forms of public artifacts in engineering

Speaking of public artifacts in engineering, we can keep in mind the following non-exhaustive list:

- Patches to open source projects.
- Bug reports to open source projects.
- Qualitative proposals of new features to open source projects.
- Code of internal libraries, tools, benchmarks, IDE extensions, etc.
- Images of containers and virtual machines.
- Design of experiments and their results: from marketing to technical ones.
- [RFC]{post:two-years-writing-rfc-statistics}, architectural proposals, other high-level specifications and standards.
- Educational materials: guides, tutorials, FAQs, recipe books, etc.
- Incident analyses.
- Analyses of cases and problems.
- Conference talks.
- Records of participation in podcasts, round tables and other public events.
- Demos of new features (for example, rendering in games), prototypes, results of participation in hackathons.

///

Not the entire science is built on publicity. Corporations, the military, and perhaps intelligence agencies keep some developments classified. But:

- This is a smaller share of scientific activity.
- Over time, all key works become public or replicated in public form.

### Two types of publicity

It would be more сorrect to consider two types of publicity:

1. Internal publicity — opening artifacts within the company, between teams, departments, etc.
2. Global publicity — opening artifacts to the whole world — to everyone who might be interested in them.

This essay is built with a focus on global publicity, as keeping the focus allows to shorten an already long text, and global publicity is more interesting to me.

However, in the context of this text's ideas, the difference between them is not so significant:

- For small companies, internal publicity is absent as a phenomenon — there are too few people in the company's community.
- For large companies, internal publicity can be conceptually close to global, as the difference between community sizes is like "many people" and "very many people".
- Significant differences in effects may only manifest in medium-sized companies.

/// note | Practice speaks in favor of global publicity

Let's look at the recent explosive growth of Deep Learning and LLM.

At the beginning, there was a period of several years when corporations were trying to keep all developments secret. In 2021, I even wrote a post about concerns regarding [monopolization of machine learning]{post:@choose-nearest-language:monopolization-of-machine-learning}. But now the big players are trying to find a balance between opening and closing their developments. Some open more, some less, but almost everyone opens their developments.

This is not a one-time case, not the whim of a couple of people — this is the consequence of evolutionary pressure towards open development.

**Our civilization has reached a point where closed development is becoming economically inefficient due to the growing complexity of problems and the endless space of possible solutions.** At least in a number of engineering fields.

Science has reached this point much earlier, IT is rapidly catching up, and eventually all other fields will catch up as well.

///

## Artifact Verifiability

One important feature of scientific artifacts is their formal verifiability. Key artifacts such as scientific publications go through a formal peer-review process, which is designed to ensure a certain level of quality and reliability. The more prestigious the journal you want to publish your article in, the higher the requirements for the paper's quality, but the more trust it will have in the community.

Currently, it is difficult to imagine a fully analogous global social mechanism in engineering. However, engineering does not require a perfect replica. It is, after all, a distinct activity with its own nuances. Where science verifies artifacts through the control of causal chains, protocols, and theory, engineering verifies them through practice, experience, and control of dependencies.

/// note | Possible approaches to artifact verification in engineering

To have an anchor for discussion, I propose the following very rough and naive scale of artifact verification levels.

**L0 — no verification** — an unnoticed artifact that does not receive any reaction from the community, and is not used by anyone beyond its authors.

**L1 — social validation** — an artifact gathers positive reaction from the community in the form of comments, reposts, likes, stars on GitHub, etc.

**L2 — authoritative validation** — an artifact receives a positive reaction from recognized experts in the field: opinion leaders, well-known developers, etc.

**L3 — practical adoption** — an artifact is used in real, notable third-party projects, or they refer to it.

**L4 — community "gate" acceptance** — an artifact goes through a formal acceptance/review process in one of the recognized communities. Examples: acceptance of a patch into the Linux kernel, publication in a peer-reviewed journal, approval of a PEP in Python, etc.

The proposed approach can be developed in several directions:

- Distinguish between verifiability within a company and within the broader community. In that case, a verification level might be expressed as `L3/L1`.
- Assess validation, verification, and adoption levels separately.

///

Both approaches have the same consequences:

- New artifacts are built on top of already existing verified artifacts.
- A network of verified artifacts gives rise to a network of trust among their creators.
- The network of trust generates social regulation mechanisms that sustain the quality and reliability of artifacts.

Thus, a feedback loop is formed — one that enables the evolution of the field.

/// note | Open source

In this context, it is worth mentioning [open source](https://en.wikipedia.org/wiki/Open-source_software) as a phenomenon whose artifacts are, in many respects, closest to those of science — including in terms of verifiability.

Started as scattered initiatives to open up source code, open source has evolved into a global social mechanism that generates its own social network, has formal and informal governance mechanisms, culture, and institutions.

If you have doubts about the existence of formal regulatory mechanisms and institutions, take a look at the [patch submission process for the Linux kernel](https://docs.kernel.org/process/submitting-patches.html), the [PEP process in Python](https://www.python.org/dev/peps/), or even the [RFC system](https://www.rfc-editor.org/).

All of this has emerged over the span of just 20-30 years, which indicates strong evolutionary pressure toward openness in development — and it's substantial long-term potential. At this point, open source is no longer merely about "opening software code", developers are increasingly opening the designs of hardware projects as well — from electronics to [houses](https://www.wikihouse.cc/).

///

## Public artifacts as evidence of competence

Because of their publicity and verifiability, artifacts become ideal evidence of the competence of their creators.

In science, publishing in a peer-reviewed journal is not just a way to share results, it's a record in the distributed knowledge base of the fact of a scientist's competence. If you want to assess a scientist's professionalism, understand how to interpret their statements — look at the dynamics and topics of their publications.

In IT, the situation is more complicated, as the [factory floors culture]{post:no-instructions-for-engineering} does not encourage people to open the results of their work. However, this does not mean that openness does not work — many developers create public artifacts, some are even lucky enough to do it during work hours.

For example, it's perfectly possible to judge my competence by my blog and my [GitHub](https://github.com/Tiendil). Some people I know started contributing to open-source projects back in university, and since then have built their public portfolio of artifacts that way. Overall, there are plenty of developers with public artifacts, and their number keeps growing, despite the frankly uncomfortable conditions for creating them.

/// note | Artifacts as evidence of work done

Artifacts evedence not only about competence, but also about the very fact of work being done.

"An artifact as evidence of work done" is a fundamental element of organizing, planning, and controlling work. IT has problems with adapting this concept as well, although it is steadily spreading from team to team. In particular, I keep arguing from time to time that all work should be organized around producing artifacts.

Since this concept is already lives inside software developement and is a more low-level, I won't dwell on it.

///

As in science, engineers have the option to publish artifacts in high-status places, for example, by submitting a patch to a major open-source project, speaking at a notable conference, or drafting an "improvement proposal" in the form of an RFC, a PEP, or their analogous. Even a simple blog post can accumulate enough social capital — likes, reposts, and comments — to become a substantial artifact.

Without public artifacts, it is very difficult to assess the competence of a mature IT specialist within a reasonable time and resources. At best, you can weed out clearly incompetent candidates.

- A resume only lets you compile a list of superficial discussion prompts.
- Take-home tests are detached from reality and therefore meaningless—especially as LLMs (Large Language Models) mature.
- Even after a few hours of conversation, you can only form a first impression of someone and screen for the biggest red flags.
- Coding during interviews doesn't demonstrate any real on-the-job skill.

On top of that, it's hard to control the quality of work of top specialists — their work cannot be validated. If we exaggerate a bit, if you're the only tech lead on the backend, your word is an unbreakable law — no one in the company has the competence to check whether you're bringing value and how much of it you're bringing.

Public artifacts help to partially solve both of these problems through community verification. For example, if your patch to the Linux kernel is accepted, then you probably understand something about Linux.

The problem is that businesses, to put it mildly, don't encourage spending work time on producing public artifacts. As a result, only a small fraction of developers have a portfolio. And as a result, businesses are forced to spend money on expensive hiring processes, and on fixing the mistakes those processes inevitably make.

My highly biased take: **the worldwide overpayment on hiring outweighs potential losses from allocating a share of work time to producing public artifacts.**

Sadly, this opinion sounds more or less confident in the case of global change (when everyone simultaneously changes the policy), but looks much weaker when a single company wants to make the change. If we discard all other bonuses (which we will discuss below), from the point of view of a "single company in a vacuum", such a policy change would look like charity, which is definitely not a business priority.

## Public artifacts as a criterion of qualification

The start of a scientist's career is fairly similar to the start of a software engineer's career.

Here is a very rough analogy between scientific degrees and IT qualifications in terms of the level of independence:

Scientific degree          | Approximate IT qualification
---------------------------|-----------------------------
Bachelor of Science (BSc)  | Junior, sometimes Mid-level
Master of Science (MSc)    | Mid-level, sometimes Senior
Doctor of Philosophy (PhD) | Senior, sometimes Staff

In science, the transition to each next level of qualification requires a creation of a fairly standard set of public artifacts that undergo formal verification in the community.

Yes, the requirements vary from country to country and from university to university, but overall they are quite similar. Having artifacts and context in which they were created (specific university/lab) we may with a high degree of confidence give an assessment of a scientist's qualification.

Imagine that when hiring a Senior developer (and any lower qualification) you see not only the page of their resume with confusing statements about unverifiable achievements, but traces of their real work. Moreover, you automatically see their professional focus and level of competence in those areas.

In my opinion, this would significantly reduce the complexity of hiring for both employers and job seekers.

On top of that, it would let people develop their careers more deliberately, and make it easier to relate their own level of qualification to that of other specialists. As it is now, reaching Senior-level happens completely randomly, and seniors from two companies can differ from each other like night and day.

Of caurse, the evaluation of highly qualified specialists is more complicated. In science, it mainly happens through the evaluation of their latest published papers, as well as through the assessment of their citation count. In IT, it doesn't happen at all: we interview a person and send them on a probation period in the hope that we didn't make a mistake. Therefore, even for top specialists, the possibility of assessing their qualifications through public artifacts would be extremely useful.

## Public artifacts as an axis of employee evaluation

/// note | Making KPIs more objective

We all remember, that [as soon as a metric becomes a target, it ceases to be a good metric](https://en.wikipedia.org/wiki/Goodhart%27s_law).

So I'm not, under any circumstances, arguing that public artifacts should be used as a rigid, single criterion for evaluating employees. People's work should be assessed through a comprehensive set of parameters—without turning any one of them into an absolute, and with safeguards against gaming the system.

**Public artifacts should be treated as just one more equal axis along which employees can be evaluated.**

By adding this axis, **we reshape the evaluation space**, making it more expressive, and therefore more objective.

///

In my view, there's nothing sadder in IT than watching HR and management try to measure the effectiveness of individual employees. Actually, no, what's even sadder is watching them try to steer people's growth, for example through annual goals.

**First**, [the work of an engineer is hard to measure on an individual level]{post:no-instructions-for-engineering}. The only way to do it more or less objectively is through statistical expert evaluation, which is practically impossible within the closed environment of a company due to the excessive cost of such work.

**Second**, if your company can somehow know what most employees will be working on for an entire year, or even six months (how else do you set long-term goals for them?), then you've already lost the competitive race. In today's world, it's impossible to plan simultaneously for such a long time and at such a level of detail. Either you'll dig in your heels and keep doing work that's already outdated (and your product will suffer), or your employees will miss their targets en masse (and your team will get demoralized).

Few things demotivate an engineer more than meaningless annual goals and irrelevant evaluation of their work.

Public artefacts allow us to partially solve both of these problems and even more.

We move traditional goals to the team level, because it is the team, as a statistically significant unit, that can be objectively (more or less) evaluated and managed. After all, from the product's point of view, it doesn't matter who does what and who is responsible for what, it's important that it gets done. The specific distribution of work among employees should be the result of the team's self-regulation, not of the external influence.

We make creation of public artifacts the personal goals of an employee and the indicators of their competence/progress. Since an artifact always has a specific author and a public artifact is more often a derivative of the product rather than its core, we give the employee control over their professional growth and position in the company, taking it away from the team, product, and universe.

Such a split comes with a number of advantages.

**First**, you switch the evaluation of an employee from a statistically unreliable assessment of their work by a couple of people, to a more reliable assessment by colleagues (public work is visible to the whole company, not just the team; people react to it much more actively) and by the professional community.

At the same time, the original evaluation process, handled by a closed group of responsible people (a manager, a lead, HR, etc.), doesn't go away. It shifts focus away from judging vague signals from the person, toward judging the reaction to their public artifacts, and the artifacts themselves.

**Second**, you give your employees the opportunity to work simultaneously on their growth within the company, and on their professional growth and reputation in the community. In the traditional scheme, this is practically impossible.

- This can significantly reduce the load on people, especially the ambitious and talented. Healthy talent performs better.
- Some of the effort that used to be spent outside the company will stay within it.

**Third**, you get flexible and resilient KPIs that easily adapt to changes in your strategy.

If an employee, to demonstrate their qualification, describes the architecture of your product, then no matter how its development turns out, they will still be able to describe it, only the topics of posts or their focus will shift. If you decide to open an internal utility, then you can easily release it regardless (almost) of the direction its development takes.

**Fourth**, public artifacts are usually extremely specific (even atomic), have clear boundaries, and therefore a clear scope of work. This makes them understandable to all participants of the process, which in turn makes it easier to embed work on them into the primary workflow. Unlike personal goals for a project, which, in my experience, are generally not embeddable at all.

As a result, a person comes to their review not with a set of dubious statements that can be correctly perceived by one and a half people, but with a set of specific public artifacts that will be understandable to professionals both inside and outside the company, and **will have value for the person after the review is over**. Thus, preparation for the review ceases to be a formality.

/// warning | Gaming metrics and how to fight it

In any case, people will try to cheat, and something should be done about it.

There are many ways to cheat:

- Skewing time allocation toward producing public artifacts, at the expense of working on the product features.
- Farming social proof by creating pretty-but-meaningless or hype-driven artifacts.
- Grinding out artifact count while sacrificing their quality.

Howevere, there are also ways to fight cheating:

- Focus on the quality indicators rather than quantity. For example, on the diversity of artifact types, rather than artifacts quantity.
- Track the production value of artifacts. An artifact should be the result of work on the product or be used in the process of working on the product.
- Evaluate the level of artifact reuse. For example, how often an utility is used, how often an architectural document is referenced.

///

/// note | A company as the graduating department

Institualization of public artifacts as a criterion of qualification and employee effectiveness turns companies into a kind of graduating departments. That structures and regulates the competition for young talents. Such a change will benefit everyone: people, the industry, and specific companies.

In turn, institutionalization paves the way for the creation of expert councils (within companies and across them) that can evaluate a person's professional progress far more effectively than what we have today. Not perfectly, not fully objectively, but much better.

///

## Публичные артефакты как метрика здоровья

Поскольку создание публичных артефактов предполагается постоянной активностью, эту активность можно всячески измерять и использовать её флуктуации как сигнал об изменении «здоровья» компании, продукта, команды и отдельных сотрудников. Но всё ещё не забываем о [законе Гудхарта](https://ru.wikipedia.org/wiki/Закон_Гудхарта).

Что может быть сигналом:

- Изменение скорость создания артефактов может свидетельствовать об изменении загруженности сотрудников.
- Изменение типов создаваемых артефактов может свидетельствовать об изменении фокуса разработки или свойств продукта.
- Изменение качества создаваемых артефактов может свидетельствовать об изменении квалификации сотрудников, а также об изменении качества продукта.
- Распределение создаваемых артефактов по типам может указывать на качество проработки различных аспектов продукта, а также на качество процессов разработки, связанных с этими аспектами.
- Среднее количество авторов на артефакт может быть показателем уровня коллаборации и коммуникации в компании.
- Сила внешней реакции (лайки, репосты, комментарии, форки, etc.) на артефакты может быть показателем соответствия ваших процессов разработки лучшим практикам и уровня репутации компании в профессиональном сообществе.

Примеры:

- Команда стала создавать значительно меньше артефактов — возможно она перегружена работой.
- Скачёк в количестве патчей в open source может свидетельствовать о том, что продукт упирается в архитектурные ограничения, которые приводят к использованию сторонних библиотек «на максимуме их возможностей».
- Реакция на демо новых фич может быть критерием правильности выбранного направления развития продукта.
- Частое участие в подкастах и круглых столах может свидетельствовать о том, что продукт и компания становятся более заметными в профессиональном сообществе.
- Популярность утилит, которые вы открываете, может свидетельствовать о том, что ваши процессы разработки близки к best practices.

## Сложности перевода разработки на публичные артефакты

Переключение компании на производство публичных артефактов равносильно смене парадигмы. Это не просто изменение процесса, это изменение культуры, мышления, ценностей. Соответственно, это долгий, комплексный, болезненный процесс и от того сложный.

Однако, на мой взгляд, основная сложность заключена не в экономике процесса или его структуре, а в головах людей. Поэтому, для меня этот переход выглядит скорее болезненным, чем экономически рискованным.

Есть несколько сложностей.

### Страшно

Большинство людей не понимают где находится реальная ценность конкретного продукта и, одновременно, боятся брать на себя ответственность за случайное раскрытие секретных секретов (которых обычно нет).

Согласно моему опыту, большая часть кода продукта и знаний о нём даже близко не являются каким-то секретным преимуществом, ноухау и чем-либо ещё — это просто штуки, которые миллионы людей повторяют из продукта в продукт из компании в компанию. Остальные код и знания не являются преимуществом с большой долей вероятности. Особенно это справедливо, если считать только «невидимые» пользователям артефакты.

За свою карьеру я могу вспомнить всего пару случаев которые с большой натяжкой можно было бы отнести к «секретной» технологии или «тайному» знанию, которые являлись реальным конкурентным преимуществом.

Зато таким преимуществом неизменно были конкретные люди, команды и инфраструктура в целом. Ведь продукт — это не код и прочие артефакты, а 4D система, которая включает в себя не только код, но и его конкретные запущенные экземпляры, инфраструктуру разработки и поддержки, процессы, культуру и, конечно же, людей.

Продукт имеет временное изменение за которое отвечают именно люди и именно эти люди являются реальным конкурентным преимуществом.

Утрируя, на примере игр:

- Ценны не секретные формулы баланса, которые пушат монетизацию, а люди, которые поддерживают пайплайн сбора метрик, их анализа и, на основе этого анализа, направляют развитие этих формул.
- Ценны не конкретные шейдеры, а люди, которые поддерживают целостность визуального стиля игры и направляют его развитие, что выражается в создании новых шейдеров.
- Ценны не конкретные алгоритмы шардирования бэкенда, а люди, которые поддерживают непрерывное функционирование и развитие инфраструктуры, что выражается в развитии того же шардирования.

**Поскольку открытие артефактов идёт на пользу сотрудникам, то продвигая его, мы усиливаем компанию.**

### Дорого

Открытие артефактов требует дополнительных ресурсов. Но эти ресурсы не уходят во внешнее никуда, они меняют свойства продукта, а значит, при грамотном управлении, могут косвенно снижать затраты.

Открытие артефактов — это инвестиция в:

- Качество продукта — люди более ответственно относятся к качеству публичной работы, особенно если она явно связана с ними.
- Обмен знаниями — публичные разборы кейсов, выступления на конференции будут с большей вероятностью изучены коллегами и в любой случае станут референсом для решения конкретных задач.
- Репутацию компании и найм — при прочих равных именно репутация определяет выбор работы для многих специалистов, особенно для топовых.
- Инфраструктуру, её надёжность и безопасность. Например, патч в используемый вами open source проект однозначно вернётся к вам.

Конечно, есть и противопоказания к такой реформе. Если ваши сотрудники не мотивированы развивать себя и свою карьеру, или, что ужасно, ваша стратегия строится на текучке и выжиманию соков из людей, то открытие артефактов — не ваш путь.

### Непонятно

На мой взгляд, это самая сложная проблема и самый большой вызов.

Если посадить среднего мидла или даже сеньора писать пост о вашей архитектуре, то он напишет лютую фигню; в лучшем случае — беззубый и бесполезные текст. Это особенно актуально для пост-СССР пространства, где в образовании нет системной подготовки людей к выражению собственных мыслей. На западе с этим лучше, но, судя по публичным площадкам, не то чтобы на порядки.

Схожие соображения касаются прочих направлений.

То есть, если взять случайную компанию и сказать «с этого дня мы работаем через открытые артефакты», то люди растеряются и начнут делать ерунду. Бонусом будет тихое сопротивление из-за непонимания зачем это нужно — людям значително сложнее понимить длинные цепочки причинно-следственных связей, чем короткие.

Поэтому сотрудников надо постепенно обучать недостающим навыкам и вести агитацию — лучше всего личным примером. Для этого нужны понимающие лидеры и свободные ресурсы, которых обычно нет.

## С чего начать

Внедрение такой комплексной реформы будет очень специфичным для каждой компании. Но если бы меня прямо сейчас спросили с чего начать внедрение публичных артефактов, я бы посоветовал:

1. Определить перечень типов артефактов, которые устраивают вашу компанию.
2. Выбрать группу людей, согласных переключить своё годовое ревью на оценку публичных артефактов и начать с них.
3. После первого ревью провести ретроспективу: изучить созданные артефакты, их влияние на компанию, впечатления создателей артефактов и их коллег.
4. На основе ретроспективы расширять и корректировать практику.

С каких типов артефактов может быть удобно начать, от простого к сложному:

1. Записи выступлений на митапах и конференциях — всегда есть активные люди, которые с удовольствием в этом участвуют, даже без мотивации со стороны компании. Не составит большого труда определить их и поддержать их в этом.
2. Патчи в open source проекты. Со стороны это может звучать сложным занятием — надо ещё найти что исправлять. Но по моему опыту, в процессе активной работы над более-менее сложным проектом в год вы будете находить 5-10 проблем разного масштаба в open source. Их обычно обходят, а не исправляют, сугубо из-за того, что эта активность не вписана в рабочий процесс и люди боятся, что их «наругают» за отвлечение от работы над продуктом.
3. Публикация документов архитектурного уровня. Это могут быть как формальные спецификации, так и детальные посты в блоге. В публичном поле всегда не хватает подобной информации и она с благодатью воспринимается профессиональным сообществом. Кроме того, это повод для ваших лидов/архитекторов наконец-то переварить и осознать чего же они такое делают.
4. Демо фич. Демки работают не для всех продуктов, но в некоторых случаях очень полезны. Например, в разработке игр.
5. Открытие внутренних наработок: библиотек, утилит. Сложность с этим не в опасности раскрыть «секреты», которых обычно нет, а в том, что мало людей умеют быстро оформлять open source проекты и поддерживать их. Это отдельный навык, который нужно развивать.
