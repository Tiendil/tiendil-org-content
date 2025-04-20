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

_Please remember, that the original post was written in 2013. I updated part of the post, but some statements and ideas may be outdated and the flow of ideas is not such clear as I would like to have it now._

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

## The structure of the story

So, the story is a graph consisting of nodes and edges. Each node has a list of requirements (or checks, if you like) that must be met for the story to move to the corresponding node. A requirement can look like `the hero is in a specific place` or `the hero has a certain amount of money`.

Besides the requirements for world's state, each node has a lis of actions that must be performed when the story reaches this node. Such actions could be implemented as separate nodes with requirements, but it would significantly increase the graph complexity. We can look at them as on a semantic sugar :-) Action, in our case, could be `send a message to the player`, `start a battle with a monster` or `give a reward to the hero`.

Edges have the same lists of actions assigned to the beginning and end of the edge.


/// brigid-images
src = "images/automatic-quests-generator-example-1.png"
caption = "An example of a simple story."
///

/// details | Legend for the graphs on the pictures
- gray nodes — the beginning and end of the story;
- purple nodes — choice points;
- green nodes — ordinary story points;
- red nodes — conditional transitions;
- turquoise contours — sub-stories;
- dark background in the nodes indicates requirements that must be met for the story to move to this node;
- light background indicates actions that must be performed immediately after the transition to the story point;
///

Transitions between nodes can be represented as a loop:

- Choose an edge of the graph along which the story will move.
- Perform actions assigned to the beginning of the edge.
- Wait until all requirements of the next node are met.
- Perform actions assigned to the end of the edge.
- Move the story state to the next node.
- Perform actions assigned to the node.
- Retun to the beginning of the loop.

The nodes of the story can be separated into types that define their role:

- `Start` — the only entry point to the story or sub-story. The requirements of this node must guarantee that everything will go correctly whatever path the story takes;
- `End` — the marker of the end of the story or sub-story;
- `Choise point` — a node where the hero (or player) must make a choice about the further path of the story;
- `Conditional transition` — a node where the further path is determined by some dynamic parameter, for example, the amount of money the hero has;
- `story node` — a node that has no additional properties, it just defines the next event in the linear sequence of the story.

/// brigid-images
src = "images/automatic-quests-generator-example-2.png"
caption = "An example of a more complex story."
///

## Story generation

The story can consist of several atomic tasks. For example, a sick NPC can send the hero for medicine to a witch, who will require a service (performing another nested task) in exchange for remedy.

Thats why the story is built from a set of atomic templates. A template is a graph of the story with all possible branches (even those that can break the story).

The important part here is the connection of templates (remember that we need a connected graph in the end):

- At least one node of the parent story must have an edge to the start node of the child story;
- At least one end node of the child story must have an edge to the node of the parent story.

After some experimenting and thinking, I came to the conclusion that all stories can be characterized by a set of key objects/variables (places, characters, items). Therefore, each template has a set of constructors that take data in a fixed format. Here are some examples of constructors:

- `start quest from a specific place` — if we want the story to start in a specific place, and everything else can be random;
- `start quest affecting two NPCs` — when it is necessary for one NPC (initiator) to initiate a task related to the second NPC (recipient);

When generating a child story, the parent story filters all templates by the presence of the required constructor, one of which is then randomly selected.

We connect parent with child in a few steps.

Create an edge from the node in the parent story to the start node of the child story.

There may be several end nodes in the child story, and they can have different semantic meaning for the plot. For example, in the story about a witch, the hero can not only complete her task but also fail, which may push witch to refuse to help the hero. Therefore, edges from different end nodes must be strictly directed to the distinkt corresponding nodes of the parent story.

To achieve this, we define a set of semantic results for each entities participating in the story in each end node.

There are three possible results:

- `positive` — the story positively influence the entity;
- `neutral` — the story does not influence the entity;
- `negative` — the story negatively influence the entity.

With the help of such info we can find correct nodes in the parent story for end nodes of the child story.

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
