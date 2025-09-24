---
title = "No algorithm for engineering"
tags = [ "theory", "development", "interesting", "management", "vantage-on-management"]
series = "vantage-on-management"
published_at = "2025-09-24T12:00:00+00:00"
seo_description = "Engineers create novelty, so their work cannot be regulated by detailed instructions. What does this imply for managing engineering teams?"
seo_image = "./cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "\"Engineer Seated\" © ChatGPT + [Vrubel](https://en.wikipedia.org/wiki/Mikhail_Vrubel)"
///

/// brigid-series
tag = "vantage-on-management"
///

I wanted to write this post for 5 years, give or take, and I still don't fully understand why it needs to be written — in my opinion, these things are obvious.

However, I also don't understand some phenomena from work practice and theory, for example.

**Why ~~every~~ most management theories are derived from the experience of physical instruction-driven production, rather than from the experience of engineering and scientific teams?** Instruction-driven — in the sense that the work consists of following detailed instructions.

Of course, people wrote many books with sets of specific practices in the spirit of "How I was an Engineering Manager" or "How we do management at Google," but they are not theories — they are sets of practices for specific cases — to apply these practices wisely, one must have the corresponding theory in mind.

**Why do management practices for instruction-driven teams keep seeping into the management of creative teams?** From attempts to lock in output quotas to using team velocity as a KPI. From trying to utilize 100% of an engineer's time to (implicitly) demanding a blood oath on every estimate. Not to mention denying autonomy in decision-making, imposing rigid schedules, and forcing work in the office.

Both questions are, of course, rhetorical.

The answer to the first one: "That's how it historically evolved" — until the 1980s, it indeed made sense to derive management, crudely speaking, from the organization of manual labor on factory floors. And even then, it wasn't always the case — fortunately, NASA took a different path. But that was half a century ago; we now live literally in the future compared to that time, yet we continue to rely on its concepts — and that's the answer to the second question.

Meanwile, cause-and-effect relationships still there: no matter how strong your team or how brilliant your idea, if you force them through an ill-suited mechanism — alien concepts, alien processes — you'll end up with a poor product and suffering people.

That's why in this and the next couple of posts I want to discuss the role of creativity in engineering work: why it's critically important and where to look for inspiration in managing creative teams.

<!-- more -->

/// note | Disclaimers

**Every job has a creative component.**

For the purposes of this essay and the ones that follow, I may occasionally refer to engineering and scientific teams as "creative teams".

That does not mean I deny the creative component to all other jobs — it exists in every job and often depends more on the person than on their role.

However, we must acknowledge that some work demands more creativity, while other demand less. This distinction inevitably affects how people do their jobs and, consequently, how to manage them in the best way.

**There is no place for absolutes in this world.**

Life is a complex thing — there are rarery teams that are 100% creative or 100% non-creative. Sometimes tasks are mixed, sometimes they alternate.

Let's look at software development — it has a variety of life cycles; circumstances vary. For example, a long-term support or decommissioning phase can be much closer in spirit to instruction-driven physical production than to software engineering, because during that time it may be more economical to perform repetitive work rather than to rethink it creatively — for instance, through automation.

Therfore, when selecting management practices, one must know how far to go, as in any other matter.

**Engineering is a vast field — it's impossible to cover everything.**

As much as I'd like to, I can't cover every possible engineering and near-engineering teams — I simply lack both the time and the firsthand experience.

So, as with everything in this blog, I write through the prism of my personal experience — which is software engineering.

Bias is inevitable. For example, software engineering offers the fastest route for delivering a product to users — sometimes it takes only seconds for millions of people to receive an update and just as little time for developers to see the metrics change. Because of that, I have a less clear picture of the realities of engineering aimed at producing complex physical objects like airplanes, cars, buildings, microchips.

///

## Engineers produce new information

