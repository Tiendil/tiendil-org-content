---
title = "Procedural news headlines without complex text generation"
tags = [ "practice", "development", "gamedev", "game-design", "procedural-content-generation", "world-builders", "world-builders-2023"]
series = "world-builders-2023"
published_at = "2024-04-10T12:00:00+00:00"
seo_description = "I came up with a way to generate news headlines in my game prototype without complex text generation."
seo_image = "./cover.gif"
---

/// brigid-images
src = "./cover.gif"
caption = "A screenshot of the interface for selecting a news connotation (from the prototype of the game about a news agency). News: the arrest of a teenage witch for drunk driving."
///

Notes on my participation in [World Builders](https://madcrusader.com/worldbuilders):

/// brigid-series
tag = "world-builders-2023"
///

From the [player preference survey]{post:making-a-fictional-universe-quantity-survey-processing}, I gradually moved on to working on a game prototype.

The game will be about a news agency. You will be the chief editor, and your task is to manipulate public opinion by investigating events and choosing a [connotation](https://en.wikipedia.org/wiki/Connotation) of news: where to draw the public's attention, what to hide, in what tone to present themes, etc.

Therefore, the whole game will be around the text of news.

Creating large blocks of detailed text for each news item looks pointless — the game is not about reading news but about managing them. Therefore, it makes sense to build interaction only around headlines.

But how can we make the displaying of news both interesting and simple?

<!-- more -->

## Problems

A massive flow of news will pass through the player. I expect 5-10 news per "game day" and possibly a couple thousand per game session.

Therefore, a lot of problems arise.

Generating meaningful text in traditional ways is either too difficult (see my [Russian language template engine](https://github.com/the-tale/utg) for [The Tale](https://the-tale.org/)), or the result will be too boring. Also, there are difficulties in adapting templates for multiple languages.

Using [Large Language Models](https://en.wikipedia.org/wiki/Large_language_model) is still expensive and complex. In theory, it would be possible to pre-generate all possible headlines with LLM, but the variability is too large => too costly. You will have to deal with prompt engineering, and maybe even fine-tune LLM. Plus, there are still more problems mentioned below. But in a couple of years, LLM would be my choice.

Strategy players usually don't look at the lore. At best, they will pay attention to it in the first game session and forget about it in the next ones. So, making rocket science in this part of the game doesn't make sense.

An excessive variety of texts will hide important information from the players.

## Solution

I thought a little and found an interesting approach, the implementation of which you may have noticed in the gif above:

- Randomly insert names of news themes (with a connotation other than neutral) into the headline.
- Color each topic in a color specific to its connotation. In our case, red represents a negative attitude towards the topic, and green represents a positive one.
- Insert cute blocks of gibberish Unicode characters between the words.

As a result, we get a "win-win":

- A cheap and simple approach.
- A player always clearly sees the essential elements of the news. Black blocks are easily filtered out, especially after a short period of getting used to them.
- The player's imagination is turned on. Everyone will subconsciously substitute the necessary words depending on the situation in the game, the news, and their mood.
