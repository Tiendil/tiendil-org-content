---
title = "Advanced quests generation"
tags = [ "the-tale", "open-source", "python", "gamedev", "game-design", "practice", "procedural-content-generation", "development", "theory", "interesting", "best", "tutorial"]
published_at = "2022-03-22T12:00:00+00:00"
seo_description = "Generation of nonlinear quests for the text multiplayer role-playing game "The Tale"."
seo_image = "images/automatic-quests-generator-example-1.png"
---

<!-- TODO: choose new title? -->
<!-- TODO: choose new description -->
<!-- TODO: translate images -->
<!-- TODO: translate SVGs -->
<!-- TODO: move SVGs to the blog -->
<!-- TODO: translate README in github to english -->
<!-- TODO: replace links to SVG with inlined svgs -->
<!-- TODO: replace cursive into info block in en -->
<!-- TODO: replace cursive into info block in ru -->
<!-- TODO: ask chatgpt to check times usage -->
<!-- TODO: change comments in the questgen code into english -->

_This is a translation of my post from 2013 abut quest generation for the now stopped game [The Tale](https://the-tale.org/). I think it is still relevant and interesting, since the described techniques are quite advanced and can be an inspiration for other developers._

_Please remember, that the original post was written in 2013. I updated part of the post, but some statements and ideas may be outdated._

Despite the fact that the conception of automatic quest generation in RPGs is quite old, there are almost no publicly available working versions of such generators (rather none at all), if we do not count primitive ones. There are also not many posts on this topic, although if some can be googled. So I hope that this text and [the quests generator](https://github.com/the-tale/questgen) itself will be useful.

Here is [a scheme of one of resulting quests](https://s3-eu-west-1.amazonaws.com/public-filles/large_quest.svg).

<!-- more -->

/// details | Why the generator was needed
ZPG — [Zero Player Game](https://en.wikipedia.org/wiki/Zero-player_game) — is a game without active player interaction. The closest popular analogues are [Godville](https://godvillegame.com/) and [Progress Quest](https://en.wikipedia.org/wiki/Progress_Quest).

"The Tale" was intended to be that kind of game — a text multiplayer role-playing game in a persistent fantasy world.

The player's character (hero) in the game acted completely independently, and thrir main activity was, of course, completing quests from NPCs.

The key point of the game was that the quests should be nonlinear, and the player should have a choise of which NPC to help and which to harm. Choises of players directly influenced the "fate of the world", for example, an NPC could leave the game permanently if many players harmed him.

Besides, the hero had a "character" that could influence his actions when completing a quest, for example, he could be set to help a specific NPC or to prefere honorable actions decisions.

Therefore, I required a way to automatically generate complex belieavable quests that would not contradict the game world and would require the player to think before making a choice.
///

In the following text I will use term "story" instead of "quests" as more convenient for explanation: each quest is a story limited by a couple of conditions, so it is more reasonable to talk about a story generator.

## Requirements

The base requirements for the generator were as follows:

- **Nonlinearity**: any number of branches and endings should be possible;
- **Nesting**: one story can have any number of nested or sequential sub-stories;
- **Integrity**: the story should always have a correct ending, no matter which path the hero takes;
- **Feasibility**: the hero should be able to complete any story in a finite time;
- **Consistency**: the story should not contradict the state of the world or itself;
- **Scalability**: the story can have any number of "actors" (players or NPCs);
- **Variability**: the stories should differ from each other, even if they are about the same thing in general.

Besides the requirements for the stories themselves, there was several requirements for the generator:

- If generator creates a story, it should be correct (i.e. it should comply with all requirements);
- The stories should be visualized in a convenient way for the developer;

### What is a story

Knowing the requirements, I had to define what a quest or a story is. In the end, I came to the following definition:

<!-- TODO: replace by a block? in ru too. -->

> The story is a directed acyclic connected graph. The nodes of which describe the state (requirements for the state) of the participated entities and the environment at a specific stage of the story, and the edges define possible transitions between these stages.

From the definition, it smoothly follows the idea of implementing the story as a state machine, which is transfered from the quests generator to the game logic engine.

So, our generator should create a story graph based on the information about the current state of the world with respect to the requirements listed above.

The game logic will interpret this graph. It will initiate the necessary changes in the actions of the hero or in the environment based on the information about the current state of the story and the expected future state, leading to the fulfillment of all requirements necessary for the story to move to the next stage.

Here is an [example of such interpretator](https://github.com/Tiendil/questgen/blob/master/helpers/example.py)

## Структура истории

Итак, история — это граф, состоящий из узлов и рёбер. Каждый узел обладает списком требований (или проверок, если хотите), которые должны выполняться, чтобы история могла перейти в состояние, соответствующее узлу. Требованием может быть нахождение героя в конкретном месте или наличие у него нужной суммы денег.

Кроме самих требований к состоянию «мира» для каждого узла добавлен список действий, которые необходимо выполнить, когда история окажется в этом узле. Конечно, их можно было бы оформить и в качестве отдельных узлов с требованиями, но это значительно увеличило бы сам граф и усложнило его анализ разработчиками. Действием, в данном случае, может быть отправка сообщения игроку, начало сражения с монстром или выдача награды герою. Такие же списки действий назначены на начало и конец движения по ребру.

/// brigid-images
src = "images/automatic-quests-generator-example-1.png"
caption = "Примерно вот так может выглядеть простая история."
///

/// details | Условные обозначения для графов на картинках
- серые узлы — начало и окончание истории;
- фиолетовые узлы — точки выбора;
- зелёные узлы — обычные точки сюжета;
- красные узлы — условные переходы;
- бирюзовые контуры — подистории;
- более тёмным фоном в узлах отмечены требования к ситуации, которые должны быть выполнены для возможности перехода в эту точку сюжета;
- более светлым фоном выделены действия, которые должны быть выполнены сразу после перехода в точку сюжета.
///

Перемещение между узлами можно представить в виде цикла:

- выбор ребра графа, по которому будет идти перемещение;
- выполнение действий, назначенных на начало движения по ребру;
- ожидание пока все требования следующего узла будут выполнены;
- выполнение действий, назначенных на окончание движения по ребру;
- переход в следующий узел;
- выполнение действий в узле
- возвращение в пункт 1.

Узлы истории удобно разделить на типы, определяющие их роль:

- начало — единственная точка входа в историю (или подысторию). Требования этого состояния должны гарантировать, что далее всё будет происходить корректно c точки зрения здравого смысла;
- конец — маркер завершения истории (или подыстории);
- точка выбора — узел, в котором герой (или игрок) должен сделать выбор дальнейшего пути развития событий;
- точка условного перехода — узел, в котором дальнейший путь определяется каким-либо динамическим параметром (например, количеством денег у героя);
- обычный узел — узел, не имеющий дополнительных свойств (просто определяет очередное событие в линейной последовательности).


/// brigid-images
src = "images/automatic-quests-generator-example-2.png"
caption = "А вот так выглядит более сложная история."
///

## Генерация истории

История может состоять из нескольких «атомарных» заданий. Например, больной NPC может отправить героя за лекарством к ведьме, которая потребует за него услугу (выполнение другого «вложенного» задания).

Поэтому строится она из набора «атомарных» шаблонов. Шаблон представляет собой такой же граф истории, но со всеми вариантами развития событий (даже теми, которые могут сделать историю противоречивой).

Важным моментом здесь является соединение шаблонов (помним, что в итоге у нас должен быть связный граф):

- как минимум из одного узла родительской истории должно идти ребро в стартовый узел дочерней;
- как минимум из одного конечного узла дочерней истории должно идти ребро в узел родительской.

После долгих размышлений было решено, что все истории, в общем-то, характеризуются набором ключевых «объектов» (мест, персонажей, предметов). Поэтому для каждого шаблона создаётся набор конструкторов, принимающих данные фиксированного формата. Вот несколько примеров конструкторов:

- из конкретного места — если нам важно, чтобы история начиналась в определённом месте, а всё остальное может быть как угодно;
- между двух NPC — когда необходимо, чтобы один NPC (инициатор) дал задание связанное со вторым NPC (получателем)

При генерации дочерней истории, родительская фильтрует все шаблоны по наличию необходимого ей конструктора, из которых уже выбирает случайный.

Связывание родительской истории с началом дочерней происходит просто — родительская создаёт ребро из нужного узла в единственный стартовый узел дочерней истории.

Конечных же узлов может быть несколько, и они могут иметь разный семантический смысл для истории. Например, в истории про ведьму герой может не только выполнить её задание, но и провалить его, соответственно, дуги из разных конечных узлов необходимо вести строго в соответствующие им по смыслу узлы родительской истории.

Для этого в каждом конечном узле указывается список результатов задания для каждого из объектов участников. На текущий момент возможных результатов три:

- положительный — задание положительно повлияло на объект;
- нейтральный — задание никак не повлияло на объект;
- отрицательный — задание навредило объекту.

Благодаря этому, для каждого конечного узла можно определить его общий смысл и правильно связать его с родительской историей.

## Постобработка и проверка корректности

После описанных выше действий, у нас на руках будет визуально правильный граф истории, но без гарантии непротиворечивости. В таком графе содержатся все варианты развития событий, даже противоречащие текущему состоянию мира.

Например, в одной из веток герой может вредить своему другу. Или два NPC, отмеченные врагами, могут действовать сообща.

Поэтому историю надо дополнительно обработать. Это предполагает следующие действия:

1. Активируются случайные события — некоторые узлы объединены в группы альтернативных вариантов развития истории. Из каждой группы выбирается один узел, остальные удаляются.
2. Удаляются все конечные узлы, содержащие запрещённые результаты заданий для объектов.
3. Полученный граф чистится от «висящих» узлов. «Висящими» считаются следующие типы узлов:
    - узел, который не является конечным узлом самой внешней истории и из которого не выходит рёбер.
    - узел, который не является стартовым узлом самой внешней истории и который не имеет входящих рёбер.

Полученный граф будет как минимум непротиворечивым. Но он может стать невыполнимым или несвязанным (история станет нецельной). Поэтому следующим шагом является проверка всех необходимых свойств полученной истории.

Если проверка прошла успешно, то у нас появилась новая история.

Если нет — начинаем создавать её сначала.

Подход с полным откатом может привести к очень длительной генерации, в случае, если мир игры очень маленький и обладает большим количеством связей. Но на практике обычно объектов в мире много, а связей между ними мало, поэтому проблем нет.

В случае частых ошибок, игра, использующая генератор, может уменьшить количество устанавливаемых свойств мира (например, перестать учитывать отношение дружбы). Сам генератор не пытается делать дополнительных предположений о состоянии мира.

## Ссылки

Генератор написан на Python, выложен на github под BSD лицензией:

- репозиторий: [questgen](https://github.com/Tiendil/questgen)
- пример интерпретатора: [example.py](https://github.com/Tiendil/questgen/blob/master/helpers/example.py)
- [примеры готовых заданий](https://github.com/the-tale/questgen/tree/master/svgs)
- игра, для которой делался: [http://the-tale.org](http://the-tale.org/)
