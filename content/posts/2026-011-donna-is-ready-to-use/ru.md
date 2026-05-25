---
title = "Donna готова к использованию"
tags = ["practice", "development", "open-source", "neural-networks", "prompt-engineering", "large-language-models", "exocortex", "ai-agents", "coding-agents"]
published_at = "2026-05-28T12:00:00+00:00"
seo_description = "Я закончил прототипирование Donna. Теперь утилита отлажена, имеет чёткую специализацию и, в целом, готова к использованию."
seo_image = "cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "Как работает Donna."
///

В феврале я выпустил [Donna](https://github.com/Tiendil/donna)([оригинальный пост]{post:donna-introduction}) — CLI утилиту для выполнения сценариев агентами и представления этих сценариев в виде файлов Markdown.

Поскольку я разрабатывал её одновременно разбираясь [как работать с агентами]{post:notes-on-coding-agents}, у меня получился переусложнённый, универсальный монстр. Donna имела много полезных функций, но совместно они слишком сильно ограничивали среду разработчика и требовали слишком много времени на изучение.

Поэтому, получив некоторый опыт, я решил следовать [философии Unixъ(
So, after I gained some experience, I decided to follow the [Unix philosophy](https://ru.wikipedia.org/wiki/Философия_Unix) и отрефакторить монолит в набор меньших утилит, каждая с отдельной чёткой зоной ответственности. Новая Donna — это первая из них (вторая — это [depmesh](https://github.com/Tiendil/depmesh) — я расскажу о ней в отдельном посте).

New Donna exists to solve control flow problems of agents in the long run:

- Most development work is repetitive on the meta level: "run this tool, do something with the output, run another tool" or "implement function A, implement tests for function A, implement function B, …".
- Some parts of that work require advanced reasoning, others do not.
- Agents are ~~almost~~ good at reasoning, but not so good at keeping the whole process in mind, remembering what they did, etc.
- Therefore, we should separate the reasoning part from the control flow part — let agents focus on what they are good at, and keep the control flow to traditional automation tools.

Donna runs predefined workflows as deterministic state machines, so the agent can focus on reasoning, code generation, and other agentic work.

<!-- more -->

## How Donna works

You define a workflow in a single readable Markdown file. The agent asks Donna to guide it through the workflow; Donna maintains the session state, selects the next operation, and tells the agent what to do or report next.

Workflows can start child workflows, be generated on the fly, or be modified while executing. For example, you can have a workflow that guides the agent through the planning process, and at the final step, the agent can generate a new workflow with a detailed plan to execute and run it immediately.

As a bonus, **Donna saves tokens** because the agent does not need to reason about control flow or how to execute particular CLI commands and other automation tools.

## Example

Here is a toy example of a workflow that checks the current time, asks the agent whether it is time to drink tea, and branches according to the agent's answer.

The abstract schema of the workflow looks like this:

```
[Get Current Time]
          |
          v
   [Ask About Tea]
          |
     +----+----+
     |         |
    yes        no
     |         |
     v         |
  [Turn On     |
   Kettle]     |
     |         |
     +----+----+
          |
          v
       [Finish]

```

And here is the source of this workflow in Donna's Markdown format:

```markdown
# Is it time to drink tea?

This workflow checks the current time, asks the agent whether it is tea time,
and branches on the answer.

## Get Current Time

```toml donna
id = "get_current_time"
kind = "donna.lib.run_script"
save_stdout_to = "current_time"
goto_on_success = "ask_about_tea"
goto_on_failure = "finish"
```

```bash donna script
#!/usr/bin/env bash
date +%H:%M
```

## Ask About Tea

```toml donna
id = "ask_about_tea"
kind = "donna.lib.request_action"
```

The current time is:

```text
{{ donna.lib.task_variable("current_time") }}
```

Is it time to drink tea?

1. If yes, `{{ donna.lib.goto("turn_on_kettle") }}`.
2. If no, `{{ donna.lib.goto("finish") }}`.

## Turn On Kettle

```toml donna
id = "turn_on_kettle"
kind = "donna.lib.request_action"
```

Turn on the kettle, then `{{ donna.lib.goto("finish") }}`.

## Finish

```toml donna
id = "finish"
kind = "donna.lib.finish"
```

The workflow is complete. You are a good butler.
```

This workflow is taken from Donna's [README.md](https://github.com/Tiendil/donna), you can find the detailed explanation of how it works there.

## Real usage cases

**My primary use case for Donna** is creating code polishing workflows for my projects, like that one: [polish.donna.md](https://github.com/Tiendil/donna/blob/main/workflows/polish.donna.md).

Such a workflow performs formatting, runs tests, linters, spellcheckers, and other quality-related tools, and if any issues are found, it asks the agent to fix them. It does that in a loop, in the fixed order, until all the issues are fixed.

My agent is instructed to run the Polish workflow at the end of the current work scope and at the end of each significant part of work, when the project is expected to be in a consistent state.

Such a workflow saves me a lot of manual work and code-review time, especially after I introduced [tach](https://github.com/tach-org/tach/) to my projects to lint/restrict code dependencies.

**The second use case** is asking agents to generate workflows for themselves when they need to do something complex. For example, when I want to ensure that a complex refactoring is done in the correct sequence, or that every file is processed in the same way.

**My wife resently started using Donna for translating some chines novels** for personal use. I helped her generate nearly 5 workflows; she iteratively tuned them to achieve expected behavior and quality, and now they are translating something in the background. No coding was required.

## Looking for early adopters

I use Donna every day and think it could bring a lot of value to others. So, if you are interested, try it out, and let me know what you think. I'm always ready to help you with it, and your feedback is very important to me.

Don't worry about support or long-term maintenance — I use Donna in all my projects every day, so I will maintain it in any case. And I'm fast at introducing new features and fixing bugs on demand.
