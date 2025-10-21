---
title = "Engineering is science is engineering"
tags = [ "theory", "development", "interesting", "management", "vantage-on-management", "science"]
series = "vantage-on-management"
published_at = "2025-10-21T12:00:00+00:00"
seo_description = "I'll demonstrate that engineering and science are conceptually close and increasingly converging, meaning they can borrow practices from each other."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "A visual depiction of engineering and scientific approaches."
///

/// brigid-series
tag = "vantage-on-management"
///

In the [previous post]{post:no-instructions-for-engineering}, we discussed that engineering is a creative activity that cannot be reduced to following instructions. Therefore, to manage engineering teams, it is necessary to use practices intended for creative teams.

And what could be more creative than ~~a jazz band~~ science?

That's why, in this post, I will try to show that engineering is conceptually much closer to science than it may seem at first glance, and that in the modern world, these disciplines are converging ever faster. I would even bet that the boundary between them will eventually disappear.

<!-- more -->

/// note | Disclaimers

In the [previous post]{post:no-instructions-for-engineering}, there is a whole disclaimer section about discussing engineering and creativity. I won't repeat them here.

If any statements strike you as controversial, exaggerated, or if you do not see important special cases mentioned, please first read that section.

Also note that this essay contains significantly more from the engineering side than from the science side. Because I am on the engineering side and primarily interested in improving my life :-)
///

## Why engineering resembles science

### Engineers produce new knowledge

In the previous post, we discussed that engineering produces new information.

In this post, I aim to make a stronger statement and point out that the information produced by engineering is new knowledge about the world.

There are numerous definitions of knowledge; for our purposes, let me use the following one:

> Knowledge is organized, strongly connected information that enables the creation of reliable [models]{post:@choose-nearest-language:life-and-work-with-models} of the behavior of the surrounding reality, or can be used by such models.

