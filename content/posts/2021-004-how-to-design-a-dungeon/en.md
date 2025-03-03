---
title = "How to design a dungeon"
tags = [ "gamedev", "game-design", "theory", "interesting", "best", "world-design"]
published_at = "2025-03-04T12:00:00+00:00"
seo_description = "Recommendations for creating game dungeons: how to look at a dungeon from a player's perspective, what to pay attention to when developing."
seo_image = "images/how-to-design-a-dungeon-cover.jpg"
---

/// brigid-images
src = "images/how-to-design-a-dungeon-cover.jpg"
caption = "Source: [Pinterest](https://www.pinterest.com/pin/559994534913996418/?)"
///

A lot of people come to the post [about dungeon generation](post:dungeon-generation-from-simple-to-complex) when looking for a lesson on designing a dungeon, not programming it. For a [DnD](https://en.wikipedia.org/wiki/Dungeons_%26_Dragons) session, for example.

To make sure no one feels left out, here are some recommendations on the topic. The recommendations are suitable not only for dungeons but also for developing any location.

I also recommend reading my other essays on game design:

- [About creating names]{post:@choose-nearest-language:about-names-creation}
- [About world building]{post:@choose-nearest-language:about-worlds-building}
- [The next frontier of game design]{post:@choose-nearest-language:next-gamedesign-frontier}

The last essay is more about designing computer games, but it contains some important thoughts that I will use in the future.

<!-- more -->

## Why do you need a dungeon?

Necromancers need a dungeon to create undead, conduct experiments on people, and, possibly, to live happily.

A mad scientist needs a dungeon as a scientific laboratory.

Thieves need a dungeon as a treasure trove and a place to plan future operations.

Rulers need a dungeon to keep criminals in it.

You, as a game designer or game master, don't need a dungeon for any of these reasons. Nor do the players need it for something like that, even if they think otherwise. Of course, unless you are a mad scientist or a vampire.

In a game, **a dungeon is a tool for creating the necessary experience for players**. Like any other location.

The specific type of experience depends on the game and the players. Maybe you want to entertain them? To puzzle, to teach, to strain, or to scare? Maybe even all of the above plus a little more.

Most likely **you want to create a chain of experiences and impressions**, something like this:

1. Intrigue players near the entrance to the dungeon.
2. Immerse them in an atmosphere of uncertainty.
3. Deceive them.
4. Put the characters on the brink of life and death.
5. Relieve tension with a bit of humor.
6. Teach them to solve chess problems.
7. Put them before a moral choice.
8. Again on the brink of life and death.
9. Remind them that every decision has consequences.
10. Reward (or not) for their efforts.

To build such chains correctly, you need to know a little psychology, scriptwriting, and, of course, your players. Here I can't give much advice.

But I can definitely say that **the structure of your dungeon should be determined primarily by the desired sequence of experiences**.

If we have a "story" that we want to tell with a dungeon, then we must build it so that the story is told sequentially. If we mix up the "sequence of rooms," all our plans will go to waste, and the dungeon will become uninteresting or confusing. In some cases, you may want to mix up the sequence of narrative elements intentionally, but this is a separate topic.

## Dungeon context

We've defined the purpose of the dungeon as the most important requirement for its structure.

Just as essential, though slightly less critical, is ensuring the dungeon aligns with the context in which it exists. **The dungeon should organically fit into the game environment**: corresponding to the game world, the current situation in the game, and the players' capabilities.

In most cases (but not all), it will be a bad idea to lead players:

- into a too complex dungeon;
- into a lair of a medieval thieves' guild located on a space station;
- into a necromancer's base that looks like a brothel.

Therefore, before creating a dungeon, it is necessary to identify the essential properties of the context, especially:

- The historical period: current and the time of construction of the dungeon.
- The cultures of the creators and current owners. Both material and spiritual, in case you need to add frescoes or a book, and you will need them.
- The available technologies and resources for its construction and repair: a wooden fort in the desert will look comical.
- The kinds of beings that can inhabit it.
- The stage of the game at which players will enter the dungeon, the desired parameters of their characters.

By the way, it is convenient to record and store such information about game objects in the form of cards with a brief description of the object's properties. Those cards will make your life easier when you need to remember something or create a new object based on the previous one. I talked more about cards in my [post about world building]{post:@choose-nearest-language:about-worlds-building}.

## Living dungeon

Если просто накидать комнат с врагами и ловушками, то с большой вероятностью игроки будут ощущать подземелье как картонные декорации в спектакле, направленном на них. Это может сыграть на пользу, если мы делаем игру в жанре сатиры, но в большинстве случаев такие ощущения совсем не то, что нам и игрокам хотелось бы получить.

Подземелье не будет ощущаться «живым». **Игроки должны видеть, что оно, вместе со всеми комнатами и жителями, существует для собственных целей, а не для развлечения путешественников.** Причём не только существует сейчас, но и существовало до их прихода и, возможно, будет существовать после ухода.

На мой взгляд, термин точно передаёт суть, хотя и имеет расплывчатую формулировку. Для себя я определил более конкретные критерии «живости» мира:

1. Правила функционирования мира игрок может узнать и понять.
2. Будущее локальное состояние мира может быть предсказано игроком с «разумной» точностью.
3. Причины возникновения текущего локального состояния мира можно определить с «разумной» точностью.
4. Игрок не выступает единственным источником изменений в мире.
5. Сущности, например жители подземелья, влияют друг на друга в достаточной мере, чтобы изменения не затухали — состояние мира не замораживалось со временем.

Пятый пункт относится скорее к компьютерным играм, а вот 1-4 пункты можно распространять на все.

Для подземелья это значит, например, что его жители заняты какой-то работой, а не сидят и ждут пока к ним придут игроки. Некроманты сшивают трупы, охранники — охраняют, повара — готовят. Равно как и общаются на перекурах, пишут письма родным, ругаются и плетут заговоры друг против друга.

Не обязательно, даже вредно, продумывать и симулировать «честную» жизнь подземелья. Например, прописывать бытовую логику каждого жителя и управлять им. Это очень затратный подход, тем более игроки не заметят потраченых усилий. Куда проще создавать иллюзию жизни.

Добиться правдоподобия можно несколькими способами.

### Случайные события

Игроки в большинстве случаев не могут подсмотреть за жизнью подземелья, а способны только сталкиваться с её проявлениями во время движения по нему. Поэтому можно добавить события, которые срабатывают при действиях игроков в заданном контексте.

Например:

1. При открытии двери уборной можно встретить справляющего нужду жителя подземелья.
2. При посещении столовой во время обеда, там может быть больше противников. чем в другое время.
3. Аналогично, в казармах больше противников (спящих) может быть ночью.
4. Через закрытые двери можно дать послушать бытовые разговоры противников.

### Артефакты жизнедеятельности

Кроме самой жизнедеятельности можно наблюдать и её следы. Да, наваленная в углу куча — тоже след жизнедеятельности. Он, к слову, при проверке на знание лора, расскажет о существовании тролля, который ослаблен расстройством желудка.

Артефакты, конечно, бывают и менее жизнедеятельными:

1. Официальные бумаги: отчёты снабженцев, рапорты охраны, протоколы экспериментов.
2. Неофициальные бумаги: личные письма, дневники, записки.
3. Следы пребывания живых (или мёртвых) в комнатах: лужи в ванной, немытая посуда, недавно выглаженное бельё.
4. Следы ремонта.
5. Пыль в местах, которые редко посещаются жителями.

Главное помните: **если на столе стоит тарелка с горячим супом, рядом должен быть тот, кто им обедает**.

## Якоря

Вот у нас есть живое подземелье, которое вполне соответствует окружающему миру. Но кое-чего не хватает.

Представьте что у нас не одно подземелье, а множество подземелий, городов, хуторов, секретных рощ и подобных мест. Все они проработаны по описанным правилам, размещены где-то в мире игры и игроки путешествуют между ними. Не забыли ли мы что-нибудь, что разрушит погружение игроков в игру?

С первого взгляда кажется что нет. Приходят игроки в город А, делают там свои дела, их отправляют на хутор Б, оттуда в подземелье В и так далее — всё дальше и дальше по сюжету.

Что случится, если игроки отойдут в сторону от сюжета и посмотрят на мир со стороны? Хорошие игроки любят это делать.

Они увидят, что в городе А знают только о хуторе Б, на хуторе знают только о подземелье, а в подземелье не слышали ни о городе ни о хуторе — они там своими подземными делами занимаются. Или, что также плохо, в каждом из этих мест знают только о событиях из приключения игроков, а ни о каких прочих событиях не слышали.

Опять налицо картонность, на этот раз не одного подземелья, а целого мира, который построен вокруг истории игроков. Конечно, мир вполне может строится вокруг игроков, часто он должен так строится, но игроки не должны замечать этот маленький обман.

Чтобы спрятать ужасную правду, **следует связать контент воедино, заякорить его единицы: места, людей, события — друг на друга**.

Якорь — хороший термин — мы в буквальном смысле пробрасываем из одной сущности в другую что-то небольшое, но цепкое, что позволяет удерживать их вместе.

Якорем может стать любая мелочь:

- слух или сплетня;
- отрывок письма с упоминанием другой сущности;
- граффити общей тематики в разных городах;
- картины с изображением знакомых мест или персонажей;
- персонажи или организации, встречающиеся в разных местах;
- анекдот, рассказываемый в таверне, который повторяется везде вдоль маршрута выслеживаемого шпиона;
- причинно-следственные связи между местами или персонажами, когда случившееся с одним влияет на другого;
- новости, догоняющие или обгоняющие героев в путешествии;
- прямые упоминания в разговорах других мест и персонажей, куда ж без этого.

## Избыточность

Последний, но не менее важный момент, который я хочу затронуть.

Вопрос детализации и уровня проработки контента: мира игры, персонажей, локаций — стоит остро даже в компьютерных играх, которые всё ещё с большего линейны. В играх с живым ГМ он стоит ещё острее: у игроков значительно больше свободы действий, а значит больше и событий, мест, персонажей, которых необходимо продумать.

Самое важное: **не пытайтесь продумать всё идеально**. Игроков больше, чем вас, их фантазия заточена на то, чтобы находить нестандартные ходы, поэтому предусмотреть всё невозможно. Чем больше штук вы придумаете, тем больше их останется невостребованными. Игроки пройдут мимо: вместо трактира завернут в библиотеку, вместо права пойдут налево и так далее.

Чтобы сэкономить усилия, **импровизируйте — конструируйте всё возможное на ходу из заготовок**. Если вы придумали интересный слух, не вписывайте его в уста конкретного персонажа, которого игроки могут пропустить, разрешите пересказать его любому персонажу, которому слух подходит.

Например, слух о торговле может рассказать любой торговец, а не одноногий-одноглазый-однорукий скупщик краденого в чёрном тупике, который обнаруживается при выбрасывании 20 на восприятие. Конечно, могут и должны существовать уникальные вещи, которые случаются только в специально сконструированных условиях. Как и везде, тут нужно блюсти баланс.

В конструировании вам могут помочь мои [соображения о композиции и классификации]{post:composition-vs-classification}.

Кстати, об одноногих и одноглазых. **Хороший способ привести игрока к нужному контенту — заинтересовать его чем-то, к чему он сам пойдёт.**

Простых примеров полно в компьютерных играх, которые используют этот приём направо и налево. Самые топорные варианты: значки заданий над головами NPC или гигантский столп света на горизонте.

В некомпьютерных играх настолько лобовой подход, конечно, не сработает, но суть та же: бард ни за что не откажется уделить внимание подмигивающей эльфийке, сыщик не пропустит следы крови на полу, а жрец не посмеет обойти помощью страждущего.

**Пытаясь ограничить избыточность — не разрушьте целостность мира или подземелья**.

Нарушение целостности — обратная сторона избыточности. Если избыточность — о лишнем, то нарушение целостности — о недостающем или несинхронизированном.

Продумывая новые сущности, прорабатывайте все их важные свойства — именно на них игроки обращают внимание в первую очередь.

Если существует развилка, то необходимо дать возможность идти и направо и налево. Если есть бригада строителей, то должен быть её прораб. В тюрьме должны быть стражники, заключённые и начальник тюрьмы.

Также важно следить за согласованностью уже придуманных свойств. Путь идущий на север не приводит туда же, куда и идущий на юг. Начальником охраны в эльфийском поселении не станет орк. Сокровищницу не построят вне охраняемой зоны подземелья. И так далее. Опять же, всегда возможны исключения, если они логично ложатся на мир игры и сюжет.

## Итого

Как вы могли заметить, я не сказал ни слова о том, как правильно расставить комнаты в подземелье или сколько охраны в какую комнату ставить.

В любой локации важно не количество комнат, охраны и ловушек, а опыт, впечатления, которые получают игроки. Именно желаемый опыт, вкупе с миром игры, сюжетом и правилами определяют локацию.

А количество комнат, охраны и ловушек относительно легко выводятся из получаемых ограничений.

TODO: it is a translation
