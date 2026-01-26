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

Right after I started working out the pricing for [Feeds Fun](https://feeds.fun) users, I realized that I should do it in a blog post: it's almost the same amount of work, ideologically the right thing to do, and importantly, it should be interesting. Anyway, I was going to write an [RFC]{post:two-years-writing-rfc-statistics} — the question is purely about publicity. I also take an opportunity to conduct some retrospective on the project for myself.

/// note | What is Feeds Fun

[Feeds Fun](https://feeds.fun) is my news reader that uses LLM to tag each news item so users can create rules like `elon-musk + mars => -100`, `nasa + mars => +100`. That allows effectively filtering the news stream, cutting it down by 80-90% (my personal experience) — no dark-box "personalization" algorithms like in Google or Facebook, everything is transparent and under your control.

///

So, meet a free-form essay on monetization of a [B2C](https://en.wikipedia.org/wiki/B2C) [SaaS](https://en.wikipedia.org/wiki/Software_as_a_service) dependent on [LLM](https://en.wikipedia.org/wiki/Large_language_model) — couldn't be more relevant :-D

<!-- more -->

This post was originally conceived as an analytical test bench in the spirit of [analysis of player preferences in strategy games]{post:making-a-fictional-universe-quantity-survey-processing}, but by the third draft, it became looking more like a philosophical treatise. Which is natural — when you have a little real data and too many possible solutions, you have to rely more on logic and intuition than on numbers. But the bench is there, just somewhere down below.

Generally, choosing the monetization approach at the start of a project is more about user experience than specific amounts. Concrete numbers (including prices for users) are far easier to optimize iteratively when you have real user behavior statistics. Changin the value proposition and the user experience, on the other hand, is much harder. The difference is roughly the same as between "tweaking a couple of numbers in the configs" vs "rewriting a sizable chunk of business logic and UI".

As a result, we'll choose the pricing model based on reasoning, while its parameters will be tuned numerically.

/// warning | Text may be challenging to perceive

This text is a good example of [thinking through writing]{post:thinking-through-writing} — a practice I actively use. Unfortunately, that's precisely why it may be a poor example of structured exposition for an external audience.

I tried to add as much explanations and context as possible, but I'm not sure I added everything that was needed and that all this context didn't make things worse.

As a result, this text sets all-time records for this blog for the number of comment blocks and digressions.

///

## Product specifics

Feeds Fun looks like a "classic" online news reader — the user subscribes to news feeds, the service downloads the news to its server and shows it to the user. Currently, only [RSS](https://en.wikipedia.org/wiki/RSS) and [Atom](https://en.wikipedia.org/wiki/Atom) are supported, but in the future, there will be other sources: social networks, email newsletters, automatic site parsing, etc.

The closest analogs are [Google Reader](https://en.wikipedia.org/wiki/Google_Reader) (now shut down), [Feedly](https://feedly.com/), [Inoreader](https://www.inoreader.com/).

The common trait of all SaaS news readers is relatively cheap server infrastructure:

- There is enough to make a single request to a news feed to download news for 100500 users subscribed to that feed.
- There is enough to store only one copy of the news item.
- Your traffic is small-sized text data without media content. Media is usually stored on the news source side or in your [CDN](https://en.wikipedia.org/wiki/Content_delivery_network) if you are striving for loading speed.

Services compete mainly in the user experience and the breadth of supported news sources.

The monetization is simple: add subscriptions (there can be several), do not forget the free tier with simple limitations for easier user onboarding.

The infrastructure is cheap enough, so most part of the subscription fee goes to the company (development, marketing, profit). Feedly may have a slightly more complex situation, but this complexity most likely stems from its focus on [B2B](https://en.wikipedia.org/wiki/B2B) — not our case, I'll explain later why.

Feeds Fun doesn't fit well into this picture. Its key features are tags and rules — without them, the product loses badly to more mature competitors and with a single developer will never catch up.

**Every news item costs money** — to have tags, each news item must be processed through an LLM, therefore:

- spendings grow significantly with the number of news;
- user onboarding via the free tier costs money.

/// brigid-images
src = "boromir.jpg"
caption = "One does not simply copy competitors' approach."
///

Therefore, one does not simply copy the competitors' approach — you need to make sure that the service won't go bankrupt on the first user who subscribes to 100000 news items a day from some Chinese portal. By the way, this is a real example from Feeds Fun's first year of life.

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

The only way is to push the value of tags and rules as much as possible — make software for pros. Current leaders will find it hard to pivot to this niche, as it would be a complete change of concept for them.

This leads to the following conclusions:

- We sell tags and rules — this is the key value of the product that users ~~should be~~ are ready to pay for.
- All other features should be free as possible and good enough to not lose significantly to competitors in users' eyes.

Also, the rules for tagging news are relatively cheap for Feeds Fun, so the question is purely in the cost of tags.

**Third**, the project is growing without investments, it focuses on a narrow niche and gradual growth. If it was a mass-market product with a development budget, it would look differently, work differently, and be monetized differently.

It would look more like a Tinder for news: swipe left, swipe right, tip the content creator. By the way, take this idea into work, I think it's quite good.

**Fourth**, we'll use the "minimizing user confusion" criterion to discard some pricing options.

I've added this criterion to simplify and shorten the text, remove unnecessary details. If even I can't express an idea briefly and clearly, then for the user it will be really confusing — such solutions will not bring any benefit.

The criterion will be used in the following way: "we discard the option by the 'confusion criterion' because …".

**Fiveth**, we will consider pessimistic scenarios, as they are easier to estimate, and if the pessimistic scenario works, the optimistic one will work even better.

That means:

- We'll assume maximum possible expenses for the scenario.
- We'll assume minimum possible income for the scenario.

## How we'll evaluate monetization

Before we start, let's agree on what we're going to do with the results.

/// note | Why monetize at all?

Without answering that question it's impossible to define what successful monetization even means.

As often happens with me, there's no single definitive answer — not as if all possible futures converge on the tip of a feed reader, with a success on one side and poverty and oblivion on the other. It's more a set of possibilities that can be addressed in one go.

In Feed Fun's case, turning monetization on is:

1. a great milestone of a product's maturity;
2. an opportunity to organize a small side income;
3. a chance to finally become independent of salaried work;
4. a strong line on a resume;
5. a way to finally deal with German accounting anyway — might as well start by monetizing a pet project;
6. an interesting and genuinely useful experience.

The world of pink ponies, of course, there is always single goal — "to build my own Google-level company". But let's be realistic — most startups fail, and those who declare such maximalist claims is being disingenuous.

Having multiple goals is useful, but not always convenient. In particular, the criteria for success of a hobby project and of a growing business differ significantly.

Therefore, since monetization is mostly about business, we'll evaluate it from the point of view of a small sustainable business.

///

The propertis of a **sustainable bussiness**:

- **Sustainability** — the flow of new users equals the flow of leaving users.
- **1000 subscribers** — a good, steadily working indie SaaS. Most don't survive to this level.
- **20000 $/month Modified Margin** — the income level at which one can as comfortably work alone, as well as look for partners for a share and money. See terms block below.

In other words: we will look for monetization logic and prices at which the service would bring 20000$ modified margin with 1000 subscribers.

**We can consider a SaaS with such properties very successful — most indies don't survive to this level.** Therefore, it's a good goal for monetization evaluation, but we shouldn't expect such properties right after launching monetization. It's precisely a goal to strive for. Accordingly, the prices chosen in the end will be a starting point for experiments, not something set in stone.

/// hint | Important terms

[Cost of Goods Sold](https://www.cloudzero.com/blog/saas-cogs/)  (COGS) — the direct cost of the goods/services one sells — in our case, it is the cost of LLM requests, infrastructure, payment processor fees, etc.

[Gross Margin](https://www.cloudzero.com/blog/saas-gross-margin/) (GM) — the difference between revenue and COGS.

Group Margin does not include things like taxes, office rent, and other stuff that is not needed for bringing direct value to customers.

GM is convenient because its share is quite stable for SaaS products and allows roughly estimating prices in unit economics.

**The classic Gross Margin does not include marketing and Value Added Tax (VAT), so for the purposes of this post we will use our own term — Modified Margin.**

[Customer Acquisition Cost](https://en.wikipedia.org/wiki/Customer_acquisition_cost) (CAC) — how much money on average is spent on marketing to get one paying customer.

`Cancellation Rate` (CR) — churn rate — what percentage of paying customers leave over a certain period of time, usually a month.

`Modified Margin` (MM) — gross margin modified for marketing and [Value Added Tax](https://en.wikipedia.org/wiki/Value-added_tax) (VAT). In this post, `MM = GM - CAC * number of new customers per month - VAT`, more precisely `MM = GM - N * CR * CAC - VAT`, where `N` is the current number of subscribers, `VAT` is the value added tax. `N * CR * CAC` indicates that we are buying as many subscribers as are leaving.

///

The core idea of stability is that if such stability is possible by rough pessimistic calculations, then in reality there will be room for optimization.

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

Let's look at the coordinates on each axis. We will immediately try to eliminate obviously non-working options to not waste time on them.

### Free tier

Possible approaches:

**No free tier** — no freemium, only paid access. As strange as it may sound, there are [many arguments "for it"](https://www.getmonetizely.com/blogs/the-free-tier-trap-why-free-isnt-always-a-winning-strategy-for-startups): from significant infrastructure savings to emphasizing the professionalism/value of the product.

**Access to a limited collection of tagged news** — the user can subscribe to a limited set of news streams that always have tags. Without a subscription, one cannot add their own sources. Feeds Fun currently has two news collections: [articles from ArXiv.org](https://feeds.fun/show/scientific-papers) and [news on startups](https://feeds.fun/show/entrepreneurship).

**Access to a limited collection of tagged news + all other news without tags** — like the previous option, but we allow the user to subscribe to any news source, just without tags. Feeds Fun currently works this way.

**Free tagging of all news, but with a limit per user and a global limit for all users** — for example, 100 tagged news items per day for one user and a maximum of 10000 per day for all users.

**Sharing collections of tagged news** — subscribers create their own collections of news, share them, earn reputation; non-subscribers read these collections and say thanks.

/// note | Comments

"No free tier" loses to "limited collections", because collections allow users to try the full functionality of the reader without frustration.

"Limited collections" wins over "limited collections + news without tags" by apparent implementation simplicity and clarity, but starts to lose when we go into details:

1. The ability to add one's own sources is a key functionality of any news reader. Not having it will greatly frustrate users.
2. "Limited collections" leads to a lot of questions about behavior in edge cases. For example, what to do if a subscriber cancels their subscription — should their news "disappear"?

We discard "free tagging" by the "confusion criterion" because either the quotas will be too small and users won't be able to try the product, or too large and we will incur losses from the start.

"Sharing collections" is exactly one of the social features that I would be interested in implementing. However, it looks more like a logical continuation than a basic element of monetization.

///

It looks like we have a single option left — access to a limited collection of tagged news + all other news without tags. In the future, we can think about implementing sharing of collections by users.

### Subscription and tokens

Let's merge these two axes into a single one, since they are closely coupled.

/// note | Note

When I refer to a subscription, I always mean both monthly and yearly subscriptions with a discount for the yearly one. Since [annual subscription rocks](https://longform.asmartbear.com/annual-prepay/). However, in our calculations, we will use only the monthly subscription — it's simpler, and I expect that the discount from the annual subscription should be offset by a higher capital turnover.

The subscription in any case will imply quotas for news processing, so it is also a veiled sale of tokens.

The subscription logic in this post assumes daily quotas (for ease of calculation). In reality, it will likely be something more complex, with different quotas for both day and month, to provide a smooth user experience.

The token logic assumes a simple conversion: 1 token = 1 processed news item. More detailed logic is too complex for perception, non-transparent, and complicates the evolution of tagging algorithms, as any modification changes the resource consumption for processing a news item.

When I talk about purchasing tokens, I mean automatic purchasing with limits on the number of tokens that can be purchased per day/month, as manual purchasing is too inconvenient.

///

Possible approaches:

- **Tokens only** — the user pays only for processed news, without an additional subscription.
- **Subscription only** — the user pays a fixed amount per month/year for a fixed number of processed news. There can be several subscription tiers with different quotas.
- **Subscription + tokens** — the user buys a subscription for an expected number of news, and purchases tokens beyond that quota.

/// note | Comments

"Subscription only" is the simplest option. It can come in various forms from "several radically different quotas" to "a hundred subscriptions with a 100 news/day step".

"Tokens only" we discard by the "confusion criterion" — nobody likes counting tokens. A pure token model is more suitable for services with non-periodic usage or dynamic load, such as selling an API.

"Subscription + tokens" lets the user be more flexible. For example, some news sources show cyclicality with load peaks (on weekdays, on weekends, at the end of the quarter, etc.). During such periods, it will be more convenient for the user to buy additional tokens than to miss news.

Contemporary payment providers offer "subscription + tokens" logic out of the box, so there shouldn't be a big technological difference between pure subscription and subscription with tokens.

There exists another slightly semantically different option of "single base subscription + tokens", where we emphasize that the user pays a fixed price for access to the service and separately pays for processed news. We won't consider this option, as the service provides little value without tags and rules, so a base subscription would look strange.

///

I stopped at the "subscription + tokens" option with two subscription tiers:

1. Subscription for beginner users.
2. Subscription for advanced users.

In pair with the free tier, this gives us three ways to use the service, which should be familiar and understandable. At the same time, two subscription options will allow us to be flexible in pricing.

### Quota accounting

We do not process news items separately for each user. It is enough to tag the news item once, and the tags will be available to all.

Moreover, Feeds Fun currently uses this feature. Users can enter their OpenAI/Gemini API key to tag their news. If two users are subscribed to the same news source, their keys will be used alternately, meaning each person will spend half as much money.

Therefore, in theory, to approaches are possible:

- **Quota from actually consumed resources** — one news item counts as one token for one of the subscribers to its source.
- **Quota from provided value** — one news item counts as one token for each subscriber to its source.

The vast majority of SaaS sell the value.

/// note | Comments

Pricing based on actual resource consumption looks attractive and "fair", but it comes with a number of serious drawbacks.

**First**, an enormous number of questions immediately arise around how to "honestly and fairly account for each user's contribution". If you think it's obvious and simple, it's not. In the first draft of this post, there was a massive wall of text analyzing just subset of the problems that come up. I deleted it, as even for me it looks complex and confusing.

People are different, not all are morally ready (by default) to share the profit they received for their own money. Especially if the rules for profit sharing are not crystal clear and transparent.

For example, imagine a situation where one subscriber pays for tagging 900 news items, and another pays for only 100 news items from the same source. How to ensure fair cost distribution in such a case?

//// brigid-images
src = "equality_equity.png"
caption = "Classic illustration of one aspect of the problem."
////

That's why we discard this option by the "confusion criterion".

**Second**, when we calculate quotas based on actually consumed resources, our income starts to grow not with the number of users, but with the number of unique news items that users want to read. This is bad, as the internet of news is relatively finite, and at some point, income growth will stop, while the number of users may continue to grow.

///

Quota based on consumed resources would be interesting for a public service like Wikipedia, but I'm not operating at that scale :-D

At the same time, I want to bring public good and help users do the same. For this, I see the following tools:

1. Investment in publicly available collections of news. For example, I would like to provide free access to all scientific news on the planet. That would be cool.
2. Functionality for sharing collections through **conscious subscriber choice**. So, the user could decide whether to share with friends, with everyone, or not share at all.

Therefore, our options is to base quotas on provided value.

### Маржа

Маржа может быть:

- **в подписке**;
- **в токенах**;
- **и в подписке и в токенах**.

Поскольку и подписка и токены в нашем случае — это активные инструменты пользователя (а не мелкие бонусы), то нам нужна маржа и там и там.

Мы хотим поощрять пользователей увеличивать использование сервиса, поэтому докупка токенов должна выглядеть выгодной, так же как и апгрейд подписки.

Получается что-то вроде `цена токена базовой подписки > цена докупки токена на базовой подписке > цена токена продвинутой подписки > цена докупки токена на продвинутой подписке`.

Поэтому цены мы будем задавать через маржу токена базовой подписки и стандартную скидку на каждый следующий уровень. На мой взгляд, одного значения скидки будет достаточно для нужд этого анализа. Три независимых значения усложнят модель без особой пользы.

### Доля Gross Margin в ценах

/// note | Повторяем материал
Тут вы можете захотеть вернуться в начало поста и перечитать блок «Важные термины», содержащий определения для Gross Margin (GM) и Cost of Goods Sold (COGS).
///

Формировать цены мы будем исходя из возможной доли GM по отношению к COGS на одного пользователя. Соответственно, цену можно задавать напрямую как `COGS * N`, где `N = 1 / (1 - GM%)`.

Будем рассматривать следующие варианты для `N`:

- **x2** — `GM = 50%` — высокие траты на обслуживание, низкие доходы, любая ошибка и ты ошибся.
- **x3** — `GM = 66%` — пациент скорее жив.
- **x4** — `GM = 75%` — пациент жив и даже может ходить, этот уровень добавлен постфактум, так как на него интересно смотреть на стенде внизу поста.
- **x5** — `GM = 80%` — нижняя планка стандартной SaaS маржи. Да, интернеты говорят, что самая распространённая наценка для SaaS — это x5-x10 к затратам.
- **x6-x9** — здоровые промежуточные значения, добавлены постфактум, так как на них интересно смотреть на стенде внизу поста.
- **x10** — `GM = 90%` — верхняя планка стандартной SaaS маржи.
- **x20** — `GM = 95%` — очень хорошая маржа. Если мы тут и у нас есть пользователи, то всё в шоколаде.

Выбирать на старте маржи `x2-x3`, на мой взгляд, выглядит очень опасным решением для проекта вроде Feeds Fun, так как любая ошибка в расчётах или в коде может моментально обнулить проект.

/// note | Комментарии

Это очень грубый расчёт, есть множество нюансов, которые он упускает. Например, 1000500 пользователей с маржей в 1$ и 10 пользователей с маржей в 100000$ — это совершенно разные ситуации.

Вот интересный практический разбор [влияния цены на продажи и доходы](https://blog.asmartbear.com/higher-pricing/).

///

## Стоимость привлечения пользователя и доля отмены подписок

/// note | Повторяем материал
Тут вы можете захотеть вернуться в начало поста и перечитать блок «Важные термины», содержащий определения для Customer Acquisition Cost (CAC) и Cancellation Rate (CR).
///

Кроме осей, в которых мы будем искать наш самый правильный вариант монетизации, у нас есть две важные константы:

- **Стоимость привлечения пользователя (Customer Acquisition Cost — CAC)**.
- **Доля отмены подписок (Cancellation Rate — CR)**.

Я не выделил их в оси, так как:

1. Это внешние параметры — мы можем их оптимизировать, но не можем задавать напрямую.
2. Их значение сейчас неизвестно. [Тестовая закупка пользователей]{post:feeds-fun-marketing-test} показала хорошую цену клика, но очень плохую конверсию в регистрации. Я это связываю с неудобным интерфейсом (который надо дорабатывать) и сложностью получить пользу от читалки (надо было вводить API ключи).

Поэтому будем использовать пессимистично-средние значения (выбраны на глаз после гугления и общения с ChatGPT):

- `CAC = 100$` (пессимистичное значение для среднего SaaS — `50$`, но поскольку у нас сложный продукт, то я решил взять x2).
- `CR = 5%`

В части поста с графиками и таблицами будут поля для ввода своих значений.

Я решил ориентироваться на средний `CAC`, а не на конверсию из кликов (хотя цена клика у меня есть), так как сторонней статистики по конверсиям из кликов значительно меньше, поэтому выглядит более разумным ориентировать на статистику по `CAC`.

## Модель свечного заводика

Чтобы рассчитать экономику, нам нужно:

- Знать часть Cost of Goods Sold, которая уходит на обработку одной новости.
- Знать часть Cost of Goods Sold, которая уходит на поддержание всего сервиса (сервера, привлечение новых пользователей, НДС, etc.).
- Оценить целевую аудиторию — какое потребление новостей мы можем ожидать от пользователей.

### Оценка количества новостей

Поскольку для Feeds Fun критически важно количество новостей, а для всех прочих читалок — количество источников, то найти объективную релевантную статистику практически невозможно. Есть ряд научных и около научных публикаций, но они все старые и современному дню не релевантны.

Единственный достоверный источник статистики — это сам Feeds Fun. К сожалению, пользовательская база у него небольшая и нет гарантии, что пользователи, которые готовы вводить API ключи, — это те же пользователи, которые готовы платить деньги.

Вот статистика по каналам и новостям (за 30 дней) для активных пользователей с API ключами. Из статистики исключены официальные коллекции, так как они доступны всем. Всего таких пользователей 11 человек, включая меня и жену :-D

| Каналы | Новостей за 30 дней | Новостей в день |
|--------|---------------------|-----------------|
|    276 |               32954 |            1098 |
|    611 |               19032 |             634 |
|     14 |                7501 |             250 |
|      4 |                4217 |             140 |
|     23 |                2514 |              84 |
|      1 |                1705 |              57 |
|      3 |                 937 |              31 |
|     12 |                 931 |              31 |
|      2 |                 601 |              20 |
|     62 |                 533 |              18 |
|      1 |                  50 |               2 |


Обратите внимание, количество новостей не коррелирует с количеством каналов.

Если включать активных пользователей без API ключей, то людей становится больше, но картина остаётся примерно такой же.

Соответственно, мы можем выделить три группы пользователей:

1. **Начинающие** — до 100 новостей в день.
2. **Продвинутые** — от 100 до 1000 новостей в день.
3. **Хардкорные** — от 1000 новостей в день и больше.

/// note | 100 новостей в день?

Если ориентироваться только на это количество, то необходимость специализированной читалки для такого количества новостей вызывает сомнения. Но:

1. Не забываем про дефолтные коллекции новостей, которые доступны всем пользователям. Тут мы считаем только новости, обрабатываемые за средства пользователя.
2. Некоторым людям может быть сложно читать и по 100 в день.
3. Некоторые люди могут читать новости раз в неделю.
4. В перспективе, теги даже для небольшого количества новостей могут быть полезны, если эти новости интегрированы в другие сервисы, например, шлют вебхуки в автоматизацию. Это есть в планах, хотя и в отдалённой перспективе.

На мой взгляд, думать что-то сложное тут не имеет смысла, правильнее смотреть на практике и корректировать модель по мере появления новых данных.

///

Понятно, что пользовательская база будет как-то распределяться по этим группам. Поскольку данных откровенно недостаточно, мы разобьём пользователей вдохновившись [принципом Парето 80/20](https://ru.wikipedia.org/wiki/Закон_Парето), так как он встречается абсолютно везде.

Поэтому в наших сценариях мы будем использовать следующую разбивку, помним:

1. **80% начинающих** — 0-99 новостей в день.
2. **16% продвинутых** — 100-1000 новостей в день.
3. **4% хардкорных** — 1000-… новостей в день.

Это довольно сильное допущение, но лучших альтернатив у нас нет.

### Стоимость обработки новости

Стоимость обработки новости состоит из:

1. Стоимость скачивания новости — часть потоков можно нормально получать только через прокси.
2. Стоимость исходящих токенов для LLM (размер тела новости).
3. Стоимость входящих токенов для LLM (размер ответа с тегами).

Прокси очень дешёвые. Сейчас они выходят где-то `$0.000004` за новость.

Размер новостей сильно варьируется. Более того, полное тело новости не всегда попадает в RSS поток. Однако, поскольку мы следуем пессимистичному сценарию, то давайте считать новостями половину большого эссе (10000 символов) — 5000 символов. Брать целое эссе рука не поднимается — это слишком много даже для моих подписок. 5000 английских символов — это примерно 1250 токенов.

/// note | Текущие метрики

По новостям за последние 30 дней, которые обрабатывались Feeds Fun, 95 перцентиль по размеру тела новости — это примерно 2500 символов. Однако текущее множество всех новостей довольно специфично: содержит большое количество абстрактов научных статей и коротких постов из Reddit.

///

На текущий момент на одну новость в среднем приходится 50 тегов. Большинство тегов меньше 33 символов (95% из них) — значит в «чистом» ответе будет примерно 1650 символов. Проблема в том, что текущий промпт предполагает дополнительный текст в ответе, поэтому умножим это число на 2. Получается 3300 символов, что примерно равно 825 токенам.

По ценам на `gpt-4o-mini-2024-07-18` (используется сейчас):

- Входящие токены: `1250 tokens * $0.15 / 1M = $0.0001875` за новость.
- Исходящие токены: `825 tokens * $0.60 / 1M = $0.000495` за новость.

Итого, стоимость обработки одной новости составляет

```
+ $0.0000040
  $0.0001875
  $0.0004950
  ----------
  $0.0006865
```

/// note | Есть огромный запас по оптимизации

1. Даже 5000 символов на новость — это очень много.
2. Тела новостей сейчас не чистятся должным образом. Даже конвертация в Markdown может дать значительную экономию.
3. Модель пора менять, надо сделать ещё один заход на `GPT 5.2` или съехать от OpenAI.
4. При росте количества пользователей можно начинать делать finetuning для уменьшения размера ответов и увеличения его качества.
5. Можно ещё раз поэкспериментировать с заданием грамматики ответа.
6. …

///

### Стоимость поддержки сервиса

Стоимость поддержки сервиса состоит из:

1. Стоимости аренды сервера. Сейчас `75$ / month`, пусть будет `200$ / month` с запасом на рост.
2. Суммарной стоимости возмещения убывших пользователей — `1000 (subscribers) * 0.05 (CR) * 100$ (CAC) = 5000$ / month`.
3. Комиссии платёжных провайдеров. Мы будем ориентироваться на самую большую комиссию Stripe: `2.5% + 0.30$ per transaction`, без учёта меньших комиссий в некоторых локациях. Stripe умеет агрегировать все платежи в один инвойс за период, поэтому нам не нужно моделировать несколько транзакций на одного пользователя.
4. Стоимости дефолтных коллекций новостей. Сейчас это `50$ / month`, пусть будет `500$ / month` с запасом на рост.

### Прочие затраты

1. [Налог на добавленную стоимость](https://ru.wikipedia.org/wiki/Налог_на_добавленную_стоимость) (НДС) — величина зависит от страны пользователя, но пессимистично его можно оценить в `25%` от доходов.

## Сценарий монетизации

В итоге мы можем сформулировать конкретный сценарий ценообразования.

1. Пользователи могут использовать Feeds Fun без подписки, но теги будут только у дефолтных коллекций новостей.
2. Два тира платной подписки с докупкой токенов сверх квот подписки.
3. Мы строим оплату сервиса на основе принесённой ценности пользователю, поэтому квоты рассчитываются отдельно для каждого пользователя.
4. Наша аудитория — это 80% начинающих пользователей (до 100 новостей в день), 16% продвинутых (100-1000 новостей в день) и 4% хардкорных (больше 1000 новостей в день).
5. Плюс все параметры, которые мы определили ранее.

## Модель ценообразования

### Параметры

- `Cost of Goods Sold per news` — цена обработки одной новости.
- `Server cost` — стоимость аренды сервера.
- `Default collections cost` — стоимость дефолтных коллекций.
- `News size (chars)` — размер одной новости в символах.
- `Input price (1M)` — цена входных токенов за 1 млн.
- `Output price (1M)` — цена выходных токенов за 1 млн.
- `Customer Acquisition Cost` — стоимость привлечения одного пользователя.
- `Cancellation Rate` — доля отмены подписок в месяц.
- `VAT` — налог на добавленную стоимость.
- `Audience size` — размер аудитории.
- `Beginner min consumption` — минимальное потребление новостей новичками (в день).
- `Beginners (fraction)` — доля новичков.
- `Beginners (max news)` — максимальное потребление новостей новичками (в день).
- `Advanced (fraction)` — доля продвинутых пользователей.
- `Advanced (max news)` — максимальное потребление новостей продвинутыми (в день).
- `Base subscription quota` — квота базовой подписки в новостях в день.
- `Professional subscription quota` — квота продвинутой подписки в новостях в день.
- `Base token price margin` — маржа на токен базовой подписки.
- `Token price discount` — шаг скидки на каждый следующий уровень подписки.

### Распределение пользователей по подпискам и потреблению новостей

Внимательный читатель мог заметить, что групп пользователей по потреблению новостей у нас три, а подписок только две. Чтобы посчитать модель нам нужно как-то распределить пользователей по подпискам и определить сколько новостей они будут потреблять.

Мы будем использовать следующие допущения:

**Во-первых**, мы будем считать, что пользователь всегда выбирает самую оптимальную подписку для себя с точки зрения цены.

**Во-вторых**, чтобы не заморачиваться, мы просто зададим конкретное потребление для каждого пользователя.

**В-третьих**, чтобы исключить совсем халявные сценарии (вроде 1 новость в день), мы зададим минимальное потребление новостей для «начинающих» пользователей.

Определение количества новостей для пользователя:

1. Распределим пользователей по группам (начинающие, продвинутые, хардкорные).
2. Для каждой группы зададим минимальное и максимальное потребление новостей в день.
3. Для каждого пользователя в группах «начинающие» и «продвинутые» зададим конкретное потребление новостей в день с помощью лог-равномерного распределения между минимальным и максимальным потреблением.
4. Для всех пользователей группы «хардкорные» зададим конкретное потребление новостей в 1000 новостей в день. Предполагая, что сверх этого они докупать токены не будут (мы считаем пессимистичную оценку).

Мы используем лог-равномерное распределение, так как пользователей с низким потреблением обычно больше, чем с высоким.

Имея конкретное потребление новостей в день, мы можем определить какую подписку выберет пользователь (с учётом базовой стоимости и стоимости докупки токенов сверх квоты).

## Моделируем

/// danger | Некоторые сценарии могут работать в убыток

При большом шаге скидок и малой марже, мы можем начать продавать токены дешевле, чем они нам обходятся.

Например, при шаге скидки 20% и марже x2, токены на продвинутой подписке будут продаваться дешевле их COGS.

///

/// warning | Значения по умолчанию изменены

В тексте выше было задано много значений по умолчанию для входных параметров модели.

В модели ниже они изменены на значения, на которых я остановился для выбранного ценообразования.

///

---8<--- "./initial_js.html"

---8<--- "./plot_config_inputs.html"

### Тепловая карта Modified Margin

<div id="plot-xxx"></div>

<script type="text/javascript">
heatmapPlot('plot-xxx');
</script>

---8<--- "./plot_summary_table.html"

### Цены подписок

Таблица для быстрой оценки стоимости подписок в зависимости от маржи и шага скидки.

/// note | Конкуренты

- **Inoreader** — `~9 eur/месяц`.
- **Feedly** — `~9 eur/месяц`, `~13 eur/месяц` (pro+, только годовая подписка).

///

<div class="plot-price-matrix">
    <table></table>
</div>

### Стоимость новостей

Таблица для быстрой оценки стоимости обработки новостей для пользователей с разным потреблением.

<div class="plot-news-cost-matrix">
    <table></table>
</div>

## Выводы

Есть стойкое ощущение, что я перестарался с пессимизмом в модели, но не вижу, как его открутить без потери уверенности в ней :-D

### VAT и CAC доминируют в потерях

`VAT` и `CAC` больше, чем стоимость токенов. Для меня это главное открытие.

Из этого следует, что при прочих равных, оптимизировать стоимость новых пользователей (CAC) и процент отмены подписок (CR) более важно, чем оптимизировать генерацию тегов. По крайней мере в первое время, пока они не станут удовлетворительными.

Отсюда следует, что удобство использования (интерфейс, поддерживаемые источники новостей, поддерживаемые платформы) может быть более важным, чем теги — теги уже есть и как-то работают, а по удобству есть огромное количество вопросов.

Также отсюда следует, что крайне важно искать правильную аудиторию для целевого маркетинга.

### Доминируют доходы от начинающих пользователей

И это сказывается на оценке суммарного дохода.

В том числе и потому, что чем выше дефолтная квота базовой подписки, тем больше разница между заложенной квотой и предполагаемым потреблением пользователя => больше доходов от пользователя.

Не уверен, что это правильная логика, но без конкретных экспериментальных данных нет повода менять распределение пользователей по группам.

### Большая неопределённость

Полученная модель имеет огромное количество свободных параметров — 19!

Поэтому:

1. Уточнить её без реальных данных от реальных пользователей Feeds Fun не получится.
2. Оптимизация монетизации (после включения до приемлемого состояния) может занять очень большое время и потребовать существенное количество денег.

Кроме размера трат, проблема также и в том, что оптимизация конверсий не всегда коррелирует с развитием функциональности проекта. Утрируя, сбор метрик и дашборды пользовательский опыт напрямую не улучшают. То есть есть риск потрать год на проект и не принести пользы реальным пользователям

Пойти, что ли, инвесторов поискать.

### 20000$/месяц не достижим при разумных параметрах

Зато достижим 10000$/месяц — тоже неплохо и всё ещё оптимистичная цель.

20000$ можно получить выкручивая маржу, но одновременно это выкручивает стоимость подписок до VIP уровня, качество сервиса для которого в одиночку у меня вряд ли получится обеспечить.

### Выбираем цены

Для выбора ориентировочных цен я сформировал ряд эвристик:

1. Понижать цены значительно проще, чем повышать. Поэтому лучше выбрать завышенные цены, чем заниженные.
2. Маржа x2-x3 выглядит очень рискованно для проекта типа Feeds Fun.
3. Иметь цену базовой подписки x2-x4 от цены конкурентов нормально для нашего случая. Иметь бОльшую разницу выглядит рисковано.
4. Я попадаю в категорию «хардкорных пользователей» и мне комфортно платить 50$-100$ / месяц за свои 500-1000 новостей в день. Комфортнее, конечно, 50$.

Итоговые параметры:

- Квота базовой подписки — `100 новостей / день`.
- Квота профессиональной подписки — `500 новостей / день`.
- Маржа — `x9`.
- Скидка шага — `20%`.

Это даёт нам:

- Цена базовой подписки — `~18.5$/месяц`, можно устанавливать в `20$/месяц`.
- Цена профессиональной подписки — `~55.5$/месяц`, можно устанавливать в `50$/месяц`.
- Мои траты как хардкорного пользователя будут в пределах `50$-100$/месяц`, скорее около `70$/месяц`, что ок.
- Modified Margin — `~11000$/месяц` — не 20000, но жить можно.

<!-- footer -->

---8<--- "./filters_initialization.html"
