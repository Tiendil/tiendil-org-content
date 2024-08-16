---
title = "Preparing a business plan for a game on Steam"
tags = ["practice", "theory", "development", "gamedev", "monetization", "business", "interesting", "best", "world-builders", "tutorial"]
published_at = "2024-08-15T12:00:00+00:00"
seo_description = "An example of developing a business plan for a game on Steam with a description of logic, calculations, and remarks."
seo_image = "./images/cover.jpg"
---

/// brigid-images
src = "./images/cover.png"
caption = "Earning millions is easier than ever. I'll tell you how :-D"
///

When I posted my [final presentation]{post:@choose-nearest-language:world-builders-2023-final-presentation} ([slides](https://drive.google.com/file/d/1BUhTWCW9YysP0ZCUrIoFbmqXDa-Fz946/view?usp=sharing)) for [World Builders 2023 schooll]{tags:world-builders}, I promised to tell how I made a roadmap and a financial model for the game. So, here they are.

At the end of this post, we will have:

- A brief strategy of our company: what we do, how, and why.
- A table with our beacons — successful games roughly similar to what we want to make. Similar in gameplay, team size, budget, etc.
- A composition of the team we need to assemble.
- A roadmap — a development plan for our game.
- An outline of our marketing strategy.
- A financial model — how much we will spend, how much we will earn.
- A large number of my caveats throughout the post.
- Jokes and ~~I hope~~ witty remarks.

All the final documents can be found [here](https://drive.google.com/drive/folders/11EkcbEicQkSM-08FFh-Bx43gH7SuVfsT?usp=sharing).

<!-- more -->

## Disclaimer

/// attention | Attention!
Following this post and my logic as a whole is strictly on your conscience and responsibility. Think with your head before copy-pasting.
///

In case you lose millions of dollars following this post, and gloomy guys come to you with questions, please do not redirect them to me. Take responsibility with your head held high, even if your legs are already set in concrete. Just kidding, do not deal with non-specialized investors, and your health will be fine.

Here is why you should critically look at this tutorial:

- I'm not a professional businessman. I had a business and spent more on it than I earned.
- This is the best of two business plans I've ever made. The fact that it is the best does not cancel the fact that it is the second.
- I have not yet received money for it, and even the person looking for investors is not me. So, I do not know how investors will react to these calculations.
- This business plan was prepared as part of my studies, not as part of "I put my soul into opening my company and investing all my time and resources into it."
- It is possible to make it 100500 times better, but I did not. Pa-ra-pa-pam. Because there was no time, and sometimes I was lazy.

## Iterative development

During the reading, it may seem that all the work can be done sequentially from beginning to end. This is not the case. I post-factum organized everything into a narrative form so as not to make you jump chaotically between documents.

/// note | Move in a spiral
While developing your business plan, you will find mistakes in your logic, in calculations, in data, in everything. You will forget different things and then remember them. So you will have to jump between different documents, iteratively adaping them to each other's constraints. This is normal and should be so in any healthy development of a complex thing.

But if you don't do it this way and try to force your way through, you will definitely make a mess. ~~Not that I didn't make a mess.~~
///

So.

## Define company strategy

Imagine, for some reason, you've decided to make a game for ~~the indie developers graveyard~~ Steam. And it's a single-player sandbox strategy game (see [presentation](https://drive.google.com/file/d/1BUhTWCW9YysP0ZCUrIoFbmqXDa-Fz946/view?usp=sharing) if your are interested). Maybe with multiplayer, but you're not sure yet.

Listing the possible reasons for these decisions is beyond the scope of this essay.

For example, if you focus on earning money (why then go into gamedev?), you should find reports on different platforms, see which genres make money on which platform, evaluate the average team size, investments, and development time, and make a weighted decision to create a free-to-play mobile MMORPG for low-grade mobiles in the African market or something like that. Just in case, [I'm serious about Africa](https://www.statista.com/outlook/dmo/digital-media/video-games/africa).

/// note | Why I decided to do what I do

I chose the entertainment sphere because the school is about making something in this area.

Games (not comics, movies, books, etc.) were chosen because I have good expertise in [gamedev]{tags:gamedev}, the school's main expertise is there too, most residents decided to make games. I didn't want to break away from the team and spend more time than I was willing to spend.

Mobile games are a [simulacrum](https://en.wikipedia.org/wiki/Simulacrum) — [a form triumphing over conten]{post:@choose-nearest-language:one-form-two-products} with a marketing budget larger than the development budget. Not interesting. It's funny, but in our final financial plan, the marketing budget will also be larger, but, of course, it's different :-)

VR, consoles, and other things are more complex (for me) in terms of technology and game design.

PC platform remains, dominated by Steam.

Strategy and RPG are the genres in which ~~I played the most~~ I have the most expertise and which I like. Plus, they allow to reveal the world better. Revealing the world is one of the school's requirements for the product.

[MMORPGs]{tags:mmo} are also interesting to me, but my view on them is radically different from the view of any person similar to an investor, so not this time.

In my opinion, it is much easier to make a good strategy (even with RPG elements) than a good RPG. Because making an RPG with a linear plot is not fun, and the development of a non-linear plot makes me tremble with combinatorics and the pain it will cause.
///

## Choosing ~~monetization~~ the main financial flow

There are several approaches to monetizing games on Steam:

1. Through major releases.
2. Through selling DLC — [Downloadable Content](https://en.wikipedia.org/wiki/Downloadable_content).
3. ~~Through microtransactions~~

In my world model, the company will aim for one thing and use the rest as an additional source of income. If you try to catch two hares, you usually catch none.

I will not consider microtransactions, as in the field of single-player PC games, only AAA studios ~~now how~~ can allow themselves to do so, and only through giant marketing budgets and reputation loss. Indie developers will be buried alive by the Steam community for such a thing. And rightly so. Not to mention, I have no desire to mess up my karma..

Therefore, we have several options for the basic strategy:

1. Make a big release of "My Mega Game". Move on to something else.
2. Make a big release of "My Mega Game". Move on to something similar: make a sci-fi strategy after a fantasy one.
3. Make a big release of "My Mega Game". Make a big release of "My Mega Game 2". Make a big release of "My Mega Game 3". And so on.
4. Make a big release of "My Mega Game". Release a couple of DLCs. In parallel, work on something based on plan 2 or 3.
5. Make a big release of "My Mega Game". Endlessly release DLCs.

In the old days, there was a concept of Addon, but for simplicity, we will consider them the same as DLCs. At least I don't see any significant differences for the purposes of this post.

**Option 1**, in my opinion, is almost never practiced now, in the case of a successful product. Because a lot of resources are wasted: the team's expertise is lost, the code, the pool of freelance specialists, the community — it's not very profitable. But some especially dedicated indie developers might do it just for fun.

**Options 2 and 3** are close, they can even be alternated. They allow you to reuse much artifacts of work than option 1. The downside is a very uneven flow of money, and it's not guaranteed. And that means holes in the budget.

/// attention | Is it easy to repeat success?
If you made a good game once (in ±two years), it doesn't mean that the second time it will be better or the same, or that your players will forgive you for the same mistakes you made the first time.
///

The series of big releases is a risky venture. Therefore, in case of success of the first release, many developers try to release at least a few DLCs to support the development of the next game. Which brings us to the fourth option.

**Option 4** — releasing DLC in parallel with the development of the next game is a good way to reduce risks and make the life of the studio more predictable.

The problem with this approach is that not all teams can make a game that will be relatively easy to modify in an interesting way for players. Plus, not all genres are well suited for DLC.

For example, RPGs make it challenging to add each subsequent DLC because the game follows a single narrative. This makes it difficult to change mechanics (due to campaign balance) and to extend the story (since good games are released with a complete and consistent storyline).

/// hint | DLC as separate companies in RPG
It's strange, but I can't remember any RPG where separate campaigns were released as DLCs. Aka with stories that are not related to the main plot and that need to be played with a new character.

I think it would significantly simplify the lives of developers. And it would be much more interesting for me as a player to create a new group six months to a year after the first playthrough, rather than remembering the plot and the mechanics of 100 abilities in the old save.
///

But if we don't have such problems, we can look at **option 5** — replacing the main money flow from the releases of new games to the releases of DLCs. I call it the [Paradox](https://www.paradoxinteractive.com/) way because they are the best at it, as I see it.

The first release still brings a significant share of income, but the development focus is initially on the production of DLCs, which eventually outweighs the profit from the first release.

/// note | **Option 6** — endless development of the base game
There are a few games, for example, [No Man's Sky](https://store.steampowered.com/app/275850/No_Mans_Sky/), [Stardew Valley](https://store.steampowered.com/app/413150/Stardew_Valley/), developers of which just continue to polish the base game (without DLCs) and continue selling it.

It's incredibly cool, the developers deserve all sorts of praise. But, in my opinion, such a decision is made when you have already hit the target. Not even hit the target, but, like Robin Hood, split the arrow in the bullseye. This decision can be made after the release of the first version when you already have money, a growing community, and you see THE POTENTIAL.

I can not recommend building a business plan based on such an optimistic scenario.
///

### Massprodusing DLCs

Efficient, well-organized production of DLCs is great for two reasons.

**Firstly**, it forms a strong developing ecosystem uniting the company and the player community:

1. With each released DLC, you improve the base game, tune it to a specific niche, and eventually become a monopolist in it.
2. Improved base game continues to be bought by players for whom it was not so good before. Therefore, your community continues to grow for a long time after the release.
3. A strong community provides quick and high-quality feedback for your decisions, leading to the release of better DLCs. Good DLCs improve the game. Improved game attracts people to the community. The community provides even better feedback.

/// brigid-images
src = "./images/dlc-feedback-loop.png"
caption = "This is how I see it. Money, in fact, is also a form of feedback."
///

**Secondly**, you get a predictable cash flow:

1. The period between major inflows decreases from 1-2 years to 3-6 months.
2. The risks associated with errors are reduced. In case of a failed release, studios often close. In case of a failed DLC, you release the next one. The studio lives as long as it can learn from its mistakes.
3. You sell DLCs not to random people, but to your players. This makes marketing cheaper and income more predictable. You know how many people play your game, what percentage bought the previous DLC, so you can estimate how much money the next one will bring.

However, there are downsides:

- It works not with all genres. I think only with strategies and maybe sandboxes.
- The first release still has to be quite noticeable and high-quality to form the core of your community. Paradox can afford to release mediocre products (judging by the reviews) and then polish them. But this is more of an exception, they are forgiven.
- You should know how to make games and how to listen to players. Not everyone can do this, and not everyone wants to.

Since we are making both a strategy and a sandbox, and in a free genre (public opinion simulation), we can risk and aim for the fifth option. In case of problems with organizing pipeline for DLC production or with quality, we can always switch to the fourth option.

## Early Access

An experienced developer may have noticed that I have bypassed Early Access.

I did this for several reasons:

- Now it is de facto standard. There is no point in skipping Early Access. The earlier you do Early Access, the earlier you get [feedback from the universe]{post:@choose-nearest-language:life-and-work-with-mistakes}, the earlier you fix mistakes, the better the game will be.
- From my point of view, what exactly to release in Early Access is defined not by monetization but by marketing, team capabilities, and investors' wishes.

There are two poles:

1. Full release in Early Access. We release what we would release in a regular release, only now we are forgiven more bugs, and the team is calmly working on the day-one, week-one, month-one, year-one patches. When everything is sold, we make a release to highlight the game for players who, for some reason, missed Early Access.
2. "Quiet" release in Early Access. We release a consistent integral game but significantly cut in features. Based on players' feedback, we work hard to polish and improve the game. When the game is ready, we make a "loud" release.

In my opinion, the second approach is unconditionally more effective, as it provides feedback much earlier, which inevitably increases the quality of development at its final stage. If the team is ready to hear feedback, of course.

But not everyone can afford this:

- There is a risk of wrongly defining what a "minimal integral game" is. If you release the wrong thing, you will quickly fall into the purgatory. If you have financing by rounds, you may not receive money for the final development stage.
- Your game may be initially designed minimally, for example, due to budget constraints. That is, you will have nothing to cut from it.
- Marketers or investors will shift the development schedule so that you simply cannot release with the necessary set of features: "full release by Christmas or death."

## Final strategy

1. We are making a sandbox strategy for Steam.
2. We are focusing on a long-term release of a large number of DLCs.
3. We are aiming for a "quiet" release in Early Access, cultivating a community, actively exploiting feedback from it, and making a "loud" release when the game is ready.
4. If the release of DLCs isn’t financially effective enough, we shift to developing a new game (a sequel or a game in the nearby genre), while still supporting the first game with a few additional DLCs.

Based on this strategy and our understanding of gamedev we can describe the major stages of our game development.

/// brigid-images
src = "./images/roadmap-without-numbers.png"
caption = "A slide from the presentation. The numbers are hidden — we don't have them at this stage. The main goal of each stage is highlighted in red. Below its brief description."
///

## Roadmap

Now, we need to estimate the amount of work. To do this, we unfold the stages of development into large tasks and estimate the time needed to complete them.

The final roadmap can be found [here](https://docs.google.com/spreadsheets/d/11D4wl-dk4eLU4Jj3vVnQQY7TurMW8eC_nHzTexP7wgY/edit?usp=sharing).

The roadmap consists of three tables. For convenience, I highlighted their headers in color:

- The Red table contains all the major tasks we need to do.
- The Blue table shows the volume of tasks by tracks and stages.
- The Green table calculates the final time estimate for each stage.

We fill in the red table.

The blue and green tables are calculated semi-automatically: part of the values we set, part we take from other tables. The blue is calculated based on the red, the green is calculated based on the blue.

### Red table

Here is an example from the beginning of the table, if you are too lazy to open the original:

Stage  | Epic                       | Feature                                                | Track       | Estimation |
------ | -------------------------- | -------------------------------------------------------| ----------- | ---------- |
Alpha  | Game skeleton              | —                                                      | development | 10         |
Alpha  | Game design simplification | We should simplify game design, comparing to prototype | game design | 2          |
Alpha  | Game design simplification | We should simplify game design, comparing to prototype | development | 5          |
Alpha  | Base user interface        | User journey specification                             | game design | 3          |
Alpha  | Base user interface        | UI Schemas                                             | game design | 4          |
Alpha  | Base user interface        | Game Sketches                                          | art         |            |
Alpha  | Base user interface        | Sketches with GUI                                      | art         |            |
Alpha  | Base user interface        | Implement base UI                                      | development | 10         |

Columns:

- `Stage` — the development stage at which we need to complete the task.
- `Epic` — a large piece of work that we do as a team.
- `Feature` — a piece of an epic that is done by specific specialists, such as developers or game designers.
- `Track` — what specialists do this feature/task: developers, designers, marketers, etc. I'll explain why the column is called `Track` below.
- `Estimation` — our time estimate for the task.
- `Comments` — any additional comments.

#### What is a track

In any project, you can always highlight several streams of tasks that would be nice (but not always possible) to perform all the time, for example, by taking one task per week. Otherwise, some parts of the project will degrade.

The simplest example from gamedev are tracks of development, game design, and art.

/// note | Parts of the project left unattended degrade
If at some point we decide that, for example, we have done everything in game design, and developers still have a couple of months to code, then the game design (the real one implemented in the game, not the one in the heads of game designers) will degrade, not remain the same as it may seem.

Because the game model in the code will change (accumulate ~~mistakes~~ discrepancies), and the game design model in the documentation and in the heads of game designers will remain the same (old).
///

Therefore, **in an ideal project with an unlimited budget**, work is always going on for each track to ensure the project grows evenly, organically.

Note, tracks should not be confused with roles, positions, competencies. Above, I gave an example of high-level tracks. Here is an example of more specialized tracks for web development:

- business logic development;
- improving/maintaining the project's controllability: metrics, logs, tests;
- improving/maintaining security level;
- improving/maintaining performance.

Business ~~always~~ usually has a habit of ignoring tasks from not-so-mandatory-and-noticeable tracks that do-not-bring-value-directly. For example, tasks aimed at improving project controllability might get dismissed because "everything is fine now."

But the catch is that the debt in track grows like a snowball, snowflake by snowflake. If you don’t pay it off, eventually disaster strikes: all new features get postponed in favor of urgent fixes using quick-and-dirty solutions. This leads to significant disruptions in the business’s planning and, on top of that, to deep-rooted project degradation, which further derails planning over time, creating a vicious cycle.

That's why the project leader's goal is to keep all tracks active.

Accordingly, when starting making a table, I decided to describe tasks by tracks, assuming that:

- the list of tracks will be determined as we go;
- at each stage on each track there will be some amount of work.

In fact, you can see that in our specific case, we could use roles instead of tracks. But if the project were larger, the tracks would be more diverse. For example, game design could be divided into tracks of level design, mechanics, and narrative.

Also, it is not guaranteed that as the product develops and the team grows, we will not want to increase the details of our plans.

#### How to break down epics into tasks

The most important thing is to have a sense of balance. With all our desire, we cannot know the full list of interface elements, sounds, mechanics, and whatever else will be in the final game. Therefore, there is no point in making such a list.

Instead, we should define work in large chunks, focusing on common sense and our own experience.

If you have no experience, use common sense only :-) Then find an experienced friend and ask him to check your work. Doing the opposite (finding a person to do this work for you) is not recommended, as the person will leave, and you will be left with an artifact you do not understand.

Of course, it is okay to delegate task breakdown to a team member (who has signed up to work with you further). **Even cooler is doing it together as a team.** I don't have a team, for now, so I did it myself.

In our strategy, we shortly defined the goals of each development stage and the expected result on its completion.

For example, for the Alpha version:

- Goal: `Implement core game mechanics.`
- Expected result: `The PC game where you can play 1 game session and have some fun.`

Knowing what game we are making, we can define what should be ready to complete this stage:

- Minimum game design description.
- Minimum user interface.
- Minimum game mechanics. In our case, it is a map, news channels, and events investigation.
- Some content.

These tasks we should complete as a team, but each of them contains different amount of work for different specialists. Therefore, we should break them down into tracks.

/// note | Why is not enough to have only epics
It may seem that it is enough to define only epics for the roadmap. The idea being, we work as a team, so first we all complete the first epic, then the second, and so on. But this is not the case.

Every game requires a unique amount of work in different areas. Somewhere you need more graphics, somewhere more game logic, somewhere something else.

On the example of the game maps:

- There are games with very beautiful maps, but little logic behind them — they are just pictures.
- There are games with a complex map logic with scaling, different display modes, filters, buttons, and sliders.
- There are even games where the map is not displayed through graphics, but [through sound](https://store.steampowered.com/app/437530/A_Blind_Legend/), and you will need a sound engineer, not an artist.

So, every track will have its own amount of work, and you should build such team that will pass through all tracks without downtime (wasting money). For example, if you have `x` work on art track, and `2*x` work on development track, you should hire two developers per one artist.

That's why we need to know the amount of work per track.

But, as always, moderation is key. In some cases, it’s fine to leave out certain tracks.

For example, somewhere in the middle of filling out the roadmap, I saw that the amount of work for developers and game designers is significantly higher than for any other track. That means they will be the ones limiting the development speed, and for all other tracks I can hire only one person per each other track (taking in account the small expected size of the team). So I started to spend less time on writing down tasks for other tracks.
///

For example, we know that we need a map in out game — it is our epic `Implement game map`.

- What sort of map? Who knows. So we create research tasks on two tracks:
    - `game design` — what should be on the map, how it should work;
    - `art` — how it should look.
- Of cause, we need to implement it, so we create a task on the `development` track.
- It would be great to have procedural mao generation. But it is difinitely not required for the Alpha version. So we create additional epics and tasks for the Beta and Early Access stages.

/// attention | Pay attention
We do not prescribe what exactly the artist should draw (how many sketches, sprites, buttons) or what buttons and mechanics the developer should implement

The detailed description of tasks will be required on the production stage, when you will know the capabilities of your team and will plan the work in details together with all involved colleagues.
///

Besides the straightforward tasks, there are invisible tasks that are also mandatory. We cannot forget about them. Here are examples from my roadmap:

- Moving the game logic from the prototype to the real project. This is necessary because the prototype was developed on technologies convenient for prototyping (web), not for creating a game for Steam.
- Developing tools for game designers to speed up their work.
- Playtests at the end of each stage and game improvement based on their results.
- Development of QA approaches for content quality assessment. There will be procedural story generation in the game, therefore we need somehow to assess the lower quality boundary of the generated stories. Are they diverse enough, do they involve all NPCs, etc. In other words, we need to protect ourselves from a random total failure when due to a bug in the generation algorithm it starts to produce complete nonsense. It is difficult for developers to notice such things because they cannot play full game sessions all day long (they have work to do), so they have difficulty noticing statistical phenomenas.
- Worldbuilding for the game. Without a consistent solid context, it will be difficult for game designers and artists to keep their work in sync.
- Validating and setting up diversity in the game. We are making a game about a modern metropolis, so we need to represent people of different races, views, abilities in the game.
- Tutorial.
- Creating of the Newspedia (like Civilopedia in Civilization series). The game will have many nuances, we need to help players navigate them.
- Tasks on community building and working with it.
- Infrastructure for tracking game errors and metrics.
- Something fun for the Deluxe version, which we will sell a little more expensive.
- Modding support.
- Adaptation for people with disabilities.
- Wiki for the community.

#### Tasks estimation

Estimations is a complex and tricky question. The specific approach depends on your experience.

There are two main approaches:

- Estimation in story points — abstract units of complexity. For example, you state that the simplest task is worth one point, and then estimate all other tasks proportionally to it. When everything is estimated, you convert points to working time at some rate.
- Estimation in working time from the start.

/// attention | Speak about work using working time not calendar time
A calendar month has ±30 days, but only ±20 working days. You pay salary for calendar months, but work moves in working months.

Therefore, the last operation in calculating the total development time will be converting working time to calendar time. In my case it is done in the Green table.
///

For my personal needs, I usually estimate work on "ideal working days" (when no one and nothing distracts the worker). I chose the same approach for the roadmap. But **for joint estimation in a team, it is better to use story points.**

### Blue table

After we have described all the work, we can find out how much time each track will take at each stage of development. This will allow us to estimate the number of employees required for each track so that the work is done evenly.

For this, we group the Red table by the triple `stage + epic + track` and sum the working time in them.

 Stage        | Track       | Sum     | Workers   | Workdays | Work Months |
--------------|-------------|-------- | ----------|----------|------------ |
 Alpha        | development | 82      | 1.4       | 59       | 3           |
 Alpha        | game design | 56      | 1.4       | 40       | 2           |
 Beta         | development | 151     | 2.25      | 68       | 3.4         |
 Beta         | game design | 85      | 2.25      | 38       | 1.9         |
 Early Access | development | 165     | 2.25      | 74       | 3.7         |
 Early Access | game design | 97      | 2.25      | 44       | 2.2         |
 Release      | development | 150     | 2.25      | 67       | 3.4         |
 Release      | game design | 114     | 2.25      | 51       | 2.6         |

/// attention | Attention!
You may notice that there are only development and game design tracks in my Blue table. This does not mean that there were only these tracks initially! The table has already been filtered to display only the most significant tracks, after it became clear that there was significantly less work on the other tracks.
///

Columns:

- `Stage` — development stage.
- `Track` — track.
- `Sum` — total amount of work on the track at the stage in days.
- `Workers` — the number of employees that will be on the track at the stage. The fractional part is the share of my time that I can allocate to help. I will tell how to choose the number of employees for the tracks later.
- `Workdays` — the number of working days per person.
- `Work Months` — the number of working months, which will take the track at the stage.

We convert the working time in (working) month because our estimates are very rough and later no one will need to know "exact" number of days.

### Green table

The Blue table gives us the lower (optimistic) estimate of the duration of each stage for our team (which we will talk about a bit later).

The goal of the Green table is to convert the optimistic estimate into a realistic one in a calendar time.

| Stage        | Max | Forgotten Work % | Mistakes Fixing % | Learning %         | Team Lubrication % | Vacations %   | Expected Work |
|--------------|-----|------------------|-------------------|--------------------|--------------------|---------------|---------------|
| Alpha        | 3   | 0.1              | 0.05              | 0.15               | 0.1                | 0.08          | 5             |
| Beta         | 3.4 | 0.2              | 0.05              | 0.1                | 0.05               | 0.08          | 6             |
| Early Access | 3.7 | 0.3              | 0.075             | 0.05               | 0                  | 0.08          | 6             |
| Release      | 3.4 | 0.4              | 0.1               | 0.025              | 0                  | 0.08          | 6             |

For this, we:

- Set the time of each stage equal to the duration of the longest track on it.
- Increase it by different smart coefficients.
- Round up, because there is no limit to pessimism in software development.

Columns:

- `Stage` — development stage.
- `Max` — the duration of the stage in months. It is equal to the duration of the longest track on the stage.
- `Forgotten Work` — our estimate of the share of work that we forgot to include in the stage. The coefficient increases with time because we see the first stages better than the last ones. Work on the last stages will be significantly different from the plan due to the accumulation of mistakes in our model of the game and the improvement of our understanding of it as the development progresses.
- `Mistakes Fixing` — the time we need to fix the errors/bugs we made. The coefficient decreases with time because we make fewer mistakes as we learn.
- `Learning` — training costs for the team. It’s unrealistic to expect that the team will immediately know everything you need. It should invest time into learning new tools, approaches, theories, etc.
- `Team Lubrication` — a penalty on the team's time to get used to each other. People need to learn to work with each other.
- `Vacations` — you didn't forget about vacations and illnesses, did you? `0.08` in the table is approximately `1/12` of a year.
- `Expected Work` — the rounded-up estimate of the calendar time for the stage.

<!-- TODO: move somewhere -->
<!-- /// attention | Attention! -->
<!-- Ожидаемая компетенция команды должна отразиться в зарплатах в финансовой модели. -->
<!-- /// -->

In the end, we have 4 development phases, each lasting six months — a perfect plan for how ~~to kill~~ productively spend two years of your life.

By the way, this is not counting DLCs. The development of DLCs is not included in the Roadmap because:

- The complexity of their development depends heavily on the quality of the game's architecture. Now it is unpredictable, like guessing on a goat's liver.
- The same applies to their content: no game — we don't know what to add to it.
- Since we’re aiming for long-term monetization through DLCs, after the initial release (features of which can be varied quite flexibly) we’ll need to establish a DLC production pipeline. This pipeline will be constrained from the top by marketing demands and community expectations, and from the bottom by architectural and team limitations. We’ll need to plan the features of each DLC in a way that fits within tight development timelines. It will be totally different planing.

/// note | The difference between developing the base game and DLCs
In a broad sense, we could put it this way.

While developing the base game, we can trade time (which investors will give us) for features (which we need to make for a complete game).

While developing DLCs, we will trade features (candidates for inclusion in the DLC) for time (which we will need to release the DLC on time).
///

## Composing the team

/// brigid-images
src = "./images/team.png"
caption = "The final picture of the team we need to assemble. If you don’t crown yourself the director, who will?"
///

So, in the Blue table, we need to write down the number of employees for each track at each stage of development.

When determining the number of employees, we should remember the following:

- On each stage, on each track, it is reasonable to have so many employees that all tracks are completed in approximately the same time.
- It is not mandatory to hire all employees at once. Firstly, new projects always start from the narrow front of work, when the presence of additional employees will only delay progress. Secondly, the fewer people you hire the less money you need to ask. Especially if you are going to raise money in rounds.

/// note | "Virtual" and real employees
In the table, we operate with "virtual employees," not real ones.

While assembling a team, we will hire real unique people, not interchangeable cogs. Therefore, as we hire, we should adjust the estimates in the Blue table, reflecting the real capabilities of the team. This will cause a recalculation of the terms and financial model.

Of cause, we can look for a "pure developer", "pure game designer", and so on, but this will not be the best strategy. Especially if you are a new indie developer. It is much more profitable to look for [T-shaped](https://en.wikipedia.org/wiki/T-shaped_skills) employees.

- Firstly, it will be easier to establish communication in the team.
- Secondly, the team will be more flexible, autonomous, will require less management.
- Thirdly, since you are a noname team, such people are more likely to come to you. Narrow specialists usually go to large companies, where there is a narrow deep front of work for them.
///

I have no team yet, so I operated with "virtual employees" and just added my share of time to the estimates.

If you already have a team (or will have one), it’s wise to add a column in the Blue Table per each team member. This allows you to accurately track how much impact each person will have on each track. This approach also comes in handy if you hire a “star” who works like five people, or an intern who counts as half of an employee

/// attention | Sometimes it may be a bad idea
People are different. Per person effectivnes estimation is a kind of rating. Some people will take it philosophically, others may be deeply offended by it.

Detailes effort estimation may be a good idea from the perspective of planning and budgeting. But it may be a bad idea from the perspective of team building and team spirit.

Take in mind your team specifics, before deciding to use this approach.
///

By following these logic, we createed an image of our future team:

- Two developers and two game designers to fill the main tracks.
- One key specialist for tracks with too many tasks for outsourcing.
- Hiring in two stages: first for the project kickoff, and then for the steady development phase.
- Tasks and employee specializations are adjusted according to the requirements of each development stage. For example, in the Alpha version, we don’t need support utilities or QA automation, but they become essential for smooth development and achieving the desired quality later on. Therefore, we hire a second developer by the start of the Beta version.
- We’ll hire a producer by the Beta stage since I can handle managing five skilled people part-time, but I’ll need help beyond that (I want to continue write code and work on game design). Plus, I don’t have experience managing outsourcing, so it would be great to delegate that responsibility.

## Positioning — beacon games

/// brigid-images
src = "./images/positioning.png"
caption = "Games that are similar in some ways to what we want to create. A more detailed 'raw' table can be found [here](https://docs.google.com/spreadsheets/d/1kzkX0gXd7RqrkZGUiOPMJvDoo5Swdqa8JfyuBWXYgbo/edit?usp=sharing)."
///

Before we start developing a financial model, it would be useful to gather some information about the fate of similar projects.

- First, if there are no similar projects, it is a reason to think is the concept of our game is so unique that no one has ever thought of it, or is it so bad that no one has ever tried to implement it.
- Second, such a list will provide us a feedback on the expected amount of work and the size of the team. We can compare our calculations with real data.
- Third, it will allow us to estimate (using heuristics) some parameters for the business model.

I chose beacons based on genre and the significant player experience they provide. It is possible to philosophize about alternative approaches. For example, someone could dig up some Steam statistics or collect raw data and make some data science magic.

What data do we need:

- Development time.
- Team size.
- The price of the game at the release time.
- The number of copies sold.
- The estimated revenue.

Most of this data is private, and almost no one will give it to you. Especially the exact values.

But we do not need exact values (like all our previous calculations were exact, yeah). In my case, approximate information was unexpectedly easy to find on Wikipedia and news resources.

/// hint | Lifehack
The size of one of the teams I calculated by the counting the number of faces on the photo from Reddit.
///

By the way, an advice. If you are going to make a game in the future, but not right now, start collecting links to interviews and press releases from developers. They will come in handy when you start planning.

In case Wikipedia is not enough, we have several Steam statistics aggregators. For example, [Steam Spy](https://steamspy.com/).

## Marketing strategy

/// brigid-images
src = "./images/marketing.png"
caption = "Expected marketing activities. Very large expenses are highlighted in green, just large in yellow. There are no small expenses in marketing."
///

One more important thing to do before preparing the financial model is to outline marketing activities. In our time marketing takes half of the development budget, if not more.

I'll skip general thoughts on building a community, finding players, and similar things. Firstly, there are a couple of related slides in the presentation. Secondly, it is a well-known and popular topic, there are plenty of materials on the internet. I even have a [small essay]{post:@choose-nearest-language:the-game-community-from-the-point-of-view-of-an-independent-game-developer} about my experience. Plus, in my opinion, all these considerations are more about marketing philosophy (who and where to look for) than about real expenses (how many players to look for and how much to pay for them). Here we are interested in how much to pay.

In the context of marketing, two things are important to us.

**Firstly**, key events for which we will prepare marketing activities:

- Early Access release.
- Exit from Early Access.
- Releasees of DLCs.

**Secondly**, the types of this activity, for us it is:

- Releasing a supporting video.
- Attracting new players.
- Returing old players.

/// note | Let's go back to strategy planning for a moment
For my game I decided to split DLCs into two types: paid and free, and alternate them.

Paid DLC should be cool, it takes longer to make, and most likely, the share of work for programmers in it will be greater than for game designers, because it will contain new mechanics.

Therefore, between the release of paid DLCs, we can release simpler free ones. They will retain the interest of old players, enrich the base game, attract new players, and, of course, keep the game designers busy.

If you look at the chronology of events in the final financial model, you can see that players will see the release of a DLC every two months. But for developers, these will be cycles of four months. The development of two DLCs will start simultaneously, the free DLC will be prepared for 2 months, and the paid one for 4, after which the team will move on to the next iteration.
///

In the rest, our focus should be visible from the table:

- For Early Access, we shoot gameplay videos and spend "a little" on attracting hardcore strategy players to forge a core community.
- On the exit from Early Access, we shoot a cool video with the idea of the game and spend a lot of money on attracting a wide audience.
- On the release of free DLCs, we return old players and spend a little on attracting new ones focusing on the features of the DLC. For example, if the DLC is inspired by X-Files, we may launch a company aimed at fans of the series.
- On the release of paid DLCs, we shoot a video about the idea of the DLC and aim spendings at our community and a little at new players.

## Financial model

Finally, we can get to the most interesting part — counting money.

You can find the spreadsheet with the calculations [here](https://docs.google.com/spreadsheets/d/1QmU-hp3VN0OsWIZEhlfJnJpUrC9J6nI8KKq-0wHFOMw/edit?usp=sharing).

It contains two sheets:

- A detailed monthly calculation — for us and for the convenience of modeling.
- A brief excerpt from the first sheet — a slice of the most important parameters at key points in development — for investors and a beautiful presentation.

The second sheet is built automatically based on the first one.

The model is built till the release of the fourth paid DLC, but it is calculated for a slightly longer period — until the end of the fourth year of development.

I will describe the first sheet, it contains 65 rows. The calculation goes from top to bottom, left to right, so I will just describe all the rows in order.

I will not write down the formulas, you can find them in the original table, but I will describe the idea of the calculation if it is not trivial.

I split the description into sections by the proximity of the data. In the table, they are distinguished by the background color.

So, let's go.

/// attention | Look at the model through the eyes of an internal skeptic
A lot of input values in this model are taken not from statistics and reports but from the opinions of experts (e.g., school teachers), my common sense, and other not necessarily the most reliable sources.
///

### Header

`[1] Year` — Color differentiation of the years of development for easy navigation.

`[2] Month` — The ordinal number of the month, also for navigation.

`[3] Milestones` — Important events in the life of the game. Each event usually changes the parameters of the financial model. For example, when starting the development of the Beta version, we increase the size of the team.

/// note | The events in the `Milestones` row are important for investors
We select columns for the second sheet based on the presence of values in the `Milestones` row.
///

### Base game sales

`[4] Standard Edition Price $` — The price of the base game at the release. We choose it balancing our greed and the price of beacon games on their release.

`[5] Delux Edition Price $` — The price of the deluxe version of the game. For players who want to spend a little more money on the game. We choose it a little bit higher than the price of the base game.

`[6] Game Purchases / Month` — The expected number of organic purchases per month. From the echoes of marketing, community building, and other activities.

/// warning | Warning!
If you have done nothing in marketing and community building before the releases, then you will have 0 here.
///

`[7] Game Purchases Boost `— The number of game purchases we expect from our marketing efforts. This parameter is not calculated, but set. **The reasons for choosing this approach and its alternatives will be discussed a little later** when we get to the marketing spending calculations.

/// attention | These numbers will easily eat half of your budget, if not more
The more purchases, the more profit, but the bigger the marketing costs. Marketing costs go before profit, so they increase the amount of money you ask from investors, thus reducing your share in the result.
///

While deciding on this number, consider:

- How much money you can get from the investors.
- How many players in the chosen genre on the chosen platform. In my opinion, even 10% of the target audience is a successful success, aim at 1% or less.

Also note that your marketing will be tied to specific events. That is, you will pour a lot of money into a specific month, and then maintain some minimal activity to pick up the tail.

`[8] Game Purchases Boost Tail` — Players who will purchase the game as a tail/echo of your marketing activities. Calculated as `1/3` of the effectiveness of marketing in the previous month. I took `1/3` by eye from SteamSpy charts (how quickly the audience growth rate decreases).

`[9] Game Purchases / Month` — The total number of purchases of the base game per month.

`[10] Total Game Owners` — How many purchases will be made over time, including this month.

`[11] Delux Edition Purchases %` — The share of purchases of the deluxe version of the game. I estimated it as a modest `5%`.

`[12] Standard Edition Purchases` — The number of purchases of the base game per month.

`[13] Delux Edition Purchases` — The number of purchases of the deluxe version of the game per month.

`[14] Standard Edition Revenue` — How much players will pay for the base version per month.

`[15] Delux Edition Revenue` — How much players will pay for the deluxe version per month.

`[16] Game Revenue`— How much players will pay for both versions per month.

`[17] Total Game Revenue` — How much players will pay for both versions over time, including this month.

### DLC sales

All paid DLCs are described within the same logic, so I will only describe the rows of the first DLC.

`[18] Paid DLC 1 Convertion Rate` — Our estimate of the share of base game owners who will buy the DLC. I took the estimate by googling the news, but there is not much information. `30%` conversion is an ambitious goal.

`[19] Paid DLC 1 Purchases` — The number of players who will buy the DLC per month. There is a slightly confusing formula, but its essence is to count both old and new players coming each month, and not count people twice.

`[20] Paid DLC 1 Price` — The price of the DLC. We balance between greed, industrial standards, and your idea of the volume of the DLC. To determine the acceptable price range, I just looked at the prices of Paradox DLCs. Plus, the first DLC is expected to be smaller because it will be the first and it will take some time to solve inevitable technical problems. Therefore, the price should be lower.

`[21] Paid DLC 1 Revenue` — The expected revenue from the sale of the DLC per month.

`[22] Total Paid DLC 1 Revenue` — The expected revenue from the sale of the DLC over time, including this month.

/// note | Parameters of the next DLCs will differ
- By the date of the release;
- By the price. I see reasonable to vary the price of DLCs cyclically.
- By the expected conversion rate. I have no data, but I expect that is should reduce with time. In my case I decrease it from `30%` to `20%` over time.
///

### Calculating the money we'll receive from Steam

Of course, not all money from the players will end on our bank account. In this section we estimate how much money we'll actually see.

`[38] Raw Gross Revenue` — The total revenue from the sale of the base game and all DLCs per month.

`[39] Expected Discounts Loss` — The expected "losses" from discounts on Steam.

/// note | How we account for discounts
There may be two approaches to calculating effects of discounts.

1. We consider purchases on discounts as a separate type of purchase, like DLCs. In theory, especially if you have access to statistics, this will give more accurate results. The downside here will be a significant increase in the size of the table.
2. We turn to expert opinion, which says that we will "lose" `X%` of potential revenue because of discounts. Since we have no access to secret statistics, but we have school experts, this is our way.

I write "lose" in quotes because it is not an actual loss. It is more an aquisition of new players who would not buy the game at full price. But we will use the term "lose" because it is more suitable for the calculation logic.

So, as I understand, in the long run on discounts the game can "lose" up to `50%` of the potential revenue. But we will not have such large discounts right away. Therefore, I estimated the growth of losses on discounts from `20%` to `50%` with a half-year step.
///

`[40] Raw Gross Revenue - Discounts` — Our revenue after accounting for discounts.

`[41] Steam Fees` — The standard `30%` Steam fee.

`[42] Revenue After Steam Fees` — Our revenue after the Steam fee.

`[43] Total Revenue After Steam Fees` — Our ongoing revenue after all losses and fees including this month.

### Spends on development

The part of the model for which we spent so much time calculating the roadmap and team composition.

`[44] Team Size` — The number of people in the team.

`[45] Average Gross Sallary $` — The average salary of a team member.

/// note | Should we specify salaries per position?
I do not see any reason to do this.

Not always, but often, it’s easier to adapt the roadmap and even the product concept to the team, rather than build a team around the product. For example, when I worked on [The Tale](https://the-tale.org), I changed the style of the game from humorous to serious because I met game designers who were great at serious texts. In the case of large projects, this is not so relevant, but still worth considering.

Exaggerating, you do not know who you will hire. A cool motivated specialist can turn your entire development in a completely new and cooler direction just because of their experience and unique vision. Dismissing such an opportunity is not worth it.
///

`[46] Sallary Indexation` — Salary indexation. I think almost no one includes this but in vain. In my opinion, this should be an obligatory element of the agreement today. So to say, an element of work ethics.

`[47] Final Sallary` — The final average salary with indexation.

`[48] Team Cost` — The total cost of the team per month.

/// note | In reality, the team costs will be higher.
Maintaining an organization leads to a huge number of indirect costs: office, accountant, lawyer, etc.

I have not included these costs in the model. It is not clear for which country to count them, nor for which configuration of the team (remote, office, mixed, b2b or hiring, etc.). At the time of creating the model, it was not clear whether a separate company would be created or not.

**It is a drawback of our financial model.** But compared to the size of the marketing costs, the "forgotten" amount will be small.

Ideally, we should have pulled up some statistics, consulted experts, and stated that “on average, maintaining company operations costs `X%` of the payroll budget.”
///

`[49] Average Outsorce Staff` — The number of outsourcers we will work with. My "expert" estimate: something will always be outsourced, but it is not clear to what extent, most likely in a small one, so `1`.

`[50] Average Outsource Cost` — The expected cost of one outsourcer per month. The logic is the same as with the average team salary.

`[51] Outsoursing Cost` — The total cost of outsourcing per month.

`[52] Development Cost`— The total cost of all development per month.

`[53] Total Development Cost` — The overall cost of all development since the beginning of time, including this month.

### Calculating marketing

Let’s take a break from the table and think about how we’re going to calculate the marketing budget.

/// attention | Estimating the effect of marketing activities through the number of wishlists
It's currently trendy to calculate conversion rates from Steam wishlists to actual purchases. And then apply them somehow to the future games.

I see here a few of significant problems:

1. By operating with wishlists, we complicate our model. We create two uncertain stages: collecting wishlists and converting them into purchases. The behavior of our product, Steam, and players at each of these stages is weakly predictable, a.k.a. random. In my opinion, a model with two "random" parameters will give worse results than a model with a single "random" parameter that we'll use.

2. Steam and gamedev in general are very dynamic environments. Any Steam update can easily shake complex models. For example, they recently improved the support of game demos, as a result, the logic of promoting games has changed, and the `New & Trending` section is now full of demos instead of full games. Accordingly, if you had data on the cost of wishlists in previous years, they may be no longer relevant.

3. I've not found reliable statements about the "cost of adding a game to the wishlist", and the conversion rates from wishlists to purchases can vary by a factor of 1.5-2. Moreover, the estimates will differ for different genres, styles, and sizes of games. There are not so many statistics for strategies, rather not at all, because there are not so many strategies.

4. Based on what I've seen on the internet, all the fuss with wishlists looks like another hype about another silver bullet that will solve everything.
///

In our model, we will choose a simpler and more reliable approach — we will estimate the cost of attracting a single player to purchase the game, a.k.a. `CPI` — `Cost Per Install`. Don't confuse it with `Cost Per Impression`, in this post we will only talk about installs.

`CPI` for Steam is as vague as conversions to wishlists and from them, but:

- It is a single parameter, not two. Less effect of error accumulation, no temptation to adjust the parameters to each other.
- `CPI` is easier to estimate. It is enough to know the marketing budget and the total number of game sales. We got this information when we were looking for beacon games.
- `CPI` is a global inertial phenomenon, it is less inclined to change unexpectedly, usually ~~it only increases~~ follows long global trends.
- An estimate of `CPI` may be more accurate than conversions to/from wishlists, because it is directly and rigidly limited by the market: budgets, people's willingness to engage in advertising, etc. Companies that do bad marketing leave the market. If we use data from successful products, we should get a relatively realistic estimation of `CPI`.

`CPI` for the base game we will estimate simply:

- The marketing budget for beacon games is taken as half of their revenue.
- By dividing the marketing budget by the estimated number of purchases, we get `CPI`.

Out `CPI` (for the base game) is set approximately as an average between beacon games. Additionally, I want to note that we have set lower sales than beacon games have, so our `CPI` may be slightly lower. `CPI` grows as the target audience is covered, as it becomes more difficult to find new players

### Marketing costs

So, let's return to the biggest are of our spendings. According to the final calculations of our model, by the release, we will spend `2.5` times more on marketing than on development :-D

/// note | I may have underestimated the number of marketers in the team
Given the size of the budgets, there may be more marketers required. On the other hand, we can try to outsource all marketing and limit ourselves to the lead of marketing in our team.
///

`[54] Marketing Ongoing Cost` — An estimated cost of minimal permanent monthly activity for "light" PR of the game to stay on the radars.

`[55] Marketing Videos Cost` — The expected cost of developing videos for concrete events (releases). The cost of a minute of video can be relatively easily googled. Or you can even ask for price lists from companies that do this.

`[56] Marketing New User Cost` — The expected cost of attracting new players — `CPI`.

`[57] Marketing Old User Cost` — The expected cost of attracting our players to purchase DLCs.

/// attention | Attention, great uncertainty
This is our key constant, as we have chosen to monetize through the sale of DLCs.

The problem with it is that, unlike `CPI` for the base game, it is unclear how to estimate `CPI` for DLC. Fluctuations in this value strongly affect the model.

Our model uses an expert estimate, after my conversation with the school teachers.

Also, regading the wishlists conversion, I beliew estimating them for DLCs is even harder, than `CPI`.
///

`[58] Marketing Performance on New Users (Game)` — The cost of attracting new players to the game, per month.

/// note | Direction of calculations
We can calculate marketing in two directions:

1. We ask investors for `X$` per month for marketing, based on `CPI` we will attract `Y` players.
2. We want to attract `Y` players, so based on `CPI` we will ask investors for `X$` per month for marketing.

I chose the second option, but rather for personal convenience than because it is more correct. Look at your preferences and what you want to get from the final model, what levers you want to twist.

For me, the lever to change the number of sales (game owners) looks more natural.
///

`[59] Marketing Performance on Old Users (DLC)`— The cost of attracting our players to purchase DLCs, per month.

`[60] Marketing Month Cost` — The total cost of marketing per month.

`[61] Total Marketing Cost` — The overall cost of marketing since the beginning of time, including this month.

### Expected profits

The most important part of our table — the result of all our work, research, and calculations.

`[62] Month Costs` — All costs per month.

`[63] Total Costs` — The overall costs since the beginning of time, including this month.

`[64] Month Gross Revenue` — Our revenue per month, after all incomes and costs.

`[65] EBITDA`— [EBITDA](https://en.wikipedia.org/wiki/EBITDA) as it is — our money before removing indirect costs (taxes, ammortization, interest, etc). This parameter is important for investors.

## What to do after the financial model is finished

After you enter the last formula, stretch the columns for the required number of months, color everything, you will look at the final numbers and see that there is some unprofitable crap. Or, conversely, very suspiciously profitable.

It means beginning of the most interesting stage of setting up the model, when you twist a bunch of levers (constants in the table), play with the volume of work, tune the size of the team to get a picture that will be convincing for you, your team and for investors.

Have Fun!

## How much time did it take to develop the business plan

Instead of a conclusion, I will provide statistics on the time that these documents took from me.

Of course, this is an approximate time, because I did not do this work full-time.

- **Short strategy of the company** — You develop strategy not at some specific moment, but all the time while working on ideas, concepts, presentations and so on. Later you just write down the information that already sits in your head.
- **Table of beacon games** — ±2 days. I spent a lot of time trying to understand what to search and how to search. When I figured it out, it went quickly.
- **Team composition** — less than a day. The basic composition should be well visible from the Roadmap.
- **Roadmap** — ±2 days.
- **Outlines of marketing strategy** — Here are the same considerations as with the company strategy.
- **Financial model** — ±3 days, the idea of calculations changed several times. If you take a ready-made model, it will be much faster.

That’s all for now. Thank you for your time, and best of luck in game development!
