---
title = "Simulating public opinion in a game"
tags = [ "theory", "practice", "development", "gamedev", "game-design", "open-source", "procedural-content-generation", "world-builders"]
published_at = "2024-04-24T12:00:00+00:00"
description = "I made a technical prototype of a sandbox about manipulating public opinion. Telling how it works, there is a video and sources."
seo_image = ""
---

/// brigid-youtube
id = "nP8OOWgnjdI"
caption = "(In Russian) Demonstration of a technical prototype of manipulating public opinion and explanation of how it works."
///

I continue participating in [World Builders]{tags:world-builders} school, for the last month I've created a technical prototype of game mechanics for manipulating public opinion.

You play as the chief editor of a news agency, who sends journalists on quests and publishes articles based on the results of investigations with a focus on themes that you want to promote.

- [Prototype](https://tiendil.github.io/world-builders-2023/technical-prototype/dist/)
- [Sources](https://github.com/Tiendil/world-builders-2023/tree/main/technical-prototype)

Top video is in Russian, so I'll go through the main points below.

<!-- more -->

## Game mechanics

The city's population is represented by a list of "important" residents — NPCs. You can perceive them as influencers or as personalized representatives of small groups of the people.

Each NPC has a "followers" parameter that reflects how many people this NPC represents.

NPCs are described by a set of perks, like "strong", "works as a police officer", "witch", etc.

Perks affect the game in two ways:

- They determine the basic characteristics of an NPC. Characteristics, in turn, affect how an NPC passes the "challenges" that arise before them.
- They determine social slices, about which an NPC can think something. For example, an NPC may have a negative opinion about police officers and a positive one about witches.

### Narrative arcs

A narrative arc (in the context of the prototype) is a typical linear plot that its participants go through.

Each NPC must participate in at least one arc. Better in several.

The arc is divided into stages, to move between which it should collect enough points according to the specific rules for it.

Examples of arcs.

The arc of lovers. Stages: acquaintance, love, wedding. Arc points are earned if its participants simultaneously have a good attitude towards each other. Not necessarily directly. For example, an NPC 1 may have a good opinion about women who play football and if an NPC 2 is a woman and plays football, it counts.

The arc of a burnt-out police officer. Stages: work, stress, nervous breakdown. Arc points are earned when the negative public opinion about the police is stronger than the positive.

Arcs determine what events can happen in the city. A wedding can change some perks of the participants, and a burnt-out police officer can shoot someone.

### Investigations and publication of materials

When an event occurs in the city, the player can send their employees to investigate it. Employees are the same NPCs, so, for example, you can investigate an event about your colleague or get into trouble because the journalist didn't like the tone of the last publication.

Each investigation is a sequence of challenges (checks) that a journalist must pass to gather enough information for publication.

The probability of passing a challenge is determined by the characteristics of the journalist.

When the investigation is completed, a material is created:

- Several themes are selected that will be covered in the material. Themes are determined by the perks of the NPCs involved in the event. For example, an article can be about witches, police officers, a specific NPC, an organization, football players, etc.
- For each theme, a basic connotation is selected (positive, negative, neutral). In the prototype, this happens randomly, in the game, the preferences of the journalist should influence connotations.

A player (chief editor) can change the connotations of themes, but only a limited number of times. The number of changes depends on how many challenges the journalist successfully passed during the investigation.

When editing is complete, player publishes the material and it affects public opinion: a random fact from the material with a positive or negative connotation is recorded in the memory of each NPC.

Thus, the publication changes public opinion, which is the sum of the opinions of all NPCs.

The mechanics of connotations, in addition to influencing public opinion, creates additional challenges for the player:

- It is necessary to choose who to send to investigation, so that the final material is not difficult to edit in the required direction.
- It is necessary to compromise in edits, because it is impossible to correct all connotations and you will have to choose what to sacrifice, whom to offend.

As a result, we get a cycle:

- Arcs produce events specific to the current situation in the city.
- Players investigate events and affects public opinion.
- Public opinion affects the arcs.

I expect that such a cycle will create an unique dynamic experience for the player in each game session. Of course, if there are enough diverse arcs.

## Technical notes

- Prototyping in the modern frontend is fun. Especially things without dynamics and complex graphics. It's ideal if you need to quickly create a lot of interfaces.
- TypeScript is better than JavaScript, but the heavy legacy is still there and still causing suffering :-) But tolerable.
