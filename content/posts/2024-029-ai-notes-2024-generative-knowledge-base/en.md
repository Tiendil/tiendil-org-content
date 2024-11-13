---
title = "Notes on AI in 2024: Generative Knowledge Base"
tags = ["theory", "neural-networks", "ai-notes-2024", "interesting"]
series = "ai-notes-2024"
published_at = "2024-11-13T17:00:00+00:00"
seo_description = "My notes on the current state of AI at the end of 2024. This part is about the basic AI technology—the generative knowledge base."
seo_image = ""
---

I continue my notes on AI at the end of 2024.

/// brigid-series
id = "ai-notes-2024"
///

Today, I want to discuss the disruptive technology that underlies all modern AI achievements. Or the concept, or the meta-technology — whichever term you prefer.

You’ve probably never come across the logic described below on the internet (except for the introduction about disruptive technologies) — engineers and mathematicians might get a bit annoyed by the oversimplifications and cutting corners. But this is the lens through which I view the industry, assess what’s possible and less likely, and so on. My blog, my rules, my dictionary :-D

So, keep in mind, this is my personal view, not a generally accepted one.

<!-- more -->

## Disruptive Technologies

This term is quite well-known. For example, there is an article about it on [Wikipedia](https://en.wikipedia.org/wiki/Disruptive_innovation). Tim O’Reilly also writes a lot about them in his book [WTF?}{post:@choose-nearest-language:about-book-wtf}, which I have already reviewed.

That’s why I won’t write much about this concept.

Oversimplifying, disruptive technology changes the game's rules on the market rather than giving an advantage within the established rules. Accordingly, such a technology creates new markets and kills old ones. An excellent example of a disruptive technology would be digital photography, which “killed” Kodak and the film mass market.

There are different ways to highlight the technologies that help AI to disrupt everything around it.

We can say there are several of them: embeddings (which have been around for a long time), deep learning (also around for a long time), neural networks themselves (was there in the 1950s), big hardware clusters, new neural network architectures (choose your favorite), LLM chats, etc.

Or, we can say AI itself is a disruptive technology. But this is too abstract — no one even knows what AI is exactly, what it can do, and how it can be applied.

Following Tim O’Reilly’s opinion, I believe that disruptive technologies are not atomic. On the contrary, a disruptive technology appears as a successful combination of several already known atomic technologies and concepts that together demonstrate strong emergent properties. Over time, these properties evolve into a distinct concept that becomes independent from the technologies that underlie it, aka, from implementation details.

For example, it’s not that important how digital photos are taken compared to how easy they are to edit and share. Or it’s not that important how Uber drivers' locations are detected compared to the ability to manage orders based on their real-time locations.

When a disruptive technology appears, it’s not immediately noticeable. Humanity doesn’t immediately realize it as a holistic concept; the realization comes post factum, and everyone says, “Yes, it’s obvious. I’ve always said that.”

For engineers, the first versions of the technology will be just an interesting combination of old stuff. Engineers will either miss the big picture or highlight some specific case. I risk calling [Large Language Models](https://en.wikipedia.org/wiki/Large_language_model) as an example of such a specific term — just a couple of years have passed, and we are already expanding the concept to multimodality.

For businesses, and marketers in particular, it’s more important to take advantage of the technology and sell faster than to understand what their product is based on. An example of such an approach would be the term “Artificial Intelligence”, from which various technologies of different levels have been emerging for the last 50 years as soon as they become mature enough to demonstrate their boundaries: expert systems, image recognition, logic programming, etc.

As they say, if you want something done right, do it yourself, so I took the liberty to find a good term for a new technology.

## Generative Knowledge Base

In my opinion, disruptive technology is a new kind of database based on statistics and storing semantics instead of real integral and consistent data.

I talked to ChatGPT to come up with a cool name for this technology, and the network suggested `Generative Knowledge Base` — `GKB`. I think it captures the essence quite well, so I will stick to this term and use its abbreviation for brevity.

GKB has the following properties:

- Store information with losses — stores a statistical image of information, not the information itself.
- Automatically identify and store semantic relationships between pieces of information.
- **Information retrieval as probabilistic query completion"**. Not necessarily the most probable completion, but usually “probable enough”. In the case of chats, this is a literal continuation of the dialogue. In the case of graphic transformers and other stuff — you need to dig a little deeper, but the essence remains the same. For example, style transfer of an image is a completion of the original image with the style of another. So, I’m talking more about semantic completion than pragmatic.
- **The ability to correct the probability of the response form**. The simplest example is chats. By training LLM on dialogue examples, we get a database that continues the dialogues. Still, nothing prevents us from retraining the same LLM to continue the monologues, complete the request with its translation into another language, and so on. This property is under question, I will dwell on it in the next section.

## Properties of GKB vs properties of its implementations

It is important to distinguish between the properties of GKB and the properties of its specific implementations

For example, let’s look at the technology of classical relational databases. They are written in different languages, provide different guarantees of data integrity, concurrency, relate to the [CAP theorem](https://en.wikipedia.org/wiki/CAP_theorem) differently, have different performance profiles, and so on. But conceptually, they have common basic properties: [relational algebra](https://en.wikipedia.org/wiki/Relational_algebra), transactions, representation as separate services, etc. It is these properties, rather than the specifics of their implementation, that form the foundation of the majority of our IT world today.

Atomic technologies under the GKB are pretty specific (neural networks, specialized video cards), but conceptually, we could build that technology on other components. For example, on the voting of 100500 people, or on [genetic programming](https://en.wikipedia.org/wiki/Genetic_programming) on top of quantum computers. It just so happened that, in our specific case, this base is neural networks. These alternative implementations would have different sets of secondary advantages and disadvantages, but the same basic properties would be required for their success as disruptive technology.

That’s why I tried to separate the basic properties of GKB (described above) from the properties specific to current implementations. Here are some of the implementation-specific properties.

**Text interfaces** (LLM). By observing current trends, one might think that LLMs have won, and soon, everything will be big language models with multimodality. I don’t think so. GKB is conceptually not limited to text — queries can be built on any form of information. The text-based interface is simply the most convenient for our civilization at this point in time, as we are a civilization of text. If mass adoption of brain implants were to happen, it might turn out that a symbolic/pattern-based interface would be more suitable. And if this technology were invented by, say, deep-sea glowing squids, their primary mode of communication might very well be visual.

**Compression of information into vector form** (embeddings). In my opinion, this is a typical feature of the implementation. Undoubtedly convenient and valuable, but there is no guarantee that the embeddings will remain in an explicit form in alternative implementations — alternative hardware may be developed that works on different principles, on quantum mechanics, for example, where it would be impossible to extract data from intermediate layers without destroying the integrity of the database.

**Addition/modification of information through training with [gradient descent](https://en.wikipedia.org/wiki/Gradient_descent)** — this is also an artifact of the current implementation. An alternative could be, for example, some evolutionary selection. But I wouldn’t dare say we have a real alternative (although evolutionary selection is much more appealing to me). Gradient descent may be, indeed, the most optimal way to optimize models. But it is still an implementation detail. We may add data to a GKB in other ways, but they will just be really inefficient.

**The ability to correct the probability of the response form**. I have written about this property in both the basic and implementation-specific sections, as I am not sure to what extent it depends on the specifics of the implementation. Obviously, at the moment, this is a direct consequence of using neural networks as the basis for GKB, but will it disappear or remain if we switch to other technologies, for example, evolutionary algorithms?

## Looking at the AI hustle and bustle through the lens of GKB

If we look at all the applied products that are powered by modern AI, we will see that no matter what networks they use, the concept of interacting with them is the same:

- We have a knowledge base of humanity in some area of some quality.
- We can send something to it and get a probabilistic completion of the request.
- The completion may be incorrect, so we check it, duplicate requests, rank the answers, and do all sorts of things that allow us to bypass the problems of probabilistic answers.
- All this is from top to bottom are wrapped in classic software components that convert data to/from GKB, check them, apply them to something, and so on.

At the moment, I have not heard of any conceptually different approach to using neural networks. Even object detection (with neural networks) can be viewed as generating a statistical completion of the source image.

So:

- If someone is working on improving the basic properties of GKB — this is something to look at — there is a perspective and a chance of success.
- If someone is working on adding properties to neural networks that are not specific to GKB — either it’s rocket science, or a failure. Rocket science in most cases will also end in failure. For example, if someone is trying to achieve 100% answer accuracy, it is this case.
- If someone is trying to use neural networks as GKB — most likely people know what they are doing and have a chance of success.
- If someone is trying to use neural networks not as GKB, for example, to create a strong AI or an “autonomous worker” **only on neural networks, without any additional components** (for example, by scaling the network and data) — most likely people don’t know what they are doing and will fail. Or, they are knowlingly lying.

Just in case, I will note that Copilot and other assistants fall under the third point, not the fourth. In essence, they are a knowledge base wrapped in traditional software that makes the assistants convenient and useful. Copilot is not an autonomous worker, but a tool for a programmer. This is the reason why some people cannot benefit from assistants — they try to interact with them as with people, not as with a probabilistic knowledge base.

## GKB and Strong AI

In short, a human is not only a knowledge base, but also a set of logic on top of it. A huge set of logic, as it turned out.

Therefore, we should not expect that some GPT-10 will gain consciousness. In any case, a strong architectural overlay over GPT will be required for this, and in such a case developers would use a new name :-D

Generative knowledge base can be an important piece/module for creating a strong AI, but only one of many.

Part of this set may already be at our fingertips: various mathematics and logic, predicate calculus, logical/symbolic/functional/imperative programming, traditional databases, semantic networks, thousands of utilities written, etc.

But we still don’t know what other modules are missing and, more importantly, how to combine them into a whole. So it may take quite a while before we get a strong AI.

But his “marketing simulacrum” may not be that far off.

Possibly one of my future notes will be dedicated to strong AI and its not-so-strong analogs.
