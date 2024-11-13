---
title = "Notes on AI in 2024: Generative Knowledge Base"
tags = ["theory", "neural-networks", "ai-notes-2024", "interesting"]
series = "ai-notes-2024"
published_at = "2024-11-13T17:00:00+00:00"
seo_description = "My notes on the current state of AI at the end of 2024, this part is about the basic AI technology — the generative knowledge base."
seo_image = ""
---

I continue my notes on AI at the end of 2024.

/// brigid-series
id = "ai-notes-2024"
///

Today I want to talk about the disruptive technology that underlies all modern AI achievements. Or about the concept, or the meta-technology — whichever you prefer.

You’ve probably never come across the logic described below on the internet (except for the introduction about disruptive technologies) — engineers and mathematicians might get a bit annoyed by the oversimplifications and cutting corners. But this is the lens through which I view the industry, assess what’s possible and less likely, and so on. My blog, my rules, my dictionary :-D

So, keep in mind — this is my personal view, not a generally accepted one.

<!-- more -->

## Disruptive Technologies

This term is quite well-known, for example, there is an article about it on [Wikipedia](https://en.wikipedia.org/wiki/Disruptive_innovation). Tim O’Reilly also writes a lot about them in his book [WTF?}{post:@choose-nearest-language:about-book-wtf}, which I have already reviewed.

That’s why I won’t write much about this concept.

Exaggerating, disruptive technology changes the rules of the game on the market, rather than giving an advantage within the established rules. Accordingly, such a technology creates new markets and kills old ones. A good example of a disruptive technology would be digital photography, which “killed” Kodak and the film mass market.

There are different ways to highlight the technologies that help AI to disrupt everything around it.

We can say that there are several of them: embeddings (which have been around for a long time), deep learning (also around for a long time), neural networks themselves (was there in the 1950s), big hardware clusters, new neural network architectures (choose your favorite), LLM chats, etc.

Or, we can say that AI itself is a disruptive technology. But this is too abstract — no one even knows what AI is exactly, what it can do, and how it can be applied.

I, following Tim O’Reilly’s opinion, believe that disruptive technologies are not atomic. On the contrary, a disruptive technology appears as a successful combination of several already known atomic technologies and concepts that together demonstrate strong emergent properties. Over time, these properties evolve into a distinct concept that becomes independent from the technologies that underlie it, aka, from implementation details.

For example, it’s not that important how digital photos are taken in comparison to how easy they are to edit and share. Or it’s not that important how Uber drivers are located in comparison to the ability to manage orders for them based on their location.

When a disruptive technology appears, it’s not immediately noticeable. The humanity doesn’t immediately realize it as a holistic concept, the realization comes post factum, and everyone says, “Yes, it’s obvious, I’ve always said that.”

For engineers, the first versions of the technology will be just an interesting combination of old stuff. Engineers will either miss the big picture or highlight some specific case. I risk to call [Large Language Models](https://en.wikipedia.org/wiki/Large_language_model) as an example of such a specific case — just a couple of years passed and we already expanding the concept to multimodality.

For businesses, and marketers in particular, it’s more important to take advantage of the technology and sell faster than to understand what their product is based on. An example of such an approach would be the term “Artificial Intelligence”, from which various technologies of different levels have been emerging for the last 50 years as soon as they become mature enough to demonstrate their boundaries: expert systems, image recognition, logic programming, etc.

As they say, if you want something done right, do it yourself, so I took the liberty of coming up with a good term for a new technology.

## Generative Knowledge Base

In my opinion, a disruptive technology is a new type of database based on statistics and storing semantics instead of real integral and consistent data.

I talked to ChatGPT to come up with a cool name for this technology, and the network suggested `Generative Knowledge Base` — `GKB`. I think it captures the essence quite well, so I will stick to this term and use its abbreviation for brevity.

`GKB` has the following properties:

- Store information with losses — stores a statistical image of information, not the information itself.
- Automatically identify and store semantic relationships between pieces of information.
- **Information retrieval as probabilistic query completion"**. Not necessarily the most probable completion, but usually “probable enough”. In the case of chats, this is a literal continuation of the dialogue. In the case of some graphic transformers and other stuff — you need to dig a little deeper, but the essence remains the same. For example, style transfer of an image is a completion of the original image with the style of another. So I’m talking more about semantic completion than pragmatic.
- **The ability to correct the probability of the response form**. The simplest example is chats. By training `LLM` on dialogue examples, we get a database that continues the dialogues, but nothing prevents us from retraining the same LLM to continue the monologues, complete the request with its translation into another language, and so on. This property is under question, I will dwell on it in the next section.

## It is important to distinguish between the properties of `GKB` and the properties of its specific implementations

For example, let’s look at the technology of classical relational databases. They are written in different languages, provide different guarantees of data integrity, concurrency, relate to the [CAP theorem](https://en.wikipedia.org/wiki/CAP_theorem) differently, have different performance profiles, and so on. But conceptually, they have common basic properties: [relational algebra](https://en.wikipedia.org/wiki/Relational_algebra), transactions, representation as separate services, etc. It is these properties, rather than the specifics of their implementation, that form the foundation of the majority of our IT world today.

Atomic technologies under `GKB` are quite specific (neural networks, specialized video cards), but conceptually, the technology could be built on other components. For example, on the voting of 100500 people, or on [genetic programming](https://en.wikipedia.org/wiki/Genetic_programming) on top of quantum computers. It just so happened that in our specific case, this base is neural networks. These alternative implementations would have different sets of secondary advantages and disadvantages, but for their success as the diruptive technology, the same basic properties would be required.

That’s why I tried to separate the basic properties of `GKB` (described above) from the properties specific to current implementations. Here are some of the implementation-specific properties.

**Text interfaces** (LLM). By observing current trends, one might think that LLMs have won and soon everything will be big language models with multimodality. I don’t think so. `GKB` are conceptually not limited to text — queries can be built on any form of information. The text-based interface is simply the most convenient for our civilization at this point in time, as we are a civilization of text. If mass adoption of brain implants were to happen, it might turn out that an symbolic/pattern-based interface would be more suitable. And if this technology were invented by, say, deep-sea glowing squids, their primary mode of communication might very well be visual.

**Compression of information into vector form** (embeddings). In my opinion, this is a typical feature of the implementation. Undoubtedly convenient and useful, but there is no guarantee that the embeddings will remain in an explicit form in alternative implementations — an alternative hardware may be developed that works on different principles, on quantum principles, for example, where it would be impossible to extract data from intermediate layers without destroying the integrity of the database.

**Addition/modification of information through training with [gradient descent](https://en.wikipedia.org/wiki/Gradient_descent)** — this is also an artifact of the current implementation. An alternative could be, for example, some evolutionary selection. But I wouldn’t dare to say that we have a real alternative (although evolutionary selection is much more appealing to me). It is possible that gradient descent is indeed the most mathematically optimal way to optimize models. But it is still an implementation detail — we may add data to a `GKB` in other ways, they just will be really inefficient.

**The ability to correct the probability of the response form**. This property I have written both in the basic and implementation-specific properties, as I am not sure to what extent it depends on the specifics of the implementation. Obviously, at the moment, this is a direct consequence of using neural networks as the basis for `GKB`, but will it disappear or remain if we switch to other technologies, for example, to evolutionary algorithms?

## Смотрим на движуху через призму `GKB`

Если вы приглядитесь ко всем прикладным продуктом, за которыми стоит современный ИИ, то увидите, что какие-бы сети они не использовали, концепция взаимодействия продукта с ними одна и та же:

- У нас есть база знаний человечества в какой-то области какого-то качества.
- Мы можем отправить что-то в неё и получить вероятностное дополнение запроса.
- Дополнение может быть неправильным, поэтому мы его проверяем, дублируем, ранжируем ответы и занимаемся всеми возможными штуками, которые позволяют обходить проблемы статистики.
- Всё это сверху и снизу обёрнуто классическими программными компонентами, которые конвертируют данные в/из `GKB`, проверяют их, применяют к чему-то и так далее.

На текущий момент я не слышал о каком-либо концептуально другом подходе к использованию нейронок. Даже на детекцию объектов (нейронками) можно смотреть как на генерацию статистического дополнения к картинке.

Соответственно:

- Если кто-то работает над улучшением базовых свойств `GKB` — к этому следует присмотреться — есть перспектива и вероятность успеха.
- Если кто-то работает над добавлением в нейронки свойств не специфичных для `GKB` — либо это rocket science, либо провальное мероприятие. Подобный rocket science в большинстве случаев тоже закончится провалом.
- Если кто-то пытается использовать нейронки как `GKB` — скорее всего люди понимают что делают и у них есть шанс на успех.
- Если кто-то пытается использовать нейронки не как `GKB`, например создать сильный ИИ или «автономного работника» **только на нейронках, без обвеса** (например, масштабируя нейронку и данные) — скорее всего люди не понимают что делают и у них ничего не получится.

На всякий случай отмечу, что copilot и прочие ассистенты подпадают под третий пункт, а не под четвёртый. Так как типичная функция ассистента — извелечение информации, которую вы потом анализируете. Copilot — не автономный работник, а инструмент для программиста. Это причина, почему некоторые люди не могут извлечь пользы от асистентов — они пытаются взаимодействовать с ними как с людьми, а не как с вероятностной базой знаний.

## `GKB` и сильный искусственный интеллект

Если кратко, то человек — далеко не только база знаний, но и набор логики поверх неё.

Соответственно, рассчитывать на то, что какая-нибудь GPT-10 обретёт сознание не стоит. Во всяком случае, для этого потребуется сильная архитектурная надстройка над GPT и я бы в таком случае использовал новое название :-D

`Generative Knowledge Base` может быть важным куском/модулем для создания сильного ИИ, но всего лишь одним из множества.

Часть из этого множества у нас может быть уже под рукой: разного рода математика и логика, исчисление предикатов, логическое/символьное/функциональное/императивное программирование, традиционные базы данных, семантические сети, тысячи написанных утилит, etc.

Но мы пока не знаем каких ещё модулей не хватает и, тем более, как их объединить в целое. Поэтому до сильного ИИ ещё может пройти довольно много времени.

А вот до его «маркетинговых симуляций» может быть не так далеко.

Возможно одну из будущих заметок я посвящу сильному ИИ и его не очень сильным аналогам.
