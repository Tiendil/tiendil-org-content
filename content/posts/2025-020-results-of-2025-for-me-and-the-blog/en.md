---
title = "Results of 2025 for me and my blog"
tags = [ "blog", "practice", "reflection", "results-of-the-year"]
published_at = "2025-12-27T12:00:00+00:00"
seo_description = What I was doing in 2025, how my plans for the past year went, and what are my plans for the coming year.
seo_image = "cover.png"
---

/// brigid-images
src = "cover.png"
caption = "Blog metrics for 2025."
///

The New Year is near, it's time to sum up the results of this year. Let me tell you what I was doing in 2025, how my [plans for the past year]{post:results-of-2024-for-me-and-the-blog} went, and what my plans are for the coming year.

<!-- more -->

## Blog metrics

This is probably the first year when the blog's traffic stopped growing, and may have even declined.

I am not sure about the causes. The engine has only improved over the year — the blog became faster and more accurate. According to Google, the number of impressions in search nearly doubled, the average position in the results improved from 12 to 8, while the number of clicks and CTR decreased. There are two hypotheses:

1. The black magic of search algorithms — according to Google Search Console.
2. The ban of the internet in Russia — judging by per-country traffic statistics — the decline is mostly in Russia.

ChatGPT suggests that the blog may have started to appear for broader/less "my" queries: impressions are growing, the average position is improving, but the content is less relevant to the user which leads to fewer clicks. AI says this is a typical pattern, especially if the content has become better "understood" by the search engine.

