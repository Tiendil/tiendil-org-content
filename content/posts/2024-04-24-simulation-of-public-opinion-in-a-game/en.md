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

### Расследование и публикация материала

Когда в городе происходит событие, игрок может направить своих сотрудников расследовать его. Сотрудники — такие же NPC, поэтому, например, можно расследовать событие о своём работинке или получить проблемы из-за того, что журналисту не понравился тон последний публикации.

Каждое расследование — это последовательность вызовов (проверок), которые должен пройти журналист, чтобы собрать достаточно информации для публикации.

Вероятность пройти вызов определяется характеристиками журналиста.

Когда расследование завершено, создаётся материал:

- Выбирается несколько «тем», которые будут освещены в материале. Темы определяются перками участвующих в событии NPC. Например, статья может быть про ведьм, офицеров полиции, конкретного NPC, организацию, футболистов, etc.
- Для каждой темы выбираются базовая коннотация (положительная, отрицательная, нейтральная). В прототипе это происходит случайно, в игре на это должны влиять предпочтения журналиста.

Игрок (главный редактор) может поменять коннотацию тем, но ограниченное количество раз. Количество изменений зависит от того, сколько испытаний журналист успешно прошёл во время расследования.

Когда редактирование завершено, материал публикуется и влияет на общественное мнение: в память каждого NPC записывается случайный факт из материала с положительной или отрицательной коннотацией.

Тем самым, публикация изменяет общественное мнение, которое является суммой мнений всех NPC.

Механика коннотаций, кроме самого влияния на общественное мнение, даёт ещё несколько вызовов для игрока:

- Необходимо выбирать кого отправлять на расследование, чтобы итоговый материал было не сложно отредактировать в нужную сторону.
- Необходимо соблюдать компромисс в правках, так как исправить все коннотации не получится и придётся выбирать чем жертвовать, кого обидеть.

В итоге получаем цикл:

- Арки формируют события, специфичные для текущей ситуации в городе.
- Игрок расследует события и двигает общественное мнение.
- Общественное мнение двигает арки.

По задумке, это должно приводить к уникальности каждой игровой сессии. Конечно, если будет достаточно разнообразных арок.

## Технические заметки

- Прототипировать на современном фронте удобно. Особенно штуки без динамики и сложной графики. Идеально, если быстро надо накидать много интерфейса.
- TypeScript лучше JavaScript, но тяжёлое наследие тянется и всё ещё приносит страдания :-) Но терпимо.