Even in the era of [drawing boards](https://en.wikipedia.org/wiki/Drafting_table), the essence of engineering work was not to copy a drawing one-to-one, but to add something new or create it from scratch. There were even specific roles like "tracer" or "drafting assistant" whose job was to relieve engineers of the repetitive operations.

/// brigid-images
src = "./engineering-drawing-board.jpg"
caption = """
"A pony engineer working on engineering drawing board" © ChatGPT + [Kentaro Miura](https://en.wikipedia.org/wiki/Kentaro_Miura).

It was a tough time."""
///

Nowadays, specialized software makes it possible to eliminate the vast majority of routine operations and focus on the essence of engineering work — creating something new.

**It is impossible to create novelty by following a detailed instruction.**

If an engineer records all their actions from start to successful result and passes this instruction to another person as an exact set of instructions, the output will be a copy of the result, for example, a copy of a tractor blueprint or a program with functionality identical to the original.

We end up with a meaningless and costly process of copying already existing information that does not create new value.

This is especially evident in software engineering, as it deals almost entirely with pure information and is therefore less dependent on physical constraints. We can instantly create many copies of the same program, but by reproducing a copy of information, we do not create something new. Therefore, if programmers perform repetitive detailed work (for example, writing code for each interface button from scratch), it is highly likely that something is going wrong somewhere.

By contrast, if we give a person an instruction, for example, on how to work on an assembly line, then at each cycle of completing the instruction, there will be a copy of a physical product at the output, which will have its own value.

## There can be no detailed instructions for an engineer

So, detailed instructions are not suitable for engineering work, as they will not lead to the creation of new information, and therefore will not create value.

Thats why.

**Engineers act within guidelines and constraints, not within instructions.**

/// note | The overwhelming difference in the size of the space of possible actions

Every worker always acts within some space of possible actions. The boundaries of this space are determined by many factors, including the field of activity, available resources, skills and experience of the person, external conditions, etc.

But the most significant factor affecting the size of this space is the degree of freedom granted to a person in their work. Defining this freedom "through instructions" versus "through guidelines and constraints" leads to a radical difference in the size of this space and the qualities of the work result.

Detailed instructions set very narrow boundaries, making steps of the worker "predictable", which leads to a predictable final result. With instructions, we **narrow the [solution space](https://en.wikipedia.org/wiki/Feasible_region)** to a very narrow area to guarantee the same result every time. For example, to produce identical kettles on a conveyor belt.

Guidelines and constraints set broad boundaries, making steps of the worker "unpredictable", which leads to a novelty in the final result. With guidelines and constraints, we **shape the solution space** to guarantee an existence of a spectrum of possible results with novelty and desired properties. For example, to produce blueprints of different car models.

**The moment guidelines and constraints turn into detailed instructions, the efficiency of an engineer drops by orders of magnitude** — instructions shrink the area of possible actions, and therefore the area of solutions that can be explored.

Here are some real-life examples of the difference between these approaches:

- White and black lists for allowed actions. Let's say, for website access. If you add 3 websites to the white list, a person can only visit those 3 sites. If you add 3 websites to the black list, a person may not even notice they have restrictions.
- Mandatory school uniform vs free "decent" dress code. The first creates uniformity but guarantees an expected level of style for the whole school. The second creates a spectrum of styles, giving a chance for bright memorable images to appear, but does not guarantee that all students will be dressed decently enough to represent the school.
- Music: playing from sheet music versus improvisation. The former guarantees a faithful performance of a known piece, while the latter offers the chance to create a new masterpiece.
///

Guidelines are [heuristics](https://en.wikipedia.org/wiki/Heuristic) on how (most likely) to act in a specific situation to achieve a desired outcome. A good example of guidelines can be [TRIZ](https://en.wikipedia.org/wiki/Theory_of_Inventive_Problem_Solving), [design patterns](https://en.wikipedia.org/wiki/Design_pattern_(computer_science)), or various [feedback loops]{post:hypothesis-testing-loop}.

Constraints are boundaries that should not be crossed. For example: never releasing a drug without clinical trials, using only certified components, designing a structure for a specified maximum load, adhering to standards and regulations, and so on.

/// note | Meta-algorithm is not an instruction

One may say that some classic cycle like "data collection -> analysis -> synthesis -> implementation" is an instruction, and therefore engineering work can be described by an instruction.

However, every stage of such a cycle does not imply any specific actions and is highly context-dependent: from the field we operate in to the specifics of the particular task.

For example, for the action "analysis," in one case we may need to launch a new project to develop specialized software and deploy infrastructure (which will lead to the launch of a sub-cycle), while in another case it may be sufficient to approach an expert colleague and ask for their opinion.

Such meta-algorithms are, by their nature, [fractal](https://en.wikipedia.org/wiki/Fractal)/[recursive](https://en.wikipedia.org/wiki/Recursion) — each of their stages can unfold into the application of the original algorithm at a smaller scale. An example can be found in a recent post about the [hypothesis testing loop]{post:hypothesis-testing-loop}.

Therefore, a meta-algorithm is not an instruction but a guideline. An engineer, in turn, decides how exactly to follow this guideline at each step of the algorithm and whether to follow it at all.
///

## It is ~~impossible~~ difficult to measure an engineer's work on an individual level

Since every engineer:

- Works in a unique context (solution space) — creates specific new novelty.
- Explores the solution space in their own way — carries out unique operations in a unique order.

**It is difficult to objectively compare the work of two engineers.**

For example. Let's skip the trivial classic case of counting lines of code per person. Let's compare the number of bugs a programmer introduces into the product per unit of time. If programmer A introduces X bugs per month, and programmer B — 2X, with the same number of closed tasks. Does that mean programmer B is twice as bad as programmer A?

Of cource not. Programmer B might have worked with more complex code, under tighter deadlines, with a less mature technology stack, with a framework new to them, or in a less mature team, or it is easier for [QA](https://en.wikipedia.org/wiki/Quality_assurance) to work with the functionality that B is producing.

An effect of all these nuances, as well as many others, is not quantitatively measurable. There is no metric that would allow us to meaningfully quantitatively compare the complexity of code, the maturity of technology stacks, the level of framework proficiency, and other such things.

These nuances can be measured qualitatively, but only based on expert evaluation, which, in turn, will be subjective and non-reproducible. Such an evaluation, if we want it to be reliable, will require the expert to deeply immerse themselves in the team's context, which will take a lot of time and effort. Essentially, only a more experienced member of the same team, such as a tech lead, can do it.

We may try to convert qualitative assessment into statistically significant quantitative data, for example:

- By gathering a group of experts who independently evaluate the context and work of the engineer.
- By asking the team to qualitatively assess each other's work.

But it will be costly and time-consuming:

- In case we gather a team of experts to evaluate the engineering team, we now have two teams — it will be cheaper to left one team of experts work on the original product.
- For a team to evaluate each other, it must be sufficiently mature, and every member has to understand the context of all the others — in other words, there must be nearly 100 % knowledge overlap. This is possible, but it's costly and significantly slows the work. In addition, it introduces ethical and cultural risks.

We event can not compare the work of the same person at different times.

Take, for example, a full-stack developer who in the first week core buttons on the frontend, in the second week implements a microservice, in the third week sets up database replication and optimizes queries, and in the fourth week does code reviews and talks to stakeholders.

That's why.

**The focus of managing engineering teams shifts from the individual level to the level of the team and the product.**

We optimize not the people, but the work processes (within which people operate), the flows of information (between people and processes), and the product metrics ([of which our team is a part]{post:points-of-view-on-a-product})

This approach allows us to operate within more-or-less objective metrics and, thereby, make more meaningful decisions.

This is exactly what things like [Kanban, Teal Organizations, and Lean Startup]{post:vantage-on-management-books} are about.

Rephrasing.

**We optimize guidelines and constraints for our team.**

/// note | Even at the team level, there are nuances

Assume a team together estimates tasks in [Story Points](https://en.wikipedia.org/wiki/Planning_poker) (SP). Can we say that two tasks estimated at 5 SP are equal in complexity and will equally affect the product's dynamics?

Unfortunately, we can't. Task estimation is a probabilistic quantity, so tasks with the same estimate can have different levels of [uncertainty](https://en.wikipedia.org/wiki/Variance). Suppose we have a team of 5 people: 4 frontend developers and 1 backend developer. Such a team will estimate frontend tasks with high accuracy (low uncertainty) and backend tasks with low accuracy (high uncertainty). Accordingly, in one case 5 SP might mean "about 4–6 SP", while in another it might mean "about 2–8 SP".

In this regard, it would be interesting to try estimating tasks using intervals in practice. I even managed to find some discussions on the topic, but I haven't come across any really illustrative examples.
///

## Практические следствия

Необходимо понимать какой тип работ выполняет команда и практики для какого типа работ мы пытаемся использовать. Если эти типы работ разные — мы делаем что-то не так и, скорее всего, вредим команде, компании и продукту.

Для работы с известным фиксированным результатом мы создаём и оптимизируем инструкции. Мы можем количественно измерять эффективность работы на индивидуальном уровне для оптимизации инструкций и развития профессиональных навыков людей.

Для творческой работы мы задаём ограничения исходя из желаемых метрик продукта и нарабатываем базу рекомендаций на основе практики. Мы оптимизируем продукт и его команду, а не конкретных людей. Для развития профессиональных навыков людей мы используем качественную экспертную оценку.

## Теоретические следствия

На мой взгляд, необходимо разворачивать базовые концепции управления в сторону управления творческими коллективами и на основе нового базиса формировать концептуально новые наборы практик.

Сейчас происходит глобальные сдвиг распределения типа работ/профессий/ролей в сторону творческих, со временем их доля будет только возрастать. Массовая автоматизация, внедрения ИИ и робототехники этому отлично способствует. Направляя новый мир старыми методами мы будем не только тратить ресурсы впустую, но и плодить страдания среди работников и клиентов.

В частности, на мой взгляд, инженерии надо заимствовать практики у науки — организовывать команды как научные лаборатории. Почему это надо делать и как я попробую раскрыть в следующих постах.
