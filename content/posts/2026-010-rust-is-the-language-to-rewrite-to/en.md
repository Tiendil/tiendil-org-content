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

## Почему всё переписывают на Rust

Человечество закончило фазу экспериментирования с программной инфраструктурой и переходит в фазу её стабилизации.

Мы «знаем» на каких принципах должны работать sudo, coreutils, web-серверы, базы данных, пользовательские интерфейсы, etc.

Меньше необходимости экспериментировать с архитектурой и стилем программирования — меньше давление на выбор языков со свободной композицией фич.

Больше необходимости в надёжности, безопасности и предсказуемости — больше давление на выбор языков с ограничениями на композицию фич.

Rust же даёт не только надёжность, но и удобную семантику для описания стандартных/правильных/надёжных архитектур.

Это выливается сразу в два «движения»:

- Снизу — классическое «я могу сделать лучше», [я построю свой велосипед с блэкджеком и повышенной надёжностью](https://www.youtube.com/watch?v=Dk2Vyh5PRcQ) приводит к тому, что энтузиасты выбирают Rust для ~~переписывания~~ создания аналогов софта, так как Rust не мешает «сделать правильно» и защищает от попыток сделать неправильно.
- Сверху — корпорации начинают переводить инфраструктуру на Rust, так как ценность экспериментирования с кодом снижается, а издержки от багов и уязвимостей растут. Зачем экспериментировать, если всё уже стандартизировано и понятно, примерно, как оно должно работать согласно лучшим практикам?

Например, вот цитата одного из core-разработчиков Rust из его [обзора Rust в 2025 году](https://smallcultfollowing.com/babysteps/blog/2025/03/10/rust-2025-intro/):

> I see Rust's mission as making it dramatically more accessible to author and maintain foundational software. By foundational I mean the software that underlies everything else.

Foundational software — это, по сути, софт на нижних уровнях стека, который предоставляет базовую ожидаемую/стандартную функциональность для всего, что мы строим поверх него.

## Преимущества Rust

Во-первых, Rust позволяет вам надёжно создавать стандартный софт следуя подмножеству лучших практик.

В теории, под это попадает большая часть коммерческого софта и существенная часть софта с открытым исходным кодом.

Я, например, задумываюсь не переключить ли мне свою веб-специализацию с Python на Rust, так как стандартнее современного веба сложно что-то придумать.

Во-вторых, из-за ограничений на вариативность Rust должен хорошо подходить для разработки через coding agents — значительно сужается пространство для ошибки (если вы запретите `unsafe`).

В-третьих, как следствие вынужденного следования лучшим практикам, стандартная библиотека Rust и ядро его экосистемы довольно хороши.

На этом эту секцию можно закончить. Получается, что Rust — это этакая рабочая лошадка чтобы делать рутинную инженерную работу.

## Недостатки Rust

Проблемы Rust происходят оттуда же, откуда и его преимущества — от ограничений на композицию фич.

### Высокий порог входа

Вы не можете выбрать подмножество языка и начать на нём делать более-менее сложный проект — вам нужно держать в голове весь язык.

В противном случае вы будете методично упираться в стену, изучать что-то новое и переделывать свою работу, пока опять не упрётесь в стену.

Это тяжело для опытных программистов, потому что многие из них (включая меня) привыкли изучать вещи методом научного тыка. Особенно, когда на кону нет человеческих жизней, финансовых потерь и прочих страшных вещей.

К слову, по моим наблюдениям, Rust стал последним языком, с которым были трудности у LLM.

### Дорого прототипировать и экспериментировать

Классическое прототипирование предполагает, что весь прототип или его часть выкидывается после проверки гипотезы.

Скорость получения видимого результата на порядки важнее качества, надёжности — чего угодно. Поэтому при прототипировании мы всегда максимально срезаем углы, пользуясь знаниями о том, как прототип будет использоваться и видением всей прототипируемой системы.

Например, если я делаю библиотеку, которую буду использовать только я и только в однопоточном режиме, я вообще не хочу задумываться о синхронизации, нарушении инвариантов, etc. Я не хочу знать как Rust делает многопоточность, я не хочу учить как он это делает и я не хочу прописывать что-то для этого в моём коде — этот код будет выброшен через месяц. Я просто хочу написать код, который работает и проверить гипотезу. Независимо от того, что используемые мной сторонние библиотеки или стандартные контейнеры рассчитаны на использование во многопоточных сценариях.

Или вот я не хочу думать кто/что владеет данными, потому что абсолютно уверен, что вот конкретно в этом куске системы это абсолютно не важно, а, если даже важно, то не повлияет на полезность прототипа.

В Rust срезать углы сложно, даже с `unsafe`. Например, `unsafe` не снимает ограничения на контроль времени жизни данных.

На мой взгляд, именно поэтому разработка игр на Rust всё ещё не получила широкого распространения. Gamedev — это одна из немногих оставшихся областей, где прототипирование и экспериментирование всё ещё важны и, возможно, останутся важными в обозримом будущем.

Поэтому рекомендую прототипировать не на Rust, а потом переписывать результат на Rust, когда уже понятно как этот результат должен работать. Вот, например, человек [спрототипировал файловую систему на Python, а потом переписал её на Rust](https://www.reddit.com/r/programming/comments/1mgr7tv/posted_a_couple_of_weeks_ago_about_progress_i_had/).

### Сложно варьировать качество кода

Логика примерно та же, что и с прототипированием, но в данном случае речь о том, что разные части одного проекта могут иметь разные требования к качеству.

Определённое варьирование возможно, например, в том насколько параноидально обрабатывать ошибки, но в целом, говнокодить в одной части и писать красивую архитектуру в другой будет сложнее.

### Rust подталкивает к overengineering

Поскольку Rust мешает писать ~~простой~~ плохой код и, одновременно, даёт инструменты для написания ~~сложного~~ хорошего кода, получается, что он сдвигает баланс в сторону более сложного кода.

А как известно, нет предела совершенству. Играть трейтами, организовать абстракции удобно и увлекательно — это как решать олимпиадные задачки.

Вот цитата от разработчика, который 4 года писал на Rust, из поста [Everybody's so Creative!](https://daymare.net/blogs/everbody-so-creative/):

> I love the language – but I'm starting to think the ecosystem has an abstraction addiction. Or: why every Rust crate feels like a research paper on abstraction.

У меня ровно такие же впечатления.

### Возможные проблемы в будущем

C++ упёрся в требование тотальной обратной совместимости и закостенелость комитета.

Rust может стать жертвой своей же жёсткости, так как она ограничивает не только ваш код, но и дизайн языка. Чем больше жёстких связей между его механизмами, тем сложнее вносить изменения в язык и тем сложнее добавлять новые механизмы, так как они должны быть согласованы с уже существующими и не нарушать их.

Добавление механизма, который жёстко связан со всеми остальными, будет автоматически приводить к квадратичному росту когнитивной сложности языка.

Это же приводит к огромным задержкам при добавлении новых важных механизмов:

- [Добавление Generic associated types потребовало больше 6 лет](https://blog.rust-lang.org/2022/10/28/gats-stabilization/).
- [Задаче на специализацию генериков уже 10 лет](https://github.com/rust-lang/rust/issues/31844).

Более того, текущие правила traits уже частично ограничивают ~~потенциальное~~ развитие экосистемы библиотек. Из-за того, как работают traits, происходит очень сильная привязка экосистемы к набору ключевых third-party библиотек, например, к [serde](https://serde.rs/) — фреймворку сериализации. Если в будущем кто-то создаст более удобный фреймворк, перейти на него будет очень сложно, так как потребуется прописывать его поддержку во всех библиотеках экосистемы (как это сейчас сделано для serde). Само собой, такая библиотека не одна и получается, что жёсткость Rust приводит к такой же жёсткости экосистемы. Если ничего не поменять, то в будущем это может привести к стагнации языка.

Вот отличный пост про проблему и как её пытаются решать: [An Incoherent Rust](https://www.boxyuwu.blog/posts/an-incoherent-rust/).

### Влияние Rust на надёжность софта может быть преувеличено

В посте [In Defense of C++](https://dayvster.com/blog/in-defense-of-cpp/) Dayvi Schuster приводит сильный аргумент:

> …any rewrite of an existing codebase is going to yield better results than the original codebase.

То есть надёжность и безопасность софта, который пишут на Rust, может быть не только следствием его семантики, но и того, что:

1. Мы в целом начали писать софт более качественно, выбирать более правильную архитектуру.
2. В случае переписывания на Rust, все существенные ошибки уже сделаны разработчиками оригинального софта, а архитектура уже проверена временем, поэтому переписывающим разработчикам достаётся изначально менее сложная и рисковая задача.

### Rust выдвигает высокие требования к способностям программиста

Команда разработчиков на Rust будет крутой и дорогой — этот вариант подходит не всем компаниям и не всем проектам. Ошибки в архитектуре софта на Rust будут происходить реже, но могут стоить существенно дороже из-за потенциальной «фундаментальности» на уровне проекта.

ИИ, в теории, может снизить требования к уровню разработчиков, но пока что это, скорее, теория. [Мой личный опыт с coding agents]{post:notes-on-coding-agents} говорит, что агенты отлично справляются с кодом, но очень плохо с архитектурой и долгосрочным планированием. Большинство проблем в вашем проекте на Rust будет как раз из-за ошибок в архитектуре.

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
