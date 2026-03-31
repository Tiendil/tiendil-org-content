---
title = "Notes on coding agents"
tags = ["theory", "practice", "development", "neural-networks", "reflection", "exocortex", "tests", "large-language-models", "ai-agents", "coding-agents"]
published_at = "2026-03-31T12:00:00+00:00"
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
- Like a true hacker, I decided that if I wanted to understand agents, I had to code something related to them. So over the course of a month, I vibecoded [Donna](https://github.com/Tiendil/donna) — a planner for agents (Python).

Since agents are a new thing:

- No one knows how to use them — we are in the process of gaining experience and gathering use cases.
- No one has broad experience using them — either you choose one or two approaches and use them to do your work, or you endlessly experiment without creating value.

Thus, this post will be in the form of subjective notes-theses.

<!-- more -->

## What are agents

For starters, what agents are not:

- They are not "just a [LLM](https://en.wikipedia.org/wiki/Large_language_model)" that does everything by itself in some magical way.
- They are not [strong/weak AI](https://en.wikipedia.org/wiki/Artificial_general_intelligence) that acts like a human.

An (AI) agent is classic non-AI software: an orchestrating wrapper around internal and external tools that organizes their joint work to achieve some goal. Tools can be different: internal code, command-line utilities, websites, [MCP services](https://modelcontextprotocol.io/docs/getting-started/intro), LLMs, etc.

You can see this even in the features these agents focus on and in their changelogs: their developers are dealing with safe tool execution, inter-tool communication, orchestration, user interaction, and so on. Questions directly related to AI and LLMs receive comparatively little attention.

Conceptually, an agent may not even contain AI components:

- [Linter](https://en.wikipedia.org/wiki/Lint_(software)) with capabilities for automatic fixes, such as [isort](https://pycqa.github.io/isort/), can reasonably be considered a narrowly specialized agent.
- [GitHub Actions](https://docs.github.com/en/actions) are agents in the most literal sense — they are even reactive — they respond to events in the repository and automatically do things.
- It should be entirely possible to use [Make](https://en.wikipedia.org/wiki/Make) to create a simple agent with an invocation of an LLM as one of the steps in task execution.

No one called these things agents only because there was no reason to use a too specialized term.

However, LLMs have breathed new life into the concept.

**First**, LLMs made it possible to connect tools at a higher level of abstraction. Previously, a programmer had to explicitly define [data schema transformations]{post:@choose-nearest-language:infinity-of-data-schemas} for each pair of tools for each specific task; now LLMs can handle this for arbitrary tasks and tools.

**Second**, LLMs can "understand" code at an acceptable level, which allows not only to connect tools but also to introduce changes to the code, do minimal planning.

These two things made agents approach more practical and more relevant.

## My context for using agents

I don't use agents for the sake of using agents, but to do my work more effectively. Therefore, I've never had the goal of trying every possible approach or piece of software.

Moreover, when I encounter a new thing related to agents, the following chain of events usually happens:

1. "Oh, interesting";
2. "Let's read the documentation";
3. "I don't see how it can improve my life";
4. "Not my case, skipping";

That's why I have a rather ascetic setup right now, plus a small Notion table with a list of tools/software I would like to try sometime in the future.

My setup:

- [Codex CLI](https://developers.openai.com/codex/cli) as the agent itself.
- [Donna](https://github.com/Tiendil/donna) — CLI for the high-level planning.
- [ast-grep](https://github.com/ast-grep/ast-grep) — CLI for code navigation and transformation.
- [Huge specs](https://github.com/Tiendil/donna/blob/c1e3f3e1354f60263c220fef5e7b2754deb09190/.donna/project/core/error_handling.md) that are specific to the project (partially in Donna format) instead of skills.

This does not mean I never look at new things or try them out — it means they usually do not take root in my workflow.

Currently, I use agents in two scenarios:

1. Ask an agent to make a very specific thing with a very clear description of the changes.
2. Ask an agent to make a large change from a rough description of the changes. After review:
    - either I roll back the change completely, fix the spec, and ask again;
    - or I start iteratively fixing the code with small requests;
    - or I finish the work manually.


Now, finally, let us move on to the notes themselves.

/// note | Format of notes

At first, I planned something simple, like lists of pros, cons, trends, etc. But such a style gave birth to a [spaghetti-post](https://en.wikipedia.org/wiki/Spaghetti_code) full of cross-references and caveats. So I rewrote it — we will look at agents through different prisms.

///

## The upside comes from agent architecture, the downside — from LLMs

This is probably the main insight from processing the notes:

- Things that automatically work on your tasks — good.
- Things that try to do what they are not capable of doing (yet?) — bad.

Agent architecture is an [old idea](https://en.wikipedia.org/wiki/Agent-oriented_programming) — it's already over 30 years old. AI developers have always flirted with it, but it was impossible to make a good implementation without LLM glue.

Now, when we have LLM glue, we can enjoy the work of agents, but only as long as an LLM is used precisely as glue or as a specific tool. The moment we put LLM in the center, we get flashy, self-important, but ultimately sad results, like [the creepy $20000 toy compiler](https://www.linkedin.com/posts/alrikvidstrom_the-most-expensive-crappy-toy-compiler-ever-activity-7425963356924047360-V_rY/).

## All agents make mistakes

I have long argued that [everyone makes mistakes]{post:@choose-nearest-language:life-and-work-with-mistakes} — in work as well as in life. So we should make decisions and act with the possibility of mistakes in mind, on both our side and others'.

This idea is surprisingly non-obvious to many people, which makes it hard to persuade them to do fairly obvious things — for example, to write tests as a regular practice rather than only when they "feel like it".

The same statement about mistakes also applies to agents. It's even more noticeable because [LLMs have a probabilistic nature]{post:ai-notes-2024-generative-knowledge-base} and make mistakes significantly more often.

The essence is the same, the necessary practices are the same, but perhaps the phenomenon is more obvious.

I hope that, thanks to agents, quality assurance practices will be easier to introduce and will be used more correctly.

## Issues with quality due to the imperfection of LLMs

The [probabilistic nature of LLMs]{post:ai-notes-2024-generative-knowledge-base} results in issues that are significantly less common for humans, at least for professionals.

Here I'll point out the most noticeable of them, so as not to repeat myself when describing the next prisms, not to overcomplicate them.

### Weak abstract/critical thinking

Any typo or misphrasing is perceived as a guide to action. Moreover, it's impossible to predict in which direction the LLM will deviate, as this direction is completely random. It seems to me that LLMs specialized for agents are heavily overfitted to follow instructions.

The smallest incorrect or incomplete phrasing — and your agent has implemented a completely opposite feature. For example, when adding an alternative option to the command-line interface, the agent can easily delete the original instead of supporting both.

Because of this, you have to formulate tasks as clearly and in as much detail as possible — this is completely different from interacting with people.

When working with someone for a long time, you learn their strengths and weaknesses and remember what to emphasize in communication with them specifically, which makes communication, including task-setting, much faster and easier.

### Answers that mimic correct solutions

By design, LLMs produce answers that look credible, even if they are incorrect. As I understand it, this is a fundamental problem, and either nothing can be done about it, or no one wants to do anything about it.

There is even a strong view that reasoning LLMs do not actually reason at all. Instead, they generate a sequence of statements that resembles a chain of reasoning but is, in fact, only a statistical extension of the final answer, which may be completely wrong while still sounding credible.

Because of this, it is often much harder to identify an agent's mistake than a human's one.

Most people's mistakes have obvious signs/patterns and are easily noticeable, especially to professionals. Plus, people usually don't put much effort into hiding their mistakes.

I've already encountered such behavior of LLMs several times, and it's very unpleasant.

### Inconsistent answers

LLMs cannot maintain a style of code or architecture, especially an informal one.

It is a bit easy for the code — its style is inherited from the context (when there is one), restricted by linters, and built by automatic formatting.

It is much more complicated for architecture — not all parts of architecture can be easily formalized. I'll say a few more words about this below.

Due to problems with gathering context, agents easily lose track of decisions that were made earlier (and reflected in the code). For example, similar in spirit tests in far parts of the project can be written completely differently.

LLMs do not adhere to the level of detail/quality — sometimes they overcomplicate, sometimes they oversimplify.

Inconsistency increases the load on a developer, as they constantly have to bend their brain in random directions, making code reviews more difficult.

Again, in the case of working with a person, the situation is the same as with task-setting — you learn the colleague's thinking style and can predict where in their work there may be problems and of what kind — it's much easier.

### Lack of direction

That is a somewhat abstract thing, but I've noticed it a few times already, so I have a separate post dedicated to it: [LLMs think breadth-first, humans think depth-first]{post:llms-think-breadth-first-humans-think-depth-first}.

In the software development context, this means that agents struggle to make orthogonal changes. For example, an agent can easily implement a completely unrelated refactoring that has nothing to do with the task at hand.

Such deviation is easy to miss in the bud, and it will be too late (and expensive) to roll back changes once it has sprouted and the nonlinear growth of complexity becomes noticeable.

When a person plans changes, they usually choose one axis and stick to it, which naturally helps mitigate many problems associated with complexity. An agent, on the other hand, just makes changes that seem statistically likely to it.

### Context constraints

The current "standard" context window of 1 million tokens is insufficient to capture all the knowledge about a project (not to mention all the knowledge a developer has); the methods for building context do not allow for the reliable collection and composition of the necessary information. This logically leads to data distortion at the input to LLMs and, consequently, to errors in the output.

/// note | Why is one million tokens not enough?

The volume of information grows exponentially with the level of detail.

Let's say that at the first level of detail for some entity, we found that it has features A, B, and C.

At the second level of detail, each feature will be broken down into several smaller ones: A1, A2, A3, B1, B2, C1, C2, C3.

At the third level of detail, the feature tree will continue to grow, and so on.

If you have ever worked with formalized requirements for anything, you understand what I mean.

If we assume that each level, on average, breaks a feature into 10 sub-features/nuances, then 1 million tokens corresponds to only 5 levels of detail (taking into account that we should also store high-level features). Assuming that one token is one feature. Of course, this is a big exaggeration of the capacity of tokens and, rather, an understatement of the levels of detail.

///

## Coding speed vs development speed

It is important to distinguish between these two things:

- The speed of coding — how quickly you create working code for a completely defined task.
- The speed of development — how quickly you deliver features from idea to release (to users).

Many people — especially non-programmers — conflate these things. Part of the blame is ours as well, because an experienced programmer will often, for example, design and implement something at the same time — it is simply much faster that way. And quite often, in the process, we are also designing the GUI, testing, analyzing, refining the business requirements, etc.

Agents greatly increase coding speed, but they do not always increase development speed, as they cannot (yet?) take on most of the related work, and if they try, they create more problems than solve.

The nuance is that **coding speed has not been a problem for about twenty years**.

Thanks to modern IDEs (even before [Copilot](https://github.com/features/copilot)), the delay in transferring the software model from the programmer's head to code is minimal.

### The speed of coding has increased

In cases where it is precisely known what needs to be written and it is left only to arrange the words in the correct order, the speed of coding has increased by an order of magnitude.

How such situations look:

- You've implemented a new feature, there are a lot of automatic tests for the old functionality, and you need to add tests for the new functionality.
- You've sketched out a draft of the code, but it contains a number of arbitrary inconsistencies: type errors and/or missing type annotations, mismatches in return values, discrepancies between the code and the tests, and so on — and you need to fix all of this.
- You have a single failing test, and you need to fix a bug in the code that you barely remember.
- You know (and can describe) what exactly needs to be done, but you don't want to propagate changes through all the dependencies.

Thus, agents are very useful when the context completely defines what needs to be done. It's a bit like [wave function collapse](https://en.wikipedia.org/wiki/Wave_function_collapse) during measurement or, equivalently, [procedural generation through wave function collapse](https://blog.ptidej.net/procedural-generation-using-wave-function-collapse/).

### The speed of development has increased — in some cases

Let's start by noting that there are conceptual reasons why the speed of development cannot increase to the same extent as the speed of coding.

**First**, the speed of development is limited by the speed of hypothesis testing, which means — directly or indirectly — by the speed of users' reaction to changes. Users are people — their life speed has not changed. They still exist in daily, weekly, monthly, and yearly cycles. Even if your product is purely virtual, you need to wait at least a week to get a reaction from the universe on a new feature.

**Second**, the current agents are bad at planning and complex analysis. Partly due to the [probabilistic nature of LLMs]{post:ai-notes-2024-generative-knowledge-base}, partly due to the youth of the technology. All the "long-term planning experiments" I've seen either failed (let's thank the organizers for their honesty) or turned into a marketing victory parade hiding a failure.

Since design and analysis take up a larger part of the working time for programmers starting at the senior level, it can be argued that radical improvements affect a smaller share of working time.

**Third**, parallelization of development does not increase its speed linearly — there are always associated costs for synchronization. The more parallel development tracks you have, the slower each track moves.

Meanwhile, agents allow (or will allow us) to speed up some aspects of development:

- We cannot speed up the final [hypothesis testing]{post:hypothesis-testing-loop}, but hypothetically, we can simulate user behavior as another stage of planning. This will not speed up the development of a specific feature, but it can reduce the share of mistakes and increase overall quality, thus reducing the average time to deliver a feature to users.
- We cannot fully entrust planning to agents, but we can delegate a significant part of data collection and preliminary analysis to them.

What agents are genuinely good at is prototyping:

- both building standalone prototypes;
- and prototyping changes to existing code, which helps refine requirements and iteratively bring those changes up to the required level of quality.

So, the development as a whole is accelerating as well, but it's still unclear to what extent and in which areas exactly.

**Under pressure from new tools, development may shift further toward prototyping, with software increasingly treated as a collection of functional prototypes that are iteratively refined to the required level of quality through continuous experimentation.**

### Assistant-driven development vs agent-driven development

It is interesting to compare the impact on development of smart code completion and inline editing tools, such as Copilot, on the one hand, with that of agent-based development, on the other.

In my experience:

- Copilot allows you to achieve the same coding speed as agents, and even higher on small tasks.
- Copilot does not break the programmer out of the [flow]{post:flow-psychology-of-optimal-experience}.

Because of the focus on the locality of changes, Copilot often suggests code that is more correct for its context.

That's why, when I work on a project I know well and have a clear picture of what needs to be done, I prefer to make the changes by hand — it is both faster and more reliable.

I have been getting similar feedback from colleagues — none of my acquaintances has switched to development solely through agents.

## The shift in the developer's workload

It is difficult to say whether it has become better or worse.

**From the one hand**, producing new information (writing code) is significantly more difficult than verifying existing information (reviewing code). Therefore, with proper use of agents, the load on the brain is reduced due to an increased share of code review.

Also, there is a stage in the programmer's work when you load information about the task and its context (architecture, requirements, code, docs) into your brain. This is a heavy and long process. It is the main reason developers dislike interruptions to their work, as they have to go through it again. If the work is done only through agents, this stage is significantly reduced and simplified. But only if you don't have to dive into the details of the introduced changes.

Both of these changes are quite pleasant.

**From the other hand**, the flow of high-level information through a person increases dramatically. More information per unit of time — more load.

There is also a growing trend toward developing features or even entire projects in parallel. I have tried it a few times, and it is very taxing. Switching between several unrelated tasks is harder than switching between different levels of the same task, such as design and coding.

However, I believe this is a temporary trend — it will last until agents are fast enough that switching between tasks no longer makes sense. Or until it is confirmed that agents cannot work independently in the long run.

## Organizational knowledge and agent context

Throughout human history, humanity has made countless attempts to formalize organizational knowledge in ways that separate it from employees. There have been especially many such attempts over the past thirty years or so, which is naturally connected to the development of information technology.

All these attempts ended in failure.

As I see it, the current consensus is that company knowledge resides in employees' heads, and we manage this knowledge by managing employees. Externalizing information into documents and other artifacts is a supporting tool, but it is expensive in use and cannot negate the importance of employees as carriers of knowledge.

/// note | Language as a communication tool

There are different views on the nature of thought and the place of language in it. Still, it is fair to say that "ordinary" languages — English, Russian, and so on — are primarily tools of communication rather than [tools of thought]{post:@choose-nearest-language:talking-man}. We use them to convey information to one another.

In other words, one person compresses their thoughts into the formal structure of a particular language, while another unpacks that structure back into thoughts of their own.

Obviously, there are no clear rules for translating from thoughts to language and back — we learn them in practice throughout our lives. For example, the same word often means different things to different people — has different shades of meaning.

Thus, it is fair to say that when information is transmitted along the chain person → text → person, some of it is lost and some is distorted.

Accordingly, no matter which documentation we write, it will always be incomplete and distorted.

Also, it is fair to say that language, as a formal system, does not allow us to accurately describe reality in all its diversity and complexity.

That leads to the question: **To what extent are agents based on LLMs capable of effectively working in the real world, given the imperfection of their main tool (language)?**

///

That is true for purely programming-related knowledge as well, for example, information about your product's architecture. With all the desire and effort, you cannot formalize the entire architecture of a more or less complex product in text documents within reasonable resources.

So.

**We are physically incapable of providing agents with the entire context required for fully autonomous work**, since current agents operate specifically on textual artifacts.

Since we cannot formalize all of a company's knowledge in a way that would let agents handle any task effectively, we need to draw a boundary: "agents work on this, so we formalize the knowledge needed for it, while all the rest remains to humans."

Consequently:

1. The responsibility for the work remains with the human.
2. The role of documentation grows, though not just of any kind of documentation — more on that below.

## Specifications

**Documentation, which turns development tasks into coding tasks and reduces the role of LLMs to solving local issues, becomes much more important.**

Examples:

- a standard way of handling errors in code;
- a standard way of structuring code in the file system;
- a standard way of organizing tests;
- a library of colors allowed for use in the UI with rules for their application;
- a library of standard UI components;
- algorithms for resolving standard issues, questions, etc.

Creation of such specifications helps not only agents but also people, as it activates [thinking through writing]{post:thinking-through-writing}.

Sadly, the risk arises of turning specifications into formal code, which leads to extra work: first, we develop a specification-as-code, then we transfer it one-to-one into code.

Partly because of this, programmers often design and code simultaneously — often, there is no difference between a detailed specification and code.

There is an interesting essay that appeared recently on this topic: [A sufficiently detailed spec is code](https://haskellforall.com/2026/03/a-sufficiently-detailed-spec-is-code). Here is a great quote from it:

> Specification work is supposed to be harder than coding. Typically the reason we write specification documents before doing the work is to encourage viewing the project through a contemplative and critical lens, because once coding begins we switch gears and become driven with a bias to action.

So, creating a specification-as-code can definitely slow down development.

An example of such a specification can be found in the mentioned article. In essence, it can be any feature specification worked out in great detail (e.g., a data model or algorithms).

/// note | The amount of code increases

Since LLMs work only with text, your project is still defined by the code you write in one way or another.

Before, it was mostly a formal code and a bit less less-formal code as documentation.

Now there is much more formal code (it is generated!), and also more of the less-formal specs (that humans produce for agents!).

///

## Workflows and linters as ideal specifications

**If your specs are focused on reducing complex planning, then a logical consequence of this focus will be their automation** — turning specs into fully automated processes and tools:

- A "tool" for fixing variable names according to standards.
- A "tool" for fixing the hierarchy of errors and the code that handles them.
- A "tool" for writing missing tests.

In other words, the agent becomes an executable specification — a state machine — and that is currently the standard way to describe specialized agents. My pet project [Donna](https://github.com/Tiendil/donna) is about the same idea.

**Such an approach can lead to the emergence of a separate reactive layer, similar to [CI](https://en.wikipedia.org/wiki/Continuous_integration), but closer to the developer.**

## Changes in the mindset

To successfully use agents, a programmer needs to change their mindset.

**First**, before anything else, you need to think "how to do this with an agent" rather than immediately go hands-on.

**Second,** an agent does not execute a task the same way a human does, because of the probabilistic nature of LLMs. As a result, the way tasks are described, the stages of their execution, and the order of those stages may differ from what would be optimal for a human. That is something to keep in mind.

In particular, LLMs are highly sensitive to the wording. Where a human would "figure it out themselves," an agent will surely misunderstand the task.

**Third**, when you develop primary through agents, you no longer keep the entire code in your head, only its high-level view.

This radically changes the dynamics of development: what you can do by hand and what you cannot.

You stop being the source of truth about the project. As a result, you lose the ability to validate the changes made by the agent — only other agents and your automation can do that now.

On top of that, you stop learning as well! Before agents, developers had to learn every new thing they used, and that naturally expanded both their knowledge and their understanding of the domain. If writing code is handed over entirely to agents, that important part of a programmer's self-development disappears.

**I consider the third point to be a source of great risk and problems that are currently unclear how to solve.**

It is an open question whether it is possible to reliably delegate long-term code management to agents.

## Changes in the development strategy

### Agents change speed, but not quality

Those who used to do poor work now do much more of it, much faster — and perhaps at even worse quality.

Accordingly, the role of decision-making and quality control processes increases significantly.

If you make a mistake, the consequences will catch up with you much faster than before — there is far less time left to stop a bad idea from being implemented.

### The role of automation increases

Or not — it depends on how a particular team approached automation before.

In my worldview, automation is the primary way of ensuring quality, so not much changes for me. But for many, it's still more of a way to speed up feature delivery to production — [CI/CD](https://en.wikipedia.org/wiki/CI/CD) — and only secondarily a tool for quality control. In the latter case, switching to agent-driven development will require a serious revision of how people think about the world.

### "Sufficient quality" as the new standard

The pursuit of the highest possible quality, even at the expense of economic viability, is a fairly common problem in software development. It is especially noticeable among programmers because the formal, mathematical nature of code encourages the pursuit of its (subjective) perfection.

In agent-driven development, achieving perfect code is unlikely due to the probabilistic nature of LLMs. At least at the current stage of technology development. Therefore, "sufficient quality" becomes the only possible level of quality to strive for.

This will almost certainly cause developers a lot of pain, at least at first. But overall, it is probably for the better.

### Incremental development grows in importance

The core idea of incremental development is that you don't make all the changes at once; you break them down into stages, ensuring the project remains in a consistent, working state between them. This approach significantly reduces the likelihood of introducing bugs.

It feels awkward to call this a practice for responsible, seasoned developers, but de facto, that is what it is. In my view, many people neglect it out of laziness and because a repeated refactoring of the same code is, to some extent, a painful activity.

However, since agents have trouble introducing large consistent changes, it should naturally force us to introduce changes in stages — that is, to develop incrementally.

The reason for adopting this practice does not look very positive, but the practice itself will definitely be beneficial.

### Formal verification becomes easier and more useful

Before AI agents, there were, let's say, two sets of tools for formal verification:

- Easy-to-use tools that are practical and widely adopted: type checking, linters for tracking typical errors, etc.
- Overcomplicated hardcore tools that are impractical to use due to their complexity and the time required to support them.

The latter include, for example, termination guarantees, formal specifications for concurrent code, and control over module coupling, among other things.

Agents eliminate most of the problems that come with using complex tools by taking over most of the work of interpreting errors and fixing them.

Simultaneously, these tools are especially needed for agents to limit their probabilistic freedom. For example, control over domain areas through control of imports (which modules can be used by each part of the project) should significantly reduce cases of putting code in the wrong place.

In addition, thanks to modern introspection tools, developers should be able to write their own tests for rules and standards specific to their project.

That's why I expect the growth of popularity of complex tools for formal code verification.

### Harness Engineer is a new role

A new term has emerged in recent months — harness — a software around agents that provides them with the necessary tools, data, context, and, among other things, checks their work through linters and other forms of formal verification.

Agents without a strong harness are like a project without CI/CD — nothing good will come of it.

Given the growing role of automation and formal verification, I would venture to suggest that a separate role — Harness Engineer — will emerge, responsible for developing and maintaining the harness for agents within a company/product/team.

Correspondingly, at the company level, this should result in the discipline of HarnessOps, analogous to DevOps.

### Separation of responsibilities between agents and humans

Development tasks become divided into those that are "right" to delegate to agents and those that are "right" to delegate to humans.

Obviously, no one currently knows where this boundary lies, and keeping in mind the nature of people, there will be debates and holy wars over this topic for a long time.

The situation is further complicated by the fact that a person's head contains more knowledge than can be transferred to the context in a reasonable time. So, sometimes it's easier to write code manually in the old-fashioned way than to try writing down instructions on what to change and how.

This is something we simply have to accept and live with. Ideally, the team should discuss it openly and agree on a few heuristics to avoid conflicts.

### Faster information exchange

Faster work leads to a faster flow of information and a faster pace of change. In a mature team, it becomes much harder for a single person to stay informed about all events, monitor, and steer changes.

That leads to even greater (can it be greater?) importance of employee autonomy, project ownership, and healthy communication.

No morning stand-up will help you catch up with the world. Only asynchronous, proactive communication will: everyone has to push their progress into some Slack channel, and do so in a way that keeps the stream of events from turning into spam. Otherwise, instead of one project, you will end up with N loosely connected parallel ones — where N is the number of developers.

### Pair documenting

Since agents are taking over coding, we are also losing (a rather effective) practice of [pair programming](https://en.wikipedia.org/wiki/Pair_programming).

Instead, we will get pair documenting. The essence is the same, but it's about developing specifications and is much easier to apply, since personal coding preferences no longer pose a problem.

By the way, I have an excellent essay analyzing [two years of writing specs as a team]{post:two-years-writing-rfc-statistics}.

### The era of large-scale refactorings

Agents can carry out large-scale refactorings in a reasonable time, which previously never got done because there simply wasn't time to trace logic across a pile of files.

Agents do that not perfectly, but:

- Code review of such changes is much faster, more convenient, and less stressful than a thoughtful change of the same amount of code.
- The right specs can make some refactorings trivial.

In theory, this can improve the average architecture quality and code relevance, which will positively affect the lives of developers.

## Loss of control

Most likely, it is a temporary problem that will be solved as GUI/CLI tools evolve.

However, right now, it is quite difficult to integrate ourselves into the agent's work process, which makes it hard to steer and identify problems at the early stages of the work.

That is especially noticeable in comparison to a person's own thinking process, when you can stop at any moment and look around.

## What kinds of tasks are agents best suited for

Routine, repetitive tasks with clearly defined boundaries and clear success and quality criteria:

- Code analysis.
- Large-scale refactoring to match a spec or satisfy a linter.
- Finishing changes started by a human "to make the code compile and tests pass".
- Following clear instructions for making changes: go there, do this, then this, then there, etc.
- Creating prototypes that will be thrown away.
- Experimental prototyping of changes to see what and how will be affected.
- Quick introduction of large changes without clear instructions, to iteratively refine them later.
- Editing code that is well covered by tests, comments, and specs.
- Bringing code to a single style based on clear specifications.

In all other cases, I would say agents demonstrate not very good results.

In particular, based on my personal experience, I prefer to write large pieces of new code myself, as I still do so faster and with better quality than agents. But I admit that such work takes more effort than using "robots".

## Toolling

What would I recommend using alongside agents?

Not much, my main advice is to experiment. But here are a couple of ideas.

I cannot recommend a specific base agent — try different ones and choose the one you like best. I use Codex CLI, but purely because I am in OpenAI's infrastructure and I love the console.

[Rust](https://rust-lang.org/) is definitely the primary programming language for agents due to its paranoid safety and strict typing — meeting these requirements is a pain for people, but not such a difficult task for agents. Rust forces you to use the right patterns, which in themselves help create good software.

If you are in search of particular tools, I can recommend looking toward [OpenSpec](https://github.com/Fission-AI/OpenSpec) and [Ralph](https://github.com/snarktank/ralph), but more as concepts of the right approaches than specific software — they have many analogs.

However, I still want to recommend a particular base agent — [pi.dev](https://pi.dev/). It is designed with a focus on extensibility by third-party tools, which is in the spirit of the next section of this post. But I haven't had a chance to try it out yet.

## The future of toolling

When humanity invents some shiny new thing, it usually builds a big, all-purpose machine around it and tries to apply that machine to everything it can reach. As experience accumulates, we start breaking it down into pieces, each sharpened for specific tasks.

Right now, we're in the phase of building those all-purpose machines. Soon, we'll start breaking them down into modular parts that can be recombined in the [Unix-way](https://en.wikipedia.org/wiki/Unix_philosophy) — and that's when it will make sense to talk about custom personal agent stacks.

This view is indirectly reinforced by the sheer number of niche standards around agents that are gradually emerging, both explicitly and implicitly.

At a glance, the decomposition might look something like this:

- A task orchestrator.
- An interface for interacting with the user.
- A sandbox for carrying out destructive operations.
- A tool for interacting with the LLM (large language model).
- A tool for navigating code and other artifacts.
- A database or knowledge base for memory, possibly.

There are already some of them, but not all, and not in perfect quality.

## Hype, hype, hype

A brief moment of grumbling.

### This GitHub is broken — bring a fresh one

We've never seen this kind of massive growth in project star counts before. People barely check what they're starring or why — they hand out stars based purely on keywords and pretty pictures.

It's not as if stars were ever a truly reliable metric for anything, but at least they could be treated as a rough signal of a project's maturity and quality — and that was convenient.

Now the difference between 1k, 10k, and 100k stars tells you only about hype and the project’s marketing strategy.

### Like blockchain, only louder

If you look closely, blockchain and agents have a few things in common:

- both technologies look good in a fully digital environment, but run into problems when mapped onto the real world;
- both technologies are technically complex;
- the hype around both makes it much harder to assess them objectively and to understand their real capabilities and limitations.

The blockchain story suggests that, instead of a hype-driven revolution, what we got was the quiet evolution of a small part of our civilization. I think agents will follow much the same path — only with a more noticeable impact.
