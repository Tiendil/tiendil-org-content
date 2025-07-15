---
title = "Points of view on product"
tags = [ "theory", "development", "systems", "management", "interesting", "vantage-on-management"]
series = "vantage-on-management"
published_at = "2025-07-16T12:00:00+00:00"
seo_description = "We'll look at the product as a thing that lasts over time, a chaotic system, an evolving organism."
seo_image = "cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "Evolving product (c) ChatGPT"
///

<!-- THE RULES COPILOT MUST FOLLOW: this is ongoing translation of Russian post into English. The translation goes from top to bottom, paragraph per paragraph. I write English version of the paragraph on top of the Russian one, then I remove the Russian paragraph. YOU MUST TRANSLATE ONLY TEXT UNDER THE CURSOR — NOTHING ELSE. Translate close to Russian text.-->

Let's imagine you are developing a [SaaS](https://en.wikipedia.org/wiki/Software_as_a_service) — a tamagotchi todo-list for gamers, or even something less useful.

This SaaS is your product — what you offer to users — what they pay money for.

But what exactly are you offering? Is it just the ability to feed to-do lists to the tamagotchi?

Beyond the obvious attributes, like specific functionality, appearance, and a branded joystick in the package, your product has numerous less-obvious attributes that are also important to users and thus affect its success.

Let's start by looking at these attributes and follow a logical chain through increasingly holistic system-level viewpoints on the product and its management.

<!-- more -->

## Less-obvious product attributes

Here a few popular examples of attributes that people often forget about:

- Availability — the ability to use the product at any time from any device.
- Support — the ability to get help in case of problems.
- Rhythm of updates — the dynamics of adding new features that users can currently do without, but on which they hope for in the future.
- Reliability — the storage of user data intact and unharmed and similar things.
- Sacurity & safety — the absence of personal information leaks, the absence of harm to user devices.

