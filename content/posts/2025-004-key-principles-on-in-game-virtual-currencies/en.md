---
title = "Key principles on in-game virtual currencies in the EU"
tags = [ "theory", "development", "gamedev", "game-design", "futurology", "monetization", "state"]
published_at = "2025-04-07T12:00:00+00:00"
seo_description = "Review of guidelines for using in-game currencies in the European Union."
seo_image = ""
---

Last month, the [Consumer Protection Cooperation Network](https://commission.europa.eu/live-work-travel-eu/consumer-rights-and-complaints/enforcement-consumer-protection/consumer-protection-cooperation-network_en), in coordination with the European Commission, released interesting guidelines on the implementation of in-game currencies.

- [News](https://ec.europa.eu/commission/presscorner/detail/en/ip_25_831)
- [The document](https://drive.google.com/file/d/1rwD44ZV16U8rZtrdN5g_nVe5_vSjo32y/view?usp=drive_link) on my Google Drive — just in case the originals move somewhere.

The document does not have the status of a law; it is a recommendation for interpreting existing EU consumer protection laws regarding computer games. As I understand it, each country decides separately whether to follow these recommendations or not.

I have mixed feelings towards such regulations.

On one hand, the nonsense that goes on in free-to-play games (especially mobile ones) should have been stopped a long time ago. From my ethical position, I fully support attempts to bring order there.

On the other hand, regulations always complicate life for small and medium businesses and have little effect on large companies. The larger the company, the easier it is for it to ignore regulations.

In the following text, I'll list the main theses of the document, speculate on how these recommendations should be implemented according to the authors' intent, and how they will most likely be implemented in reality.

Also, the document is small — only 8 pages — and nicely formatted, so you can read it yourself.

/// warning | Disclaimer
I'm not a lawyer and have nothing to do with free-to-play for about 5 years, so don't take my thoughts as recommendations.

Think of this text as an interesting exercise, a free flight of thought.
///

<!-- more -->

## Theses

Simplified, in my own words.

1. In-game currency is recognized as a digital representation of real-world money if the primary purpose of this currency is to purchase something in the game.
2. In-game transactions are equivalent to real-world transactions in terms of consumer rights protection.
3. It is prohibited to use practices that exploit cognitive biases to make the player pay more or receive less.
4. The price in real-world currency must always be displayed next to the price in in-game currency.
5. It is recommended not to introduce multiple currencies and complicated exchange chains.
6. It is recommended not to force players to buy more currency than they need. For example, do not sell currency in fixed bundles, especially those that do not match the prices in the game (packs of 1000 coins when the cost of the desired item is 1001 coins).
7. All currency spending proposals must be accompanied by detailed transaction information, including a clear description of the purchased items and (maybe) a link to the description of consumer rights.
8. The player has the right to cancel the transaction within 14 days unless they've explicitly waived this right.
9. The player has the right to cancel the transaction if they believe they received a product that does not match the description. For example, if they received a sword with a different sprite or that sword didn't help them kill the boss they expected to kill.
10. In particular, partial rollback of transactions is recommended — refunding real-world money for the remaining unspent in-game currency.
11. Game operators should not confuse players with overcomplicated terms, delete something from the game (especially if it's purchasable), modify the costs of in-game currency, permanently ban players without the possibility of contesting the ban.
12. Game operators should especially carefully handle vulnerable clients. Of course, children, but there are more interesting options. For example, a person outside the game may not be considered vulnerable, still, in the game, they may start to be considered vulnerable if the game targets specific vulnerabilities such as gambling addiction, shopping addiction, etc.
13. "Whales" can be considered vulnerable clients, as their behavior suggests issues with impulse control and gambling. Therefore, all games targeting "whales" are likely considered to be targeting vulnerable clients.
14. Parental control functions should be implemented in the game. It is possible to use platform-provided functions.

It looks like a lot of fun :-)

## How difficult it is to follow the regulations

For the start, let's **assess the complexity of following the letter and spirit of the recommendations**. What might be required of bona fide developers of free-to-play games?

Obviously, following the recommendations to the letter and spirit is expensive and complicated. I won’t try to prove that here; instead, I'll focus on what exactly makes it difficult and expensive.

### Market restrictions

The first thing to decide is whether you are making the game only for the European Union or the whole world. This affects, at least, a number of interface and balance variants you should create.

The EU's free-to-play market, at its best, is the third largest after the USA and China.

Therefore, if you want a lot of free-to-play money, it is currently more profitable to ignore Europe by simply not releasing the game there. When and if you have a big bag of money, you may consider adapting the game.

Or, you can consciously limit the influx of money and roll out an ethically correct monetization model to the whole planet, hoping that you won't go bankrupt along the way, as **the price of traffic for unit-economics is set by crazy free-to-play monetization, not by European regulations.**

I'm not considering the option of making two versions right away, as it is only for the very rich — they have their own lives, their own problems.

So, let's assume you decided to follow the recommendations. What awaits you?

### Toothless monetization

Most of the free-to-play monetization is designed for "whales" and uses a lot of tricky tricks. If developers get rid of it, they can easily lose, at a guess, 3/4 of their income. Of course, it depends on the game, but in general, only "whales" can bring 50+% of the income.

Not to mention the retraining of game designers and marketers, who are very focused on specific free-to-play mechanics and player behavior.

/// note | Leave Europe or adapt the game?
Let's exaggerate and assume that the EU has `1/3` of the planet's free-to-play market and that by following the regulations, we are left with `1/4` of the income.

1. If we leave Europe, we are left with `2/3` of the income.
2. If we stay in Europe and adapt the game, we are left with `1/4` of the income.
3. If we make two versions of the game, we are left with `2/3 + 1/4 * 1/3 = 8/12 + 1/12 = 9/12 = 3/4` of the income.

The third option beats the first by `1/12` — less than 10% of profit but much more hassle. In general, there is no guarantee that supporting "two versions" will not be more expensive than `1/12` of income.
///

### Old-new concepts of interfaces and balance

Of course, interfaces and balance are different things, but in our case, we will need to do the same with them — roll back to the practices of not-so-free-to-play games, after which, perhaps, gradually find new "ethical" options for "European" free-to-play.

It looks simple and even economical — less work — you just need to "make a game" and not [simulacra]{post:@choose-nearest-language:one-form-two-products}, you don't have to spend energy on additional complications.

But here's the catch: most game designers in typical free-to-play games don't know how to make "traditional" games. The reverse is also true, of course. Because free- and not-so-free-to-play games are different kinds of products that require different sets of knowledge, skills and experience. I can't even name a successful precedent where developers from the free-to-play market smoothly transitioned to, for example, the PC Steam game market.

The same logic should be applied to interfaces.

And this isn’t even about new challenges. For example, let's take the requirement to write the sum in real currency next to the sum in virtual currency. Try explaining to players clearly that the purchase will not require payment in both currencies at once :-)

So, when adapting their game, developers will have to not only "remove something" but also conduct a series of experiments to find new working approaches.

### Accounting of in-game transactions

One should implement a log of in-game transactions to reliably track all operations, cancel them, etc.

The current practice is to implement such a log in a simplified form, if not implementing it at all. The log can be in an unclean raw text form, reside on the client side, etc.

Making the transaction log reliable and complete is an expensive task, both in terms of work hours and infrastructure. In my career, I have worked on 3-4 versions of different payment systems. I also made elements of such a log in my text-based MMO [The Tale](https://the-tale.org), and I can say that this is a lot of work that, de facto, is not needed by either you or the players. It is one of the examples of how my perfectionism backfired.

The problem is not even in the log itself but in how the game should interact with it.

For example, many games keep a large share of logic on the client side and (justifiably) use hacks like "if there is no network, we trust the client".

/// details | Why do we still keep logic on the client
I'm still not sure why, but I have three hypotheses:

- Backend developers are much more expensive than client developers.
- During the early stages of development, the visionaries are not always aware that a backend exists even as a concept.
- Lean startup & fake it till you make it.

The common cause is most likely a combination of all three, as I have encountered very different arguments in my career.
///

In case we begin to qualitatively track all in-game transactions, we will face problems not only with implementing the backend, but also with adapting the game's behavior to new network delays, and game logic to new data flows. As a result, the transaction log becomes yet another type of "eternal payment" that will consume resources throughout the game's lifetime.

If you already have a game, introducing a transaction log into an unprepared architecture will take from "very long" to infinity. Seriously, the current development paradigm simply does not expect developers to thoroughly design the architecture. You should be very lucky with the development leaders ~~for example, hire me~~ for such a move to be possible without major problems.

Just in case, I note one more time that these are considerations for when we really strive to sincerely follow the recommendations. If we don't, then technical solutions can be much simpler.

### Things that just should be implemented

- Smart/partial refunds.
- Parental control.

Both are already present on most platforms, so developers just need to spend time and effort on them.

### More support staff for the god of support

The support team will need to be trained to handle more complex complaints and be ready to contest every ban and any in-game transaction. More employees (or bots) may be required to hire than usual.

## What this regulation is ideally supposed to lead to

The authors' intention, apparently, is to improve the health of the mobile and, generally, online games segment.

All games should switch to a buy-to-play model or subscriptions. Imagine Google Play, but with games like in Steam — sounds cool, doesn't it?

## What this regulation could potentially lead to

Given the nature of European bureaucracy, I would bet that in the next 10 years this will lead to nothing. Unfortunately.

But let's imagine that the recommendations will be followed, and there will be no way to bypass them. What will happen?

The biggest publishers/developers will adapt their games to the new rules — "just to have it" — "a penny saved is a penny earned" and all that. They will lose a little money, but nothing will change significantly for them.

Most free-to-play games with a "traditional" model (aggressive monetization) from small and medium developers will become unavailable in Europe.

Consequently, small and medium developers will lose about 1/3 of their income, which can hit them hard.

I was going to say I sympathize with them out of solidarity, but I can't. Everyone chooses how to spend their time. If you've
decided to make a modern free-to-play game — well, may God judge you :-)

The European market will be cleared of hyper-monetized trash, marketing costs will drop, and there will be a chance for guys who want and can make true games. New companies will create new products, strengthen their position in the European sandbox, and start changing the world around them.

"I want to believe" (c) Mulder.

## What this regulation is most likely to lead to

Have you heard about the large GDPR lawsuits in the gaming market? Me neither.

Have you noticed any benefits that GDPR brought to players and/or developers in the gaming market? Me neither.

And oh, all the talk there was… By the way, I have a post about [how to support GDPR in your project]{post:@choose-nearest-language:how-i-did-and-would-do-gdpr-support}.

So, the same will be with these regulations.

This is not only because it will be done by European bureaucracy but also because we are talking about entirely virtual worlds whose logic can be bent as authors like. A virtual world is not a real one with physical products that need to be physically produced from physical resources, whose consumption logic is dictated by culture and human physiology, when everything is trackable, slow, and more or less transparent.

It will be the battle of formalism against imagination/creativity, in fact, of the gods of those virtual worlds, who can change the rules of their worlds as they like. Human imagination in such comfortable conditions will definitely win. Therefore, most developers will slightly adapt their games without changing their essence.

## How developers will bypass the regulations

The simplest and fastest solutions that will cut off 80% of issues:

- One more checkbox in the registration process in the spirit of "the developer is always right, I am always wrong", or it's analog.
- Support heuristics like "we refund money, then we ban/mark you forever for any controversial issue".
- Inaccurate but good enough textual log of transactions, which support staff will review manually before following the previous point.

But, of course, the coolest solutions will be in game design.

If the regulations are about the currencies that is primarily used for purchases, then you can make them so that their primary purpose doesn't look like a primary one:

- Sell not currency but buildings (or other items) that decorate your base and, incidentally, produce some other resources that are not currency at all.
- Players spend real money — on anything, even on a top spenders leaderboard — to upgrade an in-game mine that produces in-game currency, which, obviously, officially has no real-world value whatsoever. Something similar is done in [Mechabellum](https://store.steampowered.com/app/669330/Mechabellum/) but for a different purpose.
- Sell collectible cards that can be exchanged for anything. But they are collectibles, so "they are needed only for collecting, and the exchange is a secondary totally optional action".
- Sell tokens that can be exchanged for subscriptions, like in [EVE](https://wiki.eveuniversity.org/Accounts#PLEX). If players start using them as currency — well, that's their right; the developers don't require it.
- Sell access to premium content in which you can farm unique items that can be exchanged for other items. You got it.

So, building a game system where no one can immediately prove what counts as currency and what properties it has — that's a piece of cake. When the lawyers say it’s falling apart, you tweak the rules — and bam, the whole bureaucratic process starts over.

And that’s not even mentioning the monetization practices from the grey area. For example, you can sell hard currency cheaply with a limit of 1 purchase per month and make all other sales expensive with an infinite limit. In all in-game prices, write the equivalent price at the cheap rate, as "our game is designed for this amount of spending per month, and everything above that is an unnecessary bonus for fans".

## Conclusion

The authors of the document, obviously, wanted to make the world a better place and have my respect for that. But I bet everything will go as it always does.

How to make it right, unfortunately, I don't know.
