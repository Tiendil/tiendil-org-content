---
title = "LLMs think breadth-first, humans think depth-first"
tags = ["theory", "development", "thinking", "neural-networks"]
published_at = "2026-02-11T12:00:00+00:00"
seo_description = "Why LLMs think breadth-first, humans think depth-first, and what problems this creates when working with LLMs."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "cover.jpg"
alt = "Post cover (c) ChatGPT"
///

I've formulated my main conceptual issue with LLMs at this point, based on my personal experience.

The problem is less noticeable in chats — it gets smoothed out by the continuous interaction with a human who steers and corrects the LLM.

However, it becomes much more noticeable during vibe coding, or when you ask an LLM something that calls for a large abstract answer.

<!-- more -->

When a human searches for a solution, they pick a goal and move toward it methodically, constantly pruning the search space as they go. If the task is to implement X, then X will be implemented. If a question needs to be broken down into categories, reasonably orthogonal categories will be chosen (within the limits of the person), and the question is decomposed into those categories.

But since LLMs are essentially [probabilistic databases]{post:ai-notes-2024-generative-knowledge-base}, and probability has a very limited sense of direction, an LLM generates the answer in every possible direction at once.

Even if some form of iterative reasoning is used, each iteration still attempts to expand the answer in every direction and, because of its probabilistic nature, injects incorrect and/or unnecessary deviations.

In other words, the problem remains even with [iterative error correction]{post:@choose-nearest-language:life-and-work-with-mistakes}.

As a result, the very structure of the output changes — it becomes tangled, non-orthogonal. That is already problematic, but there are additional complications:

- This is not the kind of answer people (ok, professionals) are used to working with. It has to be perceived and processed differently: more figuratively (more image-based), less analytically. That requires a separate skill.
- Such answers are harder to analyze due to their non-orthogonality and numerous minor deviations — it is very easy to miss a critical deviation that looks insignificant (locally) but leads to substantial consequences once applied.

This leads to an interesting question: **can this issue be solved by shortening reasoning iterations while increasing their number, or are there qualitative differences between how the human brain works and how LLMs function?**

By qualitative differences I mean something like symbolic logic embedded directly into the neural network architecture.
