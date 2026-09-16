---
title = "Results of the 2019–2021 sabbatical"
tags = [ "blog", "practice", "reflection"]
published_at = "2021-09-01T12:00:00+00:00"
seo_description = "The results of my two-year sabbatical or 'How I wrote a volume of War and Peace'."
seo_image = ""
---

/// brigid-youtube
id = "7zok9co_8E4"
caption = """
Every single day 'cause I love my occupation<br/>
A-a-ay, I'm on vacation<br/>
If you don't like your life, then you should go and change it.
"""
///

Or how to write a volume of "War and Peace" in 2 years.

In June 2019, I resigned from [Melsoft](https://melsoft-games.com/) and went on a sabbatical that has lasted 2 years and 2 months. It's time to sum things up.

I'll tell you why I did it, what I was doing, what worked, what didn't, and how I feel about the experience.

In short: I recommend it to everyone.

<!-- more -->

## Motivation

**Updated:** I wrote a separate post about [my approach to sabbaticals]{post:about-sabbatical}.

I thought I'd write something inspiring, like "why everyone should take a sabbatical right now", but maybe some other time. I have exceeded my quota for long posts this week.

Here is a short description of my case.

Historically, my time has been split into three parts:

- sleep;
- primary job during the day;
- hobbies / rest in the evening.

My hobbies and work overlap only partially.

To exaggerate a little, my interests are concentrated in areas other people aren't going to pay me for: experimental gamedev, exploring the state-of-the-art in programming languages, experimenting with code analysis, and studying evolution and cognition.

My hobbies improve my skills and make me more valuable to an employer, but they do so in the long run with no clear KPIs.

In theory, I could make a living from them, but so far it hasn't worked out. Indie gamedev didn't work out on the first try, and when it comes to consulting, I'm not particularly good at networking — yet, perhaps.

As a result, I do not have enough time for:

- analysis of my activities, retrospection;
- reading and studying — the most interesting books are hard to read before bed or on public transport;
- properly working through my hobby projects — they're complex.

I also believe, as a matter of principle, in honest, open relationships between employees and employers. So I don't take care of personal matters on company time.

So, that leaves a single way to find time — going on a long vacation.

That was my motivation when I left Wargaming in 2012, and again when I left Melsoft in 2019.

I don't regret either decision.

Of course, I'm working on combining my hobbies and my job better, as well as using my time more efficiently. But that's a long and difficult process.

## Non-technical results

The timing of my sabbatical turned out to be extremely fortunate.

For about three months after my resignation, I was treated for one thing or another — I was more burned out from work than I'd realized. It will be a lesson for me.

For the first six months, my girlfriend and I studied the real estate market without rushing and, without stress, found a good apartment at a good price.

I had no trouble self-isolating when the COVID hit.

During the well-known events in Belarus, I was able to focus on reflection; there was no need to force myself to work. As a result, I revised my personal worldview and reflected on events.

The political problems, of course, broke all my sabbatical plans. But I was able to revise them successfully, in my opinion.

This summer I got married :-)

## Technical results

I practice [thinking through writing]{post:thinking-through-writing} — fix every finished intellectual effort with a qualitative text. The blog works as a base of reports on the work done. Therefore, there will be many links to report-essays below. Follow them if you want to know more about a specific activity.

### Blog

The main discovery of these years for me was my productivity as a writer.

Over two years, I wrote 141 essays — more than one text per week. Considering the size and content of the essays, this seems like a significant achievement to me.

The total volume of text exceeded 130,000 words. One and a half times more than in the first Harry Potter novel. About the same as one volume of "War and Peace".

I couldn't say that before going on sabbatical, I could write a lot of useful texts quickly. I had several successful posts on Habr, but that was it. Looking at the first months of the sabbatical, you'll find that the essays were mainly about the books I read, rather than unique topics.

Practice gave me a lot of experience. At the beginning of the vacation, I could spend more than a week working through the material and preparing a post; now a complex essay takes about three days, and some take hours. Therefore, I expect to continue writing in comparable volumes after returning to work.

The outcome of thinking through writing exceeded my wildest expectations. I unloaded my head, reorganized the information in it, and freed up resources for thinking about complex stuff. It's hard to convey these feelings — you have to try it.

And now I don't need to remember what I thought years ago to argue in discussions. I have texts with clear arguments at hand. Very convenient.

[More about the blog]{post:@choose-nearest-language:about-blog} I spoke in a separate post.

### Areas of focus

I split my time between the following activities:

