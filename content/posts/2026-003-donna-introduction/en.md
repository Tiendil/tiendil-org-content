---
title = "Donna — predictability and controllability for your agents"
tags = ["practice", "development", "open-source", "neural-networks", "prompt-engineering"]
published_at = "2026-02-09T12:00:00+00:00"
seo_description = "Donna is a utility for ensuring predictability and controllability of your agents' work by generating and executing state machines."
seo_image = ""
---

**Looking for early adopters for my agent utility.**

I named the tool Donna — https://github.com/Tiendil/donna

**With it, your agents will generate state machines while executing state machines created by other state machines.**

Donna allows agents to perform hundreds of sequential operations without deviating from the specified execution flow. Branching, loops, nested calls, recursion — all possible.

Most other tools just send meta-instructions to agents and hope they won't make mistakes. Of course, agents make mistakes: they mix up steps, skip operations, misinterpret instructions. Donna truly executes state machines: it maintains state and a call stack, controls an execution flow. Agents only execute specific commands from Donna.

However, Donna is not an orchestrator, but just a utility, so it can be used anywhere, no API keys, passwords, etc. needed.

**The core idea:**

- Most high-level work is more algorithmic than it may seem at first glance.
- Most low-level work is less algorithmic than it may seem at first glance.

<!-- more -->

So, we should strive to give agents low-level tasks with a small clear context, and define high-level workflows algorithmically.

For example, instead of asking an agent to "validate the code and fix issues", we can describe a clear sequence of actions:

1. Run tests, if tests failed, analyze the output, fix the issues, and go back to step 1.
2. Format the code.
3. Run linter on the code, if there are errors, analyze the output, fix the issues, and go back to step 1.
4. …

That is a simplified example. You can find a more complex version in the [code of Feeds Fun](https://github.com/Tiendil/feeds.fun/blob/main/.donna/project/work/polish.md).

**We can look at such workflows as formally defined, validatable skills 2.0.**

At the same time, workflow is a readable Markdown file. So, both a human and an agent can create it.

That's why with Donna an agent can create state machines for itself and execute them.

For example, Donna comes with a workflow that:

1. Chooses the most appropriate workflow for creating a Request for Change (RFC) document and runs it.
2. Using the created RFC as a basis, creates a state machine for implementing the changes described in the RFC.
3. Runs the newly created state machine.
4. Chooses the most appropriate workflow for polishing the code and runs it.
5. Chooses the most appropriate workflow for updating the CHANGELOG and runs it.

**In addition to state machines, Donna implements abstractions for managing artifacts (documentation, workflows).** This allows it to validate them, navigate through them (without fuzzy searching), install collections of artifacts as Python packages. For example, you can provide instructions for interacting with your project right along with its library.

Of course, everything is extensible with your Python code: you can add your own operations for workflows, your own artifact types, your own artifact sources, etc.

You can find more info on the project's page: https://github.com/Tiendil/donna

**I'm greatly interested in feedback:** how you use or would like to use Donna, what issues you faced, what functionality is missing — everything. Create issues on GitHub, write in the comments to this post, or message me directly.

The repository stars are also appreciated ;-)
