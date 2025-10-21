---
title = "Engineering is science is engineering"
tags = [ "theory", "development", "interesting", "management", "vantage-on-management", "science"]
series = "vantage-on-management"
published_at = "2025-10-21T12:00:00+00:00"
seo_description = "I'll show that engineering and science are conceptually close and are increasingly converging, meaning they can borrow practices from each other."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "A visual depiction of engineering and scientific approaches."
///

/// brigid-series
tag = "vantage-on-management"
///

In the [previous post]{post:no-instructions-for-engineering}, we discussed that engineering is a creative activity that cannot be reduced to following instructions. Therefore, to manage engineering teams, it is necessary to use practices intended for creative teams.

And what could be more creative than ~~a jazz band~~ science?

That's why, in this post, I will try to show that engineering is conceptually much closer to science than it may seem at first glance, and that in the modern world, these disciplines are converging with increasing speed. I would even bet that the boundary between them will disappear someday in the future.

<!-- more -->

/// note | Disclaimers

In the [previous post]{post:no-instructions-for-engineering}, there is a whole disclaimer section regarding discussing engineering and creativity. I will not repeat them here.

In case some statements seem controversial for you, exaggerated, or you do not see mentioning important special cases, please first read that section.

Also note that this essay contains significantly more text from the engineering side than from the science side. Because I am on the engineering side and primarily interested in improving my life :-)
///

## Why engineering resembles science

### Engineers produce new knowledge

In the previous post, we discussed that engineering produces new information.

In this post, I want to make a stronger statement and point out that the information produced by engineering is new knowledge about the world.

There are numerous definitions of knowledge; for our purposes, let me use the following one:

> Knowledge is organized, strongly connected information that enables the creation of reliable [models]{post:@choose-nearest-language:life-and-work-with-models} of the behavior of the surrounding reality, or can be used by such models.