The number of subscribers in [the Russian-speaking Telegram](https://t.me/tiendil_org_ru) increased by 27% and now stands at 118 people. The [English-speaking Telegram](https://t.me/tiendil_org_en) is completely inactive, apparently the English-speaking internet works differently. The blog's Discord servers are dead, I'll delete them soon.

## Posts

I've wrote 20 posts this year — closer to my "work" norm than to the "sabbatical" norm. The reason was a spectacular schedule slip in the second half of the year, which I'll explain below.

**The top new posts for 2025**

 # | English version  | Russian version
-- | ---------------- | ---------------
1 | []{post:eu-key-principles-on-in-game-virtual-currencies}  | []{post:@lang=ru:@lang-title=en:harsh-reality-of-gamedev}
2 | []{post:engineering-is-science-is-engineering}  | []{post:@lang=ru:@lang-title=en:sabbaticals}
3 | []{post:automatic-quests-generator} (translation of an old post)  | []{post:@lang=ru:@lang-title=en:vantage-on-management-books}
4 | []{post:feeds-fun-marketing-test}  | []{post:@lang=ru:@lang-title=en:gpt-5-release}
5 | []{post:no-instructions-for-engineering}  | []{post:@lang=ru:@lang-title=en:payment-processors-cancel-games}

**The overall top posts for 2025**

 # | English version  | Russian version
-- | ---------------- | ---------------
1 | []{post:eu-key-principles-on-in-game-virtual-currencies}  | []{post:@lang=ru:@lang-title=en:slay-the-princess-combinatoric-narrative}
2 | []{post:dungeon-generation-from-simple-to-complex}  | []{post:@lang=ru:@lang-title=en:my-gpts}
3 | []{post:slay-the-princess-combinatoric-narrative}  | []{post:@lang=ru:@lang-title=en:dungeon-generation-from-simple-to-complex}
4 | []{post:fun-case-of-speeding-up-data-retrieval-with-psycopg}  | []{post:@lang=ru:@lang-title=en:how-to-design-a-dungeon}
5 | []{post:about-book-harry-potter}  | []{post:@lang=ru:@lang-title=en:julia-experience}

Fun fact:

- The amount of traffic from the AI services increased 11 times: from 7 to 79 (ChatGPT — 50, Perplexity — 29).
- The amount of traffic from DuckDuckGo nearly tripled: from 15 to 46.

**Top 10 countries by unique visitors**

Country  | Unique Visitors
-------- | ----------------
🇷🇺 Russian Federation | 7.5k
🇺🇸 United States | 1.5k
🇩🇪 Germany | 743
🇧🇾 Belarus | 675
🇺🇦 Ukraine | 515
🇬🇧 United Kingdom | 439
🇳🇱 Netherlands | 382
🇰🇿 Kazakhstan | 379
🇵🇱 Poland | 334
🇸🇬 Singapore | 275

The Germany placement is on the high side because I am the most active reader of this blog :-D

## Failed plans

The first half of the year went quite well. The second half turned into an epic failure on all fronts — I should have bragged less in the post about [my sabbaticals]{post:sabbaticals} :-D

There where tree primary problems.

**First**, as a finalization of my research into management theory, I planned to write just two posts. As it turned out, I [wrote five]{post:points-of-view-on-a-product} and have two more planned :-D And this is despite the fact that I specifically combined all [book reviews]{post:vantage-on-management-books} into the single post.

The reflection posts end up long and don't come easy — I didn't expect to accumulate such a volume of thoughts. On the other hand, I like how all these thoughts agree with each other and come together into a coherent picture.

**Second**, I could skip some experiments in [Feeds Fun](https://feeds.fun) and not implement some features, as they seem less important now than at the beginning of the year. This would have saved some time. But this is clearly post factum knowledge.

**Third**, I decided to implement "proper" authentication in [Feeds Fun](https://feeds.fun), which led me to spend 2-3 months diving into complex protocols and sketchy (with all due respect) software. This activity spawned several whining posts ([1]{post:crazy-ory-infrastructure}, [2]{post:cool-open-source-project-for-portfolio}, [3]{post:llm-agents-are-still-unfit-for-real-world-tasks}). Similar functionality could have been assembled ~~out of duct tape and prayers~~ in a month, but I really didn't want to implement security by hand — it's risky. Plus, it was a good opportunity to close this gap in my technical knowledge — the last time I implemented full-fledged authentication was in 2012, and things were different back then.

**Fourht**, I spread myself too thin. There were two main projects this year: Feeds Fun and management books. But besides that, I decided to prototype a game for fun, which I had been working on as part of the [World Builders 2023 school]{tags:world-builders-2023}.

I can not say that I spent a huge amount of time on the game — I do such perversions in the evenings when my brain stops working, but I can still code on reflex. However, some time was lost, partially because not all of development could be done purely on reflex — I had to take days away from the main projects. I estimate the lost time to be about 6 weeks, but it's not time that would have compensated the whole delay on the main projects.

## Analysis of failures

Not a final thoughts. Obviously, I will mull over this situation for a longer time, but for now it looks more like an inevitable delay: I went on sabbatical to do specific things, and these things need to be completed in order to exit subbatical with a positive result.

### Underestimation of time for management books

The knowledge has to be digested. To achieve this, I need to write as many posts as necessary to put my thoughts in order. This is my personal learning process. If I don't go through it, it will end up worse for me and for the people to whom I will try to apply this knowledge.

**Conclusion**: next time, be significantly more pessimistic in estimating the amount of work required to analyze the books I read for learning. Especially when they are stacked together to cover a specific topic.

### Delays in the development of Feeds Fun

I already cut features in Feeds Fun pretty aggressively. Looking back at the experiments from the first half of the year, I could have saved a month or two of work — but that knowledge only exists in hindsight.

From the other side, if at the beginning of the sabbatical (2 years ago) I had decided that I would definitely turn on monetization in Feeds Fun, I could have saved a total of 3-6 months of work by skipping some features, research, experiments.

It looks like I was waiting for some significant failure that would show that it makes no sense to continue working on the project, so I moved slowly, testing hypotheses like "what if it doesn't work out here or there". An epic failure did not happen, but the progress slowed down.

**Conclusion**: be more decisive, do not play "too safe", do not try to "outplay the universe". In fact, this is a big problem of mine: when I plan something on the personal side, I try to account for all possible scenarios, which wastes time. I need to watch myself. Interestingly, this manifests itself much less on the work side — maybe I am more responsible when I spend other people's money.

### Authentication overhead

The situation with the time spent on the authentication research is unpleasant. Partly I brought it on myself, partly —
shit happens. It just so happened that I hadn't dealt with proper authentication for quite a while, which meant I had to absorb a large amount of information at once.

The positive side is that it is a one-time delay, in the future I hope to reuse this knowledge.

One can say that I took the opportunity. Experience shows that taking such opportunities more often brings benefits than harm.

For now, there are no conclusions here — time will show.

### World Builders

Looking back on the whole two years of subbatical, the biggest questionable point is my participation in the World Builders school. The opportunity to participate in it came up just before the start of the sabbatical, and it was already clear then that this activity would not align with my primary plans, thus it carries risk.

Theoretically, if I had ignored the school, I would have won about six months (over two years) — right equal as the accumulated delay time.

However:

- My experience shows that unique opportunities that arise are better to be used than ignored.
- I still picked up some valuable, highly specific insights and synced with reality in important areas for me.

That is why, for now, I consider the time spent on World Builders to be useful unplanned expenses.

## Progress on 2025 plans

> Decide the future of [Feeds Fun](https://feeds.fun/): business or hobby. Promote it, gather feedback, fix issues, promote again, repeat the cycle a few times, and then make a decision.

In the process — there will be test monetization launch, after which I will decide how much sense is in the investing in the development of the project.

I did a [marketing test]{post:feeds-fun-marketing-test} at the end of spring. The results were ambiguous, possibly due to the excessive complexity of accessing the main feature of the project — tags. The user must enter an OpenAI or Gemini API key to get tagging for their news — definitely, not everyone will want to do this. Therefore, I want to replace the API key input with a subscription purchase and repeat the test with a scenario more familiar to the user.

Unfortunately, I failed into a quick iteration, as Feeds Fun is not the only activity this year. It is hard to iterate over a project when you also should iterate between projects.

What adds to the optimism is that people are interested in the reader. At the moment, the [repository](https://github.com/Tiendil/feeds.fun) has 319 stars — from the last month, it is my most starred project.

> Make an MVP of the [game]{post:simulation-of-public-opinion-in-a-game} I outlined during the [World Builders]{tags:world-builders-2023} classes.

I started this endeavor with a plan to "quickly make something that works", but soon decided that I would slowly prototype for the fun of it, as many complex questions arose that could not be solved quickly and head-on (given the lower priority compared to the main projects).

As a result, I started diving into [Rust](https://rust-lang.org/) and [Godot](https://godotengine.org/). So, instead of the game itself, I now have a prototype of a deterministic game logic engine in which I am trying to solve problems I thought about back during the development of [The Tale](https://the-tale.org). Optimists may consider this as developing an engine for "The Tale 2.0", however, I am not an optimist yet :-D

On top of that, there were several iterations of game design, and in the last month I started experimenting with LLM agents.

There were a lot of game design iteration and they were, let's say, intellectually painful, but globally useful. It turned out to be not so simple to create a mechanism for generating emergent stories that a person can configure and control. At least not so simple without a team and a budget. There are even some logical programming approaches used in the engine :-D

The results of this activity are ambiguous:

- The post about Rust will be in the next year — the language is interesting and versatile, very ambiguous impressions.
- There will be no post about Godot — it looks like working with visual editors literary pisses me off — professional deformation. Therefore, I cannot objectively evaluate the engine. If I make a game, everything in it will be described by code and configs.
- It is possible that next year I will release a tool for LLM agents that helps them keep focus on the task at hand.
- It is possible that next year there will be some cool demo, but I don't count on it much.

Perhaps I should have chosen [Zig](https://ziglang.org/) instead of Rust, but I am still not sure about that. I think, with time, Rust and Zig will split the whole area currently occupied by C/C++ and do so not in competition, but side by side.

> Decide whether there will be any financial collaboration with Mad Crusaders or not.

The funding didn't work out.

Instead of developing a package of games, the people behind the school are now working on something like a generator/builder of intellectual property (fictional worlds) based on LLM agents. A threndy and promising direction, good luck to them, I hope it works out. Although I have some doubts about the success of their idea taking into account their resources.

> If the partnership with Mad Crusaders continues, start making a game with them based on MVP.

No game, obviously.

> If I stop working with Mad Crusaders, AND the MVP is playable, AND I have the time, I’ll release the game on Steam as an indie project by a solo developer.

Yep, again, no game.

> Start systematically practicing spoken English.

The fail of the decade for me — always postpone this and never find the time.

> Learn 1000 new English words. Fiction literature should help there.

The success of the year. Currently I have 645 flashcards with learned words. Since I chose 1000 only for a nice round number (100 is too few), I consider this a big progress for myself. The result is visible in real life — new words pop up now and then in TV shows, books, and posts.

I use [DouCards](https://play.google.com/store/apps/details?id=com.duocards.app) to learn words. In the spring, I did a small research on software for this task and settled on it. Each flashcard is accompanied by an associated picture, usage examples, and audio. AI generates translations and examples.

I use a paper notebook alongside the app to activate different types of memory — without it learning didn't work for me — words didn't stick. The process looks like this:

- DuoCards shows me a new card.
- I wrote the word with a translation into the notebook.
- I check my answer with the app. If I made a mistake, I write the correct translation in the notebook.

For me personally, writing forces words through a greater number of neural pathways, which makes them easier to remember.

I have an impression that periodic iteration over the cards is now a habit. Waiting to see how it goes next year.

> Translate the top 10 Russian blog posts into English.

Stopped at five. At the middle of the year, I realized that manual translation takes too much time and does not lead to a significant increase in traffic to the English version of the blog.

Currently I don't know what to do with the translation of the old posts. Most likely, I will wait until AI learns to translate texts preserving the author's style and will process the old posts with it.

> Finish improving my management theory.

Almost done, just two posts left :-D

> Quit drinking cola without getting hooked on an alternative source of caffeine.

Unexpectedly succeeded.

In the second half of 2024 I spent about 1000 eur on cola, and in the whole 2025 — about 250 eur. It looks like an eightfold year-over-year saving.

Now I drink two kinds of tea:

- China Monnong Pu Erh is an extremely stimulating tea if you need to concentrate at work.
- Rooibos Lemon is not a tea, caffeine-free, but steeped and drunk like tea. I mostly drink it to not coffeinate myself.

> Start looking for a job if my projects don’t work out.

Not yet. Waiting for the results of the Feeds Fun monetization experiment.

## Outside of the yearly plans

Some things weren't planned but happened.

### Dropped 10 kg

Absolutely unexpectedly moved from 100 to 90 kg.

The methodology can be described simply and complexly.

1. Simply — stopped eating after 6 pm.
2. Complexly — learned to distinguish between hunger and emotional eating and stopped eating for comfort/emotions. Initially it was hard, but now it's almost a habit.

### Посмотрел весь Stargate

Заняло около девяти месяцев.

Постепенно пересматриваю всю классику ~~около~~научной фантастики, которую упустил в молодости. До этого [X-Files]{post:the-truth-is-out-there} пересмотрел и где-то половину Star Trek — надо бы досмотреть. Впереди ещё «Вавилон 5».

На современную фантастику не тянет совсем. Либо возраст, либо классика рулит. Скорее всего и то и другое.

## Plans for the next year
## Планы на следующий год

1. Выйти из творческого отпуска.

Надо было сделать в этом году, но что не успел, то не успел.

Для этого надо:

1.1. Закончить с итоговыми постами по менеджменту.
1.2. Провести эксперимент с монетизацией Feeds Fun.
1.3. После эксперимента либо продолжить заниматься Feeds Fun как работой, либо найти работу.

Должен справиться за полгода.

2. Начать систематически тренировать разговорный английский.

3. Разобраться с разработкой в паре с LLM агентами.

Агенты однозначно станут темой 2026 года и новой реальностью разработки софта. Однако сейчас никто не знает в точности как эта реальность будет выглядеть. Практика должна прояснить это в следующем году.

Надо быть в тренде, чтобы оставаться в топе :-D

4. Продолжать эксперименты с геймдевом.

Конкретной цели не ставлю, на текущий момент это просто хобби.

5. Похудеть ещё на 5-10 кг

- На пять — чтобы вернуться в норму.
- На десять — в качестве эксперимента.
