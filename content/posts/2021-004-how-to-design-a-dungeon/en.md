---
title = "How to design a dungeon"
tags = [ "gamedev", "game-design", "theory", "interesting", "best", "world-design"]
published_at = "2025-03-04T12:00:00+00:00"
seo_description = "Recommendations for creating game dungeons: how to look at a dungeon from a player's perspective, what to pay attention to when developing."
seo_image = "images/how-to-design-a-dungeon-cover.jpg"
---

/// brigid-images
src = "images/how-to-design-a-dungeon-cover.jpg"
caption = "Source: [Pinterest](https://www.pinterest.com/pin/559994534913996418/?)"
///

A lot of people come to the post [about dungeon generation](post:dungeon-generation-from-simple-to-complex) when looking for a lesson on designing a dungeon, not programming it. For a [DnD](https://en.wikipedia.org/wiki/Dungeons_%26_Dragons) session, for example.

To ensure no one feels left out, here are some recommendations on the topic. The recommendations are suitable not only for dungeons but also for developing any location.

I also recommend reading my other essays on game design:

- [About creating names]{post:@choose-nearest-language:about-names-creation}
- [About world building]{post:@choose-nearest-language:about-worlds-building}
- [The next frontier of game design]{post:@choose-nearest-language:next-gamedesign-frontier}

The last essay is more about designing computer games, but it contains some important thoughts I will use in the future.

<!-- more -->

## Why do you need a dungeon?

Necromancers need a dungeon to create undead, conduct experiments on people, and, possibly, to live happily.

A mad scientist needs a dungeon as a scientific laboratory.

Thieves need a dungeon as a treasure trove and a place to plan future operations.

Rulers need a dungeon to keep criminals in it.

You, as a game designer or game master, don't need a dungeon for any of these reasons. Nor do the players need it for something like that, even if they think otherwise. Of course, unless you are a mad scientist or a vampire.

In a game, **a dungeon is a tool for creating the necessary experience for players**. Like any other location.

The specific type of experience depends on the game and the players. Do you want to entertain them? To puzzle, to teach, to strain, or to scare? Maybe even all of the above plus a little more.

Most likely **you want to create a chain of experiences and impressions**, something like this:

1. Intrigue players near the entrance to the dungeon.
2. Immerse them in an atmosphere of uncertainty.
3. Deceive them.
4. Put the characters on the brink of life and death.
5. Relieve tension with a bit of humor.
6. Teach them to solve chess problems.
7. Put them before a moral choice.
8. Again on the brink of life and death.
9. Remind them that every decision has consequences.
10. Reward (or not) for their efforts.

To build such chains correctly, you need to know a little psychology, scriptwriting, and, of course, your players. Here I can't give much advice.

But I can definitely say that **the structure of your dungeon should be determined primarily by the desired sequence of experiences**.

If we have a "story" that we want to tell with a dungeon, then we must build it so that the story is told sequentially. If we mix up the "sequence of rooms," all our plans will go to waste, and the dungeon will become uninteresting or confusing. In some cases, you may want to intentionally mix up the sequence of narrative elements, but this is a separate topic.

## Dungeon context

We've defined the purpose of the dungeon as the most essential requirement for its structure.

Just as important, though slightly less critical, is ensuring the dungeon aligns with the context in which it exists. **The dungeon should organically fit into the game environment**: corresponding to the game world, the current situation in the game, and the players' capabilities.

In most cases (but not all), it will be a bad idea to lead players:

- into a too-complex dungeon;
- into a lair of a medieval thieves' guild located on a space station;
- into a necromancer's base that looks like a brothel.

Therefore, before creating a dungeon, it is necessary to identify the essential properties of the context, especially:

- The historical period: current and the time of dungeon construction.
- The cultures of the creators and current owners. Both material and spiritual, in case you need to add frescoes or a book, and you will need them.
- The available technologies and resources for its construction and repair: a wooden fort in the desert will look comical.
- The kinds of beings that can inhabit it.
- The stage of the game at which players will enter the dungeon, the desired parameters of their characters.

By the way, it is convenient to record and store such information about game objects in the form of cards with a brief description of the object's properties. Those cards will make your life easier when you need to remember something or create a new object based on the previous one. I talked more about cards in my [post about world building]{post:@choose-nearest-language:about-worlds-building}.

## Living dungeon

If we just throw around rooms with enemies and traps, players will most likely feel the dungeon as cardboard decorations in a theater play aimed at them. This can be beneficial if we make a satirical game, but in most cases, such feelings are not what we and the players would like to get.

Our dungeon will not feel "alive." **Players should see that the dungeon, along with all the rooms and inhabitants, exists for its own purposes, not for the entertainment of travelers**. Moreover, it not only exists at the moment but also before players arrive and may exist after they leave.

In my opinion, the term "living" precisely conveys the essence, although it has a vague formulation. For myself, I have defined more specific criteria for the "liveliness" of the world:

1. Players can learn and understand the rules of the world.
2. Players can predict the future local state of the world with reasonable accuracy.
3. Players can determine the reasons for the current local state of the world with reasonable accuracy.
4. Players are not the only source of changes in the world.
5. Entities, such as dungeon inhabitants, influence each other enough to prevent changes from fading — the state of the world does not freeze over time.

The fifth point is more about computer games, but the first four can be applied to everything.

For a dungeon, this means, for example, that its inhabitants are busy with some work, not sitting and waiting for players to come to them. Necromancers sew corpses, guards guard, cooks cook. They also communicate during breaks, write letters to their families, argue, and plot against each other.

It is not necessary, and even harmful, to plan and simulate an "realistic" dungeon life. For example, plan the household logic of each inhabitant and manage them. This is a very costly approach, especially because players will not notice the effort. It is much easier to create the illusion of life.

Such illusion can be achieved in several ways.

### Random events

Players, in most cases, cannot spy on the life of the dungeon, and can only encounter its manifestations while moving through it. Therefore, you can add events that occur when players act in a given context.

For example:

1. When opening the door to the toilet, players can meet a resident of the dungeon who is relieving himself.
2. When visiting the dining room during lunchtime, players can see the crowd of inhabitants eating.
3. By analogy, there can be a lot of sleeping enemies in the barracks at night.
4. Players can listen to opponents' "household" conversations through closed doors.

### Artifacts of life

Beyond life itself, one can also observe its traces. Yes, a pile of $#! in the corner is also a trace of life. By the way, upon a lore check, it might reveal the presence of a troll weakened by a stomach disorder.

Of course, artifacts can be less… lively:

1. Official papers: suppliers' logs, security reports, experiment protocols.
2. Unofficial papers: personal letters, diaries, notes.
3. Traces of active life in rooms: puddles in the bathroom, unwashed dishes, recently ironed linen.
4. Signs of repair.
5. Dust in places rarely visited by residents.

The most important thing to remember: **if there is a plate of hot soup on the table, there must be someone eating it nearby**.

## Anchors

So, we have done a good job and now have a living dungeon that fits into the surrounding world. But something is missing.

Imagine that we have not just one dungeon, but numerous dungeons, cities, villages, hidden groves, and similar locations. All of them are designed according to our rules, placed somewhere in the game world, and players travel between them. Have we forgotten something that may ruin the immersion of players in the game?

From the first sight, it seems that we have not. Players come to city A, do their business there, are sent to the village B, from there to the dungeon C, and so on — further and further along the plot.

But what if players step aside from the plot and look at the world "from the height"? Good players love to do that.

They may see that citezens of city A know only about the village B, villagers know only about the dungeon, and the dungeon inhabitants have not heard of the city or the village — they are busy with their underground affairs. Or, which is also not so good, inhabitants of each of these places know only about the events from the players' adventures, and have not heard of any anything else.

Again, we may notice artificiality, not of a single dungeon, but of the whole world built around the players' story. Of course, the world can be built around the players (often, should), but the players should not notice this little deception.

To hide the terrible truth, **it is necessary to connect the content together, anchor its units: places, people, events — one to another**.

An anchor is a good term — we literally throw something small but tenacious from one entity to another, which allows us to hold them together.

Any trifle can become an anchor:

- a rumor or gossip;
- a piece of a letter mentioning another entity;
- graffiti on a common theme in different cities;
- paintings depicting familiar places or characters;
- characters or organizations appearing in different places;
- an anecdote told in a tavern, repeated everywhere along the path of the tracked spy;
- cause-and-effect relationships between places or characters, when what happens to one affects another;
- news that follows or race ahead of the heroes in their journey;
- direct mentions in conversations of other places and characters, where would we be without them.

## Redundancy

The last, but no less important point I want to address.

The question of the level of detail and depth of content: the game world, characters, locations — is a pressing one even in computer games, which are still mostly linear. In games with a live game master, it is even more critical: players have much more freedom of action, and therefore GM should think through more events, places, characters.

The most important thing: **do not try to think everything through perfectly**. You are one, players are many, their imagination is sharpened to find non-standard moves, so it is impossible to foresee everything. The more things you come up with, the more of them will remain unclaimed. Players will pass them by: instead of a tavern, they will turn into a library, instead of right, they will go left, and so on.

To save effort, **improvise — construct everything possible on the fly from prepared templates**. For example, If you come up with an interesting rumor, do not put it in the mouth of a specific character that players can miss, allow it to be told by any character to whom the rumor fits.

For example, any merchant can tell a rumor about trade, not just a one-legged-one-eyed-one-armed fence of stolen goods in a black dead-end, which is revealed when throwing 20 on perception. Of course, there may and should be unique things that happen only in specially constructed conditions. As always, we should maintain balance.

By the way, about one-legged and one-eyed. **A good way to lead a player in the right direction is to interest him by something he will go to himself**.

There are plenty of simple examples in computer games which rely on this technique heavily. The most obvious examples: quest markers above NPC heads or a giant pillar of light on the horizon.

In non-computer games, such a straightforward approach, of course, will not always work, but the essence is the same: a bard will not refuse to pay attention to a winking elf maiden, a detective will not miss bloodstains on the floor, and a priest will not dare to bypass a suffering.

But **do not break the coherence of the world by trying to limit redundancy**.

Damaged coherence is the flip side of redundancy. If redundancy is about the excess, then damaged coherence is about what's missing or out of sync.

When designing new entities, work out all their important properties — players pay attention to them first.

If there is a fork, then it is important to give the opportunity to go both right and left. If there is a team of builders, there must be a foreman. In prison, there must be guards, prisoners, and the warden. And so on.

Also, it is important to keep track of the consistency of already invented properties. The path going north does not lead to the same place as the one going south. An orc will not become the head of security in an elven settlement. A treasure trove will not be built outside the guarded area of the dungeon. Again, there are always exceptions if they logically fit into the game world and plot.

## Conclusion

You may have noticed that I did not say a word about how to properly arrange rooms in a dungeon or how many guards to put in which room.

In any location, what matters is not a number of rooms, guards, and traps, but the experience and impressions that players take away. It is the desired experience, together with the game world, plot, and rules, that determine the location.

And the number of rooms, guards, and traps can be relatively easily derived from the given constraints.

P.S. This text is a translation of the [original post](post:@lang=ru:how-to-design-a-dungeon) in Russian from 2021.
