---
title = "«Slay The Princess» — combinatorial narrative"
tags = ["theory", "practice", "gamedev", "game-design"]
published_at = "2024-05-07T12:00:00+00:00"
description = "I'll share a couple of thoughts about «Slay The Princess» and the narrative structure in this game, while I'm still under the impression."
seo_image = "./images/cover.jpg"
---

/// brigid-images
src = "./images/cover.jpg"
caption = "My favorite version of the Princess."
///

It's hard to impress me as a player and even harder as a game developer. The last time it happened with [Owlcat Games](https://owlcat.games/) in [Pathfinder: Kingmaker](https://store.steampowered.com/app/640820/Pathfinder_Kingmaker__Enhanced_Plus_Edition/), when they added a timer to the game's plot.

But [Black Tabby Games](https://blacktabbygames.com/about) managed to do it. And they did it not with some technological complexity, but with a visual novel on a standard engine ([RenPy](https://www.renpy.org/)), which is cool in itself.

I'll share a couple of thoughts about the game and the narrative structure in it, while I'm still under the impression. I need to think about how to adapt this approach to my projects.

**ATTENTION: SPOILERS!**

If you haven't played [Slay The Princess](https://store.steampowered.com/app/1989270/Slay_the_Princess/) yet, I strongly recommend you to catch up — the game takes 3-4 hours. You'll not regret it.

<!-- more -->

## Sequence of interesting choices

I started the draft of this post with the thought that «Slay The Princess» is not a game, but an interactive experience. But in the process, I realized that I was wrong. There is an interesting nuance with «The Princess».

For example, let's take [Sid Meier's](https://en.wikipedia.org/wiki/Sid_Meier) definition that a game is a sequence of interesting choices.

Usually, I interpreted it as a "sequence of interesting game-mechanical choices" — choices that affect the state of the game in an interesting for a player way. I assume that most developers implicitly do the same.

There are almost no such choices in «Slay The Princess». And you can't "lose". The developers even warn you about it in a tricky way at the start of the game.

The choices made by the player in the first 99% of the game have little effect on the course of it and do not affect the ending in any way. There are a few exceptions, but they only confirm the rule. All significant choices for the ending occur in the last 5-10 minutes.

If you've read this far and haven't played the game yet, congratulations, killing the Princess will be much less interesting for you.

The choice of the player in «Slay The Princess» affects not the state of the game, but the state of the player, what they experience while going to the finale. An important part of this influence is the lack of knowledge of what the choice changes.

So, if we cut the "game-mechanical" part, then «Slay The Princess» is definitely a game, just not a traditional one? non-standard? or just the game as it should be?

It's curious that "mechanically insignificant" choices are not uncommon in games, but rather the standard. They are used in role-playing games, visual novels, CYOA, and other genres — always when you need to influence the player's emotions on the cheap. Usually, it turns out poorly. I've played enough in different genres, but I can count on my fingers when it worked on me.

But in «Slay The Princess», this is the basic mechanic, and it somehow works great.

## Game loops

Mechanically, the game is "simple". There are three cycles:

1. You stand on the road to a forest cabin, enter it, (do not) take a sword, go down to the basement, and do something with the Princess. Usually, as a result, one of you dies, but not always.
2. You repeat cycle 1 about three times, each time the Princess and the cabin change due to your choice in the previous cabin. I'd like to say the Princess is transforming, but in reality, she's being brutally twisted. More on that will be later. At the end of the cycle, the god-like entity Mound takes the Princess, thanks you, erases the character's memory, and returns the player to the beginning of the cycle.
3. You collect 5 Princesses for Mound and get the finale. In fact, this is the full game session.

### Избушка — цикл 1

/// brigid-images
src = "./images/the-cabin-in-the-woods.jpg"
caption = "Первая избушка."
///

Суть первого цикла:

- Вас помещают в контекст: стартовый (если вы в начале цикла 2) или тот, который вы создали своим выбором в предыдущей избушке.
- Вы должны решить моральную дилемму в условиях неизвестности: убить Принцессу или нет.
- Организовано это в виде классической визуальной новеллы: идём через пару локаций, выбираем варианты реплик.

Во время первого прохождения, до конца игры вы скорее всего не будете уверены надо ли её убивать, справедливое ли это убийство, как это убийство повлияет на вас и на мир. Игрока ставят в ситуацию полной неизвестности где все ~~лгут~~ недоговаривают и ему приходится восстанавливать общую картину по оговоркам, недомолвкам и своей фантазии. Этот мини детектив, кстати, заслуживает отдельной похвалы, я давно так ни в чём не путался :-D

Получается, на каждой итерации базового цилка игры перед игроком ставят не тривиальные задачи в духе «завали 100500 кабанчиков», а заставляют решать моральную диллему о центральном элементе игры, её [краеугольном камне](https://ru.wikipedia.org/wiki/Краеугольный_камень). Принцесса, в конце-концов, в название игры вынесена. Там всё о Принцессе, даже вы — игрок — о Принцессе.

Важно, что повторять выборы в одинаковых ситуациях нельзя. Если вы один раз намеренно промазали кинжалом мимо Принцессы, во второй раз в той же ситуации вам придётся её убить.

Во-первых, поначалу это приводит к чему-то вроде морального диссонанса, когда игрок вынужден идти против того, что он считает правильным в данный момент.

Во-вторых, это заставляет более аккуратно планировать свои действия на уровне игровой сессии.

И да, убийство или спасение Принцессы ни на что не влияет, кроме вашего внутреннего состояния. Но вы об этом узнаете только постфактум. Где-то на середине игры Хтонь вам подскажет, что это ни на что не влияет в духе «это не об этом», но в условиях нарративной паранои эта подсказка лично для меня мало что поменяла, а сама логика происходящего говорит о том, что влияеть должно.

### Принцессы как психологические архетипы — цикл 2

/// brigid-images
src = "./images/princesses.jpg"
caption = "Принцессы, официальный арт."
///

Я не психолог, поэтому в терминах могу ошибаться.

Как я сказал, суть цикла 2 в том, что вы корёжите Принцессу своим взаимодействием с ней.

Завершение избушки оставляет на бедолаге отпечаток: иногда «плохой», иногда «хороший». Этот отпечаток делает её олицетворением одного из психологических архетипов: Ярость, Гнев, Любовь, Предательство, Власть, Азарт и так далее, их много. С большой буквы, потому, что это не мелкие изменения, они отображаются как переписывание реальности: принцесса меняется визуально, меняются её манера общения, голос, избушка меняется.

За цельное системное переписывание Принцессы отдельный респект от меня разработчиком — это прям круто.

В новой избушке игроку приходится решать, что делать с последствием своего морального выбора в предыдущей:

- Что мне делать с Предательством, которое я совершил?
- Стоит ли разрушить Надежду, которую я подарил?
- Стоит ли гасить Азарт, который я зажёг?

Путешествие по кабинкам неизменно заканчивается своего рода [катарсисом](https://ru.wikipedia.org/wiki/Катарсис), после которого Хтонь забирает вашу уникальную, выстраданную принцессу себе, а вы возвращаетесь к начальной кабинке.

По сути, цикл 2 представляет собой классическое ветвистое сюжетное дерево (точнее [DAG](https://ru.wikipedia.org/wiki/Ориентированный_ациклический_граф)).

Но, в отличии от большинства других визуальных новелл:

- Неглубокое. Если считать в избушках, то обычно всё решается за 2-3 избушки, но разветвлений чуть больше, обычно в рамках одной избушки есть несколько точек принятия решения. На Reddit есть [почти полная схема](https://www.reddit.com/r/slaytheprincess/comments/1abndit/slay_the_princess_complete_guide/)
- С резкими трансформациями в узлах принятия решений. Например, даже первый выбор в первой избушке «взять или не взять меч» приводит нас к разным принцессам.
- С блокированными путями из-за ваших предыдущих выборов.

### Комбинаторный нарратив — цикл 3

/// brigid-images
src = "./images/mound.jpg"
caption = "Хтонь."
///

Если считать [по принцессам](https://slay-the-princess.fandom.com/wiki/The_Princess), то вариантов второго цикла будет 20.

На самом деле больше, так как принцессы могут трансформироваться друг в друга, но простым способом посчитать количество вариантов второго цикла не получится, а повторяться принцессы не будут. Поэтому остановися на минимуме — 20 — этого будет боле чем достаточно для наших целей.

Мы помним, что игроку надо собрать 5 принцесс, то есть 5 раз пройти цикл 2.

Учитывая общее непонимание происходящего в сюжете, можно считать, что игроки будут «открывать» разных принцесс и делать это в разном порядке. Конечно, будут какие-то закономерности в духе «многие попробуют максимально жёсткий насильственный подход», но в целом этот процесс выглядит достаточно случайным.

Вспомним [комбинаторику](https://ru.wikipedia.org/wiki/Комбинаторика) и найдём количество [размещений](https://ru.wikipedia.org/wiki/Размещение) без повторения 5 из 20 элементов.

```
n!/(n-k)! = 20! / (20-5)! = 20! / 15! = 16*17*18*19*20 = 1860480
```

Итого, мы имеем минимум 1860480 вариантов глубоко личного опыта для игроков — основанного на «сильных» выборах уровня «жизнь vs смерть», «доверие vs ложь».

Перефразируя, **игра даёт больше чем 1.8 миллиона способов провести игрока по психологическим состояниям** (Ярость, Гнев, Любовь, etc.)

Опять же, подобная кобминаторика — не уникальная фишка «Slay The Princess». Так делают в каждой второй RPG: пойди сделай квесты в точке А, потом в точке Б или, если хочешь, наборот, сначала в Б, потом А. Добавьте пару таких точек, пусть там кого-нибудь надо спасти или убить, и у вас тоже получится какая-то «уникальнизация» опыта с «сильными выборами», но она не будет работать настолько эффективно.

## Известное неизвестное

Механически игра выглядит просто, мне кажется я понимаю как она устроена, но от этого передо мной становится только больше вопросов:

- Почему при подобной простоте, так мало игр достигает такой эффективности в воздействии на игрока?
- Является ли успех игры следствием успешного/правильного сочетания стандартных механик или есть ещё что-то неочевидное?
- Какие механики в «Slay The Princess» являются обязательными, а какие можно удалять или менять?
- Что первично для успеха: проведение игрока по психологическим состояниям, комбинаторика под сюжетом или оба фактора равнозначны?
- Можно ли добиться такого эффекта с более приземлёнными выборами игрока?
- Можно ли добиться такого эффекта с меньшей проработкой изображений и озвучки?
- Можно ли добиться такого эффекта без ограничения информации, доступной игроку?
- Насколько важным является быстрое путешествие игрока по психологическим состояниям? Можно ли растянуть это путешествие на 20-30 часов?

Ответов пока не знаю. На мой взгляд, соль может быть как раз в быстром проведении игрока по ярким крайним психологическим состояниям, но я пока не уверен на сколько это важно.

## Интересные фишки игры

После посещения избушки меняется не только принцесса и реальность, но и персонаж игрока. У него в голове появляются отдельные голоса, которые соответствуют произошедшему. Например: Влюблённый, Параноик, Беспомощный, etc.

Игрок — «герой» (как Принцесса — «принцесса»), но не человек, а довольно стрёмное существо. Принцесса тоже не всегда человек, но всегда начинает человеком и строится вокруг человечности. Нечеловечность героя принцессу не волнует, но начинает волновать игрока, когда он её замечает. В некотором роде она рушит стереотип «героя, который спасает принцессу».

/// brigid-images
src = "./images/the-hero.jpg"
caption = "Игрок."
///

В финале игрок может «поспорить» со своими принцессами.

При старте игры, разработчики говорят, что она о любви. Не врут.
