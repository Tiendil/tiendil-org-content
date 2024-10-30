---
title = "
title = "In-depth analysis of Goodhart's Law"
tags = ["practice", "theory", "business"]
published_at = "2024-10-30T12:00:00+00:00"
seo_description = "I found an excellent essay with an analysis of Goodhart's Law and examples from practice."
seo_image = ""
---

I found an excellent [in-depth analysis of Goodhart's Law](https://commoncog.com/goodharts-law-not-useful/) (when a measure becomes a target, it ceases to be a good measure).

[Cedric Chin](https://commoncog.com/author/cedric/) breaks down the law into its components and provides examples from Amazon's practice on how they work with them.

In brief.

1. Everything is not so straightforward and not so bad.

2. When people are under pressure from a target metric, they have three behavioral strategies:

a) They can work to improve the system.
b) They can sabotage/distort the system's work.
c) They can sabotage/distort the data.

For example, if you have a factory producing things and a production plan for them;

Then possible strategies for your employees:

a) Improve technologies and processes to meet the plan.
b) Hide excess production in one month to attribute it to another (sabotage of production).
c) Take ready-made products from the warehouse to put them back on the conveyor (data falsification).

Therefore, the manager's goals:

a) Create conditions that make it possible, comfortable, and beneficial to improve the system. For example, set realistic, objective deadlines and plans.
b) Make it difficult to sabotage/distort the system.
c) Make it difficult to falsify data.

There are interesting examples of Amazon's adaptation to these principles in the original post.

For example, they switched from optimizing output metrics to optimizing input metrics through the evolutionary refinement of heuristics about them. Because it is more difficult to falsify input metrics, and their impact on the output can be empirically evaluated.

Exaggerating, instead of optimizing the "number of sales" metric, it may be better to optimize the "number of cold calls", "number of ads", etc. by iteratively refining the formulations based on business data.

As an example, here is the evolution of the metric for one of Amazon's teams:

> - number of detail pages, which we refined to
> - number of detail page views (you don’t get credit for a new detail page if customers don’t view it), which then became
> - the percentage of detail page views where the products were in stock (you don’t get credit if you add items but can’t keep them in stock), which was ultimately finalized as
> - the percentage of detail page views where the products were in stock and immediately ready for two-day shipping, which ended up being called Fast Track In Stock.

For details, I recommend going to the [original post](https://commoncog.com/goodharts-law-not-useful/).
