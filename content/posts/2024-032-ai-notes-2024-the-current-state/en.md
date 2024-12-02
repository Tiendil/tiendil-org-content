---
title = "The current state"
tags = ["practice", "neural-networks", "ai-notes-2024", "futurology", "business", "economics"]
series = "ai-notes-2024"
published_at = "2024-11-23T17:00:00+00:00"
seo_description = "My notes on the current state of AI at the end of 2024, this part is about the current state of the industry."
seo_image = ""
---

I continue my notes on AI at the end of 2024.

/// brigid-series
tag = "ai-notes-2024"
///

In the previous posts we discussed two theses:

- We can make fairly accurate assumptions about the state of the AI industry by analyzing decisions of major AI developers, such as OpenAI or Google.
- All current progress is based on a single base technology — generative knowledge bases, which are large probabilistic models.

Based on these theses, let's look at the current state of the industry.

<!-- more -->

## View through the prism of model generations

First of all, let's look at how the top implementations of universal LLMs have evolved — the main achievement of recent years.

An ideal example would be the series of models from OpenAI: each new model literally corresponds to a stage in the development of technologies as I see them:

1. Youth — GPT-3 — pushing models to their limits through scaling data and hardware.
2. Coming of Age — GPT-4 — when the possibilities of extensive development are exhausted, we transition to an intensive path of maximizing architectural adaptation. This stage naturally culminated in multimodality — support for various data types such as text, images, and audio.
3. Maturity — o1 — when we can no longer **radically** improve the architecture of the target system, we begin building a metasystem in which the original system becomes one of the components. The [Chain-of-Thought](https://www.promptingguide.ai/techniques/cot) pattern, on which o1 is tuned, can be interpreted as the first such metasystem, albeit a very simple one. It can be seen as the sequential application of the model to a [blackboard](https://en.wikipedia.org/wiki/Blackboard_(design_pattern)). The next step, for example, could involve multi-agent systems and model specialization.
4. Old age (?) — GPT-5 — when all possibilities for radical improvements are exhausted, we shift to the meticulous process of fine-tuning and optimization. The technology can still be improved for a long time and cumulatively made orders of magnitude better, but explosive growth is over. Therefore, there are persistent rumors on the internet that we shouldn't expect a big leap from GPT-5.

I would like to draw your attention to the fact that changing the base model is an extremely expensive operation. Models are not changed on a whim. They are changed exactly when squeezing something new out of the old approach becomes economically unviable compared to investing in a new approach. In other words, when the limit of rapid development is reached.

At some point, it became impractical to invest the majority of resources in scaling data and hardware, so we switched to optimizing the architecture. Once the architecture was fine-tuned, humanity redirected financial flows toward experiments in creating metasystems.

/// note | Therefore, we can make the following assumptions

- There are few opportunities left for explosive extensive growth through scaling data and hardware. If this resource (data and hardware) hadn’t been exhausted, we would still see GPT-3.X models being released, scaled to run on 2, 5, 10, or even 100500 GPUs simultaneously. NVIDIA would be rolling out ultra-optimized hardware designed specifically for running super-simple but massive neural networks, and so on.
- There are few opportunities left for explosive architectural growth. OpenAI, like everyone else, has not been able to invent or buy technology that would allow them to continue modernizing the architecture. Otherwise, instead of o1, OpenAI would have trained GPT-4.5 or GPT-5, significantly surpassing GPT-4 in quality.
- We are currently at the stage of building metasystems on top of generative knowledge bases, as the development of such models is now being prioritized.

///

## View through the prism of probabilistic models

We can improve probabilistic models in several ways:

1. Making model preparation more complex: more data, longer training — better results.
2. Making model more complex by changing its architecture.
3. Making model more specialized — increasing accuracy by narrowing the solution space.
4. Scaling model horizontally — correcting errors by generating multiple response variations. The simplest option: if the model says A in two out of three runs and B in one, then the correct answer is probably A. A slightly more complex option: running several specialized models, each of which solves part of the problem.

Approaches 1, 2, 3 determine the final form of the model, so they are the prerogative of model developers.

Approach 4 does not change the form of the model itself, but allows us to control the accuracy of its results, so it is more suitable for model users.

Keeping in mind the generations of models, we can assume that no radical breakthroughs are expected from options 1 and 2.

An ideal example of the third approach would be [Suno](https://suno.com/) — a service for generating music and songs that significantly outperforms general-purpose models in quality. It is not profitable for developers of general-purpose models to focus on such specializations: to gather data and train, say, 100-1000 specialized models (and integrate them into a universal meta-model), you'd need 100-1000 teams like Suno. Considering that Suno is a leading startup — one of many (most of which faded into obscurity) — the estimated resources required should be multiplied by another factor of 100.

The fourth approach does not guarantee a qualitative leap. If the model makes minor errors in some area, horizontal scaling can eliminate these errors and slightly improve the answers (because the error was small). If the model has a blind spot in some area, this blind spot will most likely remain even after scaling.

In this regard, the o1 model looks like an attempt to "cheaply" push general-purpose LLMs forward along paths 3 and 4 at the same time. The result is better than GPT-4, but not by an order of magnitude. For instance, I still use my [custom GPTs]{post:my-gpts} for certain tasks instead of o1

/// note | Accordingly, we can continue formulating hypotheses

- The capabilities of generative knowledge bases are more or less defined — they will most likely remain at the level of GPT-4 plus-minus. Naturally, they will become faster, smaller, slightly more accurate, etc.
- The talks about the continuation of rapid progress through scaling computations during operation (option 4), instead of training stage, are most likely a marketing ~~bullshit~~ move to maintain hype and investment flow. I will talk more about this in the next essay on the future of technology.

///

## View through market changes

- ChatGPT 3 was released in the summer of 2020 — 4 years ago.
- ChatGPT 4 was released in the spring of 2023 — 1.5 years ago.

In my opinion, enough time has passed to draw initial conclusions about the perspectives of the technology: where it changes the rules of the game, where it makes things better, and where it changes nothing.

/// warning | Pay attention

- Everything written above is my personal subjective opinion.
- Everything written below is even more personal and subjective. It is not the result of research, but the product of my experience and observations of the news.

///

### Disrupted markets

Right now, there are major changes in the following areas:

- **Personal assistants** — LLM-based chats significantly enhance the functionality of everything that came before them, from Clippy in Word to smart speakers, redefining how users interact with these tools.
- **Professional software** — [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment), [CAD](https://en.wikipedia.org/wiki/Computer-aided_design), graphic editors — all professional software that has, to some extent, formalized its domain, which applies to all major professional tools.These developments make professional fields an order of magnitude more accessible to beginners, while professionals become exponentially more efficient. At the same time, the concept of working with professional software is shifting from directive interaction to a dialog-based approach. It’s still unclear where these changes will settle — whether it will remain as a separate mode or if the entire development process will transition to dialogs — but one thing is certain: editors will never be the same.
- **Search** — While it hasn’t become widely noticeable yet, most people using ChatGPT or similar tools report turning to traditional search engines significantly less often. In my opinion, this lack of visibility is due to a combination of the massive user base of search engines and the still limited adoption of chat-based tools. It would be interesting to see a graph of the number of Google queries from a specific user demographic, such as "IT professionals in Florida."
- **Music** — Several startups, such as [Suno](https://suno.com/), have demonstrated that generating music and songs based on a formalized input is significantly easier than generating images and videos. The chairs under the guardians of intellectual property are shaking, but they are still holding. Let’s keep our fingers crossed for the future. By the way, if you think about it, music generation can be attributed to professional software: musical notation and lyric markup are typical [DSLs](https://en.wikipedia.org/wiki/Domain-specific_language).

### Improved markets

In some areas, everything is just getting better, for example:

- **Crowdsourcing platforms** like [Toloka](https://toloka.ai/) are transitioning from human contributors to AI while retaining their core essence.
- **Moderation, sentiment analysis, and content filtering services** are also improving while remaining conceptually unchanged.
- **No-code platforms**. It seems strange to include them here, but de facto, I haven't seen anything revolutionary in them, although AI clearly increases their capabilities.
- **Text processing**: translation, "technical journalism." It's definitely becoming more convenient, but I'm not ready to consider the automation of writing technical notes on sports matches, courts, and stock market events as a disruption.
- **Education** — LLMs are finding their application, but they haven't changed anything radically yet. For example, there are no examples of platforms or schools where AI has replaced teachers.

### Markets with no changes, despite everyone's expectations

In some areas, there has been no rapid breakthrough, although many were waiting for it:

- **Robotics** — Humanoid robots have appeared, but they still occupy the same niches as before: entertainment for the rich and fancy marketing.
- **Games** — Not a single major game has been released featuring next-gen NPCs or next-gen procedural generation. There’s not even anything comparable to well-known precedents from the pre-deep-learning era, such as [Creatures](https://en.wikipedia.org/wiki/Creatures_(video_game_series)), [Black and White](https://en.wikipedia.org/wiki/Black_%26_White_(video_game)), etc. The last one is very suspicious, indicating either very long adaptation cycles of technologies in gamedev, conceptual shortcomings of the technology itself, or the stagnation of the industry. My money is on stagnation.
- **Professional generation of ready-to-view artistic content** — Generating content according to a precise detailed specification is still impossible and is not even close to becoming possible. The work of professional artists, cameramen, and all involved is still needed and valuable.
- **Professional generation of ready-to-read artistic content** — The situation is similar to the previous point.
- The adoption rate of **self-driving vehicles** hasn’t changed radically.
- **Medicine** — There have been no breakthroughs yet, and the accessibility of medicine for the poor has not improved.
- **Science** — [AlphaFold won a Nobel Prize](https://www.nature.com/articles/d41586-024-03214-7), but I haven't seen any news about scientists doing something revolutionary with AlphaFold (Nature also writes about this). In my opinion, AlphaFold is closer to professional software than to a foundational breakthrough for science. Also, I come across articles about automating research using LLMs, but I have yet to hear of any practical applications. Why this is the case — and likely will remain so — is something I’ll explain in my next post.
- **Bureaucracy** — There have been no examples of large-scale automation of paperwork in the government sector or in large corporations.

/// note | Based on these observations, let's add a few more hypotheses

- AI is changing our lives for the better, but not radically: improvements are not happening everywhere, not happening quickly, the most significant changes are highly localized in the field of professional software and entertainment, thus not directly and significantly affecting the lives of most people.
- There are a number of areas that are "waiting in line" for AI gifts and could explode, but this is more of a hypothetical possibility than a real one.

///
