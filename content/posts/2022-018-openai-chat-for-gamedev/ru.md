---
title = "OpenAI Chat для геймдева"
tags = [ "the-tale", "gamedev", "game-design", "neural-networks", "practice", "procedural-content-generation", "development", "prompt-engineering", "large-language-models"]
published_at = "2022-12-15T12:00:00+00:00"
seo_description = "Попробовал использовать OpenAI Chat для нужд геймдева. Работает, но надо доучивать и контролировать."
seo_image = "images/openai-chat-for-gamedev-cover.jpg"
---

/// brigid-images
src = "images/openai-chat-for-gamedev-cover.jpg"
caption = "Vrubel-style painting of how a game designer work on game texts (c) DALL-E"
///

Раз поигрался с [DALL-E]{post:using-dall-e-for-gamedev} и смотрел предыдущие [текстовые нейронки для Сказки]{post:russian-language-gpt-3-from-sber-vs-the-tale}, то надо и [OpenAI Chat](https://chat.openai.com/) посмотреть.

Глубоко не копал, так как концептуально возможности и ограничения были понятны уже из экспериментов с DALL-E.

Приведу пример, как одну из следующих версий этой сетки можно будет использовать для [Сказки](https://the-tale.org/).

Если вам интересны более детальные демонстрации и выводы, смотрите пост про [DALL-E для геймдева]{post:using-dall-e-for-gamedev}.

<!-- more -->

## Задача

Игровой процесс в Сказке описывается короткими художественными текстами о произошедшем событии.

Например, о том, что герой ударил монстра и нанёс 13 урона. И аналогичными:

- _Халлр наносит молниеносный удар — в пыль впитывается горячая кровь орка-изгнанника._
- _Оркостан впереди обещал дать хороший отдых. Халлр нуждался в небольшом перерыве перед тем, как продолжить дальнейший путь к Гастиону._
- _Не могут, не могут ведь Мастера без интриг! Вот и сейчас Кубилай попросила меня проверить, не ведёт ли Тебтенгри каких-нибудь тёмных дел. Согласился, но от ощущения, что сам втянут в сомнительное предприятие, до сих пор избавиться не в силах._

Для этого используется [хитровывернутый шаблонизатор текста](https://github.com/the-tale/utg). Шаблонизатор мощный, в купе с умным выбором фраз умеет учитывать множество параметров героя: экипировку, характер, расу, etc. Но шаблоны фраз таки приходится создавать руками, что трудно даже для самых преданных игроков.

Поэтому план сделать игру с очень разнообразным художественным описанием событий не выгорел и получилась просто игра с более качественными текстами, чем у Годвиля :-)

А вот с OpenAI Chat, условно следующего поколения, скорее всего выгорел бы.

Соответственно, наша задача — получить от бота параметризированные под заданные условия тексты.

Можно сказать, будем вручную проверять предсказания из [Write Your Own Adventure]{post:write-your-own-adventure}.

## Пример диалога

В отличии от DALL-E, что-то интересное у меня начало получаться сразу. Вот диалог без правок.

**Мысли**

Начнём с простого  задания.

**Tiendil**

```
Create a short artistic description of the event: the hero hits the zombie with his axe for half of the zombie's health.
```

**OpenAI Chat**

```
The hero swings his trusty axe with all his might, the weapon glinting in the dim light. With a satisfying thud, the blade connects with the zombie's rotten flesh, slicing through with ease and removing half of the creature's health in one fell blow. The zombie howls in pain and stumbles backwards, its movements growing sluggish as it struggles to stay on its feet. The hero readies his axe for another strike, determined to vanquish the undead menace once and for all.
```

**Мысли**

Хм, работает. Теперь попробуем со стилистикой.

**Tiendil**

```
Create a short artistic description of the event: the hero hits the zombie with his axe for half of the zombie's health.

In the style of high fantasy.
```

**OpenAI Chat**

```
The valiant hero brandishes his enchanted axe, its ancient metal gleaming in the light of the full moon. With a mighty cry, he charges at the shambling zombie, the creature's eyes glowing with malevolent hunger. The hero's swing is true, and the axe slices cleanly through the zombie's putrid flesh, removing half of its cursed life force in one fell blow. The zombie staggers back, its moans of pain echoing through the dark forest. But the hero is not done yet – with a fierce determination, he readies his weapon for the final strike, determined to rid the land of this evil once and for all.
```

**Tiendil**

```
Create a short artistic description of the event: the hero hits the zombie with his axe for half of the zombie's health.

In the style of low fantasy.
```

**OpenAI Chat**

```
The rugged hero swings his battered axe at the approaching zombie, the creature's rotten flesh stinking up the air. The weapon connects with a dull thud, slicing through the zombie's body and removing half of its remaining health. The zombie lets out a guttural moan and stumbles backwards, its movements becoming sluggish as it struggles to stay on its feet. The hero readies his axe for another strike, his determination unwavering as he faces down the undead creature. He knows that he must protect his people from this threat, no matter the cost.
```

**Мысли**

Стилистика работает.

Значит в будущем:

- Для проектов можно будет создавать уникальную консистентную стилистику.
- Стилистику можно будет варьировать для разных рас, сообществ, etc.
- Нейронку можно будет дообучить на что-то совсем уникальное, авторское.

Добавим деталей.

**Tiendil**

```
Create a short artistic description of the event: the hero hits the zombie with his axe for half of the zombie's health.

In the style of high fantasy.

The hero is an old mage-dwarf. His beard is shaved on half of his face.

The hero's axe looks like a normal battle axe. It contains complex ice and blood magic enchantments in its deep.
```

**OpenAI Chat**

```
The ancient mage-dwarf hero brandishes his enchanted axe, the weapon's glinting blade etched with complex ice and blood magic. His beard, shaved on one side, blows in the wind as he faces off against the shambling zombie. With a fierce cry, he brings the axe down upon the creature, the enchanted blade slicing through its putrid flesh with ease. The zombie howls in pain as half of its cursed life force is removed, its movements becoming sluggish as it struggles to stay on its feet. The mage-dwarf hero readies his weapon for the final strike, determined to rid the land of this evil once and for all.
```

**Мысли**

Детализация работает, но сеть тяготеет к повторению тезисов из входных параметров.

Повторение скорее всего можно убрать либо явным указанием на это в запросе (не проверял) либо дообучением.

Больше деталей!

**Tiendil**

```
Create a short artistic description of the event: the hero hits the zombie with his axe for half of the zombie's health.

In the style of high fantasy.

The hero is an old mage-dwarf. His beard is shaved on half of his face.

The hero's axe looks like a normal battle axe. It contains complex ice and blood magic enchantments in its deep.

The zombie is a champion of zombies. It is tall. It is agile. It is heavily equipped. Equipment: heavy chest armour with rubies, helm with a bird's feather, long dark magic spear in the left hand, a bastard sword with fire magic in the right hand.
```

**OpenAI Chat**

```
The ancient mage-dwarf hero brandishes his enchanted axe, the weapon's glinting blade etched with complex ice and blood magic. His beard, shaved on one side, blows in the wind as he faces off against the champion zombie. The creature towers over him, its heavy chest armour glinting with rubies and its helm adorned with a bird's feather. In its left hand it wields a dark magic spear, and in its right, a flaming bastard sword.

Despite the zombie's formidable appearance, the hero remains undaunted. With a fierce cry, he brings his axe down upon the creature, the enchanted blade slicing through its putrid flesh and heavy armour with ease. The zombie howls in pain as half of its cursed life force is removed, its movements becoming sluggish as it struggles to stay on its feet. The mage-dwarf hero readies his weapon for the final strike, determined to rid the land of this evil once and for all.
```

**Мысли**

Всё-таки сильно опирается на оригинальные запрос. Скорее всего надо будет явно указывать, что включать в текст, а что использовать для справки. Но это выглядит как вполне выполнимая задача.

## Выводы

- Если вам надо нагенерировать текста без сильного контекста, то вот оно уже работает — берите, пользуйтесь.
- Такие сети определённо надо будет доучивать под проект, чтобы не было, например, очень специфичных общих частей (вроде стандартных вступлений) и, наоборот, были какие-нибудь специфичные для проекта моменты.
- С другой стороны, 100% появятся готовые сервисы с сетями для геймдева или просто open-source решения.
- Текстовая генерация определённо работает качественнее и полнее, чем графическая. В некотором роде это логично, так как текстовая информация более формализована.
- Нельзя позволять сети вольные трактовки. В некоторых моих следующих попытках сеть убивала зомби в описании, хотя по задаче он должен был оставаться жив.
- Полноценную историю сеть всё ещё не создаст — не хватает памяти. Но уже может попытаться.

P.S. А ещё я начал использовать этого бота как справочник, вместо stackoverflow. Например, для поиска флагов консольных команд.
