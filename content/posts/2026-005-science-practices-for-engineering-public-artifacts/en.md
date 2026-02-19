---
title = "Scientific practices for engineering — public artifacts"
tags = [ "theory", "development", "open-source", "interesting", "best", "management", "vantage-on-management", "science"]
series = "vantage-on-management"
published_at = "2026-02-18T12:00:00+00:00"
seo_description = "Public artifacts — such as peer-reviewed papers — are among science's most powerful achievements. In this essay, we'll look at how they can be adapted for engineering."
seo_image = ""
---

/// brigid-images
src = "./cover.jpg"
caption = "An engineer demonstrates their work to the community (c) ChatGPT, Leonardo da Vinci"
///

/// brigid-series
tag = "vantage-on-management"
///

In the [previous essay]{post:engineering-is-science-is-engineering}, we discussed how engineering and science are closely related, and therefore can borrow practices from each other.

Let's talk about those practices. Since I'm interested in the engineering side of things, we'll discuss practices that engineering can borrow from science.

Here and throughout this essay, by engineering I mean software engineering (IT). I'm confident that the ideas discussed here apply to engineering as a whole, but that field is vast and extraordinarily diverse. The blog format ~~and my innate modesty~~ doesn't really allow me to make such ambitious claims.

This essay is the first of several planned texts about practices. It focuses on the practice of creating publicly accessible artifacts (such as scientific papers), the strength this practice gives science, and the potential gains engineering could make by adopting a similar model.

By "public" in this text, I mean global public access — the availability of an artifact to everyone who might be interested in it.

We'll discuss the following topics:

- what a public artifact is;
- artifact verifiability;
- public artifacts as evidence of competence;
- public artifacts as a criterion for qualification;
- public artifacts as an axis of employee evaluation;
- public artifacts as a health metrics;
- difficulties of shifting development toward public artifacts;
- how to start.

This text is not a recommendation, but an invitation to discussion. It is full of idealism and controversial statements. I hope for your understanding and comments.

<!-- more -->

## Caveats

### Level of abstraction

I consider the practices under discussion to be complex. Each of them involves not only inherent "technical" complexity but also the complexity of the cultural shift required for practice formation and adoption in science — behind each practice lies a long historical path.

My primary interest right now is developing a vision for the development culture I want to move towards. Therefore, I will focus on an idealized description of practices, emphasizing their value and potential.

I'll skip such questions as:

- The business economics of adopting these practices.
- The minimal level of competence and maturity of employees required to adopt these practices.
- Social resistance to adopting these practices.
- Privacy and security issues that may arise when adopting these practices.
- etc.

I'm doing this fully aware that implementing each specific practice will require examining and resolving these questions. But it's much easier to examine and resolve them in the context of a specific company and specific people than "in general".

In other words, we will discuss "ideal practices in a vacuum", not "specific practices in a specific company".

/// note | A shift in business priorities

Nowadays, we can see a cultural shift in business: people are starting to recognize that, alongside profit generation, companies may, can, and should bring public good.

