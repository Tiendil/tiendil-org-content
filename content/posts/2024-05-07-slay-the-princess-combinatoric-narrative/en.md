---
title = "«Slay The Princess» — combinatorial narrative"
tags = ["theory", "practice", "gamedev", "game-design"]
published_at = "2024-05-07T12:00:00+00:00"
description = "I'll share a couple of thoughts about «Slay The Princess» and the narrative structure in this game, while I'm still under the impression."
seo_image = "./images/cover.jpg"
---

/// brigid-images
src = "./images/cover.jpg"
caption = "My favorite version of the Princess."
///

It's hard to impress me as a player and even harder as a game developer. The last time it happened with [Owlcat Games](https://owlcat.games/) in [Pathfinder: Kingmaker](https://store.steampowered.com/app/640820/Pathfinder_Kingmaker__Enhanced_Plus_Edition/), when they added a timer to the game's plot.

But [Black Tabby Games](https://blacktabbygames.com/about) managed to do it. And they did it not with some technological complexity, but with a visual novel on a standard engine ([RenPy](https://www.renpy.org/)), which is cool in itself.

I'll share a couple of thoughts about the game and the narrative structure in it, while I'm still under the impression. I need to think about how to adapt this approach to my projects.

**ATTENTION: SPOILERS!**

If you haven't played [Slay The Princess](https://store.steampowered.com/app/1989270/Slay_the_Princess/) yet, I strongly recommend you to catch up — the game takes 3-4 hours. You'll not regret it.

<!-- more -->

## Sequence of interesting choices

I started the draft of this post with the thought that «Slay The Princess» is not a game, but an interactive experience. But in the process, I realized that I was wrong. There is an interesting nuance with «The Princess».

For example, let's take [Sid Meier's](https://en.wikipedia.org/wiki/Sid_Meier) definition that a game is a sequence of interesting choices.

Usually, I interpreted it as a "sequence of interesting game-mechanical choices" — choices that affect the state of the game in an interesting for a player way. I assume that most developers implicitly do the same.

There are almost no such choices in «Slay The Princess». And you can't "lose". The developers even warn you about it in a tricky way at the start of the game.

The choices made by the player in the first 99% of the game have little effect on the course of it and do not affect the ending in any way. There are a few exceptions, but they only confirm the rule. All significant choices for the ending occur in the last 5-10 minutes.

If you've read this far and haven't played the game yet, congratulations, killing the Princess will be much less interesting for you.

The choice of the player in «Slay The Princess» affects not the state of the game, but the state of the player, what they experience while going to the finale. An important part of this influence is the lack of knowledge of what the choice changes.

So, if we cut the "game-mechanical" part, then «Slay The Princess» is definitely a game, just not a traditional one? non-standard? or just the game as it should be?

It's curious that "mechanically insignificant" choices are not uncommon in games, but rather the standard. They are used in role-playing games, visual novels, CYOA, and other genres — always when you need to influence the player's emotions on the cheap. Usually, it turns out poorly. I've played enough in different genres, but I can count on my fingers when it worked on me.

But in «Slay The Princess», this is the basic mechanic, and it somehow works great.

## Game loops

Mechanically, the game is "simple". There are three cycles:

1. You stand on the road to a forest cabin, enter it, (do not) take a sword, go down to the basement, and do something with the Princess. Usually, as a result, one of you dies, but not always.
2. You repeat cycle 1 about three times, each time the Princess and the cabin change due to your choice in the previous cabin. I'd like to say the Princess is transforming, but in reality, she's being brutally twisted. More on that will be later. At the end of the cycle, the god-like entity Mound takes the Princess, thanks you, erases the character's memory, and returns the player to the beginning of the cycle.
3. You collect 5 Princesses for Mound and get the finale. In fact, this is the full game session.

### The cabin — cycle 1

/// brigid-images
src = "./images/the-cabin-in-the-woods.jpg"
caption = "The first cabin."
///

The first cycle:

- You are placed in context: starting (if you are at the beginning of cycle 2) or the one you created by your choice in the previous cabin.
- You should solve a moral dilemma in conditions of uncertainty: kill the Princess or not.
- Mechanically, it is organized as a classic visual novel: you go through a couple of locations, choose dialogue options, etc.

During the first playthrough, a player most probably won't be sure if they should kill her, if it is fair, and how this killing will affect them and the world. A player is put in a situation of complete uncertainty where everyone ~~lies~~ doesn't tell the whole truth, and a player should restore the general picture from reservations, insinuations, and own imagination. This mini-detective, by the way, deserves special praise, I haven't been so confused in a long time :-D

It turns out that on each iteration of the basic game cycle, the player is not given trivial tasks like "kill 100500 boars" but is forced to solve a moral dilemma about the central element of the game, its [cornerstone](https://en.wikipedia.org/wiki/Cornerstone). The Princess, in the end, is brought to the title of the game. Everything is about the Princess, even you — the player — is about the Princess.

It is important that you cannot repeat the choice in the same situation. If you intentionally missed with a dagger at the Princess once, you will have to kill her the second time in the same situation.

Firstly, at the beginning, it leads to something like moral dissonance when a player is forced to go against what they think is right at the moment.

Secondly, it forces you to plan your actions more carefully at the level of the game session.

Also, a killing or saving the Princess does not affect anything except your inner state. But you will learn about it only post factum. Somewhere in the middle of the game, Mound will hint you that your choices of princesses do not affect anything in the spirit of "it's not about that," but in the conditions of narrative paranoia, this hint personally for me changed little, and the logic of what is happening says that choices should affect something.

### Princesses as psychological archetypes — cycle 2

/// brigid-images
src = "./images/princesses.jpg"
caption = "Princesses, official art."
///

I'm not a psychologist, so I can make mistakes in terms.

As I said, the essence of cycle 2 is that you change the Princess with your interaction with her.

A completion of the cabin leaves a mark on the poor thing: sometimes "bad," sometimes "good." This mark makes her as an embodiment of one of the psychological archetypes: Rage, Anger, Love, Betrayal, Power, Thrill, and so on, there are many of them. Archetypes are written with a capital letter because these are not minor changes, they fully rewrite reality: the Princess changes visually, her manner of communication changes, her voice changes, the cabin changes.

I want to give a separate respect to the developers for the systematic complete rewriting of the Princess — it's cool.

In a new cabin, a player has to decide what to do with the consequence of their moral choice in the previous one:

- What should I do with the Betrayal I committed?
- Should I destroy the Hope I gifted?
- Should I extinguish the Passion I ignited?

A journey through the cabins invariably ends with a kind of [catharsis](https://en.wikipedia.org/wiki/Catharsis), after which Mound takes your unique, hard-earned Princess, and you return to the first cabin.

Cycle 2 is essentially a classic branching plot tree (more precisely, [DAG](https://en.wikipedia.org/wiki/Directed_acyclic_graph)).

But, unlike in most other visual novels:

- It is not deep. If we count in cabins, everything is usually solved in 2-3 cabins, but there are more branches: usually, within one cabin, there are several decision points. On Reddit, there is an [almost complete scheme](https://www.reddit.com/r/slaytheprincess/comments/1abndit/slay_the_princess_complete_guide/).
- With sharp transformations in decision nodes. For example, even the first choice in the first cabin "take or not take the sword" leads us to different Princesses.
- With blocked paths due to your previous choices.

### Combinatorial narrative — cycle 3

/// brigid-images
src = "./images/mound.jpg"
caption = "Mound."
///

If we count [by princesses](https://slay-the-princess.fandom.com/wiki/The_Princess), there will be 20 variants of the second cycle.

In reality, there are more, because the Princesses can transform into each other, but it is not easy to count the full number of paths through the second cycle, and princesses will not repeat. So we can stop at a minimum of 20 — it will be more than enough for our purposes.

We remember that the player needs to collect 5 Princesses, aka pass second cycle 5 times.

Given the general misunderstanding of what is happening in the plot, we can assume that players will "open" different princesses and do it in a different order. Of course, there will be some patterns in the spirit of "many will try the most violent approach," but in general, this process looks quite random.

Let's remember [combinatorics](https://en.wikipedia.org/wiki/Combinatorics) and find the number of [arrangements](https://en.wikipedia.org/wiki/Permutation#k-permutations_of_n) without repetition of 5 out of 20 elements.

```
n!/(n-k)! = 20! / (20-5)! = 20! / 15! = 16*17*18*19*20 = 1860480
```


In total, we have a minimum of 1860480 variants of a deeply personal experience for players — based on "strong" choices of "life vs death," "trust vs lie."

In other words, **the game gives more than 1.8 million ways to lead the player through psychological states** (Rage, Anger, Love, etc.)

Again, such combinatorics are not an unique feature of «Slay The Princess. Most RPGs do the same: go do quests at point A, then at point B or, if you want, vice versa, first at B, then at A. Add a couple of such points, let someone be saved or killed there, and you will also receive some "uniqueness" of the experience with "strong choices," but it will not work as effectively.

## Известное неизвестное

Механически игра выглядит просто, мне кажется я понимаю как она устроена, но от этого передо мной становится только больше вопросов:

- Почему при подобной простоте, так мало игр достигает такой эффективности в воздействии на игрока?
- Является ли успех игры следствием успешного/правильного сочетания стандартных механик или есть ещё что-то неочевидное?
- Какие механики в «Slay The Princess» являются обязательными, а какие можно удалять или менять?
- Что первично для успеха: проведение игрока по психологическим состояниям, комбинаторика под сюжетом или оба фактора равнозначны?
- Можно ли добиться такого эффекта с более приземлёнными выборами игрока?
- Можно ли добиться такого эффекта с меньшей проработкой изображений и озвучки?
- Можно ли добиться такого эффекта без ограничения информации, доступной игроку?
- Насколько важным является быстрое путешествие игрока по психологическим состояниям? Можно ли растянуть это путешествие на 20-30 часов?

Ответов пока не знаю. На мой взгляд, соль может быть как раз в быстром проведении игрока по ярким крайним психологическим состояниям, но я пока не уверен на сколько это важно.

## Интересные фишки игры

После посещения избушки меняется не только принцесса и реальность, но и персонаж игрока. У него в голове появляются отдельные голоса, которые соответствуют произошедшему. Например: Влюблённый, Параноик, Беспомощный, etc.

Игрок — «герой» (как Принцесса — «принцесса»), но не человек, а довольно стрёмное существо. Принцесса тоже не всегда человек, но всегда начинает человеком и строится вокруг человечности. Нечеловечность героя принцессу не волнует, но начинает волновать игрока, когда он её замечает. В некотором роде она рушит стереотип «героя, который спасает принцессу».

/// brigid-images
src = "./images/the-hero.jpg"
caption = "Игрок."
///

В финале игрок может «поспорить» со своими принцессами.

При старте игры, разработчики говорят, что она о любви. Не врут.


----
TODO:

- check a/the
- check player/you
