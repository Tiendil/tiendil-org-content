---
title = "No algorithm for engineering"
tags = [ "theory", "development", "interesting", "management", "vantage-on-management"]
series = "vantage-on-management"
published_at = "2025-09-24T12:00:00+00:00"
seo_description = "Engineers create novelty, so their work cannot be regulated by detailed instructions. What does this imply for managing engineering teams?"
seo_image = "./cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "\"Engineer Seated\" © ChatGPT + [Vrubel](https://en.wikipedia.org/wiki/Mikhail_Vrubel)"
///

/// brigid-series
tag = "vantage-on-management"
///

I wanted to write this post for 5 years, give or take, and I still don't fully understand why it needs to be written — in my opinion, these things are obvious.

However, I also don't understand some phenomena from work practice and theory, for example.

**Why ~~every~~ most management theories are derived from the experience of physical instruction-driven production, rather than from the experience of engineering and scientific teams?** Instruction-driven — in the sense that the work consists of following detailed instructions.

Of course, people wrote many books with sets of specific practices in the spirit of "How I was an Engineering Manager" or "How we do management at Google," but they are not theories — they are sets of practices for specific cases — to apply these practices wisely, one must have the corresponding theory in mind.

**Why do management practices for instruction-driven teams keep seeping into the management of creative teams?** From attempts to lock in output quotas to using team velocity as a KPI. From trying to utilize 100% of an engineer's time to (implicitly) demanding a blood oath on every estimate. Not to mention denying autonomy in decision-making, imposing rigid schedules, and forcing work in the office.

Both questions are, of course, rhetorical.

The answer to the first one: "That's how it historically evolved" — until the 1980s, it indeed made sense to derive management, crudely speaking, from the organization of manual labor on factory floors. And even then, it wasn't always the case — fortunately, NASA took a different path. But that was half a century ago; we now live literally in the future compared to that time, yet we continue to rely on its concepts — and that's the answer to the second question.

Meanwile, cause-and-effect relationships still there: no matter how strong your team or how brilliant your idea, if you force them through an ill-suited mechanism — alien concepts, alien processes — you'll end up with a poor product and suffering people.

That's why in this and the next couple of posts I want to discuss the role of creativity in engineering work: why it's critically important and where to look for inspiration in managing creative teams.

<!-- more -->

/// note | Disclaimers

**Every job has a creative component.**

For the purposes of this essay and the ones that follow, I may occasionally refer to engineering and scientific teams as "creative teams".

That does not mean I deny the creative component to all other jobs — it exists in every job and often depends more on the person than on their role.

However, we must acknowledge that some work demands more creativity, while other demand less. This distinction inevitably affects how people do their jobs and, consequently, how to manage them in the best way.

**There is no place for absolutes in this world.**

Life is a complex thing — there are rarery teams that are 100% creative or 100% non-creative. Sometimes tasks are mixed, sometimes they alternate.

Let's look at software development — it has a variety of life cycles; circumstances vary. For example, a long-term support or decommissioning phase can be much closer in spirit to instruction-driven physical production than to software engineering, because during that time it may be more economical to perform repetitive work rather than to rethink it creatively — for instance, through automation.

Therfore, when selecting management practices, one must know how far to go, as in any other matter.

**Engineering is a vast field — it's impossible to cover everything.**

As much as I'd like to, I can't cover every possible engineering and near-engineering teams — I simply lack both the time and the firsthand experience.

So, as with everything in this blog, I write through the prism of my personal experience — which is software engineering.

Bias is inevitable. For example, software engineering offers the fastest route for delivering a product to users — sometimes it takes only seconds for millions of people to receive an update and just as little time for developers to see the metrics change. Because of that, I have a less clear picture of the realities of engineering aimed at producing complex physical objects like airplanes, cars, buildings, microchips.

///

## Engineers produce new information

