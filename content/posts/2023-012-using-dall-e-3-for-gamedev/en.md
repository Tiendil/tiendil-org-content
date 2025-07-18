---
title = "Using DALL-E-3 for Game Development"
tags = [ "gamedev", "game-design", "neural-networks", "practice", "procedural-content-generation", "development", "prompt-engineering",]
published_at = "2023-10-15T12:00:00+00:00"
seo_description = "Experimenting with DALL-E 3 for game graphics generation."
seo_image = "./images/using-dall-e-3-for-gamedev-cover.jpg"
---

/// brigid-images
src = "./images/using-dall-e-3-for-gamedev-cover.jpg"
caption = 'DALL-E: "Draw a Vrubel-style painting of an indie game developer working on her game, like The Demon Seated. With the accent on Vrubel style."'
///

Recently, I got access to [DALL-E-3](https://openai.com/dall-e-3), which means I can repeat [last year's experiment]{post:@choose-nearest-language:using-dall-e-for-gamedev} and see what has changed.

I do not plan to fantasize or look for new directions; instead, let's repeat the ideas and requests from last year's post.

**Warning, heavy traffic** — DALL-E outputs PNG files sized 1-2 megabytes. I compressed them a bit, but the post will still be heavy.

<!-- more -->

## General impressions

I have not been actively following graphics generation — more interested in texts. So, Midjourney and all the other progress over the year have passed me by. Therefore, I look specifically at the difference over the year (in comparison with my previous post).

The speed of change, quality, and the opportunities that open up are astonishing.

DALL-E has become so much more creative, nuanced, and cultured—perhaps even a bit over-cultured. Its earlier work felt like the kind of art a kid might make with markers: predictable and school-level. Now, DALL-E is more like a painter with an extra degree in art history or philosophy.”

Perhaps, from the professional point of view, it is not noticeable or even an exaggeration, but for a layman like me, it looks exactly like that. By default, DALL-E creates images that are deeper than I expect and ask for, with a greater creative component and variability than required. For example, look at the "creative reimagining" of [Vrubel's style](https://en.wikipedia.org/wiki/Mikhail_Vrubel) in the header image and the alternatives below: it looks similar, but more in spirit than in style. Surely this can be tuned with detailed requests, as interaction with DALL-E happens through ChatGPT 4.

The problems listed in the previous post (small context, strong tendency towards [memes]{post:@choose-nearest-language:genes-memes-memeplexes}, issues with small details) have been resolved.

**Update:** My wife disagrees that the tendency towards memes has been fixed. If you ask it to draw a hamster, DALL-E draws only Syrians, ignoring all other species. Even if you ask explicitly. But I would attribute this to a lack of specific knowledge rather than a tendency towards memes.

The previous version of DALL-E felt like a specific tool for navigating the meme space, like a graphical compass. The new version approaches a magic wand that gives you what you ask for. Given the speed of progress, in a year or two, it indeed will be a magic wand. Independent developers rejoice, non-product creators panic.

About the prognoses from the previous post.

_"Text input will be replaced or supplemented with a bunch of sliders and checkboxes for more precise direction selection."_ To my knowledge, this is partially implemented in other tools.

_""Smart" automatic generation of more image variations through automatic transformations of the original phrase."_ Implemented in DALL-E-3: it creates 4 variations of the prompt, and images are generated based on them. You can see the prompts if you open the image variant in the ChatGPT interface.

Two out of two! Read my blog and you'll always be one step ahead of progress :-D

Technical details:

- All requests were made in a new clean context. The quality of results should be easy to improve with hints.
- Picture generation takes longer than in the previous version. Possibly due to high load on the infrastructure, not due to model limitations.

## Using DALL-E for game design tasks

I tried several directions of use, the same as last year.

### Create a fake game screenshot from a concept document

I experimented, of course, with the same [concepts]{tags:concepts} as last year (you may want to check the russian version of this blog — not all concepts are translated).

[Space Opera Engine]{post:@choose-nearest-language:concept-document-for-the-game-s-space-opera-engine}

```
Screenshot of an indie game for PC: a simulator of the universe — multiplayer socio-political sandbox on the scale of Space Opera.

Stylistics is minimalist. Basic information is presented in text, pictograms, and icons. For images, low-detailed vector drawings are used.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-01-01.jpg"
alt = "Example concept 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-01-02.jpg"
alt = "Example concept 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-01-03.jpg"
alt = "Example concept 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-01-04.jpg"
alt = "Example concept 4 from DALL-E"
///

Are your jaws dropped, ladies & gentlemen? Are you ready to pay money for such games? I am ready.

Since the LLM showed such good results with a simple request, let's feed it the entire concept! In fact, the entire concept did not fit into the context — only half of it — had to remove unnecessary parts about marketing, risks, and other boring things.

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-02-04.jpg"
alt = "Example concept 4 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-02-01.jpg"
alt = "Example concept 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-02-02.jpg"
alt = "Example concept 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-02-03.jpg"
alt = "Example concept 3 from DALL-E"
///

As you can see, the LLM captured the essence of the concept, but it did not manage to focus on the text as the main approach to presenting the situation in the game — it's understandable.

Moreover, ChatGPT accompanied the screenshots with correct descriptions:

```
- A minimalist user interface for the game, showcasing a galaxy with various star systems.
- A detailed view of a star system with multiple planets, each having unique properties.
- A planet's surface divided into regions with distinct icons representing forests, mountains, lakes, and cities.
- An in-game event illustration where a city on a planet is highlighted, presenting a situation for the player to interact with.
```

Let's continue.

[NoCraft]{post:@choose-nearest-language:concept-document-nocraft}

```
Screenshot of an indie game "NoCraft" — like StarCraft but without micromanagement. Less reflexes, more strategy. RTS with indirect control, mutations of units and their behaviour. The setting is space, captured by zergs. The graphics style is simplified, cartoonish, frivolous, and vector.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-03-01.jpg"
alt = "Example concept 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-03-02.jpg"
alt = "Example concept 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-03-03.jpg"
alt = "Example concept 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-03-04.jpg"
alt = "Example concept 4 from DALL-E"
///


Again, the essence is captured correctly, the quality is excellent, but there is a mix-up in genres — the images are more about mobile games. Plus, the images look more like promo art than actual screenshots.

Let's feed the entire concept to the LLM.

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-04-04.jpg"
alt = "Example screenshot 4 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-04-03.jpg"
alt = "Example screenshot 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-04-02.jpg"
alt = "Example screenshot 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-04-01.jpg"
alt = "Example screenshot 1 from DALL-E"
///


Well… DALL-E definitely learned from screenshots of mobile games, photos of board games, and sprite sheets :-D Mostly from turn-based strategy games. I couldn't get it to create something similar to StarCraft right away.

### Detailed scene description and concept art

Since the problem of context size from the previous post is completely solved, I will only show the most complex example from the scenes, which was rendered correctly on the first try, except that the necromancer is not very scary.

```
Concept art of an old dwarf-necromancer who stands on the top of a hill. The dwarf has a magically enchanted leg prosthesis, one eye is replaced with a glowing ruby. The hill is surrounded by the inquisition. There are spirits flying in the sky.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-05-4.jpg"
alt = "Example concept 4 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-05-01.jpg"
alt = "Example concept 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-05-02.jpg"
alt = "Example concept 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-05-03.jpg"
alt = "Example concept 3 from DALL-E"
///


If you're looking for something scary, here it is.

```
Scary old dwarf-necromancer who stands on the top of a hill.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-06-01.jpg"
alt = "Example concept 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-06-04.jpg"
alt = "Example concept 4 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-06-03.jpg"
alt = "Example concept 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-06-02.jpg"
alt = "Example concept 2 from DALL-E"
///

### Low-budget pixel art

Even the previous version of DALL-E was good at pixel art, so it was clear that the new one would be even better.

```
Pixel art image of an scary old dwarf-necromancer fighting inquisition
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-07-01.jpg"
alt = "Example pixel art concept 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-07-02.jpg"
alt = "Example pixel art concept 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-07-03.jpg"
alt = "Example pixel art concept 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-07-04.jpg"
alt = "Example pixel art concept 4 from DALL-E"
///

However, we need low-detail pixel art for roguelikes and low-resolution maps.

```
Grid sprite sheet of very low-detailed pixel art sprites of variants of a scary dwarf-necromancer ready to use in a roguelike game.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-08-01.jpg"
alt = "Example pixel art sprite sheet 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-08-02.jpg"
alt = "Example pixel art sprite sheet 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-08-03.jpg"
alt = "Example pixel art sprite sheet 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-08-04.jpg"
alt = "Example pixel art sprite sheet 4 from DALL-E"
///

I had to tinker with the prompt, and the result is still too detailed. It looks like DALL-E now has a strong tendency towards adding details to images. Also, it does not respect the grid boundaries.

For animations, this time, I asked to create a demon instead of a runner.

```
Pixel art sprite sheet of 8 frames of imp casting a fireball.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-09-01.jpg"
alt = "Example pixel art sprite sheet with animation 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-09-02.jpg"
alt = "Example pixel art sprite sheet with animation 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-09-03.jpg"
alt = "Example pixel art sprite sheet with animation 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-09-04.jpg"
alt = "Example pixel art sprite sheet with animation 4 from DALL-E"
///

Did a bit of magic and voilà — a GIF. It's janky, of course. Partly because DALL-E refuses to generate aligned sprites, and partly because I don’t know how to slice the result into frames properly. We really need to train a neural network for sprite slicing ASAP.

/// brigid-images
src = "./images/using-dall-e-3-for-gamedev-fireball.gif"
alt = "Example pixel art animation from DALL-E"
///

Let's return to the pixel art. The previous version of DALL-E could not create pixel art maps; the current one does it too well — it adds too many details.

```
Tiled pixel art map of fantasy kingdom
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-10-01.jpg"
alt = "Example pixel art map 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-10-02.jpg"
alt = "Example pixel art map 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-10-03.jpg"
alt = "Example pixel art map 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-10-04.jpg"
alt = "Example pixel art map 4 from DALL-E"
///

As you can see, calling these maps "tiled" is a bit of a stretch.

So, I had to be more specific with my requests.

```
Sprite sheet with tiles of a fantasy kingdom map for a game, top-down perspective.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-11-01.jpg"
alt = "Example pixel art map tiles 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-11-02.jpg"
alt = "Example pixel art map tiles 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-11-03.jpg"
alt = "Example pixel art map tiles 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-11-04.jpg"
alt = "Example pixel art map tiles 4 from DALL-E"
///

It's night and day compared to the previous version. But for now, the tiles still don't seem to align well with each other — especially when it comes to roads and rivers. Still, it works great as a draft. Maybe with a carefully crafted and detailed prompt, it’ll be possible to get less detailed but better-fitting tiles.

I tried to use advanced prompt engineering techniques like chain-of-thoughts for generating spritesheets. But I got stuck at the very beginning — I couldn't get DALL-E to create a square grid for sprites. It stubbornly draws it rotated, in isometric perspective, in 3D, polluted with unrelated images — anything but a clean chessboard grid.

### Variants of the cover image

DALL-E is very good at creating detailed images. So, as a bonus, here are all the variants of the cover image.

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-01.jpg"
alt = "Variant of the cover image 1 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-02.jpg"
alt = "Variant of the cover image 2 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-03.jpg"
alt = "Variant of the cover image 3 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-04.jpg"
alt = "Variant of the cover image 4 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-05.jpg"
alt = "Variant of the cover image 5 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-06.jpg"
alt = "Variant of the cover image 6 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-07.jpg"
alt = "Variant of the cover image 7 from DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-08.jpg"
alt = "Variant of the cover image 8 from DALL-E"
///
