---
title = "Pricing model at the start of Feeds Fun monetization"
tags = [ "theory", "practice", "monetization", "neural-networks", "business", "feeds-fun", "interesting", "best"]
published_at = "2026-01-24T12:00:00+00:00"
seo_description = "Exploring the pricing model of Feeds Fun — a SaaS news reader with tags based on LLM."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "cover.jpg"
alt = "Cover of the post (c) ChatGPT"
///

Right after I started working on the pricing for [Feeds Fun](https://feeds.fun) users, I realized I should do it in a blog post: it's almost the same amount of work, it's the ideologically right thing to do, and it should be interesting. Anyway, I was going to write an [RFC]{post:two-years-writing-rfc-statistics} — the question is purely about publicity. I also take an opportunity to conduct a retrospective on the project for myself.

/// note | What is Feeds Fun

[Feeds Fun](https://feeds.fun) is my news reader that uses LLM to tag each news item so users can create rules like `elon-musk + mars => -100`, `nasa + mars => +100`. That effectively allows filtering the news stream, cutting it down by 80-90% (my personal experience) — no dark-box "personalization" algorithms like in Google or Facebook; everything is transparent and under your control.

///

So, meet a free-form essay on monetization of a [B2C](https://en.wikipedia.org/wiki/B2C) [SaaS](https://en.wikipedia.org/wiki/Software_as_a_service) dependent on [LLM](https://en.wikipedia.org/wiki/Large_language_model) — couldn't be more relevant :-D

<!-- more -->

This post was originally conceived as an analytical test bench in the spirit of [analysis of player preferences in strategy games]{post:making-a-fictional-universe-quantity-survey-processing}, but by the third draft, it became looking more like a philosophical treatise. Which is natural — when you have a little real data and too many possible solutions, you have to rely more on logic and intuition than on numbers. But the bench is there, just somewhere down below.

Generally, choosing the monetization approach at the start of a project is more about user experience than specific amounts. Concrete numbers (including prices for users) are far easier to optimize iteratively when you have real user behavior statistics. Changing the value proposition and the user experience, on the other hand, is much harder. The difference is roughly the same as between "tweaking a couple of numbers in the configs" vs "rewriting a sizable chunk of business logic and UI".

As a result, we'll choose the pricing model based on reasoning, while its parameters will be tuned numerically.

/// warning | Text may be challenging to perceive

This text is a good example of [thinking through writing]{post:thinking-through-writing} — a practice I actively use. Unfortunately, that's precisely why it may be a poor example of structured exposition for an external audience.

I tried to add as much explanation and context as possible, but I'm not sure I included everything that was needed, and that all this context didn't make things worse.

As a result, this text sets an all-time record for this blog in terms of the number of comment blocks and digressions.

///

## Product specifics

Feeds Fun looks like a "classic" online news reader — the user subscribes to news feeds, the service downloads the news to its server, and shows it to the user. Currently, only [RSS](https://en.wikipedia.org/wiki/RSS) and [Atom](https://en.wikipedia.org/wiki/Atom) are supported, but in the future, other sources will be supported as well: social networks, email newsletters, automatic site parsing, etc.

The closest analogs are [Google Reader](https://en.wikipedia.org/wiki/Google_Reader) (now shut down), [Feedly](https://feedly.com/), [Inoreader](https://www.inoreader.com/).

The common trait of all SaaS news readers is relatively cheap server infrastructure:

- There is enough to make a single request to a news feed to download news for 100500 users subscribed to that feed.
- There is enough to store only one copy of the news item.
- Your traffic is small-sized text data without media content. Media is usually stored on the news source side or in your [CDN](https://en.wikipedia.org/wiki/Content_delivery_network) if you are striving for faster load times.

Services compete mainly in the user experience and the breadth of supported news sources.

The monetization is simple: add subscriptions (there can be several), do not forget the free tier with simple limitations for easier user onboarding.

The infrastructure is cheap enough, so most of the subscription fee goes to the company (development, marketing, profit). Feedly may have a slightly more complex situation, but this complexity most likely stems from its focus on [B2B](https://en.wikipedia.org/wiki/B2B) — not our case, I'll explain later why.

Feeds Fun doesn't fit well into this picture. Its key features are tags and rules — without them, the product loses badly to more mature competitors, and with a single developer will never catch up.

**Every news item costs money** — to have tags, each news item must be processed through an LLM, therefore:

- spendings grow significantly with the number of news items;
- user onboarding via the free tier costs money.

/// brigid-images
src = "boromir.jpg"
caption = "One does not simply copy competitors' approach."
///

Therefore, one does not simply copy the competitors' approach — you need to make sure that the service won't go bankrupt on the first user who subscribes to 100000 news items a day from some Chinese portal. By the way, this is a real example from Feeds Fun's first year.

One of the goals of this post is to wriggle out of this situation in the most cunning way possible.

## Constraints

Let's explicitly list a few more nuances besides the need to pay for each news item.

**First**, we are working out monetization for B2C. Monetizing the same functionality for B2B can be done completely differently.

I chose the B2C path for the following reasons:

- I understand the money flows in B2C and have no idea how money flows in B2B.
- B2C and B2B require very different "secondary" feature sets. Feeds Fun was originally developed for my specific needs, and they are B2C-oriented.
- I want to experiment with some interesting social features in the future, which implies a B2C model. [Google Reader tried in socialization](https://blog.persistent.info/2011/10/google-reader-social-retrospective.html), but was Googled.

That does not mean I am not considering B2B in the future, just need to choose priorities.

/// note | I open to B2B contacts

Imagine you have a flow of tagged updates from all your business: chats, commits, documentation, task trackers, emails, etc. And you want to see long messages from tech lead Bob as a priority, but don't want to see anything from marketer John, unless John is writing about planning LinkedIn campaigns on [Fusion energy](https://en.wikipedia.org/wiki/Fusion_power).

The rules for such prioritization may look like this:

- `tech-lead-bob + long-text => +1000`
- `marketer-john => -100`
- `marketer-john + notion-docs + linked.in + fusion => +1100`

You can get a feel for how tags work on the available demo setups:

- [Last scientific papers from ArXiv.org](https://feeds.fun/show/scientific-papers)
- [News on entrepreneurship](https://feeds.fun/show/entrepreneurship)

DM me, I'll show you how it works directly on my news.

///

**Second**, there is no way to compete in user experience with mature competitors. ~~No desire either.~~

Tags and rules are complex logic that requires complex interfaces.

That is not a surprise. Feeds Fun is software for professionals who want to manage their news flow **consciously and transparently**; do not want to trust black-boxed algorithmes; do not want to read tons of garbage and [AI slop](https://en.wikipedia.org/wiki/AI_slop).

That's why there is no point in focusing on ease of use and breadth of supported news sources as a lure for subscribers — such an approach will automatically put the product in a losing position.

The only way is to push the value of tags and rules as much as possible — make software for pros. Current leaders will find it hard to pivot into this niche, as it would be a complete shift in concept for them.

This leads to the following conclusions:

- We sell tags and rules — this is the key value of the product that users ~~should be~~ are ready to pay for.
- All other features should be as free as possible and good enough not to lose significantly to competitors in users' eyes.

Also, evaluating users' rules is cheap for Feeds Fun, so the question is purely in the cost of tags.

**Third**, the project is growing without investments, it focuses on a narrow niche and gradual growth. If it were a mass-market product with a development budget, it would look differently, work differently, and be monetized differently.

It would look more like a Tinder for news: swipe left, swipe right, tip the content creator. By the way, take this idea into work, I think it's quite good.

**Fourth**, we'll use the "minimizing user confusion" criterion to discard some pricing options.

I've added this criterion to simplify and shorten the text, and remove unnecessary details. If even I can't express an idea briefly and clearly, then for the user it will be really confusing — such solutions will not bring any benefit.

The criterion will be used in the following way: "we discard the option by the 'confusion criterion' because …".

**Fiveth**, we will consider pessimistic scenarios, as they are easier to estimate, and if the pessimistic scenario works, the optimistic one will work even better.

That means:

- We'll assume maximum possible expenses for the scenario.
- We'll assume the minimum possible income for the scenario.

## How we'll evaluate monetization

Before we start, let's agree on what we'll do with the results.

/// note | Why monetize at all?

Without answering that question, it's impossible to define what successful monetization even means.

As often happens with me, there's no single definitive answer — not as if all possible futures converge on the tip of a feed reader, with a success on one side and poverty and oblivion on the other. It's more of a set of possibilities that can be addressed in one go.

In Feed Fun's case, turning monetization on is:

1. a great milestone of a product's maturity;
2. an opportunity to organize a small side income;
3. a chance to finally become independent of salaried work;
4. a strong line on a resume;
5. a way to finally deal with German accounting anyway — might as well start by monetizing a pet project;
6. an interesting and genuinely useful experience.

In the world of pink ponies, of course, there is always a single goal — "to build my own Google-level company". But let's be realistic — most startups fail, and those who declare such maximalist claims are being disingenuous.

Having multiple goals is useful, but not always convenient. In particular, the criteria for success of a hobby project and of a growing business differ significantly.

Therefore, since monetization is primarily about business, we'll evaluate it from the perspective of a small, sustainable entrepreneurship.

///

The propertis of a **sustainable bussiness**:

- **Sustainability** — the flow of new users equals the flow of leaving users.
- **1000 subscribers** — a good, steadily working indie SaaS. Most don't survive to this level.
- **20000 $/month Modified Margin** — the income level at which one can as comfortably work alone, as well as look for partners for a share and money. See terms block below.

In other words, we will look for monetization logic and the prices at which the service would generate a 20000$ modified margin with 1000 subscribers.

**We can consider a SaaS with such properties very successful — most indies don't survive to this level.** Therefore, it's a good goal for monetization evaluation, but we shouldn't expect such properties right after launching monetization. It's precisely a goal to strive for. Accordingly, the prices chosen in the end will serve as a starting point for experiments, not as something set in stone.

/// hint | Important terms

[Cost of Goods Sold](https://www.cloudzero.com/blog/saas-cogs/)  (COGS) — the direct cost of the goods/services one sells — in our case, it is the cost of LLM requests, infrastructure, payment processor fees, etc.

[Gross Margin](https://www.cloudzero.com/blog/saas-gross-margin/) (GM) — the difference between revenue and COGS.

Group Margin does not include items like taxes, office rent, and other costs that do not directly add value to customers.

GM is convenient because its share is quite stable for SaaS products and allows for rough price estimates in unit economics.

**The classic Gross Margin does not include marketing and Value Added Tax (VAT), so for the purposes of this post we will use our own term — Modified Margin.**

[Customer Acquisition Cost](https://en.wikipedia.org/wiki/Customer_acquisition_cost) (CAC) — how much money, on average, is spent on marketing to get one paying customer.

`Cancellation Rate` (CR) — churn rate — what percentage of paying customers leave over a certain period of time, usually a month.

`Modified Margin` (MM) — gross margin modified for marketing and [Value Added Tax](https://en.wikipedia.org/wiki/Value-added_tax) (VAT). In this post, `MM = GM - CAC * number of new customers per month - VAT`, more precisely `MM = GM - N * CR * CAC - VAT`, where `N` is the current number of subscribers, `VAT` is the value added tax. `N * CR * CAC` indicates that we are buying as many subscribers as are leaving.

///

The core idea of stability is that if such stability is possible by rough pessimistic calculations, then in reality, there will be room for optimization.

- If the project underperforms on the metrics, the calculated model will serve as a reference point for optimization.
- If the project overperforms on the metrics, it will have very strong momentum for growth.

## Monetization Design Space

Let's do a little [morphological analysis](https://en.wikipedia.org/wiki/Morphological_analysis_(problem-solving)) and break down the monetization design space into axes so that each possible implementation can be represented as a point in this space.

/// note | Let's set aside the analysis process
I won't go into how I arrived at these axes — it's the result of thinking about the project throughout development, googling, reading, talking to AI, etc. So, it's more a concentration of accumulated experience than a single, one-off effort.
///

What our monetization approach should include:

1. The type of free tier — how we will convince the user to pay.
2. The presence of a classic subscription — whether we will sell access to the service for a fixed fee.
3. The presence of tokens — whether we will sell tokens for news processing.
4. The quota accounting policy — how we will count the consumption of subscription quotas and tokens.
5. The place of margin in pricing — where we will lay the margin and in what volume.
6. The share of Gross Margin in pricing — what portion of the price goes toward servicing costs (COGS) and what portion we keep as GM.

Let's look at the coordinates on each axis. We will immediately try to eliminate obviously non-working options so as not waste time on them.

### Free tier

Possible approaches:

**No free tier** — no freemium, only paid access. As strange as it may sound, there are [many arguments "for it"](https://www.getmonetizely.com/blogs/the-free-tier-trap-why-free-isnt-always-a-winning-strategy-for-startups): from significant infrastructure savings to emphasizing the professionalism/value of the product.

**Access to a limited collection of tagged news** — the user can subscribe to a limited set of news streams that always have tags. Without a subscription, one cannot add their own sources. Feeds Fun currently has two news collections: [articles from ArXiv.org](https://feeds.fun/show/scientific-papers) and [news on startups](https://feeds.fun/show/entrepreneurship).

**Access to a limited collection of tagged news + all other news without tags** — like the previous option, but we allow the user to subscribe to any news source, just without tags. Feeds Fun currently works this way.

**Free tagging of all news, but with a limit per user and a global limit for all users** — for example, 100 tagged news items per day for one user and a maximum of 10000 per day for all users.

**Sharing collections of tagged news** — subscribers create their own collections of news, share them, earn reputation; non-subscribers read these collections and say thanks.

/// note | Comments

"No free tier" loses to "limited collections" because collections let users try the reader's full functionality without frustration.

"Limited collections" wins over "limited collections + news without tags" by apparent implementation simplicity and clarity, but starts to lose when we go into details:

1. The ability to add one's own sources is a key functionality of any news reader. Not having it will greatly frustrate users.
2. "Limited collections" leads to a lot of questions about behavior in edge cases. For example, what to do if a subscriber cancels their subscription — should their news "disappear"?

We discard "free tagging" by the "confusion criterion" because either the quotas will be too small and users won't be able to try the product, or too large, and we will incur losses from the start.

"Sharing collections" is exactly one of the social features that I would be interested in implementing. However, it looks more like a logical continuation than a core monetization feature.

///

It looks like we have a single option left: access to a limited collection of tagged news and all other news without tags. In the future, we can consider implementing a sharing of collections by users.

### Subscription and tokens

Let's merge these two axes into a single one, since they are closely coupled.

/// note | Note

When I refer to a subscription, I always mean both monthly and yearly subscriptions with a discount for the yearly one. Since [annual subscription rocks](https://longform.asmartbear.com/annual-prepay/). However, in our calculations, we will use only the monthly subscription — it's simpler, and I expect the discount from the annual subscription will be offset by higher capital turnover.

The subscription, in any case, will imply quotas for news processing, so it is also a veiled sale of tokens.

The subscription logic in this post assumes daily quotas (for ease of calculation). In reality, it will likely be more complex, with separate quotas for day and month to provide a smooth user experience.

The token logic assumes a simple conversion: 1 token = 1 processed news item. More detailed logic is too complex for perception, non-transparent, and complicates the evolution of tagging algorithms, as any modification changes the resource consumption required to process a news item.

When I talk about purchasing tokens, I mean automatic purchasing with limits on the number of tokens that can be purchased per day/month, as manual purchasing is too inconvenient.

///

Possible approaches:

- **Tokens only** — the user pays only for processed news, without an additional subscription.
- **Subscription only** — the user pays a fixed amount per month/year for a fixed number of processed news. There can be several subscription tiers with different quotas.
- **Subscription + tokens** — the user buys a subscription for an expected number of news items, and purchases tokens beyond that quota.

/// note | Comments

"Subscription only" is the simplest option. It can take various forms, from "several radically different quotas" to "a hundred subscriptions with a 100 news/day step".

"Tokens only" we discard by the "confusion criterion" — nobody likes counting tokens. A pure token model is more suitable for services with non-periodic usage or dynamic load, such as selling an API.

"Subscription + tokens" gives users more flexibility. For example, some news sources show cyclicality with load peaks (on weekdays, on weekends, at the end of the quarter, etc.). During such periods, it will be more convenient for the user to buy additional tokens than to miss news.

Contemporary payment providers offer "subscription + tokens" logic out of the box, so there shouldn't be a big technological difference between pure subscription and subscription with tokens.

There exists another slightly semantically different option of "single base subscription + tokens", where we emphasize that the user pays a fixed price for access to the service and separately pays for processed news. We won't consider this option, as the service provides little value without tags and rules, so a base subscription would look strange.

///

I stopped at the "subscription + tokens" option with two subscription tiers:

1. Subscription for beginner users (basic subscription).
2. Subscription for advanced users (advanced subscription).

In pair with the free tier, this gives us three ways to use the service, which should be familiar and understandable. At the same time, two subscription options will allow us to be flexible in pricing.

### Quota accounting

We do not process news items separately for each user. It is enough to tag the news item once, and the tags will be available to all.

Moreover, Feeds Fun currently uses this feature. Users can enter their OpenAI/Gemini API key to tag their news. If two users are subscribed to the same news source, their keys will be used alternately, so each person will spend half as much.

Therefore, in theory, two approaches are possible:

- **Quota from actually consumed resources** — one news item counts as one token for one of the subscribers to its source.
- **Quota from provided value** — one news item counts as one token for each subscriber to its source.

The vast majority of SaaS sell the value.

/// note | Comments

Pricing based on actual resource consumption looks attractive and "fair", but it comes with a number of serious drawbacks.

**First**, an enormous number of questions immediately arise around how to "honestly and fairly account for each user's contribution". If you think it's obvious and simple, it's not. In the first draft of this post, there was a massive wall of text analyzing only a subset of the problems that arise. I deleted it because, even for me, it looks complex and confusing.

People are different; not all are morally ready (by default) to share the profit they received for their own money. Especially if the rules for profit sharing are not crystal clear and opaque.

For example, imagine a situation in which one subscriber pays for tagging 900 news items, while another pays for tagging only 100 news items from the same source. How to ensure fair cost distribution in such a case?

//// brigid-images
src = "equality_equity.png"
caption = "Classic illustration of one aspect of the problem."
////

That's why we discard this option by the "confusion criterion".

**Second**, when we calculate quotas based on actually consumed resources, our income starts to grow not with the number of users, but with the number of unique news items that users want to read. This is bad, as the news internet is relatively finite, and at some point income growth will stop while the number of users may continue to grow.

///

Quota based on consumed resources would be interesting for a public service like Wikipedia, but I'm not operating at that scale :-D

At the same time, I want to bring public good and help users do the same. For this, I see the following tools:

1. Investment in publicly available collections of news. For example, I would like to provide free access to all scientific news on the planet. That would be cool.
2. Functionality for sharing collections through **conscious subscriber choice**. So, the user could decide whether to share with friends, with everyone, or not share at all.

Therefore, our option is to base quotas on the provided value.

### Margin

Our margin can be:

- **in subscription**;
- **in tokens**;
- **in subscription and tokens**.

Since both subscription and tokens, in our case, are active tools for customers (not small bonuses), we need a margin on both.

We want to encourage users to use the service more, so buying tokens should look profitable, and upgrading the subscription should feel the same.

So, the pricing logic looks like this: `the price of token on basic subscription > the price of extra token on basic subscription > the price of token on advanced subscription > the price of extra token on advanced subscription`.

Therefore, we'll define prices using the base subscription token's margin and a standard discount step for each subsequent level. In my opinion, one discount value will be sufficient for this analysis. Three independent values would complicate the model without much benefit for our goal.

### Gross margin portion of the price

/// note | Repeat the material
Here, you may want to return to the beginning of the post and reread the "Important terms" section, which includes definitions for Gross Margin (GM) and Cost of Goods Sold (COGS).
///

We will set prices based on the achievable GM share relative to COGS per user. Accordingly, the price can be defined directly as `COGS * N`, where `N = 1 / (1 - GM%)`.

We'll consider the following options for `N`:

- **x2** — `GM = 50%` — high servicing costs, low income, one mistake and you're screwed.
- **x3** — `GM = 66%` — the patient is breathing.
- **x4** — `GM = 75%` — the patient is alive and may even walk, this level was added post factum, as it's interesting to look at it on the stand at the bottom of the post.
- **x5** — `GM = 80%` — the lower bound of a typical SaaS margin. Yes, the internet says that the most common markup for SaaS is x5-x10 over costs.
- **x10** — `GM = 90%` — the upper bound of a typical SaaS margin.
- **x20** — `GM = 95%` — very good margin. If we are here and we have customers, then everything is great.

In my opinion, starting with the `x2-x3` margin is not a good idea; it's too risky for a project like Feeds Fun, because any mistake in calculations or code could instantly wipe out the project.

/// note | Comments

This is a rough estimate; it misses many nuances. For example, 1000500 users with a margin of $1 and 10 users with a margin of $100000 are completely different scenarios.

Here is an interesting practical analysis of [the impact of price on sales and revenue](https://blog.asmartbear.com/higher-pricing/).

///

## Customer Acquisition Cost and Cancellation Rate

/// note | Repeat the material
Here, you may want to return to the beginning of the post and reread the "Important terms" section, which includes definitions for Customer Acquisition Cost (CAC) and Cancellation Rate (CR).
///

Besides the space where we will search for our most correct monetization option, we have two important constants:

- **Customer Acquisition Cost (CAC)**.
- **Cancellation Rate (CR)**

I haven't included them in the axes because:

1. They are external parameters — we can optimize them, but cannot set them directly.
2. We don't know them yet. [Test user acquisition]{post:feeds-fun-marketing-test} showed a good click price, but a very poor conversion to registrations. I associate this with an inconvenient interface (which needs to be improved) and the complexity of getting benefit from the reader (it was necessary to enter API keys).

That's why we will use pessimistic-average values (picked by eye after googling and talking to ChatGPT):

- `CAC = 100$` (pessimistic value for average SaaS is `50$`, but since we have a complex product, I decided to take x2).
- `CR = 5%`

In the model below, we'll be able to change these values to see how they affect the final result.

I decided to use `CAC` instead of conversion from clicks (although I have the click price) because there are significantly less reliable third-party statistics on conversions from clicks, so it seems more reasonable to use `CAC` statistics.

## The model of a small sustainable business

To work out the economics, we need to:

- Know the fraction of COGS that goes to processing one news item.
- Know the fraction of COGS that goes to supporting the entire service (servers, marketing, VAT, etc.).
- Estimate the target audience — what level of news consumption we can expect from users.

### Estimating the number of news items

Since the volume of news flow is critical for Feeds Fun, and the number of sources is critical for all other readers, finding objective, relevant metrics is almost impossible. There are a number of scientific and near-scientific publications, but they are all outdated and not relevant to modern-day research.

The one and only reliable source of metrics is Feeds Fun itself. Unfortunately, it has a small user base, and there is no guarantee that users who are ready to enter API keys are the same ones who are ready to pay.

Here are the numbers of feeds and news items for active users with API keys for the last 30 days. Official collections are excluded from the statistics, as they are available to everyone. There are 11 such users in total, including me and my wife :-D


| Feeds  | News items per 30 days | News items per day |
|--------|------------------------|--------------------|
|    276 |                  32954 |               1098 |
|    611 |                  19032 |                634 |
|     14 |                   7501 |                250 |
|      4 |                   4217 |                140 |
|     23 |                   2514 |                 84 |
|      1 |                   1705 |                 57 |
|      3 |                    937 |                 31 |
|     12 |                    931 |                 31 |
|      2 |                    601 |                 20 |
|     62 |                    533 |                 18 |
|      1 |                     50 |                  2 |

Note that the number of news items does not correlate with the number of feeds.

If we add active users without API keys, the picture will be approximately the same, just with more people.

Correspondingly, we can identify three groups of users:

1. **Beginners** — up to 100 news items per day.
2. **Advanced** — from 100 to 1000 news items per day.
3. **Hardcore** — from 1000 news items per day and more.

/// note | 100 news items per day?

It's strange to have a specialized news reader for just 100 news items per day. However:

1. We should not forget about default news collections that are available to all users. Here, we count only news users who directly pay for their news.
2. Some people may have difficulty reading even 100 news items per day.
3. Some people may read their news once a week.
4. In perspective, tags for even a small number of news items can be useful if this news is integrated into other services, for example, by sending webhooks to automation. This feature is in the plans, although in the distant future.

In my opinion, there is no point in inventing something complicated here; it's better to look at how it works in practice and adjust the model as new data comes in.
///

Obviously, users will be distributed among these groups in some way. Since the data is frankly insufficient, we will divide users based on the [Pareto principle 80/20](https://en.wikipedia.org/wiki/Pareto_principle), which is found absolutely everywhere.

Therefore, in our scenarios, we will assume the next users' breakdown:

1. **80% beginners** — 0-99 news items per day.
2. **16% advanced** — 100-1000 news items per day.
3. **4% hardcore** — 1000-… news items per day.

This is a very strong assumption, but we have no better alternatives.

### Cost of news processing

The cost of processing a news item consists of:

1. The cost of downloading the news item — some feeds can only be accessed through a proxy.
2. The cost of input tokens for LLM (the size of the news body).
3. The cost of output tokens for LLM (the size of the response with tags).

Proxies are cheap. Currently, they cost about `$0.000004` per news item.

News item sizes vary greatly. Moreover, the full body of the news item is not always placed in the RSS feed. However, since we are following a pessimistic scenario, let's consider news items as half of a large essay (10000 characters) — 5000 characters. Taking up an entire essay is too much, even for my subscriptions. 5000 English characters are about 1250 tokens.

/// note | Current metrics

According to the news processed by Feeds Fun over the last 30 days, the 95th percentile for the news body size is about 2500 characters. However, the current set of all news is quite specific: it contains many abstracts of scientific articles and short posts from Reddit.

///

Currently, one news item has about 50 tags on average. Most tags are less than 33 characters (95% of them) — so in an ideal response, there will be about 1650 characters. The problem is that the current prompt implies additional text in a response, so let's multiply this number by 2. We get 3300 characters, which is about 825 tokens.

Costs for the `gpt-4o-mini-2024-07-18` (used now) are":

- Input tokens: `1250 tokens * $0.15 / 1M = $0.0001875` per news item.
- Output tokens: `825 tokens * $0.60 / 1M = $0.000495` per news item.

Adding up all the costs, we get the cost of processing one news item:

```
+ $0.0000040
  $0.0001875
  $0.0004950
  ----------
  $0.0006865
```

/// note | There's plenty of room for optimization

1. Event 5000 characters per news item is a lot.
2. The news bodies aren't being cleaned properly at the moment. Even converting them to Markdown can save a lot of tokens.
3. It is time to replace the LLM model. I want to give one more try to `GPT 5.2` or go away from OpenAI.
4. With an increasing number of users, we can start finetuning models to reduce the size of responses and increase their quality.
5. I need to experiment more with restricting LLM response by setting grammar.
6. …

///

### Cost of service support

The cost of supporting the service consists of:

1. The cost of hosting. Currently, it is `75$ / month`, let's make it `200$ / month` for a feature growth.
2. The cost of new users acquisition — `1000 (subscribers) * 0.05 (CR) * 100$ (CAC) = 5000$ / month`.
3. Fees of payment providers. We will assume the worst-case scenario from Stripe, which is `2.5% + 0.30$ per transaction`, without accounting for lower fees in some locations. Stripe can aggregate all payments into a single invoice for the period, so we don't need to model multiple transactions for a single user.
4. The cost of maintaining default news collections. Currently, it is `50$ / month`, let's make it `500$ / month` to leave room for growth.

### Other spendings

1. [Value Added Tax](https://en.wikipedia.org/wiki/Value-added_tax) (VAT) — the tax rate depends on the country of the user, but pessimistically it can be estimated at `25%` of revenues.

## Monetization scenario

As a result of the analysis above, we have the following scenario for monetization:

1. Users can use Feeds Fun without a subscription, but tags will only be available for default news collections.
2. There will be two subscription tiers with token purchases if the user exceeds the subscription quota.
3. We base the price on the value provided to the user, so usage is tracked separately for each user.
4. Our audience is 80% beginners (up to 100 news items per day), 16% advanced (100-1000 news items per day), and 4% hardcore (more than 1000 news items per day).
5. Plus all the parameters we defined earlier.

## Pricing model

### Parameters

- `Cost of Goods Sold per news` — cost of processing one news item.
- `Server cost`
- `Default collections cost`
- `News size (chars)`
- `Input price (1M)` — cost of input tokens for 1 million tokens.
- `Output price (1M)` — cost of output tokens for 1 million tokens.
- `Customer Acquisition Cost`
- `Cancellation Rate`
- `VAT` — Value Added Tax.
- `Audience size`
- `Beginner min consumption` — minimum news consumption for beginners (per day).
- `Beginners (fraction)`
- `Beginners (max news)` — maximum news consumption for beginners (per day).
- `Advanced (fraction)`
- `Advanced (max news)` — maximum news consumption for advanced users (per day).
- `Base subscription quota` — quota for the basic subscription in news items per day.
- `Professional subscription quota` — quota for the professional subscription in news items per day.
- `Base token price margin` — margin for the token of the basic subscription.
- `Token price discount` — discount step on every next subscription level.

### Users distribution by subscription tiers and news consumption

An attentive reader may have noticed that we have three user groups by news consumption, but only two subscription tiers. To model this, we need to map users to tiers somehow and define how many news items each group will consume.

We'll use the following assumptions:

**First**, users will always choose the most optimal subscription for themselves in terms of price.

**Second**, to simplify the model, we set specific news consumption for each user.

**Third**, we'll exclude non-usage scenarios (like 1 news item per day) by setting a minimum news consumption for "beginner" users.

We'll calculate the number of news items for a user by following the next logic:

1. Distribute users into groups (beginners, advanced, hardcore).
2. For each group, set a minimum and maximum news consumption per day.
3. For each user in the "beginner" and "advanced" groups, set specific news consumption per day using a [log-uniform distribution](https://en.wikipedia.org/wiki/Reciprocal_distribution) between the minimum and maximum consumption.
4. For every user in the "hardcore" group, set news consumption to 1000 news items per day. Assuming that they won't buy tokens beyond that (we are taking a pessimistic scenario).

We use a log-uniform distribution because there are usually more users with low consumption than with high consumption.

Having a news consumption for each user, we can determine which subscription tier they will choose (taking into account the base subscription price and the price of purchasing tokens beyond the quota).

## Building the model

/// danger | Some scenarios may run at a loss

Setting a large discount step and a small margin can lead to selling tokens at a price below their cost.

For example, with a 20% discount step and a x2 margin, tokens on the advanced subscription will be sold at a price below their COGS.

///

/// warning | Default parameter values

In the text above, many values were specified for the model's input parameters.

In the model below, I set parameters to the final values I stopped at for the chosen prices.

///

---8<--- "./initial_js.html"

---8<--- "./plot_config_inputs.html"

### Heatmap of Modified Margin

<div id="plot-xxx"></div>

<script type="text/javascript">
heatmapPlot('plot-xxx');
</script>

---8<--- "./plot_summary_table.html"

### Subscription costs

Here is a table for quick access to subscription costs by margin and discount step.

/// note | Competitors

- **Inoreader** — `~9 eur/month`
- **Feedly** — `~9 eur/month`, `~13 eur/month` (pro+, only yearly subscription)

///

<div class="plot-price-matrix">
    <table></table>
</div>

### News items cost

Here is a table for quick access to the processing costs for news items for users with different consumption levels.

<div class="plot-news-cost-matrix">
    <table></table>
</div>

## Conclusions

I have a strong feeling that I go too pessimistic with the model, but I don't see how to turn it down without losing confidence in it :-D

### VAT and CAC dominate losses

`VAT` and `CAC` are bigger than the cost of tokens. It is a primary discovery for me.

Therefore, keeping everything else ceteris paribus, reducing `CAC` and `CR` is much more important than optimizing the cost of news processing.

Therefore, user experience (interface, supported news sources, supported platforms) may be more important than tags — tags are already there and somehow work, but there are a lot of questions about usability.

Also, the importance of searching for the right audience can not be overstated.

### Beginner users dominate revenues

And this affects the estimated total income.

In part because the higher the default quota of the base subscription, the larger the gap between the included quota and the user's assumed consumption, and therefore the higher the revenue per user.

I'm not sure that is the right logic, but without concrete experimental data, there is no reason to change the distribution of users across groups.

### Huge uncertainty

The resulting model has a huge number of free parameters — 19!

Thus:

1. There is no way to improve it without real data from the Feeds Fun users.
2. Monetization tuning (after launching to an acceptable state) may take a very long time and require a significant amount of money.

Besides the size of expenses, the problem is also that conversion optimization does not always correlate with the development of the project's functionality. To put it bluntly, collecting metrics and creating dashboards does not directly improve user experience. Therefore, there is a risk of spending a year on the project without bringing any benefit to real users.

Searching for investors now looks like a more reasonable idea than before.

### 20000$/month is not achievable with reasonable parameters

However, 10000$/month looks achievable — not so bad and still an optimistic goal.

20000$ can be achieved by significantly increasing the margin, but this approach simultaneously increases the subscription cost to VIP levels, the quality of service for which I probably won't be able to provide alone.

### Choosing prices

To determine prices, I defined a set of heuristics:

1. Reducing prices is significantly easier than increasing them. Therefore, it's better to choose overestimated prices than underestimated ones.
2. Margin levels x2-x3 look very risky for a project like Feeds Fun.
3. Having the basic subscription cost x2-x4 of competitors' prices looks normal for our case. Having a larger difference seems risky.
4. I am, personally, in a category of hardcore users and I'm comfortable paying 50$-100$ / month for my 500-1000 news items per day. More comfortable is, of course, 50$.

Final parameters:

- Basic subscription quota — `100 news / day`.
- Professional subscription quota — `500 news / day`.
- Margin — `x9`.
- Discount step — `20%`.

That gives us:

- The basic subscription price — `~18.5$ / month`, can be set to `20$ / month`.
- The professional subscription price — `~55.5$ / month`, can be set to `50$ / month`.
- My spending as a hardcore user is in the range of `50$-100$ / month`, more likely around `70$ / month`, which is ok.
- Modified Margin — `~11000$/month` — not 20000$, but still ok for a start.

<!-- footer -->

---8<--- "./filters_initialization.html"
