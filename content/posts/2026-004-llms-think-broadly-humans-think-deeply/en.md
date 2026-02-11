---
title = "LLMs think broadly, humans think deeply"
tags = ["theory", "development", "thinking", "neural-networks"]
published_at = "2026-02-11T12:00:00+00:00"
seo_description = "Why LLMs think broadly and humans think deeply, and what problems this creates when working with LLMs."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "cover.jpg"
alt = "Post cover (c) ChatGPT"
///

I've formulated my main conceptual issue with LLMs at this point. Based on my personal experience.

The problem is less noticeable in chats — it gets smoothed out by the continuous interaction with a human who steers and corrects the LLM.

However, it becomes much more noticeable in vibe coding, or when you ask an LLM something that expects a large abstract answer.

<!-- more -->

When a human searches for a solution, they pick a goal and move toward it methodically, constantly pruning the search space as they go. If the task is to implement X, then X will be implemented. If a question needs to be broken down into categories, reasonably orthogonal categories will be chosen (within the limits of the person), and the question is decomposed those categories.

But since LLMs are essentially [probabilistic databases]{post:ai-notes-2024-generative-knowledge-base}, and probability lacks a built-in notion of directions, an LLM generates an answer in all possible directions.

Even if some form of iterative inference is used, each iteration still attempts to expand the answer in every direction and, because of its probabilistic nature, contaminates it in incorrect and/or unnecessary ways.

In other words, the problem remains even with iterative error correction.

As a result, the very structure of the output changes — it becomes tangled, non-orthogonal. That is already problematic, but there are additional complications:

- This is not the format of answer people (ok, professionals) are used to work with. It has to be perceived and processed differently: more figuratively, less analytically. That requires a separate skill.
- Such answers are harder to analyze due to their non-orthogonality and numerous minor deviations — it is very easy to miss a critical divergence that looks insignificant (locally) but leads to substantial consequences once applied.

This leads to an interesting question: **can this issue be solved by shortening inference iterations while increasing their number, or are there qualitative differences between how the human brain works and how LLMs function?**

By qualitative differences I mean something like symbolic logic embedded at the level of neural network architecture.
