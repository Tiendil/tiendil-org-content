---
title = "Hypothesis testing loop"
tags = [ "theory", "development", "business", "systems", "management", "interesting", "best", "vantage-on-management"]
series = "vantage-on-management"
published_at = "2025-07-24T12:00:00+00:00"
seo_description = "Optimally steer a product with the hypothesis testing cycle."
seo_image = "cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "The feedback loop (c) Hieronymus Bosch and ChatGPT"
///

/// brigid-series
tag = "vantage-on-management"
///

We generally assume that if our product has such and such attributes, then people will be willing to pay such and such money for it.

Sometimes we make assumptions explicitly:

> If we paint the sign red and light it up, the number of evenings visitors of our restaurant will increase by 10%.

sometimes we do it implicitly:

> I'll build the coolest theme park on the Moon with blackjack and AI.

but I’d venture that one can’t avoid assumptions altogether.

These assumptions we call [hypotheses](https://en.wikipedia.org/wiki/Hypothesis).

Based on these hypotheses, we change the product, measure the results, and then decide which hypotheses are right and which are not. The correct hypotheses remain in our worldview and product, we abandon the incorrect ones. After that, we form new hypotheses and repeat the cycle.

This cycle runs perpetually while the product exists and is a special case of the [feedback loop](https://en.wikipedia.org/wiki/Feedback_loop).


There’s a wealth of literature on this cycle, its implementation, and its various nuances. The best practices are packaged into [kits for every taste]{post:@choose-nearest-language:genes-memes-memeplexes}: from intricate [system engineering](https://en.wikipedia.org/wiki/System_engineering) to [Lean Startup](https://en.wikipedia.org/wiki/Lean_startup) and [Agile](https://en.wikipedia.org/wiki/Agile_software_development). The cycle itself is known by dozens of acronyms: [PDCA](https://en.wikipedia.org/wiki/Plan–do–check–act), [OODA](https://en.wikipedia.org/wiki/OODA_loop), [DMAIC](https://en.wikipedia.org/wiki/DMAIC), [8D](https://en.wikipedia.org/wiki/Eight_disciplines_problem_solving) — too many to count — every self-respecting guru-consultant with a book under their belt adds a new one.

Kicking off the feedback loop is absolutely crucial — without it, the product is toast, as any other endeavor.

However, it's not enough just to launch the loop — what you do within it is just as important.

The latter isn’t covered as thoroughly in the literature as it should be. One thing is to look at simplified cases in books. Another is to steer a real-world product in real-time with all its complexity, opacity, confusion, delays, data gaps, and so on.

That's why, in this long essay, I’ll try to delve deeper into one specific stage of the feedback loop that’s often unjustly overlooked — hypothesis synthesis.

<!-- more -->

## Yet another feedback loop description

To not fall behind the trends and be on the same page with you, here’s my take on the cycle:

1. **Data collection** — we gather data about the current state of the system and its environment.
2. **Analysis** — we clean up the data: structure it, identify patterns, group it — reveal the orthogonal properties of the system that we can operate with in the next stage.
3. **Synthesis** — we form hypotheses based on the identified properties.
4. **Implementation** — we make changes to the system based on the hypotheses.

/// brigid-images
src = "./simple-feedback-loop.png"
caption = "Simple feedback loop"
///

The **data collection** and **analysis** stages are well-studied and documented, especially for startups.

The **implementation** stage is largely a socio-engineering challenge. Once you’ve determined exactly what needs to be done or achieved, there’s usually no more conceptual complexity — only technical one: how to implement it, how to launch it, how to evaluate the results within the available resources.

However, when it comes to **synthesis**, things get trickier. Often, synthesis is assumed obvious: you see the data after analysis, and hypotheses just pop into your head. There’s literature on synthesis too, but it seems that fewer people are familiar with it compared to other stages.

### Hypothesis synthesis

I won’t argue that people have thoughts in their heads — that’s a well-known fact. However, spontaneous ideas are not the best we can use. Anyone who has worked in front-line positions where ideas come from above will understand what I mean :-)

A diverse range of practical approaches has been developed for hypothesis synthesis: from a predefined list of heuristics in [TRIZ](https://en.wikipedia.org/wiki/TRIZ) to [morphological analysis](https://en.wikipedia.org/wiki/Morphological_analysis_(problem-solving)) and optimizations on it. I even once created a [tool for morphological analysis]{post:@choose-nearest-language:morphologic-is-open-source}.

A comparative analysis of these approaches would make an excellent essay topic — but let’s save that for another time.

In this text, I'll try to approach hypothesis synthesis not from the "bottom up" — from specific practices, but from the "top down" — from the general attributes of products and hypotheses. We’ll discuss which product attributes are most suitable for hypothesis generation and what general approaches to hypothesis search exist.

By the end, we'll formulate a hypothesis-search algorithm that should significantly improve the quality of product hypotheses —  and, by extension, the product itself.

/// note | Nested systems and feedback loops

Formally speaking, any complex system, including any product, is a collection of nested (sub)systems where each can have its own feedback loop. Moreover, each stage of the loop can contain a similar "child" loop focused on optimizing a specific stage of the parent loop.

For example:

- The marketing department can research advertising placement approaches.
- The development team can experiment with different technologies.
- The market data collection stage can be optimized by testing hypotheses about the best sources of information.

//// brigid-images
src = "./complex-feedback-loop.png"
caption = "Как всё работает в реальности"
////

I'll set those nuances aside and talk about the product as a consolidated system with just one feedback loop. For two reasons.

Firstly, it will be simpler and clearer. Excessive details would complicate the text without adding new information.

Second, there's a fundamental distinction between the environment in which the whole product exists and the environment in which its subsystems exist. The product's environment is the real world — we don't control it and understand it poorly. The subsystem's environment is our company's environment — we control it (!) and understand it much better.

That’s why formulating hypotheses about the end product is far more challenging than doing so for its subsystems. This text is devoted to that very challenge.

Third, we should steer the end product itself, not its components. We partially discussed this in [the previous post]{post:points-of-view-on-a-product} and will continue the discussion here.

///

## We draw hypotheses from models

Each of us carries internal pictures of how the world and everything in it works. We call these pictures [mental models](post:@choose-nearest-language:life-and-work-with-models).

We can apply these models to different situations and see "what if":

- If I cross the street on a red traffic light, a car will hit me.
- If I cross the street on a red traffic light in the forest on Cristmas Eve, I probably won't get hit, as there won't be any cars.

**If you think you’re not using mental models, it only seems that way.** Even intuition just taps into hidden models of reality deep within our brains that we’re not aware of.

Models may not only be mental:

- Spreeadsheets — for quantitative metrics — calculate EBITDA, analyze sales funnels, etc.
- Text documents, mind maps, etc. — for things that are hard to express in numbers.
- Sophisticated algorithmic tools — for cases demanding special accuracy or insight.
- Reports from the authoritative sources — when we trust others more than ourselves.
- …

Countless possible variations exist. For the purposes of this essay, it doesn't matter which models you use (there are more than one, right?) — what matters is how you use them.

**We can test how a product model behaves when we tweak product attributes. If the model's behavior intrigues us, we have found a hypothesis: "With such changes to the product attributes, the product will behave in such a way."** We can then try applying it to reality and see what happens.

The bravest among us, of course, don't bother testing models — they change the real product — feedback is much faster, after all :-) But I'd still recommend leaning on one of humanity's greatest achievements: common sense.

/// hint | How detailed should a hypothesis be?

Let's be honest, most people rarely formulate hypotheses in any explicit way. More often, a hypothesis sounds like this:

> Something in the product will grow if we do something unnecessary.

or

> I swear on my life — every client wants this, so there's no need even to ask them.

Often, it’s hard to obtain even a well-defined qualitative formulation such as

> We'll increase user retention if we implement feature X.

Hypotheses with clear numerical predictions are even rarer. Most people don't see the point of doing it — and don't believe it's even possible.

At the same time, formulating a hypothesis with maximum thoroughness **before** implementing changes and measuring results is, sorry for the tautology, a maximally necessary action.

First, this requirement stems from [Popper's falsifiability criteria](https://en.wikipedia.org/wiki/Falsifiability) — one of the fundamental concepts on which we've built science for the last 100 years. We build engineering and business on it too, but not everyone notices this. By the way, I hope to dedicate one of the future posts to the topic of the similarity between science and software engineering.

The approach of "Let's do it without a prediction, then look at the results and draw conclusions" systematically fails. It leads to incorrect long-term conclusions and loss of significant information. This approach is so harmful that scientists even coined a special term for it [HARKing](https://en.wikipedia.org/wiki/HARKing) — Hypothesizing After the Results are Known — to shame those who use it.

Second, the more thoroughly you formulate a hypothesis, the more you'll learn after validating it.

Of course, there’s no guaranteed effective way to extract precise predictions from models, especially numerical predictions from our heads. After all, models are simplifications of reality, hence the loss of accuracy. But that doesn't mean we shouldn't try. The more detailed (and justified) our prediction is, the more accurately and thoroughly we can assess its error, and the better we can adjust our models after validating this prediction.

Third, quantitative statements are useful for comparing hypotheses. And without comparison, how do we choose what to focus on first?
///

## Hypothesis search space

Regardless of its form, your product model is a network of cause-and-effect relationships that define what affects what. Each node in this network is a property of the product or of its subsystem. Remember when we [looked at the product from different points of view]{post:points-of-view-on-a-product}, we discussed that a product is not just what the user sees, but also the team, processes, side artifacts — everything that participates in delivering the desired outcome to the user.

If we change a property of one of the nodes (a product attribute), the changes will start propagating through the network in two directions:

- Forward through the chain of causality: what consequences will the change lead to — which other nodes will change and how.
- Backward through the chain of causality: which other nodes we need to change to achieve a change in this node.

We may experiment with any node in the network, even with several at once. The pattern of change propagation will depend on which node you alter.

/// brigid-images
caption = """Simplified illustration of a product causality network.

In reality, of course, everything is much more complicated: a lot of reverse and bidirectional links, many more types of nodes, and generally no idea what's going on — about like in the fourth picture."""
galery_class = "brigid-images-2-in-row"

[[images]]
src = "./causality-net-1.png"
alt = "Changes propagation if we change an downstream product attribute."

[[images]]
src = "./causality-net-2.png"
alt = "Changes propagation if we change an upstream product attribute."

[[images]]
src = "./causality-net-3.png"
alt = "Changes propagation if we change something in the middle of the network."

[[images]]
src = "./causality-net-4.png"
alt = "More realistic picture of changes propagation"
///

For example:

1. If we want to change a downstream product attribute, like release frequency, we need to modify the components it depends on: workflows, team, maybe technologies. At the end, changing one downstream attribute may require changes across nodes in the causal chain that lie upstream of it.
2. If we plan to fire a team member, the changes triggered by this will propagate forward through the causal chains and may affect numerous downstream product attributes at once.
3. We can also change something in the middle of the network, like a specific workflow. In this case, the changes and required changes will start propagating in both directions. Since the distance to both upstream and downstream nodes is shorter, both "wings" of the changes will be smaller.

/// note | downstream and upstream attributes

For convenience, I’ll refer to certain product properties as "downstream" and "upstream". These terms should be understood specifically in the context of a causal network:

- **downstream attributes** — these are properties/components that are more a consequence of changes in other nodes of the network than a cause of changes in them. For example, release frequency is a consequence of the work of the team, processes, technologies, and so on, but it has little influence on the internal state of the product.
- **upstream attributes** — these are properties/components that are more a cause of changes in other nodes of the network than a consequence of changes in them. For example, specific team members usually influence a large number of downstream product attributes but are not influenced by them.

Since the product is a complex chaotic system, I won't overly formalize these concepts, for instance, I won't claim that downstream attributes should not affect anything at all. For the purposes of this essay, the above fuzzy definition is sufficient.
///

The more wisely we choose the nodes for our experiments with product models, the better our hypotheses will be, the faster and more effectively we'll change the product — the more successful it will be.

This naturally raises a reasonable question: what's the best strategy for hypothesis discovery?

## Trivial strategies for hypothesis search

- **Brute force** — we methodically check what happens if we change each possible node in the product model.
- **Random search** — we try to change random model nodes, hoping for a lucky hit.
- **Using ~~intuition~~ experience** — almost like random search, but we strive to use our brains to avoid wasting time on completely meaningless options.

Obviously, brute force and random search are not the most effective strategies, as product development is a complex and endeavor:

- Brute force will take too long, as the number of possible changes is enormous.
- Random search will be ineffective, as the number of potential negative and neutral changes is orders of magnitude greater than the number of positive ones. Just like in biology.

I’ve got nothing against intuition or experience — use them myself, and they even work sometimes :-) But they do come with a few problems:

- Not everyone has them.
- The area of their positive application is usually narrower than it seems. You might have experience in one or two very specific areas, but it's unlikely you'll have enough experience in all the areas that are significant for the product.

Experience and intuition work well for "basic" changes like "any seasoned specialist in X knows you should do Y if Z". Following such hypotheses can help you build an average product, maybe slightly above average, but you'll miss out on numerous more effective local improvements — they would slip through the wide mesh of the intuition-and-experience sieve.

Are there better strategies, more effective ones?

Yes, there are. The simplest thing we can do is narrow down the search area of potential hypotheses. To do this, let's think about what kind of hypotheses would be more convenient to steer the product. I’ve already touched on this topic in [the previous post]{post:points-of-view-on-a-product}.

## Heuristics for useful product hypotheses

At its core, a hypothesis is a statement like: "If we pull levers X, Y, and Z, then changes A, B, C, D, E will happen in the product."

It’s clear that some levers are easier to work with than others. That means we can narrow the hypothesis search area to only include hypotheses with convenient levers.

To achieve this, let's use a few heuristics that I hope are obvious-enough :-)

**The more levers we need to move simultaneously, the harder it is to steer.** Therefore, ideally, hypotheses should be about influencing one attribute/component at a time.

**The downstream attributes often matter more to us than others.** After all, usually, the whole product development is about achieving specific downstream attributes like sizable revenue.

/// note | "Downstream" attributes vs "external" attributes

Besides the downstream and upstream attributes, if we look at the product as a whole, we can distinguish between external and internal attributes.

External attributes are how our product looks from the outside: graphical interface, money earned and spent, user behavior metrics.

Internal attributes are how our product is structured internally: company culture, work processes, colleagues' peculiarities.

In good old times, one could draw a strong equivalence between downstream and external attributes, as everyone prioritized maximizing external efficiency of the product/company.

I don't like color-based terms, but since they are popular these days…

The statement about the unconditional importance of external attributes is true for orange organizations, which are focused on maximizing external efficiency. It also holds true for the types of organizations that were before the orange ones.

However, for the rising new type of organizations — [teal](https://en.wikipedia.org/wiki/Teal_organisation) — some internal attributes can be as important as external ones, such as team culture, the number of trees planted, or the average lifespan of people in the neighborhood of a medical organization.

In the logic of this post, such internal attributes are also considered as downstream attributes, as they correspond to the "convergence points of the company's efforts". Therefore, throughout the remainder of this text, let's remember that  downstream attributes can be both external and internal.
///

**We want to manage the product measurably**, preferably using quantitative metrics, which are essentially quantitative attributes of the product. It's just more convenient. When steering the product, we need to understand that we are currently in state A with certain attributes, and if we change something, we should arrive at state B with certain attributes within a certain time frame.

**The longer the chain of cause-and-effect between the effort application point and the managed thing, the harder it is to steer**, the more noticable will be the divergence between actual changes and predicted ones. In other words, if we are interested in specific changes in attribute X, we should try to manage it through the node X itself or its immediate causal environment.

**Individual major changes produce clearer and more traceble effects than multiple small ones.** Multiple small changes lead to a complex network of dependencies and, consequently, a complex flow of non-obvious consequences that are hard to track and even harder to direct without errors. In this context, I like the advice of [Sid Meier](https://en.wikipedia.org/wiki/Sid_Meier) — a legendary game designer and creator of the [Civilization](https://en.wikipedia.org/wiki/Civilization_(video_game)) series — about changing game balance parameters:

> Double it or cut it in half. You are more wrong than you think.

## Набрасываем стратегию поиска гипотез

Опираясь на эвристики, мы можем утверждать, что **нас интересуют гипотезы об изменении единичных конечных свойств продукта через измеримые единичные изменения в их ближайшем причинном окружении**. Например, всё тот же случай с уменьшением процента отказов от подписки через ускорение работы поддержки.

/// note | Помним, что всё влияет на всё
Найти рычаг переключение которого приведёт к изменению единственного свойства продукта — задача непосильная. Как мы обсуждали в предыдущем посте, продукт — это сильно связанная [хаотическая](https://ru.wikipedia.org/wiki/Теория_хаоса) система — небольшое изменение неизбежно повлечёт распространение изменений по всей системе.

Суть не в том, чтобы найти именно изменение `X->Y`, а в том, чтобы среди всех возможных следсвий единичного изменения `X` выделялось одно или несколько существенных и множество малых и/или незначимых.

Например, утрируя

> Если мы сделаем фичу X, то у нас вырастет LTV на 10%, DAU на 30%, а остальные показатели, как мы ожидаем, будут случайно колебаться на 0.1%.
///

Соотнесём это утверждение с эвристиками:

1. Мы стремимся использовать один рычаг для влияния на небольшое множество свойств.
2. Мы стремимся делать гипотезы об изменении конечных свойств продукта.
3. Мы стремимся делать гипотезы об измеримом влиянии на измеримые свойства, поскольку конечные свойства продукта измеримы лучше, чем внутренние.
4. Мы стремимся избегать длинных цепочек причинно-следственных связей, для чего манипулируем свойствами продукта из причинного окружения целевого свойства. Подробнее про длинные причинно-следственные цепочки будет ниже.
5. Мы стремимся минимизироть количество точек изменения.

То есть **мы управляем продуктом как единым целым**, а не пытаемся рулить каждой его частью отдельно — это соотносится с выводами из предыдущего поста.

/// hint | Аналогия с управлением автомобилем
Интерфейс управления автомобилем заточен на то, чтобы водитель управлял машиной как единым целым.

- Водитель может ускорять его, замедлять, оценивать положение в пространстве через зеркала, и так далее.
- Водитель не управляет каждым колесом отдельно, не управляет каждой свечой зажигания, не регулирует давление в шинах в реальном времени и так далее.

Есть исключения в виде спортивных автомобилей, трюковых и прочих специализированных машин, но в подавляющем большинстве случаев управление автомобилем — это управление единым целым.

Резкий рост сложности управления при увеличении его глубины можно заметить даже на примере коробки передач: переходить с автоматической на механическую довольно сложно, хотя сам автомобиль концептуально остаётся тем же самым.
///

### Длинные цепочки причинно-следственных связей неизбежны

Выше я указывал, что мы стремимся избегать длинных цепочек причинно-следственных связей. Однако полностью их не избежать — любое наше вмешательство неизбежно распространится широко и глубоко по цепочке причинности.

Суть хорошей гипотезы не в том, чтобы учесть все возможные последствия, все возможные пути распространения изменений — это редко возможно.

**Суть хорошей гипотезы в том, чтобы локализировать и максимально точно предсказать существенные для нас изменения.** Именно тогда мы сможем эффективно использовать предсказание: изменить продукт понятным нам образом и получить необходимый нам результат. Обратите внимание, под существенными изменениями я понимаю не только положительные, но и отрицательные.

Чем короче цепочка причинности от нашего рычага к интересным нам свойствам продукта, тем точнее мы сможем предсказать изменения в них, тем проще нам будет добиться этих изменений.

Все остальные «побочные» изменения, которые неизбежно распространяются дельше и глубже, мы можем считать следствиями жизнедеятельности продукта и работать с ними в рабочем порядке. Иногда это ознаечает какие-то стандартные рутинные действия. Иногда мы будем пропускать существенные негативные следствия и у нас будет появляться новая крупная проблема — [все неизбежно ошибаются]{post:life-and-work-with-mistakes} — это нормальный процесс, важны не факты ошибок, а их частота.

### Метрики поведения продукта как рычаги и целевые показатели

Поскольку мы:

- Заинтересованы в управлении конечными свойствами продукта через их ближашее причинное окружение.
- Рассматриваем продукт как единое целое, а не набор отдельных частей.
- Хотим управлять продуктом через измеримые свойства.

Можно утверждать, что **нам интересно манипулировать метриками поведения продукта во внешней среде** — количественным измерением того как он взаимодействует с ней. Обычно это метрики взаимодействия с пользователями, клиентами, потоки ресурсов в продукт и из него, etc.

Причём метрики могут быть как нашими целевыми показателями, так и рычагами с помощью которых мы пытаемся влиять на них.

Давайте наконец обсудим что есть что и как соотносится с метриками.

/// note | Другие термины

Амазон использует термины [input/output metrics](https://workingbackwards.com/concepts/input-metrics/) примерно в таком же смысле как рычаги и целевые показатели в этом тексте.

Также я встречал отсылки на leading/lagging indicators, как на аналогичные по значению термины, но, на мой взгляд, они про другое.
///

**Целевые показатели** определяются нашим видением продукта, стратегией его развития и логикой его иммунной системы; они отображают наши цели, ценности и риски. Это что-то, что мы безусловно хотим достичь, увеличивать или предотвращать.

Например, если мы делаем MMORPG, одним из наших стратегических показателей будет Life Time пользователей, оно для нас критично даже в отрыве от прямых доходов, так как ценность MMORPG для игрока определяется её сообществом и нам важно наличие активных игроков, даже если некоторые из них приносят недостаточно прямого дохода. С другой стороны, если мы делаем гиперказуальную однодневку, то LT для нас имеет значительно меньший приоритет — мы знаем, что эта метрика будет низкой — это часть нашей стратегии.

Риски тоже могут порождать целевые показатели. Например, мы можем хотеть чтобы время исправления уязвимостей не превышало установленный барьер. Эта метрика также не относится непосредственно к прибыли, но она важна для увеличения предсказуемости нашего планирования — устранения непредвиденных ситуаций, которые могут перевернуть все планы нашей работы.

Мы не можем изменить целевые показатели напрямую, но можем влиять на них через сеть причинно-следственных связей, которые связывают их с рычагами.

/// hint | North Star Metrics

Целевые показатели семантически близки к [North Star Metrics](https://mixpanel.com/blog/north-star-metric/).

Термин этот пока не до конца устаялся, но значит что-то вроде «метрики, которые наиболее хорошо предсказывают/характеризуют долгосрочный успех компании».

Предлагаю не разбираться одно это и тоже с нашими целевыми показателями или нет, достаточно, что это концептуально близкая штука и по ним есть интересные посты в сети.
///

**Рычаги** — это метрики, на которые мы можем влиять непосредственно, они находятся под прямым контролем команды.

Например: скорость загрузки страницы сайта, время ответа поддержки, количество багов в релизе, структура пользовательского интерфейса (выраженная количественно, например, в скорости выполнения типичных задач).

Метрики рычагов, часто могут становиться [KPI](https://en.wikipedia.org/wiki/Performance_indicator).

Основная разница между рычагами и целевыми показателями в том, что целевые показатели, обычно известны, а рычаги нужно активно искать.

Мы ищем рычаги разворачивая цепочку причинности от целевых показателей к узлам, которые мы можем контролировать предсказуемым и понятным образом. Мир сложная штука и все ошибаются, поэтому важно не только найти «какие-то рычаги», но и ретроспективно анализировать влияние их измерений на целевые показатели — проверять сработала гипотеза или нет. Если гипотеза не сработала, велика вероятность, что мы неправильно оценили влияние рычага на целевой показатель, либо неверно сформулировали саму метрику.

/// note | Пример поиска правильной метрики от Amazon

К сожалению я пока не добрался до [Working Backwards](https://www.amazon.com/Working-Backwards-Insights-Stories-Secrets/dp/1250267595) — книги о рабочей культуре Amazon, но хочу привести показательный пример из неё. Сам пример взят из поста [Goodhart's Law Isn't as Useful as You Might Think](https://commoncog.com/goodharts-law-not-useful/) (у меня есть [заметки по его мотивам]{post:goodharts-law-not-useful}).

В какой-то момент Amazon решил, что хорошей метрикой-рычагом будет «количество новых страниц с информацией о товарах». Метрика стала KPI.

Вскоре обнаружилось, что команды начали создавать огромное количество страниц с товарами, которые не пользовались спросом и не приводили к росту доходов.

Пришлось запускать эволюционную оптимизацию метрики, которая в итоге прошла через ряд итераций:

- Количество страниц с информацией о товарах.
- Количество просмотров страниц с информацией о товарах.
- Процент просмотров страниц товаров с товарами на складе.
- Процент просмотров страниц товаров с товарами на складе и готовыми быть доставленными за 1-2 дня.
///

## Алгоритм поиска гипотез

Как итог наших рассуждений, мы можем сформулировать следующий алгоритм поиска гипотез:

1. Определяем наши целевые показатели (North Star Metrics).
2. Для них рисуем карту причинности, которая связывает их с «гипотетическими» метриками-рычагами. [Пример можно найти у Amazon](https://workingbackwards.com/concepts/input-metrics/).
3. Анализируем каждый рычаг:
    - как он влияет на целевые показатели;
    - какое существенное влияние он может оказывать на другие свойства продукта;
4. Выбираем удобные нам рычаги и формулируем гипотезы вида «Если мы достигнем увеличения метрики X (на N%), то целевой показатель Y вырастет (на M%) за T времени».
5. Самые интересные гипотезы берём в работу.
6. После реализации гипотез, анализируем новое поведение продукта, сравниваем с ожидаемым.
7. Если гипотеза не работает:
    - или пробуем оптимизировать её рычаговую метрику — возвращаемся на этап 2;
    - или отказываемся от гипотезы — откатываем изменения или замораживаем их развитие.
8. Если гипотеза работает, продолжаем ей следовать.

/// hint | Микроменеджмент как следствие длинных цепочек причинности

Не забываем ограничивать длинну цепочек между рычагом и целевой метрикой — не стоит заниматься мироменеджментом.

Например, не стоит пытаться управлять выручкой через найм или увольнения людей. Увольнения могут быть частью действий по воплощению гипотезы, но не частью самой гипотезы.

Плохая гипотеза:

> Мы увеличим выручку на 10% за 3 месяца, если наймём 5 новых разработчиков.

Хорошая цепочка гипотез:

> 1. «Мы увеличим выручку на 10% за 3 месяца, если реализуем фичу X» => мы запускаем «проект X» — создаём подсистему «проект X» о которой мы тоже можем выдвигать гипотезы.
> 2. «Чтобы реализовать «проект X» нам необходима команда из 5 человек» => мы запускаем «активность по поиску 5 человек» — создаём  ещё одну подсистему со своими гипотезами.
> 3. «Нанять 5 человек в текущей ситуации выгоднее, чем снять 5 человек с других задач» => мы запускаем «активность по найму 5 человек» — ещё более локализованная активность в которой тоже может быть свой цикл обратной связи.
> 4 …

Гипотезы с короткой цепочкой причинности хороши ещё и тем, что каждая из них создаёт развилку в планировании — точку поиска возможностей, точку возможного манёвра (если что-то пойдёт не так).

Если мы последуем за плохой гипотезой и найм 5 разработчиков не сработате, то мы откатимся в самое начало. Если последуем цепочке хороших гипотез, то мы только отойдём на шаг назад.
///


## Заметки на полях

Есть несколько вещей, на которые я хотел бы дополнительно обратить внимание.

**Точное следование формальным процессам — это хорошо, но много хорошего тоже вредно.**

Не надо терять голову и ставить формальности перед здравым смыслом. Чем меньше компания/команда — тем большую долю ресурсов будут съедать дотошный поиск гипотез, сбор метрик, поддержка дашбордов и прочее — тем меньше времени останется на саму работу. Всегда полезно искать баланс и разумно срезать углы.

**Объективно измерять взаимодействие продукта со средой значительно легче, чем его внутренее состояние.** Не меряйте культуру и людей количественно, особенно с помощью прямолинейных метрик — это всегда выйдет против вас. В прошлом посте мы говорили про важность самоорганизации; формальные метрики и KPI — её главный враг. Если вы хотите чтобы ваши коллеги перестали общаться, учиться и помогать друг другу — поставьте перед ними количественное KPI, желательно мешающие друг другу.