- Records of explosions of various substances are information.
- A formal description of an engine with a given [energy conversion efficiency](https://en.wikipedia.org/wiki/Energy_conversion_efficiency) is knowledge.

From a philosophical standpoint, engineering and science produce different kinds of knowledge:

- Science ~~sometimes~~ produces conceptually new knowledge about the world — how the world works — the structure of DNA, Newton's law of universal gravitation, Einstein's formula relating energy and mass.
- Engineering produces applied knowledge — how to make a specific thing that will interact with the world in a predictable way — a bridge blueprint, the [source code of the blog](https://github.com/Tiendil/brigid) you're reading now, the design drawings of the Large Hadron Collider.

Science imposes many constraints on the knowledge it produces — for example, the [novelty criterion](https://en.wikipedia.org/wiki/Research#Original_research) — the knowledge must be new to the scientific community, not merely useful.

/// brigid-images
src = "./scientific-novelty.jpg"
caption = """
Illustration of the current state of novelty production in science.<br/>
Images are taken from [The illustrated guide to a Ph.D.](https://matt.might.net/articles/phd-school-in-pictures/).
"""
///

A substantial part of the knowledge produced by engineering doesn't fit within these constraints. Therefore, one could say that the two have nothing in common — and leave it at that.

However, I would like to point out the following nuances.

**First**, both kinds of knowledge are produced in the same way — through exploring the [space of possible solutions](https://en.wikipedia.org/wiki/Feasible_region) — and require the same set of skills and tools.

Since we're talking about human activity, what matters more to us are the similarities in tools, processes, and the ways we interact with the end product, rather than the differences in the philosophical definitions of its essence. If something looks like a duck, swims like a duck, and quacks like a duck, [it's probably a duck](https://en.wikipedia.org/wiki/Duck_test).

**Second**, de facto, many scientific disciplines today produce vast amounts of applied knowledge whose scientific novelty is questionable if one follows the letter of ~~law~~ science. At the same time, many branches of engineering have a long history of operating at the frontier of human knowledge — and continue to push it forward.

One could say that the boundary between scientific and engineering knowledge is blurring.

/// note | As an example

A large portion of work in bioinformatics, physics, and chemistry today is devoted to developing software or physical instruments based on existing scientific knowledge.

Engineering advances in [deep learning](https://en.wikipedia.org/wiki/Deep_learning) — and [LLMs](https://en.wikipedia.org/wiki/Large_language_model) in particular — are opening up an entirely new frontier for scientific research, ranging from classical computer science to linguistics, psychology, cognitive science, and philosophy.

///

Large language models are an excellent example of the synergy and emergence arising from the interaction between science and engineering — an intertwining of different kinds of knowledge.

1. Physicists discovered new properties of semiconductors — science pushed the frontier.
2. This enabled [NVIDIA](https://en.wikipedia.org/wiki/Nvidia) engineers to create new computing architectures — engineering pushed the frontier.
3. That, in turn, allowed scientists to make several conceptual breakthroughs in neural networks — science pushed the frontier.
4. Then [OpenAI](https://en.wikipedia.org/wiki/OpenAI) engineers scaled up the new networks — engineering pushed the frontier — and [we got what we got]{post:ai-notes-2024-the-current-state}.

I'd even say that in the field of artificial intelligence, the boundary between science and engineering has almost disappeared.

Even [Elon Musk confirms this](https://x.com/elonmusk/status/1950254103474446728) in his typically blunt manner:

> This false nomenclature of “researcher” and “engineer”, which is a thinly-masked way of describing a two-tier engineering system, is being deleted from @xAI today.
>
> There are only engineers.
>
> Researcher is a relic term from academia.

### Engineers produce models of the surrounding reality

The idea is the same as in the previous section, but at a slightly higher level of abstraction.

An engineer's work consists of describing, in a formal language, an artifact that will exhibit the required properties within a given environment.

Here are some examples of artifacts:

- A building that will be earthquake-resistant up to 7 on the Richter scale, will have an energy consumption level not exceeding X, and will be habitable at temperatures from -30 to +50 °C. Provided that it is built on such-and-such ground, from such-and-such materials, using such-and-such technologies.
- A tax accounting program that correctly calculates taxes according to the laws of country N within a given time period, runs on Windows and Linux platforms, and meets certain user expectations for security. The legal requirements, platform properties, and user expectations are all parts of the external environment.

Thus, an engineering description of an artifact is, in essence, a particular model of reality — it inevitably predicts the behavior of a small part of it. Like any model, it has its scope of applicability, limitations, assumptions, level of accuracy, and so on.

/// note | Formally speaking

From a modern perspective, engineers describe 4D systems (3D space + time), which can include not only physical inanimate objects but also people, processes, information flows, and so on.

Even the specification of a nut, formally, describes it in 4D, as it implicitly accounts for changes in the nut's properties over time (e.g., wear and tear) through references to materials and operating conditions.

For this essay, this nuance is not essential, but I always try to include a note about it, since it is critically important for engineering.
///

Conceptually, science does the same thing — it creates models of the surrounding reality, only on a broader scale. That's why there is little difference between **idealized** scientific and engineering models.

| Model property | Science | Engineering |
| -------------- | ------- | ----------- |
| **Focus**             | **Explanation**<br/>Why something works the way it does (and not otherwise). | **Prediction**<br/>How something should be designed to behave properly in a specific environment. |
| **Type**              | **Universal**<br/>How the world always works.                               | **Particular**<br/>How the world should work under very specific conditions.

Examples of scientific models: `e = mc^2`, [theory of everything](https://en.wikipedia.org/wiki/Theory_of_everything).

Examples of engineering models: detailed design of a specific bridge, microprocessor schematic.

These differences matter in practice — they can be reflected in priorities, tools, and processes — but in my view, they are not significant enough to speak of a conceptual difference in the model creation between science and engineering.

/// note | In reality…

The table above might provoke a strong reaction from both professional scientists and professional engineers, since each discipline uses both types of models to some extent. In science, you can find many purely predictive models, while in engineering, there are also explanatory ones.

Still, it is hard to argue with the fact that:

- The ideal scientific product is a universal model that explains something.
- The ideal engineering product is a very specific, often simplified model that predicts something.

However, we don't live in an ideal world, disciplines are converging (which is what this post is about), so in reality, the boundaries are blurred. Science even tries to confront purely predictive models: for example, some journals refuse to publish papers that merely predict a phenomenon without explaining it. From a scientific point of view, this is probably a positive trend; still, in my opinion, complete victory — a full separation of model types — is impossible because of the very nature of, well… let's say, information and the world itself.
///

### Engineers operate under uncertainty

As do scientists.

The impossibility of creating precise instructions for an engineer (see [previous post]{post:no-instructions-for-engineering}) itself implies working under uncertainty. But I would like to elaborate on a couple of points.

**Engineers and scientists are in the same position regarding learning and acquiring knowledge.**

Institutionalized education lags 5-20 years behind [SOTA](https://en.wikipedia.org/wiki/State_of_the_art) practices — that's true for both engineering and science — specialists for both fields are educated in the same universities.

It's an inevitable drawback of institutionalized education: writing a good textbook or developing a solid course requires real-world experience that takes years to acquire. Not to mention that preparing and polishing educational materials can also take years.

Therefore, professionals have to learn through practice, using the same practices (pardon the unintentional tautology):

1. mentorship systems;
2. conferences and other networking;
3. reading papers, blogs, books;
4. experiments and research.

The only real difference, perhaps, lies in the level of formalization:

- Science has created a formal, universal system of publishing and mentoring, and has established standardized procedures for conducting experiments.
- Engineering, on the other hand, relies mostly on less formal approaches.

Each approach has its pros and cons, which are beyond the scope of this post.

**The environment always contains an element of uncertainty** — that's true for both engineering and science.

In the case of science, uncertainty arises both from incomplete information about the world (as in physics) and from the inherent variability of the environment being studied (as in biology or the social sciences).

In the case of engineering, uncertainty mostly comes from the variability of the environment in which the artifact will be used:

– From the dynamics of regulations (for example, in medicine or finance) — we should keep track of changes and adapt our artifacts accordingly.
– From the dynamics of user preferences and behavior — we can't assume users will engage with a new artifact the same way they did with previous versions or analogs.
– From the dynamics of the [technosphere](https://en.wikipedia.org/wiki/Anthroposphere) — we don't operate in a vacuum; the results of our work should interact smoothly with the artifacts produced by other engineers.

As recently as half a century ago, changes in the environment occurred slowly — often they could be neglected for some time. But now the pace of change has accelerated by orders of magnitude, especially in software development.

In my opinion, that's why engineering is becoming more and more like science in spirit, and moving away from classical factory production with exhaustive instructions — we have to deal with novelty more and more.

/// note | By reassembling our tech stack, we discover new things

Using software development as an example.

Contemporary reality is such that if your project lasts several years, at the start of the next one you are forced to reassemble the entire tech stack from scratch, maybe even down to the hardware level, reconsidering the architecture for new requirements. If your product lives even longer, you will most likely need to change its technologies on the fly, and this must be accounted for in planning, architecture, etc.

The necessity of reassembling the stack stems not only from the pace of changes in the technosphere, but also from the knowledge developers gain through their work. The volume of information about technologies, tools, architectures today is such that you won't find two developers who are in a completely identical context and will make completely identical decisions.

This doesn't mean that you start from scratch every time, but a significant part of your tools will have to be replaced or updated if you want to stay at the frontier and build top-tier products.

Accordingly, when adopting something new, we have to understand both its operating principles and its interactions with the surrounding environment and other tools. If we're lucky, there's thorough documentation — but more often, we learn through experimentation: building prototypes and observing how the technologies behave in the scenarios we care about.

By the way, I've never seen truly comprehensive documentation in my life :-)
///

### Engineers comprehend reality through experimentation

To an outside observer — and even to many within the profession — it may seem that experimentation makes up only a small part of engineering work. But that's not the case.

Architects build scale models not out of idle curiosity. Nor should we forget about [in silico](https://en.wikipedia.org/wiki/In_silico) experiments — a broad range of calculations and simulations: from evaluating the reliability of structures to testing the robustness of server infrastructure against [(D)DoS attacks](https://en.wikipedia.org/wiki/Denial-of-service_attack).

However, engineers work under stronger economic and time pressures and follow less formal procedures, which often changes the form of experimentation and blurs the line between experiment and implementation.

**First**, an engineer's goal is usually not to create a 100% SOTA artifact, but to create a "good enough" artifact within given constraints (time, money, resources). Therefore, we can neglect some experiments if we believe that a "well-known" solution will be "good enough".

Note, this does not mean there were no experiments. Before becoming a "well-known" solution, that solution went through many implementations, which indeed were experiments that confirmed its properties and made it "well-known".

**Second**, we always compare the cost of an experiment with the cost of fixing the consequences of a wrong decision. When conducting an experiment is more expensive than fixing a potential mistake, we can skip the experiment as a separate activity. Instead, we run the experiment directly on the "live patient".

To an outside observer, this may look like the absence of an experiment, however, it's just riskier experimentation.

/// note | An example from my practice

At the start of a new project at my previous job, I advocated for our own [distributed transaction orchestration](https://microservices.io/patterns/data/saga.html) rather than use one of the existing solutions.

There were reasons for this choice:

1. We didn't know all the requirements for our product yet.
2. The time required for a thorough investigation of existing solutions (considering point 1) was significantly longer than the time needed to implement the first version of our own solution.
3. We could either implement orchestration from the start (as one of the project's first systems) or painfully migrate to it later, so the window of opportunity was quite narrow — just a few weeks.
4. Orchestration was a key component of the system. Choosing the wrong base technology would make fixing the mistake either expensive or impossible.
5. Most of the third-party systems did not match the team's technology stack, meaning it would be difficult for us to understand their behavior, maintain, and modify them.

So, the choice was between:

1. Abandon orchestration and sacrifice important guarantees it provides.
2. Take a risk and choose a random off-the-shelf solution that might turn out to be fatally incompatible with future requirements.
3. Implement a minimal in-house solution and improve it iteratively, gathering data on its usability and efficiency from a live project — in other words, through experimentation.

I pushed the third option. In retrospect, it was the right choice, although it sparked some debates.
///

That's partly why software development is often compared to building the plane while flying it — we try out solutions directly on running systems, prepared to roll back, replace, or adjust them quickly if the data indicates an undesirable result.

/// brigid-youtube
id = "Y7XW-mewUm8"
caption = "How it all looks in engineering fantasies."
///

Therefore, good engineering practice includes designing product architecture and processes in a way that enables fast and low-cost experimentation.

Today, in some areas of software development (such as web services and online games), it's possible to run dozens of parallel experiments continuously — both business and technical. This approach is now considered a best practice in itself.

## Why science resembles engineering

We can look at the similarities between engineering and science from another angle as well.

However, since I'm not a scientist and understand the scientific side of the issue less well, I'll limit myself to some basic observations. It would be interesting to hear the opinions of professional scientists on this topic.

### The share of predictive models is increasing

In my opinion, this trend existed even before the rise of machine learning, but now it has become much more noticeable. Especially when looking at the application of deep learning and LLMs, which struggle with explanations but have [enormous predictive power]{post:ai-notes-2024-generative-knowledge-base}, leading to the emergence of systems like [AlphaFold](https://en.wikipedia.org/wiki/AlphaFold) or the recent [fluid dynamics simulation by DeepMind](https://arxiv.org/abs/2509.14185).

As I see it, science might prefer to focus purely on explanatory models, but the reality is that predictive models often prove to be more useful and practically applicable.

/// note | This idea is not new

As early as the 1960s, [Stanisław Lem](https://en.wikipedia.org/wiki/Stanisław_Lem) suggested in [Summa Technologiae]{post:@choose-nearest-language:summa-technologiae} that humanity could shift from explanatory models to predictive ones.

The book is astounding — it is an outstanding work of futurology that remains relevant even 60 years after its writing. Moreover, much of it is coming true right now.

Summa Technologiae is definitely a must-read — one of the few books I've reread several times and will probably reread again.
///

### The role of engineering practices in science is growing

Two trends are pushing science toward a greater use of engineering practices.

**First**, scientific tools and processes are becoming more complex — that calls for ever more sophisticated pipelines for experimentation, data collection, and analysis.

A scientific pipeline is, in essence, an engineering artifact (that encompasses hardware, software, data, configuration, and even people), and therefore demands engineering skills and practices to build and maintain it.

**Second**, the requirements for reproducibility of scientific results are increasing (we won't discuss the reasons here), as well as oversight to ensure compliance.

This, in addition to scientific practices aimed at reproducibility of experiments, requires the use of engineering practices aimed at reproducibility of artifacts that accompany scientific experiments and scientific work in general.

As a result, the production of engineering artifacts is becoming an integral part of scientific work, which manifests itself in various forms:

- Through additional publication requirements — providing ~~working~~ code and data (understandable to both humans and machines), public demos as a best practice, etc.
- Through collaboration on open-source projects for creating toolkits with deterministic and consistent behavior. From general-purpose libraries like [SciPy](https://scipy.org/) to specialized toolkits like [Bioconductor](https://bioconductor.org/) for bioinformatics.
- Through the creation of public repositories of standardized datasets, such as [Gene Expression Omnibus](https://www.ncbi.nlm.nih.gov/geo/), [WikiPathways](https://www.wikipathways.org/), etc.

## Shared challenges of science and engineering

In some ways, engineering and science are converging — and in others, they've almost merged entirely, for example, in their problems.

These problems — the consequences of shared goals and methods — are so well-worn that I'll just list them without going into details.

**A bias toward publishing positive results while ignoring negative ones.** In science, this is known as the [publication bias](https://en.wikipedia.org/wiki/Publication_bias). Engineering, as usual, doesn't strive to formalize its problems, however, we all know the situation is the same. Everyone loves to brag about how brilliantly they refactored something when the metrics look good — but try finding a post about a failed refactoring.

**[Conway's Law](https://en.wikipedia.org/wiki/Conway%27s_law)** makes life difficult for people in both fields: organizational structure shapes not only what you study, but also what you design.

**Shared ethical challenges**: how not to cause harm, how to keep people's data safe. The scale of these issues is roughly the same in both domains.

**Assessing colleagues' competence** — especially at higher levels, when a person must be judged not by standardized foundational knowledge, but by their ability to learn, to operate with meta-concepts, to organize work and manage knowledge, to make long-term decisions, and to act under uncertainty, etc.

[The h-index](https://en.wikipedia.org/wiki/Hirsch_index) is an interesting and useful tool for this, but it's far from perfect — it has its own flaws.

**Transparency of teams' work** — both for insiders and for external observers. No one really knows what those engineers over there — or those scientists over there — are actually doing.

## Suppose engineering and science are alike

I hope I provided enough evidence to show that they are.

So what follows from that?

That we can learn from one another and borrow successful practices.

It's not my place to tell scientists what they should borrow from us engineers; however, I do have some thoughts on what we might borrow from scientists.

That's what we'll talk about in the next post.
