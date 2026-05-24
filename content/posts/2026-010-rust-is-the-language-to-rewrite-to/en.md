---
title = "Rust is the language to rewrite to"
tags = ["theory", "practice", "development", "rust"]
published_at = "2026-05-25T12:00:00+00:00"
seo_description = "An opionated view on Rust, its advantages and disadvantages, and why people keep rewriting everything in it."
seo_image = "cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "Rust is steadily refactoring humanity's codebase."
///

About 5 years ago, I was going through Rust documentation and decided that [I didn't like Rust]{post:@choose-nearest-language:why-i-dont-like-rust}.

The last year, I decided to prototype some game logic and chose Rust for that task, as I couldn't find anything better: [Zig](https://ziglang.org/) looked too young, and [C++](https://en.wikipedia.org/wiki/C%2B%2B) is getting more and more ~~dead~~ complex and complicated with every standard.

As a result, I wrote 10 pages of notes on my experience, which unexpectedly boiled down to a compact statement in the title. And if you are too lazy to read further, then this is a praise, not a criticism.

However, I still stick to my opinion from the previous post:

> A good tool shouldn't constrain its user, because the tool's developer can never anticipate every possible use case.

According to my understanding ~~of beauty~~ of how technology works, a programming language built on Rust's principles should have a near-zero chance of success. However, the de facto situation is exactly the opposite: Rust is rapidly gaining popularity, and after working with it, I have to admit that it's a good and powerful tool. ~~But good grief, it's just wrong. Who does things this way?~~

From my point of view, Rust's success is caused by two factors:

- The tremendous professionalism and experience of its creators and core team.
- The maturity of the software development industry.

I'll try to concisely describe the primary conceptual difference between Rust and other languages; why that difference is both its strength and its weakness; and why, for several years now, there has been an ongoing trend of rewriting everything in Rust.

/// note | This post is based on strictly subjective experience

I used Rust for only a year; for prototyping and experimentation; in game development.

Consequently, I'm not in a position to claim expertise in Rust, or an unbiased view of it.

For example, some complexities I experienced could be caused by the fact that I was simultaneously prototyping and learning the language. I.e., a consequence of my choice, rather than properties of the language.

At the same time, I have enough development experience to extrapolate from that year to more general cases and form my own subjective opinion on the matter. That is what I will do in this essay.

///

<!-- more -->

## The cost of composition

[Composition wins over inheritance]{post:@chose-nearest-language:composition-vs-inheritance} in most general cases due to better flexibility, more variability, less coupling, and, consequently, better maintainability of the result.

That's why most programming languages are organized around orthogonal rules/mechanisms/components that developers can combine and use at their discretion.

### You don't pay for what you don't use

Since ancient times, the default convention has been that language features should compose according to the principle: "you only pay for what you use". For example, in C++, this is even one of key design principles: "What you don't use, you don't pay for". This is often interpreted as a performance requirement, but in my view, it also applies to the mental load on the programmer.

For example:

- In C++, if you don't use exceptions, you have no need to think about how they work, you don't need to use their syntax in your code, you don't need to provide special optimizations for them, and so on.
- In Python, if you don't want to use classes, you simply don't use classes.

Some languages partially deviate from this principle. For example, historically ([until the requirement was relaxed in 2025](https://openjdk.org/jeps/512)), Java required you to use classes even if you didn't need their capabilities, but this is more a case of pushing one of the features to the extreme rather than a rejection of the principle itself.

As a consequence of this approach, language features do not restrict the use of each other. For example, in C++, you can use classes, exceptions, templates, lambdas, and so on in any combination you need.

**By composing language features without restrictions, a programmer can create very efficient, powerful, and flexible systems — if they are a professional. Or create buggy systems with a million security holes if they lack professionalism.**

Moreover, and this is important, without restrictions on feature composition, it becomes much easier to experiment — trying different architectural solutions, patterns, programming styles, etc.

### You'll pay for everything

Rust chose a different path.

Its features are still orthogonal to each other, but only in terms of responsibility for something, not in the ability to turn their use on/off or compose them in any way. Instead, they require you to use them in conjunction with other language features in very particular cases. Instead of Lego bricks, you get a welded rigid grid in which you must somehow fit your architecture and code. Nodes of such a grid become global invariants that you must follow and can not break or bypass.

As an example, you can not "just not use lifetime" (place there borrow checker, traits, etc.) — you must either use it or build your aritecture in a highly specific way around it (if that is even possible).

This sharply reduces variability — limits the ability to experiment, but at the same time, limits the ability to make mistakes.

The present of global invariants imposes certain architecture decissions, which in many cases can be considered best practices. **Rust forces you to implement a more ~~good~~, ~~right~~, reliable architecture whether you need it or not.**

To be productive, a Rust programmer has to keep all of the language’s mechanisms in mind at once: standard traits, lifetime rules, borrow-checker rules, and so on. Moreover, they have to keep them in mind not in isolation, but together with all possible interactions and constraints on composition.

/// note | Learning Rust as a professional or a beginner

The need to keep the entire language, with all its nuances, in your head creates a high barrier to entry.

In my opinion, that explains a popular opinion, that it is easier for a begginer to enter into the language than to a professional to switch to it.

A beginner learns from the start to think within the constraints. A professional already has experience composing code without those constraints, and starts bumping into Rust's ~~restrictions~~ invariants on every line of code.

///

The convenience and usefulness of a language built on such principles will be determined primarily by the quality of chosen abstractions and the quality of standard-library implementation. "One mistake and you're mistaken" — people won't be able to use your language for real-world tasks.

Somehow, Rust managed to do it.

I don't fully understand how. In my opinion, besides the exceptional competence of its creators, this phenomenon is clear evidence of the maturity of the software development industry — most software has become highly formulaic and Rust's designers managed to create a set of invariants that that allows those patterns to be implemented reliably.

## Why everything is being rewritten in Rust

My hypothesis is that humanity finished the phase of experimentation with "foundational" software infrastructure and is moving into the phase of stabilizing it.

~~We think that~~ We "know" the principles on which sudo, coreutils, web servers, databases, user interfaces, and so on should operate.

The less we need to experiment with an architecture and programming style — the less the pressure toward choosing languages with unrestricted features composition.

The more we need reliably, security and predictability — the more the pressure toward choosing languages with restricted features composition.

Rust, in its turn, gives not only reliability, but a convinient semantics to describe standard/correct/secure architectures.

This leads directly to two "movements":

- Bottom-up — the classic "I can do it better", [I'll build my own <place-your-tool-here>, with blackjack, and improved reliability](https://www.youtube.com/watch?v=ubPWaDWcOLU) aproaches push enthusiasts to chose Rust for ~~rewriting~~ creating alternatives to existing software, because Rust doesn't get in the way of «doing it right» and protects you from attempts to "do it wrong".
- Top-down — corporations start moving their infrastructure to Rust because the value of experimenting with code is decreasing, while the costs of bugs and vulnerabilities are increasing. Why experiment if everything is already standardized and it is roughly clear how it should work according to best practices?

As an example, here is the quote of one of Rust core team members, from the [Rust in 2025: Targeting foundational software](
from the

Rust itself is moving in roughly the same direction. For example, here is a quote from one of Rust's core developers, from his post [Rust in 2025: Targeting foundational software](https://smallcultfollowing.com/babysteps/blog/2025/03/10/rust-2025-intro/):

> I see Rust's mission as making it dramatically more accessible to author and maintain foundational software. By foundational I mean the software that underlies everything else.

Foundationa software is a wide and vague term, however, in essense, it is software on the levels below what a common user sees; a software that provides the basic expected/standard capabilities for everything that we are building on top of it.

## Advantages of Rust

**First**, Rust pushes you to create reliable standard software by following a subset of best practices.

In theory, this applies to most commercial software and a substantial share of open-source software.

I'm, for example, considering switching from Python to Rust for web development, because it is hard to imagine anything more formulaic than modern web development.

**Second**, because Rust constrains architecutre variability, it should be well suited to development with coding agents — the space for error becomes much smaller (assuming you ban `unsafe` ).

**Third**, as the consequences of following best practices, Rust's standard library and the core of its ecosystem are quite good.

We can leave this section there. It turns out that Rust is something of a workhorse for routine engineering work.

Let's better speak about Rust's drawbacks.

## Rust’s downsides

Rust's problems come from the same place as its advantages — the lattice of rigid invariants.

### The steep learning curve

You cannot choose a subset of the language and start building a moderately complex project with it — you need to keep the whole language in your head.

Otherwise, you will keep methodically running into a wall, learning something new, and reworking your code, only to run into another wall.

This is hard for experienced programmers, because many of them (including myself), are used to learning things by trial and error — especially when no human lives, financial losses, or other terrible things are at stake.

By the way, based on my observations, Rust became the last language that LLMs struggled with.

### High cost of prototyping and experimentation

The classic approach to prototyping assumes, once the hypothesis has been tested, we through away the whole prototype or a part of it.

The speed of getting a visible result is orders of magnitude more important than quality, reliability, or anything else. That is why, when prototyping, we always cut as many corners as possible, using our knowledge of how the prototype will be used and our understanding of the whole system being prototyped.

For example, if I am writing a library that only I will use, and only in a single-threaded mode, I do not want to think at all about synchronization, multi-threaded invariants violations, and so on. I do not want to know how Rust handles multithreading, I do not want to learn how it does it, and I do not want to add anything to my code to account for it — this code will be thrown away in a month. I just want to write code that works in a few particular cases? and test the hypothesis. Regardless of the fact that the third-party libraries or standard-library containers I use may be designed for multithreaded scenarios.

Or say I do not want to think about who or what owns the data, because I am absolutely sure that in this particular part of the system it is completely irrelevant — and even if it is not, it will not affect the usefulness of the prototype.

In Rust it is hard to cut corners even using `usafe`. For example, `unsafe` does not remove restrictions on data lifetime control.

In my view, this is exactly why game development in Rust still has not become widespread. Gamedev is one of the few remaining fields where prototyping and experimentation are still important — and may well remain important for the foreseeable future.

That's why I recomend to prototype not in Rust and rewrite the result to Rust when you are adlready sure how the result must work. For example, the developer [prototyped a filesystem in Python and later rewrote it to Rust](https://www.reddit.com/r/programming/comments/1mgr7tv/posted_a_couple_of_weeks_ago_about_progress_i_had/).

### It is hard to variate the code quality

The logic is pretty the same as with prototyping, but in this case it is about when different parts of the project may have different requirements to quality.

Simplifying a bit, your decision on data lifetime will affect all the places where you use that data.

Some degree of variation is possible, for example in how paranoid you are about handling errors, but overall, it is harder to write garbage code in one part of the system and keep beautiful architecture in another.

### Rust pushes you to overengineer

Because Rust gets in the way of writing ~~simple~~ bad code and, at the same time, provides tools for writing ~~complicated~~ good code, it ends up shifting the balance toward more complicated code.

And, as we all know, there is no limit to perfection. It is very convinient and fun to play with traits and build abstraction levels — it feels like solving programming-contest problems.

Here is a quote from a developer with 4 years of experience with Rust, from the post [Everybody's so Creative!](https://daymare.net/blogs/everbody-so-creative/):

> I love the language – but I'm starting to think the ecosystem has an abstraction addiction. Or: why every Rust crate feels like a research paper on abstraction.

I have exactly the same impression.

### Possible troubles in the future

C++ got stuck because of the requirement for total backward compatibility and the rigidity of the committee.

Rust may become a victim of its own rigidity, because that rigidity constrains not only our code, but also the design of the language itself. The more hard connections there are between its mechanisms, the harder it becomes to change the language and to add new mechanisms, because they have to be consistent with the existing ones and must not break them.

Adding a mechanism that is tightly coupled to all the others will automatically lead to quadratic growth in the language's cognitive complexity.

That already leads to huge delays in adding new features:

- [Adding generic associated types took more then 6 years](https://blog.rust-lang.org/2022/10/28/gats-stabilization/).
- [The task about generics specialization has already 10 yers old](https://github.com/rust-lang/rust/issues/31844).

Moreover, the current trait rules already partially constrain the ~~potential~~ development of the library ecosystem. Because of the way traits work, the ecosystem becomes strongly tied to a set of key third-party libraries — for example, [serde](https://serde.rs/) — a serialization framework. If someone creates a more convenient framework in the future, migrating to it will be complicated, because someone will need to add support for it in all the libraries of the ecosystem (as it is currently done for serde). Of course, there are more than one such library, and it turns out that Rust's rigidity leads to the same rigidity in the ecosystem. If nothing changes, this rigidity may lead to the stagnation of the language in the future.

Here is the great post on the matter and approach to fix the problem: [An incoherent Rust](ht
tps://www.boxyuwu.blog/posts/an-incoherent-rust/).

### Rust's impact on software reliability may be overstated

In the post [in defense of C++](https://dayvster.com/blog/in-defense-of-cpp/) Dayvi Schuster makes a strong argument:

> …any rewrite of an existing codebase is going to yield better results than the original codebase.

In other words, the reliability and security of software written in Rust may be a consequence not only of Rust's semantics, but also of the fact that:

1. We have generally started writing better software and choosing better architectures.
2. In case of rewriting software in Rust, all the major mistakes have already been made by the developers of the original software, and the architecture has already stood the test of time. As a result, the developers doing the rewrite start with a task that is inherently less complex and less risky.

### Rust sets a high bar for programmers

A team of Rust developers will be skilled and expensive — an option that is not suitable for every company or every project. Architectural mistakes in Rust software may happen less often, but they may cost significantly more because of a more "fundamental" level of them.

AI could, in theory, lower skill requirements, but for now it is more a theory. [My personal experience with coding agents]{post:notes-on-coding-agents} suggests that agetns handle code very well, but architecture and long-term planning very poorly. Most of the issues in a Rust project will come precisely from architectural mistakes.

## Мои личные планы на Rust

- Как человеку склонному к перфекционизму, мне Rust нравится, потому что он заставляет писать правильный код.
- Как бывшему олимпиаднику, мне Rust нравится, потому что он даёт решать прикольные задачки. Примерно уровня задач на шаблоны в C++ — по ощущениям одно и то же. Только в C++ ты решаешь такие задачи, только когда работаешь с шаблонами, а в Rust — всегда.
- Идеологически мне Rust не нравится, так как он ограничивает свободу программиста.
- В краткосрочной и среднесрочной перспективе Rust, скорее всего, будет отъедать весь рынок «стандартного» и «foundational» софта, что бы «стандартный» и «foundational» в этом случае ни значили.
- В долгосрочной перспективе я вижу риск для Rust закопать себя точно так же, как себя закапывает C++ последние 20 лет.

Поэтому сейчас я настроен переключиться на Rust, если появится такая возможность/необходимость. Но в то же время я в любой момент буду готов с него соскочить на что-то более гибкое.

## Полезные ссылки

Если вы хотите копнуть немного глубже, то вот несколько интересных ссылок:

- [Собрание реальных фактов, когда компании решали переходить на Rust или отказывались от него](https://sxlijin.github.io/2025-06-25-rust-case-studies).
- [Примеры реальных проблем Rust](https://databento.com/blog/why-we-didnt-rewrite-our-feed-handler-in-rust).
- [Визуализация сложности borrow-checker](https://nadrieril.github.io/blog/2025/12/21/the-algebra-of-loans-in-rust.html).
- [Крутейшее объяснение работы traits с картинками](https://contextgeneric.dev/blog/rustlab-2025-coherence/)