- Records of explosions of various substances are information.
- A formal description of an engine with a given [energy conversion efficiency](https://en.wikipedia.org/wiki/Energy_conversion_efficiency) is knowledge.

From the philosophical vantage, engineering and science produce different kinds of knowledge:

- Science ~~sometimes~~ produces conceptually new knowledge about the world — how the world works — the structure of DNA, Newton’s law of universal gravitation, Einstein’s formula relating energy and mass.
- Engineering produces applied knowledge — how to make a specific thing that will interact with the world in a predictable way — a bridge blueprint, the [source code of the blog](https://github.com/Tiendil/brigid) you're reading now, the design drawings of the Large Hadron Collider.

Science imposes many constraints on the knowledge it produces — for example, the [degree of originality](https://en.wikipedia.org/wiki/Research#Original_researchy) — the knowledge must be new to the scientific community, not merely useful.

/// brigid-images
src = "./scientific-novelty.jpg"
caption = """
Illustration of the current state of novelty production in science.<br/>
Images were taken from [The illustrated guide to a Ph.D.](https://matt.might.net/articles/phd-school-in-pictures/).
"""
///

A substantial part of the knowledge produced by engineering doesn't fit within these constraints. Therefore, one could say that the two have nothing in common — and leave it at that.

However, I would like to point out the following nuances.

**First**, both kinds of knowledge are obtained in the same way — through exploring the [space of possible solutions](https://en.wikipedia.org/wiki/Feasible_region) — and require the same set of skills and tools.

Since we're talking about human activity, what matters more to us are the similarities in tools, processes, and the ways of interacting with the final product, rather than the differences in the philosophical definitions of its essence. If something looks like a duck, swims like a duck, and quacks like a duck, [it's probably a duck](https://en.wikipedia.org/wiki/Duck_test).

**Second**, de facto, many scientific disciplines today produce vast amounts of applied knowledge whose scientific novelty is questionable if one follows the letter of ~~law~~ science. At the same time, many branches of engineering have a long history of operating at the frontier of human knowledge — and continue to push it forward.

One could say that the boundary between scientific and engineering knowledge is blurring.

/// note | As an example

A large portion of work in bioinformatics, physics, and chemistry today is devoted to developing software or physical instruments based on existing scientific knowledge.

Engineering advances in [deep learning](https://en.wikipedia.org/wiki/Deep_learning) — and [LLMs](https://en.wikipedia.org/wiki/Large_language_model) in particular — are opening up an entirely new frontier for scientific research, ranging from classical computer science to linguistics, psychology, cognitive science, and philosophy.

///

Large language models are an excellent example of the synergy and emergence arising from the interaction between science and engineering — an intertwining of different kinds of knowledge.

1. Physicists discovered new properties of semiconductors — science pushed the frontier.
2. This enabled [NVIDIA](https://en.wikipedia.org/wiki/Nvidia) engineers to create new computing architectures — engineering pushed the frontier.
3. That, in turn, allowed scientists to make several conceptual breakthroughs in neural networks — science pushed the frontier.
4. Then [OpenAI](https://en.wikipedia.org/wiki/OpenAI) engineers scaled up the new networks — engineering pushed the frontier — and [we got what we got]{post:ai-notes-2024-the-current-state}.

I'd even say that in the field of artificial intelligence, the boundary between science and engineering has already disappeared.

Even [Elon Musk confirms this](https://x.com/elonmusk/status/1950254103474446728) in his typically blunt manner:

> This false nomenclature of “researcher” and “engineer”, which is a thinly-masked way of describing a two-tier engineering system, is being deleted from @xAI today.
>
> There are only engineers.
>
> Researcher is a relic term from academia.

/// note | By the way, here's a little puzzle for you, if you're into philosophy.
Was the degree of originality formulated as a formalization of existing scientific practice, or did scientific practice emerge as a result of following this criterion?
///

### Engineers produce models of the surrounding reality

The idea is the same as in the previous section, but at a slightly higher level of abstraction.

An engineer's work consists in describing, in a formal language, an artifact that will exhibit the required properties within a given environment.

Here are some examples of artifacts:

- A building that will be earthquake-resistant up to 7 on the Richter scale, will have an energy consumption level not exceeding X, and will be habitable at temperatures from -30 to +50 celsius. Provided that it is built on such-and-such ground, from such-and-such materials, using such-and-such technologies.
- A tax accounting program that correctly calculates taxes according to the laws of country N within a given time period, runs on Windows and Linux platforms, and meets certain user expectations for security. The legal requirements, platform properties, and user expectations — all these are parts of the external environment.

Thus, an engineering description of an artifact is, in essence, a particular model of reality — it inevitably predicts the behavior of a small part of it. Like any model, it has its scope of applicability, limitations, assumptions, level of accuracy, and so on.

/// note | Formally speaking

From a modern perspective, engineers describe 4D-systems (3D space + time), which can include not only physical inanimate objects but also people, processes, information flows, and so on.

Even the specification of a nut, formally, describes it in 4D, as it implicitly accounts for changes in the nut's properties over time (e.g., wear and tear) through references to materials and operating conditions.

For the purposes of this essay, this nuance is not essential, but I always try to include a note about it, since it is critically important for engineering.
///

Conceptually, science does the same thing — it creates models of the surrounding reality, only on a broader scale. That's why there is little difference between **idiomatic** scientific and engineering models.

| Model property | Science | Engineering |
| -------------- | ------- | ----------- |
| **Focus**             | **Explanation**<br/>Why something works the way it does (and not otherwise). | **Prediction**<br/>How something should be designed to behave properly in a specific environment. |
| **Type**              | **Universal**<br/>How the world always works.                               | **Particular**<br/>How the world should work under very specific conditions.

Examples of scientific models: `e = mc^2`, [theory of everything](https://en.wikipedia.org/wiki/Theory_of_everything).

Examples of engineering models: detailed design of a specific bridge, microprocessor schematic.

These differences matter in practice — they can be reflected in priorities, tools, and processes — but in my view, they are not significant enough to speak of a conceptual difference in the model creation between science and engineering.

/// note | In reality…

The table above might provoke a strong reaction from both professional scientists and professional engineers, since each discipline uses both types of models to some extent. In science, you can find many purely predictive models, while in engineering, there are also explanatory ones.

Still, it is hard to argue with the fact that:

- The ideal scientific product is a universal model that explains something.
- The ideal engineering product is a very specific, often simplified model that predicts something.

However, we don't live in an ideal world, disciplines are converging (which is what this post is about), so in reality, the boundaries are blurred. Science even tries to confront purely predictive models: for example, some journals refuse to publish papers that merely predict a phenomenon without explaining it. From the scientific point of view, this is probably a positive trend; but in my opinion, complete victory — a full separation of model types — is impossible because of the very nature of, well… let's say, information and the world itself.
///

### Engineers operate under uncertainty

As do scientists.

The imposibility of creating precise instructions for an engineer (see [previous post]{post:no-instructions-for-engineering}) itself implies working under uncertainty. But I would like to elaborate on a couple of points.

**Engineers and scientists are in the same position regarding learning and acquiring knowledge.**

Institutionalized education lags 5-20 years behind [SOTA](https://en.wikipedia.org/wiki/State_of_the_art) practices — that's true for both engineering and science — specialists for both fields are educated in the same universities.

It's an inevitable drawback of institutionalized education: writing a good textbook or developing a solid course requires real-world experience that takes years to acquire. Not to mention that preparing and polishing educational materials can also take years.

Therefore, professionals have to learn through practice, using the same practices (pardon the unintentional tautology):

1. mentorship systems;
2. conferences and other networking;
3. reading papers, blogs, books;
4. experiments and research.

The only real difference, perhaps, lies in the level of formalization:

- Science has created a formal universal system of publication and mentorship; established standardized procedures for conducting experiments.
- Engineering, on the other hand, relies mostly on less formal approaches.

Each approach has its pros and cons, which are beyond the scope of this post.

**The environment always contains an element of uncertainty** — that's true for both engineering and science.

In the case of science, uncertainty arises both from incomplete information about the world (as in physics) and from the inherent variability of the environment being studied (as in biology or the social sciences).

In the case of engineering, uncertainty is mostly comes from the variability of the environment in which the artifact will be used:

– From the dynamics of regulations (for example, in medicine or finance) — we should keep track of changes and adapt our artifacts accordingly.
– From the dynamics of user preferences and behavior — we can't assume users will engage with a new artifact the same way they did with previous versions or analogs.
– From the dynamics of the [anthroposphere](https://en.wikipedia.org/wiki/Anthroposphere) — we don't operate in a vacuum; the results of our work should interact smoothly with the artifacts produced by other engineers.

As recently as half a century ago, changes in the environment occurred slowly — often they could be neglected for a some time. But now the pace of change has accelerated by orders of magnitude, especially in software development.

In my opinion, that's why engineering is becoming more and more like science in spirit, and moving away from classical factory production with exhaustive instructions — we have to deal with novelty more and more.

/// note | By reassembling our tech stack, we discover new things

On the example of software development.

Contemporary reality is such that if your project lasts several years, at the start of the next one you are forced to reassemble the entire tech stack from scratch, maybe even from the hardware level, reconsidering the architecture for new requirements. If your product lives even longer, you will most likely need to change its technologies on the fly, and this must be accounted for in planning, architecture, etc.

Necessity of reassembling the stack stems not only from the pace of changes in the anthroposphere, but also from the knowledge developers gain through their work. The volume of information about technologies, tools, architectures today is such that you won't find two developers who are in a completely identical context and will make completely identical decisions.

It doesn't mean that every time you start from scratch, but a significant part of your tools will have to be replaced or updated if you want to stay at the frontier and make top-notch products.

Accordingly, when adopting something new, we have to understand both its operating principles and its interactions with the surrounding environment and other tools. If we're lucky, there's thorough documentation — but more often, we learn through experimentation: building prototypes and observing how the technologies behave in the scenarios we care about.

By the way, I've never seen truly comprehensive documentation in my life :-)
///

### Engineers comprehend reality through experimentation

To an outside observer — and even to many within the profession — it may seem that experimentation makes up only a small part of engineering work. But that's not the case.

Architects build scale models not out of idle curiosity. Nor should we forget about [in silico](https://en.wikipedia.org/wiki/In_silico) experiments — a broad range of calculations and simulations: from evaluating the reliability of structures to testing the robustness of server infrastructure against [(D)DoS attacks](https://en.wikipedia.org/wiki/Denial-of-service_attack).

However, engineers work under stronger economic and time pressures, follow less formal procedures, which often changes the form of experimentation and blurs the line between experiment and implementation.

**First**, an engineer's goal is usually not to create a 100% SOTA artifact, but to create a "good enough" artifact within given constraints (time, money, resources). Therefore, we can neglect some experiments if we believe that a "well-known" solution will be "good enough".

Note, that does not mean there were no experiments. Before becoming a "well-known" solution, that solution went through many implementations, which indeed were experiments that confirmed its properties and made it "well-known".

**Second**, we always compare the cost of an experiment with the cost of fixing the consequences of a wrong decision. When conducting an experiment is more expensive than fixing a potential mistake, we can skip the experiment as a separate activity. Instead, we run the experiment directly on the "live patient".

For an outside observer, this may look like the absence of an experiment, however, it's just riskier experimentation :-)

/// note | An example from my practice

At the start of a new project at my previous job, I pushed the team to implement our own [distributed transaction orchestration](https://microservices.io/patterns/data/saga.html) rather than use one of the existing solutions.

There were reasons for this choice:

1. We didn't know all the requirements for our product yet.
2. The time required for a thorough investigation of existing solutions (considering point 1) was significantly longer than the time needed to implement the first version of our own solution.
3. We could either implement orchestration from the start (as one of the project's first systems) or painfully migrate to it later, so the window of opportunity was quite narrow — just a few weeks.
4. Orchestration was a key component of the system. Choosing the wrong base technology would make fixing the mistake either expensive or impossible.
5. Most of the third-party systems did not match the team's technology stack, meaning it would be difficult for us to understand their behavior, maintain, and modify them.

So, the choise was between:

1. Abadon orchestration and sacrifice important guarantees it provides.
2. Take a risk and choose a random off-the-shelf solution that might turn out to be fatally incompatible with future requirements.
3. Implement minimal in-house solution and improve it iteratively, gathering data on its usability and efficiency from a live project — in other words, through experimentation.

I pushed the third option. Retrospectively, in my opinion, it was the right choice, although it sparked some debates.
///

That's partly why software development is often compared to assembling an airplane mid-flight — we try out solutions directly on running systems, prepared to roll back, replace, or adjust them quickly if the data indicates an undesirable result.

/// brigid-youtube
id = "Y7XW-mewUm8"
caption = "How it all looks in engineering fantasies."
///

Therefore, good engineering practice includes designing product architecture and processes in a way that enables fast and low-cost experimentation.

Today, in some areas of software development (such as web services and online games), it's possible to run dozens of parallel experiments continuously — both business and technical. This approach is now considered a best practice in itself.

## Why science resembles engineering

We can look at the similarities between engineering and science from another angle as well.

Hovewer, since I'm not a scientist and understand the scientific side of the issue less well, I'll limit myself to some basic observations. It would be interesting to hear the opinions of professional scientists on this topic.

### Возрастает доля предсказательных моделей

На мой взгляд, эта тенденция была и до взлёта машинного обучения, но сейчас она стала куда заметней. Особенно, если смотреть на применение глубокого обучения и LLM, у которых проблемы с объяснениями, но [огромный потенциал в предсказательной силе]{post:ai-notes-2024-generative-knowledge-base}, что ведёт к появлению систем вроде [AlphaFold](https://ru.wikipedia.org/wiki/AlphaFold) или недавней [симуляции динамики жидкости от DeepMind](https://arxiv.org/abs/2509.14185).

Я вижу ситуацию так, что наука может быть и хотела бы сосредоточиться сугубо на объяснительных моделях, но реальность сейчас такова, что предсказательные модели зачастую оказываются более полезными и практически применимыми.

/// note | Идея не нова

<!-- TODO: перевести пост о сумме технологий на английский, он короткий -->

[Станислав Лем](https://ru.wikipedia.org/wiki/Лем,_Станислав) ещё в [Сумме технологии]{post:@choose-nearest-language:summa-technologiae} в 1960-х годах писал, что человечество может отойти от объяснительных моделей в сторону предсказательных.

Книга очень интересная — выдающийся футурологический труд, который остаётся актуальным даже через 60 лет после написания. Причём не только остаётся актуальным, но и во многом сбывается.

Книга обязательна к прочтению — одна из немногих, которые я перечитывал несколько раз и, возможно, буду перечитывать ещё.
///

### Возрастает роль инженерных практик в науке

Сразу два явления толкают науку в сторону большего использования инженерных практик.

**Во-первых**, усложняются научные инструменты и процессы — это требует выстраивания всё более сложных пайплайнов для проведения экспериментов, сбора и анализа данных. Научный пайплайн, по сути, является инженерным артефактом (включает в себя устройства, софт, хранилища данных, конфигурацию всего этого добра, даже людей), а значит требует инженерных навыков и практик для его создания и поддержки.

**Во-вторых**, возрастают требования к воспроизводимости научных результатов (причины этого затрагивать не будем) и контроль за их соблюдением. Это, помимо научных практик, направленных на воспроизводимость экспериментов, требует использования инженерных практик, направленных на воспроизводимость артефактов, которые сопровождают научные эксперименты и научную работу в целом.

В итоге производство инженерных артефактов становится неотъемлемой частью научной работы, что проявляется в разных формах:

- В виде дополнительных требований к публикациям: предоставление ~~работающего~~ кода, данных (понятных и человеку и машине), публичные демо как best practice, etc.
- В виде коллаборации над проектами с открытым кодом для создания наборов инструментов с детерминированным согласованным поведением. От библиотек общего назначения вроде [SciPy](https://scipy.org/) до специализированных наборов инструментария вроде [Bioconductor](https://bioconductor.org/) для биоинформатики.
- В виде создания публичных хранилищ стандартизированных наборов данных: [Gene Expression Omnibus](https://www.ncbi.nlm.nih.gov/geo/), [Wiki Pathways](https://www.wikipathways.org/), etc.

## Общие проблемы науки и инженерии

Кое в чём инженерия и наука сближаются, а в кое в чём они уже почти слились воедино, например, в проблемах.

Проблемы эти — следствия родственных целей и методов — настолько заезжены, что я их просто перечислю, без влезания в детали.

**Перекос в сторону оглашения позитивных результатов и замалчивания негативных**. В науке это известно как [проблема публикационного смещения](https://en.wikipedia.org/wiki/Publication_bias). Инженерия, как всегда, не особо стремится формализовать свои проблемы, но все мы знаем, что ситуация та же. Все любят писать, как круто они чего-нибудь отрефакторили, если метрики положительные, но попробуйте найти пост о неудачном рефакторинге.

**[Закон Конвея](https://ru.wikipedia.org/wiki/Закон_Конвея)** портит жизнь людям в обеих областях. Организационная структура влияет и на то, что вы исследуете, и на то, что вы проектируете.

**Общие этические проблемы**: как не навредить, как сохранить данные людей в безопасности. Масштаб этих проблем примерно одинаков.

**Оценка компетенции коллег** — особенно на высоком уровне, когда человека нужно судить не по знанию стандартизированного базиса, а по способности к обучению, к оперированию мета-понятиями, к организации труда и управлению знаниями, к принятию долгоиграющих решений и действиям в условиях неопределённости, etc.

[Индекс Хирша](https://ru.wikipedia.org/wiki/Индекс_Хирша) — интересный и полезный инструмент для решения этой проблемы, но он далеко не идеален — имеет свои недостатки.

**Прозрачность работы коллективов** — как для их сотрудников, так и для внешних наблюдателей. Никто не знает, чего там конкретно делают как вон-те-вон инженеры, так и вон-те-вон учёные.

## Допустим, инженерия и наука близки

Надеюсь, я достаточно убедительно показал, что это так.

Что же из этого следует?

То, что мы можем учиться друг у друга, заимствовать успешные практики.

Не мне учить учёных, что заимствовать у нас, инженеров, зато у меня есть некоторые мысли по поводу того, что мы, инженеры, можем заимствовать у учёных.

Про это поговорим в следующем посте.