New organizational forms of companies are arising, such as [Benefit Corporation](https://en.wikipedia.org/wiki/Benefit_corporation).

As a recent example, [OpenAI has reorganized its commercial part into something like that](https://openai.com/our-structure/).

That's why I believe that the mentioned questions are now slightly less "fatal" than they would have been 10 years ago.

///

### Problems in science

Modern science is afflicted with many ailments (though when was it ever otherwise?). Things do not always work as they should.

In my view, this is not evidence of the failure of scientific practices, but rather evidence that science continues to develop. And, of course, it is a reflection of human nature.

### Some of the mentioned practices are already in use

Some of the mentioned practices are already adopted in some form in certain areas of engineering. I will not dwell on digressions like "yes, this exists in some places, but…". It is safe to assume that if I mention an existing practice, I mean that it should be used more widely, more often, and more consistently.

## Public artifacts

In my view, the practice of creating public artifacts is one of the greatest achievements of science — one that has, to a large extent, made our civilization what it is today.

By artifact, I mean any "physically recorded" result of work. Science has formalized some types of such artifacts: journal publications, open datasets, posters, conference presentations, and so on. However, an artifact can also be: a blog post, open-source code, a YouTube video, a formally filed bug report, an [RFC]{post:two-years-writing-rfc-statistics}, documentation, and many other things.

/// note | Forms of public artifacts in engineering

Speaking of public artifacts in engineering, we can keep in mind the following non-exhaustive list:

- Patches to open source projects.
- Bug reports to open source projects.
- Conceptual feature proposals to open source projects.
- Code of internal libraries, tools, benchmarks, IDE extensions, etc.
- Container and virtual machine images.
- Design of experiments and their results: from marketing to technical ones.
- [RFC]{post:two-years-writing-rfc-statistics}, architectural proposals, other high-level specifications and standards.
- Educational materials: guides, tutorials, FAQs, recipe books, etc.
- Incident postmortems.
- Analyses of cases and problems.
- Conference talks.
- Records of participation in podcasts, round tables, and other public events.
- Demos of new features (for example, rendering in games), prototypes, and results of participation in hackathons.

///

Not all science is built on openness. Corporations, the military, and perhaps intelligence agencies keep some developments classified. But:

- This is a smaller share of scientific activity.
- Over time, all key works become public or replicated in public form.

### Two types of openness

It would be more correct to consider two types of openness:

1. Internal openness — publishing artifacts within the company, between teams, departments, etc.
2. Global openness — publishing artifacts to the whole world — to everyone who might be interested in them.

This essay is written with a focus on global openness, as this helps keep the text shorter and is more interesting to me.

However, in the context of this text's ideas, the difference between them is not so significant:

- For small companies, internal openness is absent as a phenomenon — there are too few people in the company's community.
- For large companies, internal openness can be conceptually close to global, as the difference between community sizes is like "many people" and "very many people".
- Significant differences in effects may only manifest in medium-sized companies.

/// note | Practice speaks in favor of global openness

Let's look at the recent explosive growth of deep learning and LLMs.

At the beginning, there was a period of several years during which corporations tried to keep all developments secret. In 2021, I even wrote a post about concerns regarding [monopolization of machine learning]{post:@choose-nearest-language:monopolization-of-machine-learning}. But now the big players are trying to find a balance between opening and closing their developments. Some open more, some less, but almost everyone opens their developments.

This is not a one-time case, not the whim of a couple of people — this is the consequence of evolutionary pressure towards open development.

**Our civilization has reached a point where closed development is becoming economically inefficient due to the growing complexity of problems and the endless space of possible solutions.** At least in a number of engineering fields.

Science has reached this point much earlier, IT is rapidly catching up, and eventually all other fields will catch up as well.

///

## Artifact verifiability

One important feature of scientific artifacts is their formal verifiability. Key artifacts, such as scientific publications, undergo a formal peer-review process designed to ensure a certain level of quality and reliability. The more prestigious the journal you want to publish your article in, the higher the requirements for the paper's quality, but the more trust it will have in the community.

Currently, it is difficult to imagine a fully analogous global social mechanism in engineering. However, engineering does not require a perfect replica. It is, after all, a distinct activity with its own nuances. Where science verifies artifacts through the control of causal chains, protocols, and theory, engineering verifies them through practice, experience, and a network of dependencies.

/// note | Possible approaches to artifact verification in engineering

To have an anchor for discussion, I propose the following very rough and naive scale of artifact verification levels, with verification being understood in a broad sense.

**L0 — no verification** — an unnoticed artifact that does not receive any reaction from the community, and is not used by anyone beyond its authors.

**L1 — social validation** — an artifact gathers positive reaction from the community in the form of comments, reposts, likes, stars on GitHub, etc.

**L2 — authoritative validation** — an artifact receives a positive reaction from recognized experts in the field: opinion leaders, well-known developers, etc.

**L3 — practical adoption** — an artifact is used in real, notable third-party projects, or they reference it.

**L4 — formal community acceptance** — an artifact goes through a formal acceptance/review process in one of the recognized communities. Examples: acceptance of a patch into the Linux kernel, publication in a peer-reviewed journal, approval of a PEP in Python, etc.

The proposed approach can be developed in several directions:

- Distinguish between verifiability within a company and within the broader community. In that case, a verification level might be expressed as `L3/L1`.
- Assess validation, verification, and adoption levels separately.

///

Both approaches have the same consequences:

- New artifacts are built on top of already verified ones.
- Over time, those verified artifacts form a network of trust among their creators.
- That trust, in turn, enables social governance mechanisms that sustain artifact quality and reliability.

Thus, a feedback loop is formed — one that enables the field's evolution.

/// note | Open source

In this context, it is worth mentioning [open source](https://en.wikipedia.org/wiki/Open-source_software) as a phenomenon whose artifacts are, in many respects, closest to those of science — including in terms of verifiability.

Started as scattered initiatives to open-source code, open source has evolved into a global social mechanism that generates its own social network, has formal and informal governance mechanisms, culture, and institutions.

If you have doubts about the existence of formal regulatory mechanisms and institutions, take a look at the [patch submission process for the Linux kernel](https://docs.kernel.org/process/submitting-patches.html), the [PEP process in Python](https://www.python.org/dev/peps/), or even the [RFC system](https://www.rfc-editor.org/).

All of this has emerged over the span of just 20-30 years, indicating strong evolutionary pressure toward openness in development — and its substantial long-term potential. At this point, open source is no longer merely about "opening software code"; developers are increasingly opening the designs of hardware projects as well — from electronics to [houses](https://www.wikihouse.cc/).

///

## Public artifacts as evidence of competence

Because of their openness and verifiability, artifacts become ideal evidence of their creator's competence.

In science, publishing in a peer-reviewed journal is not just a way to share results — it's a record in a distributed knowledge base of the fact of a scientist's competence. If you want to assess a scientist's professionalism, understand how to interpret their statements — look at the dynamics and topics of their publications.

In IT, the situation is more complicated, as the [assembly-line mindset]{post:no-instructions-for-engineering} does not encourage people to share the results of their work. However, this does not mean that openness does not work — many developers create public artifacts, and some are even lucky enough to do it during work hours.

For example, it's perfectly possible to judge my competence based on my blog and [GitHub](https://github.com/Tiendil). Some people I know started contributing to open-source projects back in university and, since then, have built their public portfolio of artifacts that way. Overall, there are plenty of developers with public artifacts, and their number keeps growing, despite the frankly uncomfortable conditions for creating them.

/// note | Artifacts as evidence of work done

Artifacts provide evidence not only of competence but also of the very fact that work is being done.

"An artifact as evidence of work done" is a fundamental element of organizing, planning, and controlling work. IT has problems with adapting this concept as well, although it is steadily spreading from team to team. In particular, I keep arguing that all work should be organized around producing artifacts.

Since this concept already lives inside software development and is a lower-level thing, I won't dwell on it.

///

As in science, engineers have an option to publish artifacts in high-status places, for example, by submitting a patch to a major open-source project, speaking at a notable conference, or drafting an "improvement proposal" in the form of an RFC, PEP, or equivalent. Even a simple blog post can accumulate enough social capital — likes, reposts, and comments — to become a substantial artifact.

Without public artifacts, it is very difficult to assess the competence of a mature IT specialist within a reasonable time and resources. At best, you can filter out clearly incompetent candidates.

- A resume only lets you compile a list of superficial discussion prompts.
- Take-home tests are detached from reality and therefore meaningless — especially as LLMs mature.
- Even after a few hours of conversation, you can only form a first impression of someone and screen for the biggest red flags.
- Coding during interviews doesn't demonstrate any real on-the-job skill.

On top of that, it's hard to control the quality of top specialists' work — it cannot be validated. If we exaggerate a bit, if you're the only tech lead on the backend, your word is an unbreakable law — no one in the company has the competence to check whether you're bringing value and how much.

Public artifacts partially solve both problems through community verification. For example, if your patch to the Linux kernel is accepted, then you probably understand something about Linux.

The problem is that businesses, to put it mildly, don't encourage spending work time on producing public artifacts. As a result, only a small fraction of developers have a portfolio. As a result, businesses are forced to spend money on expensive hiring processes and on fixing the mistakes those processes inevitably make.

My highly biased take: **the worldwide overspending on hiring outweighs potential losses from allocating a share of work time to producing public artifacts.**

Sadly, this opinion sounds more or less confident in the case of global change (when everyone simultaneously changes the policy), but looks much weaker when a single company wants to make the change. If we discard all other bonuses (which we will discuss below), from the point of view of a "single company in a vacuum", such a policy change would look like charity, which is definitely not a business priority.

## Public artifacts as a criterion for qualification

The start of a scientist's career is fairly similar to that of a software engineer's career.

Here is a very rough analogy between scientific degrees and IT qualifications in terms of the level of independence:

Scientific degree          | Approximate IT qualification
---------------------------|-----------------------------
Bachelor of Science (BSc)  | Junior, sometimes Mid-level
Master of Science (MSc)    | Mid-level, sometimes Senior
Doctor of Philosophy (PhD) | Senior, sometimes Staff

In science, the transition to each subsequent level of qualification requires the creation of a fairly standard set of public artifacts that undergo formal verification within the community.

Yes, the requirements vary from country to country and from university to university, but overall they are quite similar. Having artifacts and the context in which they were created (specific university/lab), we may, with a high degree of confidence, assess a scientist's qualifications.

Imagine that, when hiring a Senior developer (and anyone with a lower qualification), you see not only the page of their resume with confusing statements about unverifiable achievements, but also traces of their real work. Moreover, you automatically see their professional focus and level of competence in those areas.

In my opinion, this would significantly reduce the complexity of hiring for both employers and job seekers.

On top of that, it would let people develop their careers more deliberately and make it easier to relate their own level of qualification to those of other specialists. As it is now, reaching Senior-level happens completely randomly, and Seniors from two companies can differ like night and day.

Of course, the evaluation of highly qualified specialists is more complicated. In science, it mainly occurs through the evaluation of their most recent published papers and the assessment of their citation count. In IT, it doesn't happen at all: we interview a person and send them on a probation period in the hope that we didn't make a mistake. Therefore, even for top specialists, the possibility of assessing their qualifications through public artifacts would be extremely useful.

## Public artifacts as an axis of employee evaluation

/// note | Making KPIs more objective

We all remember that [as soon as a metric becomes a target, it ceases to be a good metric](https://en.wikipedia.org/wiki/Goodhart%27s_law).

So I'm not, under any circumstances, arguing that public artifacts should be used as a rigid, single criterion for evaluating employees. People's work should be assessed through a comprehensive set of parameters — without turning any one of them into an absolute — and with safeguards against gaming the system.

**Public artifacts should be treated as just one more equal axis along which employees can be evaluated.**

By adding this axis, **we reshape the evaluation space**, making it more expressive, and therefore more objective.

///

In my view, there's nothing sadder in IT than watching HR and management try to measure the effectiveness of individual employees. Actually, no, what's even sadder is watching them try to steer people's growth, for example, through annual goals.

**First**, [the work of an engineer is hard to measure on an individual level]{post:no-instructions-for-engineering}. The only way to do it more or less objectively is through statistical expert evaluation, which is practically impossible within the closed environment of a company due to the excessive cost of such work.

**Second**, if your company can somehow know what most employees will be working on for an entire year, or even six months (how else do you set long-term goals for them?), then you've already lost the competitive race. In today's world, it's impossible to plan simultaneously for such a long time and at such a level of detail. Either you'll dig in your heels and keep doing work that's already outdated (and your product will suffer), or your employees will miss their targets en masse (and your team will get demoralized).

Few things demotivate an engineer more than meaningless annual goals and irrelevant evaluation of their work.

Public artifacts help us partially solve both of these problems and even more.

We move traditional goals to the team level because it is the team, as a statistically significant unit, that can be objectively (more or less) evaluated and managed. After all, from the product's point of view, it doesn't matter who does what and who is responsible for what — it's important that it gets done. The specific distribution of work among employees should come from the team's self-regulation, not from external influence.

We make the creation of public artifacts the personal goals of employees and indicators of their competence/progress. Since an artifact always has a specific author and a public artifact is more often a derivative of the product rather than its core, we give employees control over their professional growth and position in the company, taking it away from the team, the product, and the universe.

Such a split offers several advantages.

**First**, you switch the evaluation of an employee from a statistically unreliable assessment of their work by a couple of people, to a more reliable assessment by colleagues (public work is visible to the whole company, not just the team; people react to it much more actively) and by the professional community.

At the same time, the original evaluation process, handled by a closed group of responsible people (a manager, a lead, HR, etc.), doesn't go away. It shifts focus away from judging vague signals from the person, toward judging the reaction to their public artifacts, and the artifacts themselves.

**Second**, you give your employees the opportunity to work simultaneously on their growth within the company, and on their professional growth and reputation in the community. In the traditional scheme, this is practically impossible.

- This can significantly reduce the load on people, especially the ambitious and talented. Healthy talent performs better.
- Some of the effort that used to be spent outside the company will stay within it.

**Third**, you get flexible and resilient KPIs that easily adapt to changes in your strategy.

If an employee, to demonstrate their qualification, describes the architecture of your product, then no matter how its development turns out, they will still be able to describe it; only the topics of posts or their focus will shift. If you decide to open an internal utility, then you can easily release it regardless (almost) of the direction its development takes.

**Fourth**, public artifacts are usually extremely specific (even atomic), have clear boundaries, and therefore a clear scope of work. This makes them understandable to all participants of the process, which in turn makes it easier to embed work on them into the primary workflow. Unlike personal goals for a project, which, in my experience, are generally not embeddable at all.

As a result, a person comes to their review not with a set of dubious statements that can be correctly perceived by one and a half people, but with a set of specific public artifacts that will be understandable to professionals both inside and outside the company, and **will have value for the person after the review is over**. Thus, preparation for the review ceases to be a formality.

/// warning | Gaming metrics and how to fight it

In any case, people will try to cheat, and something should be done about it.

There are many ways to cheat:

- Skewing time allocation toward producing public artifacts, at the expense of working on the product features.
- Farming social proof by creating pretty-but-meaningless or hype-driven artifacts.
- Grinding out artifact count while sacrificing their quality.

However, there are also ways to fight cheating:

- Focus on the quality indicators rather than quantity. For example, on the diversity of artifact types, rather than the quantity.
- Track the production value of artifacts. An artifact should be the result of work on the product or be used in the process of working on the product.
- Evaluate the level of artifact reuse. For example, how often a utility is used, how often an architectural document is referenced.

///

/// note | A company as the training-and-graduation department

Institutionalization of public artifacts as a criterion for qualification and employee effectiveness turns companies into a kind of graduation department. That approach will structure and regulate the competition for young talents. Such a change will benefit everyone: people, the industry, and specific companies.

In turn, institutionalization paves the way for the creation of expert councils (within companies and across them) that can evaluate a person's professional progress far more effectively than what we have today. Not perfectly, not fully objectively, but much better.

///

## Public artifacts as a health metrics

Since the creation of public artifacts is supposed to be a persistent activity, it can be measured in various ways, and its fluctuations can indicate changes in the "health" of the company, product, team, and individual employees. Just don't forget about [Goodhart's law](https://en.wikipedia.org/wiki/Goodhart%27s_law).

What can be a signal:

- Changes in the artifact creation rate may indicate changes in employees' workload.
- Changes in the types of artifacts being produced may indicate a shift in development focus or in properties of the product.
- Changes in artifact quality may indicate employee burnout or deterioration of development processes.
- The distribution of artifacts across types can point to the quality of related development processes.
- The average number of authors per artifact can correlate with the level of collaboration and communication inside the company.
- The strength of external response (likes, reposts, comments, forks, etc.) to artifacts can indicate how closely your development processes match best practices, and how good the company's reputation is in the professional community.

Here are some examples:

- The team has started producing significantly fewer artifacts — maybe people are overloaded with work.
- A spike in the number of patches to open-source projects can suggest the product is hitting architectural constraints, forcing you to push third-party libraries to their limits.
- The response to demos of new features may indicate whether the chosen direction of product development is correct.
- Frequent participation in podcasts and roundtables may indicate that the product and the company are becoming more visible in the professional community.
- The popularity of the utilities you open-source may indicate that your development processes are close to best practices.

## Difficulties of shifting development toward public artifacts

Switching a company to producing public artifacts is tantamount to a paradigm shift. It's not merely a process change; it's a change in culture, mindset, and values. Accordingly, it's a long, complex, painful process, and therefore a difficult one.

However, in my view, the main difficulty lies not in the economics of the process or its structure, but in people's minds. That's why, to me, this transition looks more painful than economically risky.

There are several difficulties.

### It is scary

Most people don't understand where the real value of a given product actually lies and, at the same time, are afraid to take responsibility for accidentally revealing secrets (which usually don't exist).

In my experience, most of a product's code and the knowledge around it, even remotely, isn't some kind of secret advantage, know-how, or anything like that — it's just stuff that millions of people repeat from product to product, from company to company. And the remaining code and knowledge are, with high probability, not an advantage either. This is especially true if we only count artifacts that are "invisible" to users.

Over my career, I can recall only a couple of cases in which, with a lot of stretching, something could be called "secret" technology or "hidden" knowledge that provided a real competitive advantage.

However, such an advantage is consistently attributable to specific people, teams, and the infrastructure as a whole. After all, a product is not code and other artifacts, but a 4D system that includes not only code, but also its specific running instances, development and support infrastructure, processes, culture, and, of course, people.

A product has a time dimension, for which people are responsible, and these people are the real competitive advantage.

Simplifying, on the example of game development:

- Value is not in secret balance formulas that drive monetization, but in the people who keep the metrics collection and analysis pipeline alive, and use that pipeline to steer the evolution of those formulas.
- Value is not in particular shaders, but in the people who maintain the coherence of the game's visual style and guide its development, which, among other things, results in new shaders.
- Value is not in specific backend sharding algorithms, but in the people who keep the infrastructure running and evolving continuously, which manifests, among other things, as ongoing work on sharding.

**Since opening up artifacts benefits employees, encouraging it makes the company stronger.**

### It is expensive

Opening up artifacts requires additional resources. But those resources don't disappear into some external void; they change the properties of the product, and therefore, with competent management, they can indirectly reduce costs.

Opening up artifacts is an investment in:

- **Product quality** — people pay more attention to the quality of public work, especially when it's clearly associated with them.
- **Knowledge sharing** — public case studies and conference talks are more likely to be studied by colleagues, and in any case become a reference for solving specific problems.
- **Company reputation and hiring** — all else equal, reputation is what determines job choice for many specialists, especially top-tier ones.
- **Infrastructure, its reliability and security**. For example, a patch to an open-source project you use will definitely return to you.

Of course, there are contraindications to such a reform. If your employees aren't motivated to develop themselves and their careers, or, worse, your strategy is built around churn and squeezing people dry, then opening up artifacts is not your path.

### It is unclear

In my view, this is the hardest problem and the biggest challenge.

If you get an average mid-level or even Senior-level developer and ask them to write a post about the project architecture, they'll write some utterly awful nonsense; at best, you'll get a toothless, useless text. This is especially true in the post-Soviet space, where education doesn't systematically teach people to express their own thoughts. In the West, the situation is better, but, judging by public platforms, not by an order of magnitude.

Similar considerations apply to other forms of artifacts as well.

So, if you take a random company and postulate "Starting today, we work through open artifacts", people will get lost and start doing pointless things. As a bonus, you'll get quite a resistance, because people will not understand why this is needed — a long chain of cause and effect is significantly harder to grasp than a short one.

So you have to gradually teach employees the missing skills and persuade them, best of all, by personal example. For that, you need knowledgeable leaders and free resources — both are usually unavailable.

## How to start

Implementing a reform this broad will look very different from company to company. But if you asked me right now where to start with introducing public artifacts, I'd suggest:

1. Decide on the list of artifact forms that suit your company.
2. Choose a group of people who are willing to switch their annual review to the evaluation of public artifacts and start with them.
3. After the first review, conduct a retrospective: study the created artifacts, their impact on the company, the experience of the artifact creators and their colleagues.
4. Based on the retrospective, expand and adjust the practice.

Here are some artifacts you can start with, from simple to complex:

1. Recordings of talks at meetups and conferences. There are always active people who are happy to participate in such activities, even without motivation from the company. It won't be hard to identify them and support them in this.
2. Contribution to open source projects, especially through patches. From the outside, this may sound like a complex activity — you need to find something to fix and then fix it. But in my experience, if you're actively working on a moderately complex project, you'll encounter 5–10 open-source issues of varying size every year. Most teams work around them instead of fixing them, purely because that kind of work isn't part of the standard workflow, and people worry they'll get "scolded" for getting distracted from "product-related" work.
3. Publishing architectural-level documents. These can be formal specifications or detailed blog posts. There's always a shortage of such information in the public sphere, and it's gratefully received by the professional community. Moreover, it's an opportunity for your leads/architects to finally digest and make sense of what they do.
4. Demos of features. Demos don't work for all products, but in some cases they are very useful. For example, in game development.
5. Open-sourcing internal developments: libraries, utilities. The difficulty with this is not the danger of revealing "secrets", which usually don't exist, but that few people know how to quickly "package" open source projects and maintain them. This is a separate skill that needs to be developed.