Even in the era of [drawing boards](https://en.wikipedia.org/wiki/Drafting_table), the essence of engineering work was not to copy a drawing one-to-one, but to add something new or create it from scratch. There were even specific roles like "tracer" or "drafting assistant" whose job was to relieve engineers of the repetitive operations.

/// brigid-images
src = "./engineering-drawing-board.jpg"
caption = """
"A pony engineer working on engineering drawing board" © ChatGPT + [Kentaro Miura](https://en.wikipedia.org/wiki/Kentaro_Miura).

It was a tough time."""
///

Nowadays, specialized software makes it possible to eliminate the vast majority of routine operations and focus on the essence of engineering work — creating something new.

**It is impossible to create novelty by following a detailed instruction.**

If an engineer records all their actions from start to successful result and passes this instruction to another person as an exact set of instructions, the output will be a copy of the result, for example, a copy of a tractor blueprint or a program with functionality identical to the original.

We end up with a meaningless and costly process of copying already existing information that does not create new value.

This is especially evident in software engineering, as it deals almost entirely with pure information and is therefore less dependent on physical constraints. We can instantly create many copies of the same program, but by reproducing a copy of information, we do not create something new. Therefore, if programmers perform repetitive detailed work (for example, writing code for each interface button from scratch), it is highly likely that something is going wrong somewhere.

By contrast, if we give a person an instruction, for example, on how to work on an assembly line, then at each cycle of completing the instruction, there will be a copy of a physical product at the output, which will have its own value.

## Для инженера не может быть детальных инструкций

Итак, детальные инструкции не подходят для инженерной работы, так как они не приведут к созданию новой информации, а значит не создадут ценность.

Поэтому.

**Инженеры действуют в рамках рекомендаций и ограничений, а не в рамках инструкций**.

/// note | Ошеломляющая разница в размерах пространства возможного поведения

Каждый работник всегда действует в рамках некоего пространства возможного поведения. Границы этого пространства определяется многими факторами, включая область деятельности, доступные ресурсы, навыки и опыт человека, внешние условия, etc.

Но больше всего на размер этого пространства влияет степень свободы, предоставляемая человеку в его деятельности. Определение этой свободы «через инструкции» или «через рекомендации и ограничения» приводят к радикальному отличию в размере этого пространства и свойств результата труда.

Детальные интрукции задают очень узкие рамки, делают результат каждого шага работинка «предсказуемым», а значит конечный результат тоже становится предсказуемым. С помощью инструкций мы **сужаем [пространство решений](https://ru.wikipedia.org/wiki/Область_допустимых_решений)** до очень узкой области, чтобы получать одинаковый результат каждый раз. Например, получать одинаковые чайники на конвейере.

Рекомендации и ограничения задают широкие рамки, что делает поведение конкретного работника «непредсказуемым», а значит конечный результат труда будет содержать новизну. С помощью рекомендаций и ограничений мы **формируеем пространство решений**, чтобы получать разные результаты с новизной и нужными нам свойствами. Например, получать чертежи разных моделей автомобилей.

**В момент, когда рекомендации и ограничения превращаются в детальные инструкции, эффективность инженера падает на порядки** — сокращается область его возможного поведения, а значит и область решений, которую он может исследовать.

Вот несколько примеров отличия этих подходов из жизни:

- Белый и чёрный списки для разрешённых действий. Например, для доступа к сайтам. Если вы добавите 3 сайта в белый список, то человек сможет посещать только эти 3 сайта. Если вы добавите 3 сайта в чёрный список, то человек может и не заметить, что у него есть ограничения.
- Фиксированная школьная форма vs свободный «приличный» стиль одежды. Первая создаёт однотипность, но производит гарантированный стиль для всей школы. Вторая создаёт спектр стилей, давая шанс появлению ярких запомниющихся образов, но не гарантирует, что все ученики будут одеты достаточно прилично для представления школы.
- Музыка: игра по нотам vs джазовая импровизация. Первая гарантирует воспроизведение известного произведения, вторая даёт шанс на создание нового шедевра.
///

Рекомендации — это [эвристики](https://ru.wikipedia.org/wiki/Эвристика) о том, как (скорее всего) может быть выгодно действовать в конкретной ситуации. Хорошим примером рекомендаций могут быть [ТРИЗ](https://ru.wikipedia.org/wiki/Теория_решения_изобретательских_задач), [шаблоны проектирования](https://ru.wikipedia.org/wiki/Шаблон_проектирования) или всевозможные [циклы обратной связи]{post:hypothesis-testing-loop}.

Ограничения — это рамки, которые нельзя пересекать. Например, не выпускать лекарство без проведения клинических испытаний, использовать только сертифицированные компоненты, расчитывать конструкцию на заданную максимальную нагрузку, придерживаться стандартов и регуляций, etc.

/// note | Мета-алгоритм — это не инструкция

Можно попытаться утверждать, что какой-нибудь классический цикл в духе «сбор данных -> анализ -> синтез -> воплощение» — это инструкция, а значит инженерная работа может быть описана инструкцией.

Но каждый этап такого цикла не предполагает каких-то конкретных действий и максимально зависит от контекста: начиная от области в которой мы действуем и заканчивая особенностями конкретной задачи. Например, для действия «анализ» в одном случае нам может потребоваться запускать новый проект с разработкой специализированного софта и разворачиванием инфраструктуры, а в другом случае будет достаточно подойти к коллеге-эксперту и спросить его мнение.

Подобные мета-алгоритмы, по своей природе [фрактальны](https://ru.wikipedia.org/wiki/Фрактал)/[рекусивны](https://ru.wikipedia.org/wiki/Рекурсия) — каждый их этап может разворачиваться в применение оригинального алгорима на меньшем уровне. Пример можно найти в недавнем посте про [цикл проверки гипотез]{post:hypothesis-testing-loop}.

Соответственно, мета-алгоритм является не инструкцией, а рекомендацией. Инженер, в свою очередь, решает как именно именно следовать этой рекомендации на каждом шаге алгоритма и следовать ли вообще.
///

## Работу инженера ~~нельзя~~ сложно измерить на индивидуальном уровне

Поскольку каждый инженер:

- Работает в уникальном контексте (пространстве решений) — создаёт конкретное новое новое.
- Исследует пространство решений по-своему — выполняет уникальные для себя операции в уникальном порядке.

**Сложно объективно сравнивать работу двух инженеров.**

Для примера. Опустим тривиальный классический случай подсчёта строк кода на человека. Давайте сравнивать количество ошибок, которые программист вносит в продукт в единицу времени. Если программист A вносит X ошибок в месяц, а программист Б — 2X, при одном и том же количестве закрытых задач. Значит ли это что программист Б в 2 раза хуже программиста А?

Нет конечно, потому что программист Б мог работать с более сложным кодом, или под большим давлением сроков, или с менее зрелым стэком технологий, или с новым для него фреймворком, или в менее зрелой команде, или ошибки программистов имеют разный уровень последствий, или [QA](https://en.wikipedia.org/wiki/Quality_assurance) проще работать с функциональностью над которой работает Б.

Эффект всех упомятнутых нюансов, как и многих других, не измерим количественно. Нет метрики, которая позволит осмысленно количественно сравнивать сложность кода, зрелость стеков технологий, уровень владения фреймворком и прочие подобные штуки.

Эти нюансы можно измерить качественно, но только на основе экспертной оценки, которая, в свою очередь, будет субъективной и не воспроизводимой. Подобная оценка, если мы хотим иметь её достоверной, потребует от эксперта глубокого погружения в контекст, что займёт много времени и сил. По сути, сделать её может только более опытной член той же команды, например, тех. лид.

Мы можем преобразовать качественную оценку в статистически значимую количественную, например:

- Собрав множество экспертов, которые независимо друг от друга оценят контекст и работу инженера.
- Попросив команду качественно оценить работу друг друга.

Но это будет дорого и долго:

- Если мы собрали команду экспертов для оценки команды инженеров, то теперь у нас есть две команды — будет дешевле оставить одну команду экспертов работать над оригинальным продуктом.
- Чтобы команда могла оценивать друг друга, она должна быть достаточно зрелой и каждый член команды должен обладать знанимями контекста всех остальных членов команды — то есть должно быть достигнуто почти 100% перекрытие знаний. Это возможно, но тоже дорого и сильно замедляет работу. Кроме того, у нас появляются этические и культурные риски.

Мы даже не можем сравнить работу одного и тогоже человека в разные периоды.

Попробуйте, для примера, собрать данные по эффективности работы одного fullstack разработчика, когда он в первую неделю пишет кнопочки для фронта. во вторую — микросервис, в третью — настраивает репликацию базы и оптимизируюет запросы к ней, а всю четвёртую занимается код ревью и разговорами со стейкхолдерами.

Поэтому.

**Фокус управления инженерными коллективами смещается с персонального уровня на уровень команды и продукта.**

Мы оптимизируем не людей, а рабочие процессы (в рамках которых действуют люди), потоки информации (между людьми и процессами) и метрики продукта ([частью которого является наша команда]{post:points-of-view-on-a-product}).

Это позволяет нам оперировать в рамках более-менее объективных метрик и, тем самым, принимать более осмысленные решения.

Именно про это такие штуки как [Kanban, Teal Organizations, Lean Startup]{post:vantage-on-management-books}.

Перефразируя.

**Мы оптимизируем рекомендации и ограничения для нашей команды.**

/// note | Даже на командном уровне есть нюансы

Допустим команда совместно оценивает задачи в [Story Points](https://ru.wikipedia.org/wiki/Покер_планирования) (SP). Можем ли мы сказать, что две задачи в 5 SP эквивалентны по сложности и одинаково скажутся на динамике продукта?

К сожалению, не можем. Оценка задачи — это вероятностная величина, поэтому задачи с одинаковой оценкой могут иметь разную [неопределённость](https://ru.wikipedia.org/wiki/Дисперсия_случайной_величины). Допустим у нас команда из 5 человек: 4 фронтендера и 1 бэкендер. Такая команда будет оценивать задачи по фронтенду с большой точностью (низкая неопределённость), а задачи по бэкенду — с низкой точностью (высокая неопределённость). Соответственно, в одном случае 5SP будет означать «примерно 4-6SP», а в другом — «примерно 2-8SP».

В этом плане было бы интересно попробовать на практике оценивать задачи интервалами. Мне даже удалось нагуглить какие-то рассуждения по этой теме, но откровенно показательных примеров я не нашёл.
///

## Практические следствия

Необходимо понимать какой тип работ выполняет команда и практики для какого типа работ мы пытаемся использовать. Если эти типы работ разные — мы делаем что-то не так и, скорее всего, вредим команде, компании и продукту.

Для работы с известным фиксированным результатом мы создаём и оптимизируем инструкции. Мы можем количественно измерять эффективность работы на индивидуальном уровне для оптимизации инструкций и развития профессиональных навыков людей.

Для творческой работы мы задаём ограничения исходя из желаемых метрик продукта и нарабатываем базу рекомендаций на основе практики. Мы оптимизируем продукт и его команду, а не конкретных людей. Для развития профессиональных навыков людей мы используем качественную экспертную оценку.

## Теоретические следствия

На мой взгляд, необходимо разворачивать базовые концепции управления в сторону управления творческими коллективами и на основе нового базиса формировать концептуально новые наборы практик.

Сейчас происходит глобальные сдвиг распределения типа работ/профессий/ролей в сторону творческих, со временем их доля будет только возрастать. Массовая автоматизация, внедрения ИИ и робототехники этому отлично способствует. Направляя новый мир старыми методами мы будем не только тратить ресурсы впустую, но и плодить страдания среди работников и клиентов.

В частности, на мой взгляд, инженерии надо заимствовать практики у науки — организовывать команды как научные лаборатории. Почему это надо делать и как я попробую раскрыть в следующих постах.
