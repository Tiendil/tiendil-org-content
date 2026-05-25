---
title = "Donna is ready to use"
tags = ["practice", "development", "open-source", "neural-networks", "prompt-engineering", "large-language-models", "exocortex", "ai-agents", "coding-agents"]
published_at = "2026-05-28T12:00:00+00:00"
seo_description = "I finished the prototyping phase of Donna development. Now it is polished, have single responsibility and, generally, suitable for use."
seo_image = ""
---

In the February I released [Donna](https://github.com/Tiendil/donna) ([the original post]{post:donna-introduction}) — a CLI tool to represent agent workflows as state machines and describe them in Markdown files.

Since I were developing it simultaneously with learning [how to work with agents]{post:notes-on-coding-agents}, Donna came out as a bit of overcomplicated versatile monster. It had a lot of features, all of them were useful, but, in total, they restricted developer's envelopment too much and required too much time to learn.

So, after I got some experience, I decided to follow [Unix philosophy](https://en.wikipedia.org/wiki/Unix_philosophy) and refactor single monolithic tool into a set of smaller tools with single responsibility. Donna is the first one of them (and the second is [depmesh](https://github.com/Tiendil/depmesh) — I'll tell about it later.

New Donna exists to solve control flow problems of agents on the long run:

- Most development work is repetitive on the meta level: "run this tool, do something with the output, run another tool" or "implement function A, implement tests for function A, implement function B, …".
- Some parts of that work require advanced reasoning, others do not.
- Agents are ~~almost~~ good at reasoning, but not so good at keeping the whole process in mind, remembering what they did, etc.
- Therefore, we should separate the reasoning part from the control flow part — let agents focus on what they are good at, and keep the control flow to traditional automation tools.

Donna runs predefined workflows as deterministic state machines, so the agent can focus on reasoning, code generation, and other agentic work.

<!-- more -->

## How Donna works

You define a workflow in a single readable Markdown file. The agent asks Donna to guide it through the workflow, and Donna keeps the session state, chooses the next operation, and tells the agent what to do or report next.

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

Such workflow do formatting, run tests, linters, spellcheckers, and quality-related tools, and if they find any issues, they ask the agent to fix them. It does them in the loop in the fixed order until all the issues are fixed.

Agent is instructed to run polish workflow on the end of the current work scope and at the end of each significant part of work, when the project is expected to be in consistent state.

Such workflow saves a lot of manual work for me, especially after I introduced [tach](https://github.com/tach-org/tach/) to my projects to lint/restrict code dependencies.

**The second use case** is asking agents to generate workflows for themselves when they need to do something complex. For example, when I want to ensure that a complex refactoring will be done in correct sequence, or when I want to ensure that every file will be processed in the same way.

**My wife resently started using Donna for translating some korean manhwa** for personal use. I help her generate a near 5 workflows, after that she iteratively tuned them for expected behavior and quality.

## Looking for early adopters

I use Donna every day and think it may bring a lot of value to other people. So, if you are interesting — try it out, and let me know what you think. I'm always ready to help you with it, and your feedback is very important for me.

Don't worry about support or long-term maintenance — I use Donna in all my projects every day, so I will maintain it in any case. And I'm fast at introducing new features and fixing bugs on demand.
