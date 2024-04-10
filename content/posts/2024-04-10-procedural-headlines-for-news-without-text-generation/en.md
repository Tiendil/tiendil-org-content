---
title = "Procedural news headlines without complex text generation"
tags = [ "practice", "development", "gamedev", "game-design", "procedural-content-generation", "world-builders"]
published_at = "2024-04-10T12:00:00+00:00"
description = = "I came up with a way to generate news headlines in my game prototype without complex text generation."
seo_image = "./cover.gif"
---

/// brigid-images
src = "./cover.gif"
caption = "A screenshot of the interface for selecting a connation of news from a prototype of a game about a news agency. News: the arrest of a teenage witch for drunk driving."
///

From the [player preference survey](post:making-a-fictional-universe-quantity-survey-processing) I gradually moved on to working on a game prototype.

The game will be about a news agency, where you are the chief editor, and your task is to manipulate public opinion by investigating events and choosing a [connotation](https://en.wikipedia.org/wiki/Connotation) of news: where to draw the public's attention, what to hide, in what tone to present topics, etc.

Therefore, all the actions will be around the text of the news.

At first glance, it can be said that creating large blocks of detailed text for each news item is pointless — the game is not about reading news, but about managing them. Therefore, it makes sense to build interaction only around headlines.

But how to make the display of news both interesting and simple?

<!-- more -->

## Problems

A huge flow of news will pass through the player. I expect 5-10 news per a "game day" and possibly a couple of thousand per a game session.

Therefore, a lot of problems arise.

Generating meaningful text in traditional ways is either too difficult (see my [Russian language template engine](https://github.com/the-tale/utg) for [The Tale](https://the-tale.org/)) or the result will be too boring. Not to mention the difficulties of adapting templates for multiple languages.

Using [Large Language Models](https://en.wikipedia.org/wiki/Large_language_model) is still expensive and complex. In theory, it would be possible to pre-generate all possible headlines with LLM, but the variability is too large (=> too costly), you will have to deal with prompt engineering, maybe even fine-tune LLM. Plus, there are still more problems mentioned below. But in a couple of years, LLM would be my choice.

Strategy players usually don't look at the lore. At best, they will pay attention to it in the first game session and forget in the next ones. So, making rocket science in this part of the game doesn't make sense.

Excessive variety of texts will hide important information from the players.

## Solution

I thought a little and found an interesting approach, the implementation of which you may have noticed in the gif above:

- Randomly insert names of news topics (with a connotation other than neutral) into the headline.
- Color each topic in a color specific to the connotation. In our case, red for a negative attitude towards the topic and green for a positive one.
- Insert cute blocks of gibberish Unicode characters between the words.

As a result, we get "win-win":

- A very cheap and simple approach.
- A player always clearly sees the important elements of the news. Black blocks are easily filtered out, especially after a short period of getting used to them.
- The player's imagination is turned on. Everyone will subconsciously substitute the necessary words depending on the situation in the game, the news, and their mood.