- Prototyping and studying new technologies.
- Formalizing my gamedev experience.
- Formalizing my software development experience.
- Reflecting and working through thinking techniques.
- Books.
- Updates for [The Tale](https://the-tale.org/) — released 5 updates.
- Reflecting on the events around me, both technical and not so much.

Everything is pretty clear with "The Tale" and reflection on events. Let me tell you more about the rest.

Once more, I want to emphasize that each post is a report on the work done.

### Prototyping and studying

These activities took most of my time, and I find their results the most interesting.

I prototyped some cool stuff; all sources are open:

- [Smart Imports](https://github.com/Tiendil/smart-imports) — library for automatic dependency discovery and importing at the time of Python module import.
- [Morphologic](https://tiendil.github.io/morphologic/#/) — software for [morphological analysis](https://en.wikipedia.org/wiki/Morphological_analysis_(problem-solving)) of solution spaces. Simultaneously, I refreshed my frontend knowledge and looked at Vue.
- [Pydicates](https://github.com/Tiendil/pydicates) — predicates for Python. The package was born as a by-product of other experiments.
- [Coulson](https://github.com/Tiendil/coulson) — an attempt to analyze types during the execution of a Python program. It works, but I postponed its development until better times.
- [Tutorial on procedural dungeon generation]{post:dungeon-generation-from-simple-to-complex}

A handful of projects never made it to release for various reasons. In particular, there were some experiments with procedural generation.

Studied fundamental technologies in depth:

- Type analysis in Python: [static and dynamic]{post:@choose-nearest-language:trendy-typing-in-python}, made my own [runtime type analyzer]{post:@choose-nearest-language:python-types-are-not-great}.
- Julia: [in theory]{post:@choose-nearest-language:julia-is-next-python} and [on practice]{post:@choose-nearest-language:julia-experience}. I chose a [DSL for procedural generation](https://github.com/Tiendil/pcg-julia) as a learning project.
- API standards: [GraphQL]{post:@choose-nearest-language:graphql-and-python}, [OpenAPI]{post:@choose-nearest-language:python-and-openapi}.
- [Database migration libraries and utilities]{post:@choose-nearest-language:backend-migrations-in-practice}.
- State-of-the-art approaches to testing. Experimented with [hypothesis]{post:@choose-nearest-language:python-hypothesis}, finally switched to pytest.

The last months I was digging into machine learning and neural networks:

- [Refreshed my knowledge of calculus]{post:@choose-nearest-language:math-refresher}.
- [Completed MIT's introductory course on deep learning]{post:@choose-nearest-language:6-s191-introduction-to-deep-learning}.
- Implemented a few learning projects, [published them on GitHub](https://github.com/Tiendil/public-jupyter-notebooks):
  - [setting up infrastructure for DL]{post:@choose-nearest-language:you-cant-just-take-and-run-dl};
  - [digit recognition]{post:@choose-nearest-language:kaggle-digit-recognizer-solution}, with a look at Kaggle;
  - [implementing a Generative Adversarial Network]{post:@choose-nearest-language:generative-adversarial-network-implementation}.
- Made forecasts about the prospects of ML:
  - [in technical fields]{post:@choose-nearest-language:feature-programming};
  - [in social fields]{post:@choose-nearest-language:ai-will-not-or-will-replace-us-all}.

Additionally:

- [Took a broad look at the leading programming languages]{post:@choose-nearest-language:thoughts-on-programming-languages}
- Revamped my development environment and [updated Emacs configs]{post:@choose-nearest-language:update-emacs-configs}.

### Gamedev

I went on my break with a clear sense that I needed to properly reflect on the results of my work on The Tale — something I had never managed to do either while working on it or during my time at Melsoft.

It turned out I really had gained a lot of experience, and had plenty to talk about:

- [about the worlds building]{post:@choose-nearest-language:about-worlds-building} and [dungeons design]{post:@choose-nearest-language:how-to-design-a-dungeon}
- [about game mechanics as resource converters]{post:@choose-nearest-language:resource-model-of-the-game-resources} and [how to work with them]{post:@choose-nearest-language:about-resource-gathering-mechanics}
- about MMO design:
  - [gamedesing frontier]{post:@choose-nearest-language:next-gamedesign-frontier}
  - [mechanics design]{post:@choose-nearest-language:space-of-mmo-mechanics}
  - [the dynamics of fun]{post:@choose-nearest-language:about-the-degradation-of-fun} and [how players perceive the game]{post:@choose-nearest-language:the-significance-of-the-event-in-the-mmo}
  - [problems of multiplayer worlds]{post:@choose-nearest-language:bots-and-twinks-in-games}
- [about the impact of the mass market on a concept of a game]{post:@choose-nearest-language:one-form-two-products}

So, if you are planning to develop a game with social interactions, especially an MMO, I will definitely be useful to you.

I also started publishing game concept documents that had been piling up in storage: [The Tale]{post:@choose-nearest-language:the-tale-concept-document}, [News Makers]{post:@choose-nearest-language:concept-document-news-makers}, [NoCraft]{post:@choose-nearest-language:concept-document-nocraft}, [Tales]{post:@choose-nearest-language:concept-document-for-the-game-tales}.

### Software development

There were not so many essays about software development specifically, for two reasons:

- those aspects I worked out even before the sabbatical;
- numerous topics were covered in more abstract essays.

I described:

- [GDPR implementation]{post:@choose-nearest-language:how-i-did-and-would-do-gdpr-support};
- the effect of [opening the source code of The Tale]{post:@choose-nearest-language:what-happens-if-you-open-the-code-of-your-game};
- [complicated nature of data transformations]{post:@choose-nearest-language:infinity-of-data-schemas};
- [some nuances of software verification]{post:@choose-nearest-language:verification-with-special-cases};
- [approaches to db migrations]{post:@choose-nearest-language:about-db-migrations};

### Thinking techniques

During my career, I often encountered mistakes made by people, including myself, caused by gaps in basic thinking skills. More precisely, in what I consider to be basic skills :-)

These cases started to annoy me so much that I decided to write a book about the subject. But I quickly hit a wall — I'd bitten off more than I could chew, and it wasn't something I could tackle in one go.

So, I started gathering material for it. Some essays I write according to my own plan, some — spontaneously, as a reaction to events around me.

The progress is slow, but inevitable. The bolded ones I consider mandatory to read:

- [Intelligence, competence, and decision-making]{post:@choose-nearest-language:intelligence-competency-and-decision-making}
- [Formalism-induced trauma]{post:@choose-nearest-language:formalism-injury}
- [**Living and working with mistakes**]{post:@choose-nearest-language:life-and-work-with-mistakes}
- [**Genes, memes, and memeplexes**]{post:@choose-nearest-language:genes-memes-memeplexes}
- [The ethics of knowledge transfer]{post:@choose-nearest-language:ethics-of-knowledge-transfer}
- [**Learn the right way**]{post:@choose-nearest-language:learn-right}
- [Repairing complex systems]{post:@choose-nearest-language:repair-of-complex-systems}
- [On symbols]{post:@choose-nearest-language:about-symbols}
- [Organizing information]{post:@choose-nearest-language:organization-of-information}
- [**Composition vs. classification**]{post:@choose-nearest-language:composition-vs-classification}
- [**Exocortex 3.5**]{post:@choose-nearest-language:exocortex-3-5}
- [How I learn history]{post:@choose-nearest-language:how-do-i-learn-history}
- [Systems thinking in practice]{post:@choose-nearest-language:systems-thinking-in-practice}
- [**Living and working with models**]{post:@choose-nearest-language:life-and-work-with-models}

### Books

I read 26 independent works (volumes/books are slightly more — 31). Not all of them are worth attention, but I take a responsible approach to literature selection, as I read slowly and value my time. All reviews can be found under the [books]{tags:books} tag.

Every book essay contains a review and, if it makes sense, an excerpt of the most interesting part.

I especially recommend the following books:

- [Susanna Clarke's books]{post:@choose-nearest-language:susanna-clarke-books} — the best depiction of magic I've come across;
- [The knowledge illusion]{post:@choose-nearest-language:illusion-of-knowledge} — about the evolution and spread of information;
- [Scale]{post:@choose-nearest-language:scale} — about the fundamental physical laws of self-organizing systems;
- [The invention of science]{post:@choose-nearest-language:about-book-invention-of-science} — how science became what it is now;
- [WTF?]{post:@choose-nearest-language:about-book-wtf} — about the concept of platforms and disruptive technologies;
- [Powerful]{post:@choose-nearest-language:about-book-powerful} — about Netflix's culture;
- [Cook's first voyage around the world]{post:@choose-nearest-language:cooks-first-around-the-world-context} — notes on Cook's journal in six posts.

### The biggest failure

Given the problems of the country and the planet, I don't consider some unfinished plans a failure — the world was shaking, and I was shaking with it.

For example, I wanted to finish my vacation by releasing a small game on Steam in six months, but I had to spend that time on other things.

Still, there was one failure — I didn't manage to build a personal automated knowledge base. Posts about its development can be found under the [Tarantoga]{tags:tarantoga} tag.

I put a lot of effort into it and built two prototypes, but still didn't get the result I was aiming for, though I did get closer. I'll make a third prototype, but at a more relaxed pace.

**Updated:** after a few more prototypes the knowledge base evolved into a news reader [Feeds Fun](https://feeds.fun/) ([repo](https://github.com/Tiendil/feeds.fun)).
