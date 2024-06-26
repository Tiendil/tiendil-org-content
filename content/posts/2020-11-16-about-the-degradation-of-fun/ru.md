---
title = "О деградации фана"
tags = [ "the-tale", "gamedev", "game-design", "mmo", "practice", "theory", "interesting", "best"]
published_at = "2020-11-16T12:00:00+00:00"
seo_description = "Заметки о динамике поведения разработчиков и игроков в ММО на длительных интервалах времени."
seo_image = "images/about-the-degradation-of-fun-cover.jpg"
---

/// brigid-images
src = "images/about-the-degradation-of-fun-cover.jpg"
caption = "[источник изображения](https://evil.fandom.com/wiki/Swamp_of_Sadness)"
///

На [mmozg.net](https://mmozg.net/) появился любопытный пост о [динамике поведения разработчиков и игроков в EVE](https://mmozg.net/mmo/2020/11/11/slishkom-uspeshnye-igroki-slishkom-ustavshie-razrabotchiki.html), по крайней мере я так его тему увидел. Пост хорош сам по себе, но затрагивает куда более широкую тему, которую я и вынес в заголовок.

А поскольку я разрабатываю как раз [мини аналог EVE](https://the-tale.org/) — ММО с единственным игровым сервером без ресетов — мне есть чего добавить по теме. Это эссе развивает мои комментарии к оригинальному посту.

Следующие соображения справедливы для всех игр, но сильнее всего относятся к ММО. Через призму разработки многопользовательской песочницы с персистентным миром я и буду рассказывать.

<!-- more -->

## Динамика многопользовательских миров

Игроки адаптируются к игре быстрее, чем разработчики могут её развивать.

При добавлении новой механики, разработчикам необходимо учитывать её взаимодействие со всеми уже существующими. [Чем больше механик есть в игре, тем сложнее добавлять следующую]{post:why-developers-do-not-make-this-simple-thing}.

Может показаться, что сложность добавления механики линейная: при добавлении N+1-ой механики необходимо проверить её работу c N существующими. Но это иллюзия, поскольку существующие механики также связаны между собой и влияние новой проходит по длинным и разнообразным логическим цепочкам. В худшем случае, при сильной связности логики, может потребоваться рассматривать более чем N! вариантов взаимодействий.

Поэтому в начале разработки игры механики вводятся быстро, по мере её развития их добавление замедляется, а через какое-то время неизбежно начинается рост «ошибок проектирования» — разработчикам становится сложно учитывать все нюансы правил. А ведь разработчики ещё и меняются — мало кто согласен 5-10-15 лет пилить один проект — знания теряются.

Игрокам познавать новую механику проще, так как они имеют дело только с одним вариантом мультивселенной, в которой из всех возможных вариантов разработчик уже выбрал единственный.

Кроме того, вокруг любого проекта, тем более ММО, появляется сторонняя инфраструктура: руководства, калькуляторы, базы данных, боты, организации игроков и так далее — это ещё сильнее ускоряет «прохождение» игры по мере её взросления.

В итоге происходит деградация фана. Чем дольше существует игра, тем более она предсказуема и менее интересна для опытных игроков. Это не так страшно для игр, ориентированных на постоянный поток новых игроков (пришёл, заплатил, ушёл), но создаёт большие проблемы для игр, которые монетизируются через постоянное сообщество игроков.

## Личный опыт

К чему приводит разница в скоростях разработки и потребления контента я последние 8 лет наблюдал на своём полигоне. Должен сказать, до момента осознания это явление доставило мне много печали — тяжело видеть проблемы и не понимать откуда они растут и что с ними делать.

Если пробежаться по личным воспоминанием от начала разработки «Сказки» до текущего состояния, можно ясно увидеть изменение как частоты и качества обновлений, так и настроения игроков.

Сначала игра росла быстрее, чем её познавали игроки. Царило позитивное, воодушевлённое настроение. «Сказочники» получали новые впечатления быстрее, чем старые механики успевали наскучить.

Через 3-4 года развитие игры замедлилось, начали появляться игроки «прошедшие» текущую версию. Несмотря на то, что игра стала глубже. Настроение изменилось с воодушевлённого, на «рабочее» — мы играем и нам хорошо. Появилась первая инфраструктура вокруг игры.

Ещё через пару лет игра явственно вступила в эпоху застоя. Этот переход был ускорен переводом игры в статус хобби-проекта, но, как я понимаю, был неизбежен. Новые механики стали прорабатываться дольше, чем игроки их «проходили». Мне стало сложно уместить в голове всю игровую логику и я стал делать заметные промахи в механиках и балансе, что не пошло на пользу общему настроению сообщества, да и моему тоже. Настроение игроков начало меняться на «болотное», игроки стали пытаться предлагать решения для «выхода из кризиса».

Проблему с ошибками я пытался решать как переработкой архитектуры геймдизайна, так и самой игры, но это только больше замедлило добавление новых механик и ускорило деградацию фана.

## Как бороться с застоем

Универсального решения я не знаю, вряд ли оно существует. Но можно выделить несколько эвристик.

**Деградации фана нельзя избежать.** Её можно замедлить, возможно сильно, но необходимо определить критерии по которым разработчики смогут сказать: «всё, дальше улучшать игру будет слишком тяжело».

**Механики игры с самого начала необходимо проектировать с учётом их влияния на скорость деградации фана.** Исходя из этого следует определять уровень их связанности и длину цепочек распространения влияния.

Самые простые способы регулировать эти параметры: делать механики [ортогональными](https://ru.wikibooks.org/wiki/%D0%A1%D0%BB%D0%BE%D0%B2%D0%B0%D1%80%D0%B8%D0%BA_%D1%84%D0%B8%D0%BB%D0%BE%D1%81%D0%BE%D1%84%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D0%B5%D0%B3%D0%BE_%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B0/%D0%9E%D1%80%D1%82%D0%BE%D0%B3%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D1%8C) и ограничивать цепочки их взаимодействия в духе проектирования нелинейных историй ([1](https://dtf.ru/gamedev/37319-derevo-povestvovaniya-nelineynaya-struktura-syuzheta-v-igrah), [2](http://aushestov.ru/%D1%83%D1%80%D0%BE%D0%B2%D0%B5%D0%BD%D1%8C-10-%D0%BD%D0%B5%D0%BB%D0%B8%D0%BD%D0%B5%D0%B9%D0%BD%D0%BE%D0%B5-%D0%BF%D0%BE%D0%B2%D0%B5%D1%81%D1%82%D0%B2%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/)), в которых реализован частный случай борьбы со сложностью.

**Эмерджентные правила значительно замедляют потребление игры, но сложны в проектировании.** Под эмерджентными правилами я понимаю минималистичный набор правил, который производит значительно превосходящее его по размеру количество игровых ситуаций.

Идеальный пример — шахматы. Но планировать эмерджентные правила имеет смысл только с самого начала разработки. Перейти на них на ходу вряд ли получится. Разработка таких правил — высший пилотаж для геймдизайнера.

**Количественные решения работают, но плохо.**  Может показаться, что идея завалить игроков контентом: картами, оружием, монстрами, режимами — решит все проблемы, но это не так.

Во-первых, не получится вечно создавать разнообразный контент, без добавления новых механик.

Во-вторых, добавление контента не добавит игроков в ваше ММО. В итоге «плотность» игроков на единицу контента упадёт, что изменит динамику игры. Если же вы добавляете singleplayer контент, то динамика тоже изменится, но уже в контексте плотности и / или скорости потребления контента игроком.

В-третьих, сформированная вокруг вашей ММО инфраструктура позволит тем же группам игроков контролировать значительно больший объём контента, если мы говорим об играх с персистентным миром.

Например, если гильдии контролировали в среднем по X% мира то через некоторое время после добавления новых карт они снова станут контролировать по X%, даже если на какое-то время этот процент просядет. Поэтому сработать может только большое «взрывное» расширение мира, что чревато проблемами из предыдущего абзаца.

В целом, управление контентом — отдельный сложный вопрос, с которым надо по-разному работать в зависимости от жизненного этапа игры.

**Качественные решения работают лучше, но сложнее в реализации.** С определением «качественности» всегда возникают проблемы, определим его как добавление нового «измерения» к игре.

Эталоном качественного изменения в вакууме можно считать добавление владения территорией в абстрактной космической песочнице. Или появление системы карт судьбы  в Сказке.

Введение хорошо продуманной качественной механики изменяет все или многие модели поведения игроков, равно как и увеличивает срок достижения «мастерства», что естественным образом замедляет потребление контента и добавляет некоторую реиграбельность, заставляя потреблять некоторый контент повторно.

Введение плохой качественной механики ломает всё к чертям, приносит боль и страдания.

**Публичное обсуждение изменений позволяет избежать ошибки проектирования.** Нас — разработчиков — мало, а игроков — много. Многие игроки собаку съели на поиске лазеек в механиках игры, поэтому часть игроков являются большими экспертами по игре, чем её разработчики.

Группа опытных игроков может посмотреть на изменения с большего количества сторон, чем разработчики, и примерит их к тем местам, на которые разработчики никогда не обратят внимания. Поэтому мнение игроков бывает крайне полезно при разработке новых механик или, например, интерфейсов.

[**User Generated Content**](https://en.wikipedia.org/wiki/User-generated_content) **может существенно разнообразить игру.** Но не любой.

Новый скин для меча или переозвучка комментатора, конечно, внесут некоторое разнообразие, но погоды не сделают. А вот ссора между гильдиями с переделом карты может обеспечить интерес к игре на недели, если не месяцы.

В данном контексте важны не «артефакты», создаваемые игроками, а игровые ситуации. Появлению таких ситуаций хорошо способствует социальный геймплей (гильдии, турниры, pvp) и эмерджентные правила, о которых я уже говорил.

**Если старым игрокам скучно, приведите к ним много новых.** Свежая кровь на время оживит любую ММО, если в ней есть что делать и для новых игроков есть место в мире. Если старички всё поделили и не намерены подвигаться, игроки придут и уйдут — ничего не изменится. Сначала надо создать место для них и только потом приводить.

**Ресеты должны хорошо работать.** Я так думаю :-D По крайней мере есть множество популярных (М)МО игр, в которых принято поднимать новые сервера и начинать игру сначала.

Если вы начинаете делать игру, подумайте, так ли вам важна персистентность мира? Вечный мир значительно усложняет любые изменения в игре, так как достижения игроков в нём имеют значительно большую ценность, чем в обычных играх.

Если персистентный мир всё-таки важен, подумайте, нельзя ли внести частичные сбросы в механики игры. Например: permadeath аватаров, периодические нашествия жнецов, уничтожающих часть мира, деградацию игровых сущностей при отсутствии внимания игроков к ним, etc.

**Просто добавьте разработчиков — увеличьте скорость разработки.** Так себе вариант, но до некоторого момент может работать, особенно в начале-середине жизненного цикла проекта.

Пишите в комментариях о чём я забыл.
