---
title = "Industry transparency"
tags = ["practice", "theory", "neural-networks", "ai-notes-2024"]
series = "ai-notes-2024"
published_at = "2024-11-02T17:00:00+00:00"
seo_description = "My notes on the current state of AI at the end of 2024, this part is about industry transparency."
seo_image = ""
---

Nearly a year and a half ago, I published a major [forecast on artificial intelligence]{post:@choose-nearest-language:silly-predictions-about-artificial-intelligence}. Read it if you haven't already — it's still looking good.

Recently, I've decided to expand on the prognosis, but a sizeable comprehensive post isn't coming together, so there will be a series of smaller notes.

/// brigid-series
tag = "ai-notes-2024"
///

I'll start with industry transparency: the current AI movement has several impressive aspects that I'd like to discuss.

<!-- more -->

## A low delay in receiving information about the current state of the industry

A large portion of industry events are public (here and further, by "we" I mean an abstract humanity):

- We either know in real-time what each key company is working on, or we find out within six months to a year.
- We almost instantly know when key specialists change companies, sometimes even projects.
- Within months, we notice a large part of ~~significant~~ interesting scientific developments. For example, after the publication of a preprint on [Kolmogorov-Arnold Networks](https://arxiv.org/abs/2404.19756), the topic went through stages of hype and the first checks of the concept in practice just within a few months.

## All significant projects are led by experienced IT businessmen

These people know the value of money and the potential benefit of its distribution. Well, maybe not all of them know it perfectly, but most likely, they are better at money than an average person.

Consequently, the directions of companies' efforts correlate well with the assessment of technology prospects. And, for the sake of fairness, with the prospect of raising hype, too.

Therefore, if a lot of money is going somewhere, it is pretty reasonable to assume one of two options, sometimes both at once:

- The technology is considered ~~sufficiently promising~~ more promising than most others regarding potential return on investment. I interpret the return as at least 2-3 orders of magnitude.
- A request for some feature/possibility from potential customers is assessed as so large that the potential profit justifies the risk of losing money due to technology unreadiness.

## Lack of specialized developers/scientists vs abundance of money

If you have a spare million dollars, you won't be able to get a new specialist in SOTA neural network architectures out of thin air faster than in five years, maybe in two or three, if the person is especially capable. You can only entice an already prepared specialist — move them from project to project, speaking on the scale of humanity.

For example, there is a version that [Google recently bought a startup for $2.7 billion just to take back its founders and core team](https://www.linkedin.com/pulse/analyzing-googles-characterai-acquisition-sramana-mitra-iramc/).

Consequently:

- The space of possible neural network architectures is explored slowly — work does not scale with money.
- Most of the money is poured into scaling everything that can be scaled: data, hardware, "support" teams. The latter includes not only low-qualified data labelers but also expensive specialists: MLOps, system-level developers, hardware creators, etc.

This should lead to important hidden trends. Here are my unproven hypotheses:

- The choice of research directions in commercial companies, where most research is currently taking place, is under intense pressure to scale neural networks. Consequently, more interesting (but less scalable) approaches may not receive the attention they deserve, which will affect the speed of progress in the future.
- Even after creating a concept of a promising architecture, its real implementation will be postponed until the entire scaling reserve of the current relevant architecture is exhausted. Because the profit from scaling is guaranteed and fast, while the profit from transitioning to a new architecture is not guaranteed and not fast.
- The complexity of proving the "prospects" of an architecture is increasing, as current architectures are optimized to the maximum and no new development will show comparable results, even if conceptually superior to current solutions. Its developers simply won't have the money and time for comparable optimizations.

If we trust these hypotheses, we can clearly see the real progress of neural network technologies.

Oversimplifying, when someone like OpenAI releases a new flagship model, we can observe:

- specific architectural differences from the previous model;
- clear timelines for when the previous SOTA solution reached its peak potential (scaling limit);
- clear timelines for developing/refining/optimizing the new architectural solution.

In other words, we can see a series of qualitative jumps and the time between them. Based on this data, I will try to assess the limits of the progress of current AI technologies in one of the future notes.
