---
title = "Notes on coding agents"
tags = ["theory", "practice", "development", "neural-networks", "reflection", "exocortex", "tests", "large-language-models", "ai-agents", "coding-agents"]
published_at = "2026-03-21T12:00:00+00:00"
seo_description = "Notes on using AI agents for software development: pros, cons, issues, insights, and practical advice."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "Agents coding something (c) ChatGPT"
///

When I was [summarizing the last year]{post:results-of-2025-for-me-and-the-blog}, I said that agents will be the main topic of 2026. For the last three months, I have been gradually figuring out how to use them for development, and now we can discuss the intermediate results.

Formally speaking, coding agents are a subset of AI agents, but for simplicity, these terms will be used as synonyms in this text.

How I used agents:

- I refactored and wrote some code in Rust for an experimental game logic engine.
- I used agents for the standard development tasks while working on [Feeds Fun](https://github.com/Tiendil/feeds.fun) (Python/TypeScript).
- Like a true hacker, I decided that if I wanted to understand agents, I had to build something for them. So over the course of a month, I vibecoded [Donna](https://github.com/Tiendil/donna) — a planner for agents (Python).

Since agents are a new thing:

- No one knows how to use them — we are in the process of gaining experience and gathering use cases.
- No one has broad experience using them — either you choose one or two approaches and use them to do your work, or you endlessly experiment without creating value.

Thus, this post will be in the form of subjective notes-theses.

<!-- more -->

## What are agents

For starters, what agents are not:

- They are not "just a [LLM](https://en.wikipedia.org/wiki/Large_language_model)" that does everything by itself in some magical way.
- They are not [strong/weak AI](https://en.wikipedia.org/wiki/Artificial_general_intelligence) that acts like a human.

(AI) Agent is a classic non-AI software — a wrapper-orchestrator over internal and external tools that organizes their joint work to achieve some goal. Tools can be different: internal code, command-line utilities, websites, [MCP services](https://modelcontextprotocol.io/docs/getting-started/intro), LLMs, etc.

You can see this even in the features these agents focus on and in their changelogs: their developers are dealing with safe tool execution, inter-tool communication, orchestration, user interaction, and so on. Questions directly related to AI and LLMs receive comparatively little attention.

Conceptually, an agent may not even contain AI components:

- [Linter](https://en.wikipedia.org/wiki/Lint_(software)) with capabilities for automatic fixes, such as [isort](https://pycqa.github.io/isort/), can reasonably be considered a narrowly specialized agent.
- [GitHub Actions](https://docs.github.com/en/actions) are agents in the most literal sense — they are even reactive — they respond to events in the repository and automatically do things.
- It should be entirely possible to use [Make](https://en.wikipedia.org/wiki/Make) to create a simple agent with an invocation of an LLM as one of the steps in task execution.

No one called these things agents only because there were no reason in using too specialized term.

However, LLMs have breathed new life into the concept.

**First**, LLMs made it possible to connect tools at a higher level of abstraction. Previously, a programmer had to explicitly define [data schema transformations]{post:@choose-nearest-language:infinity-of-data-schemas} between each pair of tools for each specific task; now LLMs can handle this for arbitrary tasks and tools.

**Second**, LLMs can "understand" code at an acceptable level, which allows not only to connect tools but also to introduce changes to the code, do minimal planning.

These two things made agents approach more practical and more relevant.

## My context for using agents

I don't use agents for the sake of using agents, but to do my work more effectively. Therefore, I've never had the goal of trying all possible approaches or all possible software.

Moreover, when I encounter a new thing related to agents, the following chain of events usually happens:

1. "Oh, interesting";
2. "Let's read the documentation";
3. "I don't see how it can improve my life";
4. "Not my case, skipping";

That's why I have a rather ascetic setup right now, plus a small table in Notion with a list of tools/software that I would like to try sometime in the future.

My setup:

- [Codex CLI](https://developers.openai.com/codex/cli) as the agent itself.
- [Donna](https://github.com/Tiendil/donna) — CLI for the high-level planning.
- [ast-grep](https://github.com/ast-grep/ast-grep) — CLI for code navigation and transformation.
- [Huge specs](https://github.com/Tiendil/donna/blob/c1e3f3e1354f60263c220fef5e7b2754deb09190/.donna/project/core/error_handling.md) that are specific to the project (partially in Donna format) instead of skills.

This does not mean I never look at new things or try them out — it means they do not germinate in my workflow.

Currently, I use agents in two scenarios:

1. Ask an agent to make a very specific thing with a very clear description of the changes.
2. Ask an agent to make a big change with a vague description of the changes. After review:
    - either I roll back the change completely, fix the spec and ask again;
    - or I start iteratively fixing the code with small requests;
    - or I finish the work manually.


Now, finally, let us move on to the notes themselves.

/// note | Format of notes

At first, I planned something simple, like lists of pros, cons, trends, etc. But such a style gave birth to a [spaghetti-post](https://en.wikipedia.org/wiki/Spaghetti_code) with a bunch of cross-references and caveats. So I rewrote it — we will look at agents through different prisms.

///

## The upside comes from agent architecture, the downside — from LLMs

This is probably the main insight from processing the notes:

- Things that automatically work on your tasks — good.
- Things that try to do what they are not capable of doing (yet?) — bad.

Agent architecture is an [old idea](https://en.wikipedia.org/wiki/Agent-oriented_programming) — it's already over 30 years old. AI developers have always flirted with it, but it was impossible to make a good implementation without LLM glue.

Now, when we have LLM glue, we can enjoy the work of agents, but only as long as LLM is used precisely as glue or as a specific tool. The moment we put LLM in the center, we get results that are loud in voice but sad in practice, like [the creepy $20000 toy compiler](https://www.linkedin.com/posts/alrikvidstrom_the-most-expensive-crappy-toy-compiler-ever-activity-7425963356924047360-V_rY/).

## All agents make mistakes

I have long argued that [everyone makes mistakes]{post:@choose-nearest-language:life-and-work-with-mistakes} — in work as well as in life. So we should make decisions and act with the possibility of mistakes in mind, both on our side and on the side of other people.

This idea is surprisingly non-obvious to many people, which makes it hard to persuade them to do fairly obvious things — for example, to write tests as a regular practice rather than only when they "feel like it".

The same statement about mistakes is also true for agents. It's even more noticeable because [LLMs have a probabilistic nature]{post:ai-notes-2024-generative-knowledge-base} and make mistakes significantly more often.

The essence is the same, the necessary practices are the same, but perhaps the phenomenon is more obvious.

I hope that, thanks to agents, quality assurance practices will be easier to introduce and will be used more correctly.

## Issues with quality due to the imperfection of LLMs

The [probabilistic nature of LLMs]{post:ai-notes-2024-generative-knowledge-base} results in issues that are significantly less common for humans, at least for professionals.

Here I'll point out the most noticeable of them, so as not to repeat myself when describing the next prisms, not to overcomplicate them.

### Weak abstract/ctiical thinking

Any typo or misphrasing is perceived as a guide to action. Moreover, it's impossible to predict in which direction the LLM will deviate, as this direction is completely random. It seems to me that LLMs specialized for agents are heavily overfitted to follow instructions.

The smallest incorrect or incomplete phrasing — and your agent has implemented a completely opposite feature. For example, when adding an alternative option to the command-line interface, the agent can easily delete the original instead of supporting both.

Because of this, you have to formulate tasks as clearly and in as much detail as possible — this is completely different from interacting with people.

When working with a person for a long time, you learn their strengths and weaknesses, remember what to emphasize in communication with them specifically — which makes communication, including task-setting, much faster and easier.

### Answers that mimic correct solutions

By design, LLMs produce answers that look credible, even if they are incorrect. As I understand it, this is a fundamental problem, and either nothing can be done about it, or no one wants to do anything about it.

There is even a strong view that reasoning LLMs do not actually reason at all. Instead, they generate a sequence of statements that resembles a chain of reasoning, but is in fact only a statistical extension of the final answer — which itself may be completely wrong, while still sounding credible.

Because of this, it is often much harder to identify an agent's mistake than a human's one.

Most of people's mistakes have obvious signs/patterns and are well noticeable, especially for professionals. Plus, people usually don't put much effort into hiding their mistakes.

I've already encountered such behavior of LLMs several times, and it's very unpleasant.

### Inconsistant answers

LLMs can not maintain a style of code/architecture, especially an informal one.

It is a bit easy for the code — its style is inherited from the context (when there is one), is restricted by linters, and is built by automatic formatting.

It is much complicated for architecture — not all parts of architecture can be easily formalized. I'll say a few more words about this below.

Due to problem with gathering context, agents easily lose track of decisions that were made earlier (and reflected in the code). For example, similar in spirit tests in far parts of the project can be written completely differently.

LLMs do not adhere to the level of detail/quality — sometimes they overcomplicate, sometimes they oversimplify.

Inconsistency increases the load on the developer, as they constantly have to bend their brain in random directions — code reviews become more difficult.

Again, in the case of working with a person, the situation is the same as with task-setting — you learn the colleague's thinking style and can predict where in their work there may be problems and of what kind — it's much easier.

### Lack of direction

That is a somewhat abstract thing, but I've noticed it a few times already, so I have a separate post dedicated to it: [LLMs think breadth-first, humans think depth-first]{post:llms-think-breadth-first-humans-think-depth-first}.

In the software development context, this means that agents struggle to make orthogonal changes. For example, an agent can easily implement a completely unrelated refactoring that has nothing to do with the task at hand.

Such deviation is easy to miss in the bud, and it will be too late (expensive) to roll back changes after it has sprouted and the nonlinear growth of complexity becomes noticeable.

When a person plans changes, they usually choose one axis and follow it — that helps to naturally mitigate numerous problems with complexity. An agent, on the other hand, just makes changes that seem statistically likely to it.

### Context constraints

The current "standard" context of 1 million tokens is insufficient to include all the knowledge about the project (not to mention all the knowledge of a developer); the methods of building context do not allow to reliably collect and compose the necessary information. This logically leads to distortion of the data at the input of LLM and, consequently, to errors in the output.

/// note | Why is one million tokens not enough?

The volume of information grows exponentially with the level of detail.

Let's say that at the first level of detail of some thing we found out that it has features A, B, C.

At the second level of detail, each feature will be broken down into several smaller ones: A1, A2, A3, B1, B2, C1, C2, C3.

At the third level of detail, the tree of features will continue to grow, and so on.

If we assume that each level on average breaks down a feature into 10 sub-features/nuances, then we will see that 1 million tokens corresponds to only 5 levels of detail (taking into account that we should also store high-level features). Assuming that one token is one feature. Of course, this is a big exaggeration for the capacity of tokens and, rather, an understatement for the levels of detail. If you have ever worked with formalized requirements for anything, you understand what I mean.

///

## Coding speed vs development speed

It is important to distinguish between these two things:

- The speed of coding — how quickly you create working code for a completely defined task.
- The speed of development — how quickly you deliver features from idea to release (to users).

Many people — especially non-programmers — conflate these things. Part of the blame is ours as well, because an experienced programmer will often, for example, design and implement something at the same time — it is simply much faster that way. And quite often, in the process, we are also designing GUI, testing, analyzing, refining the business requirements, etc.

Agents greatly increase the speed of coding, but they do not always increase the speed of development, as they cannot (yet?) take on most of the related work, and if they try to, they create more problems than solve.

The nuance is that **coding speed has not been a problem for about twenty years**.

Thanks to modern IDEs (even before [Copilot](https://github.com/features/copilot)), the delay in transferring the software model from the programmer's head to code is minimal.

### The speed of coding has increased

In the cases where it is precisely known what needs to be written and it left only to arrange the words in the correct order, the speed of coding has increased by an order of magnitude.

How such situations look like:

- You've implemented a new feature, there are a lot of automatic tests for the old functionality, and you need to add tests for the new functionality.
- You've sketched out a draft of the code, but it contains a number of artbitrary inconsistencies: type errors and/or missing type annotations, mismatches in return values, discrepancies between the code and the tests, and so on — and you need to fix all of this.
- You have a single failing test and you need to fix a bug in the code that you barely remember.
- You know (and can describe) what exactly needs to be done, but you don't want to propagate changes through all the dependencies.

Thus, agents are very useful when the context completely defines what needs to be done. It's a bit like [wave function collapse](https://en.wikipedia.org/wiki/Wave_function_collapse) during measurement or, equivalently, [procedural generation through wave function collapse](https://blog.ptidej.net/procedural-generation-using-wave-function-collapse/).

### The speed of development has increased — in some cases

Let's start by noting that there are conceptual reasons why the speed of development cannot increase to the same extent as the speed of coding.

**First**, the speed of development is limited by the speed of hypothesis testing, which means — directly or indirectly — by the speed of users' reaction to changes. Users are people — their life speed has not changed. They still exist in daily, weekly, monthly, and yearly cycles. Even if your product is purely virtual, you need to wait at least a week to get a reaction from the universe on a new feature.

**Second**, the current agents are bad at planning and complex analysis. Partly due to the [probabilistic nature of LLMs]{post:ai-notes-2024-generative-knowledge-base}, partly due to the youth of the technology. All "long-term planning experiments" I've seen either ended up failing (let's thank the organizers for their honesty) or turned into a marketing victory parade hiding a failure.

Since design and analysis take up a larger part of the working time for programmers starting somewhere from the senior level, it can be argued that radical improvements affect a smaller share of working time.

**Third**, parallelization of development does not increase its speed linearly — there are always associated costs for synchronization. The more parallel development tracks you have, the slower each track moves.

Meanwhile, agents allow (or will allow) to speed up some aspects of development:

- We cannot speed up the final [hypothesis testing]{post:hypothesis-testing-loop}, but hypothetically, we can simulate user behavior as another stage of planning. This will not speed up the development of a specific feature, but it can reduce the share of mistakes and increase overall quality, thus reducing the average time to deliver a feature to users.
- We cannot fully entrust planning to agents, but we can delegate a significant part of data collection and preliminary analysis to them.

What agents are genuinely good at is prototyping:

- both building standalone prototypes;
- and prototyping changes to existing code, which helps refine requirements and iteratively bring those changes up to the required level of quality.

So, the development process has been accelerated as well, but it's still unclear to what extent and in which areas exactly.

**Under pressure from new tools, development may shift further toward prototyping, with software increasingly treated as a collection of functional prototypes that are iteratively refined to the required level of quality through continuous experimentation.**

### Assistant driven development vs agent driven development

It is interesting to compare the impact on development of smart code completion and inline editing tools such as Copilot, on the one hand, and agent-based development, on the other.

In my experience:

- Copilot allows you to achieve the same coding speed as agents, and even higher on small tasks.
- Copilot does not break the programmer out of the [flow]{post:flow-psychology-of-optimal-experience}.

Because of the focus on the locality of changes, Copilot often suggests code that is more correct for its context.

That's why, when I work on a project that I know well, and I have a clear picture of what needs to be done, I prefer to make the changes by hand — it is both faster and more reliable.

I have been getting similar feedback from colleagues — none of my acquaintances has switched to development solely through agents.

## The shift in the developer's workload

It is difficult to say whether it has become better or worse.

**From the one hand**, producing new information (writing code) is significantly more difficult than verifying existing information (reviewing code). Therefore, with proper use of agents, the load on the brain is reduced due to increased share of code review.

Also, there is a stage in the programmer's work when you load information about the task and its context (architecture, requirements, code, docs) into your brain. This is a heavy and long process. It is the main reason for why developers dislike interruptions to their work, as they have to go through it again. If the work is done only through agents, this stage is significantly reduced and simplified. But only if you don't have to dive into the details of introduced changes.

Both of these changes are quite pleasant.

**From the other hand**, the flow of high-level information through a person increases dramatically. More information per unit of time — more load.

There is also a growing trend toward developing features or even entire projects in parallel. I have tried it a few times, and it is very taxing. Switching between several unrelated tasks is harder than switching between different levels of the same task, such as design and coding.

However, I believe that this is a temporary trend — it will last until agents become fast enough that switching between tasks does not make sense. Or until it is confirmed that agents cannot work independently in the long run.

## Знания организации и контекст агентов

За весь период существования человечества было осуществлено бесчисленное количество попыток формализовать знания организации так, чтобы они были отделены от сотрудников. Особенно много подобных попыток было за последние лет 30, что понятным образом связано с развитием информационных технологий.

Все эти попытки закончились крахом.

Насколько я представляю ситуацию, текущий консенсус заключается в том, что знания компании находятся в головах сотрудников и управляем мы этими знаниями через управление сотрудниками. Вынос информации на внешние носители — это вспомогательный инструмент, который дорог в использовании и не может нивелировать важность сотрудников как носителей знаний.

/// note | Язык как инструмент коммуникации

Есть разные взгляды на природу нашего мышления и место языка в нём. Однако справедливым будет сказать, что «стандартные» языки (русский, английский, etc.) — это скорее инструмент общения, а не [инструмент мышления]{post:talking-man}. Мы используем их для передачи информации друг другу.

То есть один человек сжимает свои мысли в формальную форму конкретного языка, а другой человек распаковывает эту формальную форму обратно в свои мысли.

Понятное дело, нет чётких правил перевода из мыслей в язык и обратно — мы изучаем их на практике на протяжении всей жизни. Например, часто одно и то же слово для разных людей значит разное, имеет разные оттенки.

Поэтому справедливо утверждать, что при передаче информации человек-текст-человек часть информации теряется, часть искажается.

Соответственно, какую бы документацию мы не написали, она будет неполной и искажённой.

Также справедливо утверждать, что язык, как формальная система, не позволяет точно описывать реальность во всём её многообразии и сложности.

Это порождает вопрос: **До какого предела агенты, использующие LLM, способны эффективно работать в реальном мире, учитывая несовершенность их основного инструмента (языка)?**

///

Это справедливо и для чисто программистской части знаний, например, информации об архитектуре вашего продукта. При всём желании и старании вы не сможете формализовать в документах всю архитектуру более-менее сложного продукта за какие-то разумные ресурсы.

Соответственно.

**Мы физически не можем предоставить агентам весь контекст, необходимый для полностью самостоятельной работы.** Так как текущие агенты работают именно с текстовыми артефактами.

Раз мы не можем формализовать все знания компании, чтобы агенты эффективно справлялись с любой задачей, нам необходимо проводить границу: «вот с этим работают агенты, поэтому мы формализуем знания для этого, а вот это остаётся людям».

Следовательно:

1. Ответственность за работу остаётся на человеке.
2. Роль документации возрастает, но не любой, см. далее.

## Спецификации

**Становится важна документация, которая превращает задачи на разработку в задачи на кодинг**, а роль LLM сводит к решению локальных вопросов. Примеры:

- стандартный способ обработки ошибок в коде;
- стандартный способ организации кода на файловой системе;
- стандартный способ оформления тестов;
- библиотека цветов, разрешённых для использования в UI с правилами их использования;
- библиотека стандартных компонентов интерфейса;
- алгоритмы разрешения стандартных ситуаций, вопросов, etc.

Создание подобных спецификаций помогает не только агентам, но и людям, так как запускает [мышление письмом]{post:thinking-through-writing}.

К сожалению, появляется риск превращения спецификаций в код, что создаёт лишнюю работу: сначала мы разрабатываем спецификацию-как-код, потом переносим её один в одни в код.

Отчасти поэтому программисты часто проектируют и кодят одновременно — часто разница между детальной спецификацией и кодом отсутствует.

На тему спецификаций-как-кода как раз на днях появилось интересное эссе [A sufficiently detailed spec is code](https://haskellforall.com/2026/03/a-sufficiently-detailed-spec-is-code), вот отличная цитата из него:

> Specification work is supposed to be harder than coding. Typically the reason we write specification documents before doing the work is to encourage viewing the project through a contemplative and critical lens, because once coding begins we switch gears and become driven with a bias to action.

То есть создание спецификации-как-кода может замедлять разработку.

Пример подобной спецификации есть в статье по ссылке. По сути, это может быть любая спека фичи, проработанная до мельчайших деталей (модель данных, алгоритмы).

/// note | Кода становится больше

Поскольку LLM работают только с текстом, то ваш проект так или иначе всё ещё определяется кодом, который вы пишете.

Раньше это был очень формальный код и немного менее формального в виде документации.

Сейчас это больше очень формального кода (он же генерится!) и больше менее формального, который вы пишете (он же нужен агентам!).

///

## Workflows и linters как идеальные спецификации

Если наши спеки начинают стремиться к уменьшению сложного планирования, то логичным следствием этого стремления будет их автоматизация — превращение в полностью автоматические процессы и инструменты:

- «Утилита» для исправления имён переменных, согласно стандартам.
- «Утилита» для исправления иерархии ошибок и кода их обработки.
- «Утилита» для написания пропущенных тестов.

То есть агент превращается в машину состояний, и это сейчас стандартный способ описания специализированных агентов. Об этом же и мой пет-проект [Donna](https://github.com/Tiendil/donna).

**Этот подход может привести к появлению отдельного реактивного слоя, схожего с [CI](https://ru.wikipedia.org/wiki/Непрерывная_интеграция), но находящегося ближе к разработчику.**

## Изменения в мышлении

При использовании агентов программист вынужден менять свой образ мышления.

**Во-первых**, первым делом надо думать «как это сделать агентом», а не сразу делать руками.

**Во-вторых**,  выполнение задачи агентом отличается от выполнения задачи человеком, из-за вероятностной природы LLM. Поэтому формулировки задач, этапы их выполнения и порядок этих этапов могут отличаться от того, что было бы оптимально для человека. Это надо держать в голове.

В частности, LLM очень чувствительны к точности формулировок — там, где человек «сам догадается», агент гарантированно поймёт задачу неправильно.

**В-третьих**, если вы разрабатываете преимущественно через агентов, то вы больше не держите в голове весь ваш код, только его высокоуровневую картину.

Это радикально меняет динамику разработки, изменяет что вы можете сделать руками, а что не можете.

Вы перестаёте быть источником правды о проекте. Соответственно, вы теряете возможность валидировать вносимые агентом изменения — это могут делать только другие агенты и ваша автоматизация.

Кроме того, вы также не учитесь! До агентов, разработчик был вынужден изучать каждую новую штуку, которую он использовал — это органичным образом расширяло его знания и понимание области. Если написание кода полностью переходит к агентам, этот важный аспект развития программиста пропадает.

**Третий пункт я считаю источником большого риска и проблем, которые пока непонятно, как решать.**

Возможно ли надёжно делегировать агентам долгосрочное управление кодом — это открытый вопрос.

## Изменения в стратегии разработки

### Агенты меняют скорость, но не качество

Кто делал плохую работу, тот сейчас делает её в разы быстрее (и больше), а может и в худшем качестве.

Соответственно, значительно возрастает роль процессов принятия решений и процессов контроля качества.

Если вы ошиблись, то последствия вас догонят куда быстрее, чем раньше — времени остановить реализацию плохой идеи остаётся гораздо меньше.

### Возрастает роль автоматизации

Или нет, зависит от того как конкретная команда на эту штуку смотрела.

В моей картине мира автоматизация — это основной способ контроля качества, поэтому у меня мало что меняется. Но для многих это всё ещё скорее способ ускорения доставки фич в прод ([CI/CD](https://ru.wikipedia.org/wiki/CI/CD)) и только вспомогательный способ контроля качества. В последнем случае переход на разработку через агентов потребует пересмотреть взгляды на мир.

### «Достаточное качество» как новый стандарт

Стремление добиваться максимально возможного качества (в ущерб экономической целесообразности) — это довольно распространённая проблема в разработке. Она особенно заметна у программистов, так как формальная природа и математичность кода провоцируют стремление к его (субъективной) идеальности.

При разработке через агентов добиваться идеального кода скорее невозможно из-за вероятностной природы LLM. По крайней мере на текущем этапе развития технологии. Поэтому «достаточное качество» становится единственным возможным уровнем качества, к которому можно стремиться.

Это наверняка будет приносить много боли разработчикам, по крайней мере поначалу. Но, в целом, скорее благо.

### Инкрементальная разработка становится более важной практикой

Суть инкрементальной разработки на прикладном уровне в том, что вы не фигачите все правки за раз, а делаете их поэтапно, убеждаясь, что между этапами проект остаётся рабочим. Это позволяет значительно снизить вероятность внесения ошибок.

Неудобно называть это практикой для ответственных продвинутых разработчиков, но де факто это так. Многие ей пренебрегают, на мой взгляд, из-за лени и некоторой болезненности циклического рефакторинга одного и того же места.

Поскольку у агентов сложности с консистентным внесением крупных изменений, это естественным образом вынуждает производить их поэтапно — то есть разрабатывать инкрементально.

Причина внедрения практики выглядит не очень позитивно, но сама практика однозначно пойдёт на пользу.

### Формальная верификация становится проще и полезнее

До появления агентов было, ммм… два множества инструментов для формальной верификации:

- простые инструменты, которые реально использовались: контроль типов, отслеживание типичных ошибок с помощью линтеров, etc.
- сложные инструменты, которые практически нереально использовать из-за сложности и требуемого времени.

К последним можно отнести, например, контроль выполнимости кода, формальные спецификации, контроль связанности модулей, etc.

Агенты позволяют убрать большую часть проблем от использования сложных инструментов, так как забирают на себя большую часть работы по интерпретации ошибок и их исправлению.

Одновременно эти инструменты особенно нужны для агентов, чтобы ограничивать их полёт фантазии. Например, контроль доменных зон через контроль импортов (какие модули может использовать каждая часть проекта) должен значительно сокращать случаи помещения кода не в то место.

Плюс, благодаря современным инструментам интроспекции разработчики должны быть в состоянии писать собственные тесты на специфические для их проекта правила и стандарты.

Поэтому я ожидаю рост популярности сложных инструментов формальной верификации кода.

### Harness Engineer — новая роль

В последние месяцы родился такой термин, как harness — программная обвязка вокруг агентов, которая обеспечивает их нужными инструментами, данными, контекстом и, в том числе, проверяет их работу с помощью линтеров и прочих формальных проверок.

Агенты без хорошего Harness — это как проект без CI/CD — ничего хорошего из этого не выйдет.

Учитывая возрастающую роль автоматизации и формальных проверок, я рискну предположить, что появится как минимум отдельная роль — Harness Engineer, который будет отвечать за разработку и поддержку harness для агентов.

Соответственно, на уровне компаний это должно породить дисциплину HarnessOps по аналогии с DevOps.

### Разделение полномочий между агентами и людьми

Появляется деление задач на те, которые «правильно» делать агентами, и те, которые «правильно» делать людьми.

Само собой, никто сейчас не знает где эта граница проходит и, учитывая природу людей, ещё долго будут споры и холивары на эту тему.

Ситуацию усложняет то, что знаний у человека в голове больше, чем можно за разумное время записать в контекст, поэтому иногда проще по-старинке вручную писать код, чем пытаться написать инструкцию что и как менять.

Это надо просто принять и жить с этим. В идеале — обсудить в команде и выработать пару эвристик, чтобы избежать конфликтов.

### Ускорение обмена информацией

Ускорение работы ведёт к ускорению потока информации и ускорению изменений. В зрелой команде теперь намного сложнее одному человеку быть в курсе всех событий, мониторить и направлять изменения.

Ещё больше возрастает (куда уж больше-то) важность самостоятельности сотрудников, владения проектом, здоровой коммуникации.

Никакие утренние стендапы догнать мир не помогут. Только асинхронная проактивная коммуникация — каждый должен пушить свой прогресс в какой-нибудь Slack и делать это так, чтобы поток событий не превращался в спам. Иначе будут разрабатываться N (по количеству разработчиков) параллельных слабо связанных проектов вместо одного.

### Парное документирование

Поскольку кодинг уходит на сторону агентов, от нас уходит и (довольно эффективная) практика [парного программирования](https://ru.wikipedia.org/wiki/Парное_программирование).

Вместо неё теперь будет парное документирование — суть та же, только про разработку спецификаций и значительно легче в применении, так как личные предпочтения в кодинге перестают быть проблемой.

Кстати, у меня есть отличное эссе с анализом [двух лет практики командного написания спек]{post:two-years-writing-rfc-statistics}.

### Время глобальных рефакторингов

Агенты способны за разумное время делать глобальные рефакторинги, на которые раньше не было времени из-за необходимости длительного вычитывания логики в куче файлов.

Они их делают не идеально, но:

- Ревью поверх правок значительно быстрее, удобнее и менее напряжно, чем вдумчивое изменение кода.
- Правильные спеки могут делать некоторые рефакторинги тривиальными.

В теории, это может улучшить среднюю температуру по больнице в области качества архитектуры и актуальности кода, что позитивно скажется на жизни разработчиков.

## Потеря контроля

Скорее всего это временная проблема и она решится по мере развития интерфейсов.

Однако сейчас довольно сложно встроиться в процесс работы агента, а значит сложно его направлять и замечать проблемы на ранних этапах работы.

Это особенно заметно, если сравнивать с собственным процессом мышления, когда вы в любой момент можете остановиться и осмотреться.

## Какие задачи лучше всего решают агенты

Рутинные/монотонные задачи с чётко определёнными границами, критериями успеха и качества:

- Анализ кода.
- Массовый рефакторинг «под спеку» или «под linter».
- Завершение изменений начатых человеком «чтобы код компилировался и тесты проходили».
- Выполнение чётких инструкций по внесению изменений: пойди туда, сделай это, потом это, потом туда, etc.
- Создание прототипов, которые будут выкинуты.
- Экспериментальное прототипирование изменений, чтобы посмотреть что и как будет затронуто.
- Быстрое внесение крупных изменений без чёткой инструкции, чтобы потом их итерационно доводить до ума.
- Редактирование кода, который хорошо покрыт тестами, комментариями и спеками.
- Приведение кода к единому стилю на основе чётких спецификаций.

Во всех остальных случаях я бы сказал, что агенты демонстрируют не очень хорошие результаты.

В частности, по моим личным ощущениям, большие куски нового кода я всё ещё пишу быстрее и качественнее, чем агенты. Но признаю, что подобная работа отнимает больше сил, чем использование роботов.

## Инструментарий

Что я могу посоветовать использовать с агентами?

Немного, главный совет — экспериментируйте. Но вот пара идей.

Конкретного базового агента порекомендовать не могу — пробуйте разные, выбирайте тот, который вам больше нравится. Я использую Codex CLI, но сугубо потому, что нахожусь в инфраструктуре OpenAI и люблю консоль.

[Rust](https://rust-lang.org/) — главный язык программирования для агентов из-за своей параноидальной безопасности и строгой типизации — выполнять эти требования — боль для людей, но не такая сложная задача для агентов. Rust заставляет использовать правильные паттерны, которые сами по себе помогают создавать хороший софт.

Если очень хочется специализированных инструментов, то можно посмотреть в сторону [OpenSpec](https://github.com/Fission-AI/OpenSpec) и [Ralph](https://github.com/snarktank/ralph), но скорее как концепций, чем конкретного софта — у них много аналогов.

Всё-таки порекомендую посмотреть в сторону базового агента [pi.dev](https://pi.dev/) — он спроектирован с фокусом на расширяемости сторонними инструментами, что в духе следующего раздела этого поста. Но руками я его пока не успел потрогать.

## Будущее инструментария

Изобретая новую крутую штуку, человечество обычно строит комбайн вокруг неё и пытается применить этот комбайн ко всему, до чего дотянется. По мере накопления опыта, комбайн начинает разбираться на куски, каждый из которых затачивается под конкретные задачи.

Сейчас мы находимся в фазе сборки комбайнов. Скоро мы начнём разбирать их на составляющие, которые можно будет комбинировать, следуя [Unix way](https://ru.wikipedia.org/wiki/Философия_Unix) — тогда можно будет обсуждать персональные сборки агентов.

Косвенно это мнение подтверждает обилие нишевых agent-related стандартов, которые постепенно появляются в явном и неявном виде.

Навскидку, декомпозиция может быть следующей:

- Оркестратор задач.
- Интерфейс для взаимодействия с пользователем.
- Песочница для выполнения деструктивных операций.
- Инструмент для взаимодействия с LLM.
- Инструмент для навигации по коду и прочим артефактам.
- База данных/знаний для памяти (возможно).

## Хайп, хайп, хайп

Минутка ворчания.

### Этот GitHub сломался — несите новый

Такого массового нерелевантного роста количества звёзд у проектов не было никогда. Люди вообще не проверяют кого и за что они отмечают — ставят звёзды сугубо по ключевым словам и красивым картинкам.

Не то чтобы звёзды раньше были достоверным показателем чего-нибудь, но хоть каким-то ориентиром зрелости и качества проекта их можно было считать — это было удобно.

Сейчас разница между 1000, 10000 и 100000 звёзд говорит только о хайпе и маркетинговой стратегии проекта.

### Как блокчейн, только громче

Если присмотреться, то у блокчейна и агентов есть общие черты:

- обе технологии хорошо выглядят в полностью цифровом пространстве, но испытывают проблемы при маппинге на реальный мир;
- обе технологии технологически сложны;
- хайп вокруг обеих технологий сильно затрудняет их объективную оценку, понимание их реальных возможностей и ограничений.

Из истории с блокчейном можно увидеть, что вместо хайповой революции получилась тихая эволюция небольшого кусочка нашей цивилизации. Я думаю с агентами будет примерно так же, только импакт будет заметнее.