Users can even expect specific emotions from the product. This applies not only to games, where emotions are one of the key components (compare, for example, the emotions from [Dark Souls](https://en.wikipedia.org/wiki/Dark_Souls), [Doom](https://en.wikipedia.org/wiki/Doom_(1993_video_game)), and [The Sims](https://en.wikipedia.org/wiki/The_Sims))), but also to business applications that can focus on feelings of control, reliability, awareness, etc.

Of course, all aspects of the product are important to users differently, and thus influence the product's success with varying degrees of strength — some have a strong influence, others a weak one — every product is unique. However, it would be incorrect to divide product attributes into obvious-and-important and non-obvious-and-unimportant.

For example, availability is extremely important for most products. People don't always talk about it because it's "maximally implied," and management often remembers about it only when someone has already epicly messed up, for example, by launching a marketing activity for +1M DAU without consulting developers.

/// note | Emotions can be a more interesting example

- There are products for which they are vital, for example, games.
- There are products for which they are not particularly required, such as monopolistic government services, non-alternative software corporate software, and so on.
- And there are products where emotions are important, but it's not entirely clear to what extent, and this is not always discussed. For example, shopping apps or micro-trading apps.

///

The role of each specific product attribute in its success usually is ambiguous:

- You may differently assess the role of product attributes in its success.
- Users may differently assess the role of these attributes.
- The reality may differ from both your worldview and the users' worldview.

That’s why it’s important to remember that if you don’t manage a product’s less-obvious attributes, it will lose just as much value for users as it would if you neglected its core functionality.

To understand what exactly we should manage and how, let's take a closer look at our product's shape and substance.

## The product lasts

Let’s stick with our hypothetical tamagotchi todo-list SaaS.

Almost all attributes of this SaaS make sense only within a temporal dimension.

Product’s core functionality comes from code running on servers in real-time. If those servers go down, the product instantly "disappears" for users.

Product availability depends not just on the code that’s running but on the operational processes that keep the underlying infrastructure healthy. For as long as the product exists, someone has to watch server health, monitor free space in the database, and tend to countless other details.

The part of the product is also the lasting obligations of developers to users and regulators: from deadlines for deleting personal data according to GDPR and the minimum time for storing payment information (starts from 3-5 years, depending on the country), to obligations for, generally, storing user information essential for our SaaS functionality.

One can also point to more abstract properties, such as explicit or implicit agreements on the speed/frequency of new feature releases, guarantees for bug fixes, and support for deprecated functionality.

In some cases, even certain monetization activities can become a lasting part of the product. For example, for a long time in my [pet-MMO](https://the-tale.org), there was an informal agreement between developers and players that we only have one time a year when in-game currency can be purchased at a discount — the week around Black Friday. Players took this into account when planning their spendings and perceived it as part of the services provided.

/// note | All products have a temporal dimension
I chose SaaS as an example because it is the most characteristic and modern type of product.

In fact, the temporal dimension is inherent in all products, not only services, but even fully physical ones, like hammers.

In systems engineering there’s a saying: every system is a four-dimensional object — three physical dimensions plus time. Since any system has a lifecycle from planning to decommissioning (even if they are conducted by different entities), parts of the system go through different states, which is evidence of the temporal dimension.

According to the contemporary practices, even a good hammer manufacturer should consider the temporal dimension in their product: provide a warranty for the hammer, sell replaceable heads, handles, and other accessories, collect usage statistics. Of course, if they want to be a market leader.

On the other hand, ignoring the temporal dimension in the production of physical products is "traditional" (like "traditional" are any remnants of the past) and sometimes not so critical.
///

Therefore, **since the product lasts, its attributes (and thus its success) depend on the things that ensure its lasting: infrastructure, processes, and, first of all, the team.**

## The team as an integral part of the product

We can choose a point of view on the project where processes, artifacts, infrastructure, and so on are derived from the team that works on the product.

If you have an experienced, cohesive team, you quickly implement new features, roll them out without incidents, don't compromise security, respond promptly to user questions, and so on. Thus, you improve the corresponding product attributes, increase its value for users, and your profits.

The product team accumulates a lot of unformalized knowledge that exists only in the minds of its members: implicit agreements, assumptions, connections between parts of the product, quick contacts, behavior patterns, incident resolution templates, etc. In most cases, it is too expensive (and time-consuming) to formalize this knowledge, so it remains an integral part of each team member. Obviously, the older and more stable the team, the more such knowledge it accumulates the more efficiently it works, and the more successful its product is.

Let's imagine you replace the seasoned team members with new random ones. Due to the lack of knowledge about the working system, all related metrics will immediately drop: release speed will slow down, support will become slower, possibly even availability, reliability, and security will suffer.

Users will notice the changes (possibly at the first update of the service) and change their behavior — the percentage of subscription cancellations will increase, LTV will decrease, the registration funnel will worsen — all in the same spirit.

So, we can say that:

- **Selling a product to a user means selling them also the team that is currently working on this product.**
- **By changing the team, you immediately change the product's attributes.**

Moreover, the team is not necessarily a purely internal/hidden part of the product.

In our time of hypertrophied publicity and sociality, the face of the product (and company) can suddenly be not only the official product leader or a member of the support, but anyone from the product team. Therefore, all public activity of every employee is part of the product — whether we like it or not. We can decide how much focus we want to give to this aspect: from completely ignoring to investing resources in developing employees' personal brands and improving their social literacy — in any case, it needs to be taken into account — it's hard to hide the team completely.

## The product as a chaotic system

We can choose a point of view on the project where the team, processes, artifacts, infrastructure, and so on are a tightly connected network of things, where everything affects everything.

/// hint | There is no contradiction with the previous section

The team can affect processes and thus be their primary cause, but launched processes will in turn influence the team. The same goes for any other products of the team's activity.

Besides, "traditional" management approaches often like to place the manager outside the team and even outside the managed system. This leads to top-down rollout of processes and infrastructure ignoring on-the-ground realities. SOTA practices try to avoid this as much as possible, but honestly, I have seen attempts, but not 100% success. Even at my previous job, everyone strived to "do it right," but we didn't succeed in everything. I will write more about "traditional" and "modern" practices in future posts.
///

Since all product components are tightly interconnected, we have not a predictable "linear" mechanism, but a [chaotic system](https://en.wikipedia.org/wiki/Chaos_theory), where changing one component can lead to unpredictable consequences in others.

The chaotic nature of the product means the practical impossibility of centralized long-term planning of the product's life path, including its attributes. Theoretically, of course, it is possible. For example, quantum computers promise us something similar for more grounded tasks.

/// note | Chaos has always been there, but to a lesser extent

People have always organized themselves into groups and planned their joint activities. For most of our history, this planning was centralized. It suffered from chaos too, but not to the extent it does now — the behavior of a chaotic system can still be predicted up to a certain time boundary.

The problem is that the scale of systems, the complexity of the world, and the speed of interactions in it have increased.

Hence, the horizon of reliable prediction is shrinking to "plan until tomorrow". Fifty years ago we could plan much further, 150 years ago — even further. The world is accelerating and becoming unimaginably more complex — we need to take this into account.

///

When centralized management becomes impossible, but we still need to direct the system somewhere, we are left with two options: either rely on luck or launch evolutionary/adaptive processes through the self-organization of its parts.

## The product as an evolving adaptive system

If we set self-organization in motion, it makes sense to start viewing the product as a living organism.

For example, we are not managing our heart's contraction schedule, nor are we managing the liver's approach to balancing substances in the blood. We trust that they will figure it out on their own. Instead of detailed management of body parts, we focus on the body as a whole: where it is, where it should be, and so on.

There is no point in managing a specific organ just for the sake of managing that organ.

We may want to make some changes to a part of the product, but they will only make sense in the context of the entire product and for the needs of the entire product. Instead of detailed planning and micromanagement, it is better to focus on assessing the attributes of the product and directing its evolution by nudging it towards necessary changes.

/// note | Let's do it for fun
We сan change parts of the organism just for fun. For example, learn to wiggle our ears, or start taking steroids to pump up muscles.

But that’s true mainly for individuals; in the corporate world fun carries far less weight. There may be cases where a company can organize a whole department (usually R&D) to "entertain" a specific person, yet in that situation it makes more sense to switch abstractions and treat the company as the organism and the department as one of its organs — the result of evolution/adaptation.
///

Есть очевидные исключения:

- Если организм болен или просто слаб, мы можем захотеть грубо вмешаться в работу конкретной его части.
- Если организму не хватает сил для чего-то специфического, мы можем ему помочь витаминчиками или, например, целенаправленными тренировками.

Но, как иделаный конечный результат, как норму, мы всё-таки хотим видеть продукт, который адаптируется самостоятельно, без постоянного вмешательства в его части. Такой продукт будет адаптироваться к изменениям внешней среды быстрее и эффективнее, чем может достичь внешнее планирование его изменений. По крайней мере до тех пор, пока среда изменяется достаточно плавно. В случае резких изменений при форс-мажорах, конечно, может потребоваться вмешательство.

/// hint | Исключение — [иммунная система](https://ru.wikipedia.org/wiki/Иммунная_система) нашего продукта

В любой сложной системе неизбежно организуется иммунная подсистема, которая отвечает за поддержание целостности родительской системы и её компонентов. Задача этой подсистемы не улучшение надсистемы, а предотвращение её деградации.

В организациях и продуктах такая штука редко проявляется в явном виде — вещь дорогая — все экономят. Обычно она существует в виде процессов и ролей, которые частично выполняют её функции: безопасники, peer review, технические и неформальные лидеры, etc.

Эта система как раз занимается точечной оценкой влияния на продукт/организацию их компонентов и модификаций их при необходимости. То есть таким «управлением», от которого я в этом тексте отговариваю.

Этот подход работает, потому что для имунной системы важно не конкретное влияние компонента на конкретный конечный параметр нашего организма, а оценка общей полезности этого компонента: наносит ли он пользы больше, чем вреда.

Соответственно можно сказать, что у нас должно быть запущено два процесса адаптации

- Сверху — руление всем продуктом.
- Снизу — устранение конркетных больших проблем, которые части продукта не могут решить самостоятельно.
///

Подробнее про руление продуктом через гипотезы и запуск цикла обратной связи я расскажу в следующем посте.

## Часть продукта — часть корабля

Из логики выше можно вывести множество следствий, части их я посвящну будущие посты. Здесь же я хочу обратить внимание на несколько ключевых и/или интересных.

Во-первых, **роль современного лидера — направлять, а не управлять**. Разница может быть неочевидной, но она значима. Управление предполагает директивность, детализацию и контроль; направление — «мягкую силу» — информирование, обучение, поддержку, поощрение, создание условий для самоорганизации.

В современном мире один человек не может достоверно знать куда двигаться, но **при наличии опыта и знаний можно понимать как удобнее двигаться и куда точно двигаться не надо**. Если такой человек находится в команде, которая не боится проявлять инициативу, экспериментировать, то она, при его поддержке, будет двигаться в (более) оптимальную сторону.

**Не стоит разделять управление продуктом и управление командой** (инфраструктурой, процессами, артефактами — выберите своё, далее буду упоминать только команду). Меняя одно мы меняем другое. Разные роли могут иметь разный фокус, но при здоровой организации труда зоны ответственности будут пересекаться. В таких пересечениях следует способствовать возникновению коммуникации и коллаборации, а не вычищать их по правилу «останется только один ответственный».

**Измеряем ценность продукта, а не ценность команды.** Если продукт наносит достаточно пользы, оставьте его команду в покое. Если не наносит — думайте как изменить продукт. Может быть для этого потребуется изменить команду, а может быть и нет.

В пару к предыдущему утверждению: **изменяем продукт, а не команду.** Нам важны изменения в свойствах продукта, чтобы их достичь мы направляем его развитие в конкретную сторону. Движение в эту сторону может потребовать изменения в команде, а может и не потребовать.

И ещё раз отдельно отмечу, что все эти утверждения справедливы и для инфраструктуры, и для артефактов, и для процессов. С этим часто большие проблемы у инженеров — нам часто интересно покрутить что-нибудь просто потому, что мы можем (интересно что получится), а не потому что это изменит что-то существенное в продукте. Надо следить за собой и, по мере сил, пресекать такие порывы. Но иногда можно и не пресекать:-D
