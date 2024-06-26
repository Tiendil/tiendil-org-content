---
title = "Игровое сообщество с точки зрения независимого разработчика игр"
tags = [ "the-tale", "open-source", "gamedev", "society", "practice", "theory", "interesting"]
published_at = "2022-03-24T12:00:00+00:00"
seo_description = "Делюсь опытом работы с сообществом игроков со инди разработчика. Почему это важно, как взаимодействовать с людьми и как получить пользу."
seo_image = ""
---

_Изначально статья была опубликована на Хабре в 2014 году, но я решил вернуть её в блог. Изменений не делал, поэтому подача может немного отличаться от традиционной._

Привет, я уже второй год с переменным успехом пилю свою браузерку и хочу поделиться опытом формирования и работы с игровым сообществом, когда на это нет ни ресурсов ни времени. А так же рассказать про пользу, которую оно может принести.

Текст в первую очередь будет полезен как вводная для таких же одиночек как я и небольших команд, начинающих свой проект и не имеющих возможности нанять отдельного специалиста.

<!-- more -->

## Зачем нужно игровое сообщество

Для начала определимся, какая может быть польза от кучкующихся в одном месте людей.

Итак, здоровое и активное сообщество игроков нам даёт:

1. Сильную привязку пользователей к игре (за счёт новых социальных связей), а значит и постоянный приток денег (если игра предполагает периодические платежи).
2. Бесплатную рекламу и небольшой стабильный рост пользовательской базы (укоренившийся игрок обязательно потащит в неё всех своих друзей и расскажет о ней на любимом форуме).
3. Бесплатную службу поддержки для новых игроков.
4. Бесплатный отдел тестирования.
5. Бесплатный мониторинг работоспособности игры.
6. Любую другую бесплатную рабочую силу (если вы создадите условия для этого, например, позволив добавлять в игру пользовательский контент).
7. Уверенность в себе (когда делаешь что-то в одиночку, важно знать, что результатами твоего труда пользуются).
8. И конечно новых друзей.

Чтобы не быть голословным:

/// details |приближённое описание заслуг сообщества игроков моей игрушки (2014 год)

1. Игроки, приведённые друзьями, это:
    - больше 30% дохода игры;
    - больше 30% от всех пользователей;
    - больше 40% активных игроков;
2. Ловлю всех «мелких» багов на текущий момент я неявно делегировал сообществу: опечатки, небольшие косяки в пользовательском интерфейсе отлавливаются очень оперативно.
3. Также игроки оказывают неоценимую помощь в выявлении сложных комплексных ошибок в логике, найти которые другим способом было бы на порядок сложнее.
4. Игроки самостоятельно наполняют игру контентом (придумывают новые тексты, рисуют монстров).
5. Несколько человек из сообщества добровольно взяли на себя обязанности корректоров и теперь вычитывают все игровые тексты (которых у нас много);
6. Периодически появляются проекты-спутники, на совести игроков:
    1. симпатичный информер для форумов;
    2. текстовый квест по миру игры;
    3. несколько попыток сделать мобильный клиент;
7. Небольшие изменения, предложенные игроками, периодически попадают в игру и очень органично в неё вписываются.
8. Недавно прислали патч в одну из open-source библиотек, выделенных из проекта, с доработкой важной фичи.

///

## Зачем работать с сообществом

В первую очередь потому, что без затраты усилий оно может и не появиться вовсе.

Зарождение сообщества можно сравнить с ядерной реакцией — необходимо набрать минимальную «критическую» массу активных пользователей, чтобы общение между ними начало поддерживать само себя. Если ваша игра не гениальна и у неё нет хорошего рекламного бюджета, то сделать это не так просто, а значит «реакцию» надо поддерживать искусственно.

Если же сообщество всё-таки появится самостоятельно, то далеко не факт, что в нём найдётся место для вас. Игроки будут общаться, заниматься своими делами, но большая часть преимуществ пропадёт. Более того, вы не сможете влиять на него, а без адекватных лидеров (которые скорее всего сами не возникнут) любое сообщество скатится к саморазрушению, вобрав в себя различного рода троллей и просто неприятных личностей. В этом случае оно может даже вредить, отпугивая новичков.

Поэтому сообщество надо растить, ухаживать за ним и направлять его в нужную сторону.

## Как работать с сообществом

Определимся вокруг чего мы будем формировать сообщество, где и какими методами будем с ним работать.

### Вокруг чего

Тут есть два варианта:

1. Если это ваш первый проект и о вас никто не знает, то определённо вокруг игры. Я поступил именно так.
2. Если на вашем счету уже есть успехи (или вы планируете выпускать серию небольших игр), то можно собирать игроков вокруг себя или своей компании.

Разницы, на мой взгляд, не очень много, но определённые нюансы могут быть, поэтому лучше определиться с этим сразу и в будущем придерживаться выбранной стратегии.

### Где

Игрокам нужна площадка для общения. Традиционно на эту роль претендуют социальные сети и форумы.

Если ваша игра разрабатывается специально для социальных сетей, общаться пользователям, естественно, удобнее там же. В противном случае, я рекомендую создать официальный форум полностью подконтрольный вам. Для этого есть несколько причин:

1. Отправив людей в социальные сети, вы либо отрежете части игроков доступ в сообщество (создав группу в одной сети) либо раздробите и так небольшое сообщество (создав несколько непересекающихся групп в разных сетях, с каждой из которых придётся работать отдельно).
2. Общение на отдельном ресурсе сильнее привяжет игроков к игре — чтобы общаться, им как минимум надо будет посещать ваш сайт, который станет отдельным уникальным местом общения.
3. Форум даёт больше возможностей как по общению так и по модерации.
4. Собственный форум позволит легко собирать любую необходимую статистику: от простой активности пользователей в зависимости от времени, до подсчёта упоминаний какой-либо игровой фичи или проблемы.
5. Форум можно модифицировать, добавляя недостающий функционал (например, сделав вывод какой-нибудь приятной для игрока статистики).
6. Форумы лучше индексируются поисковиками.

Отдельно отмечу, что обычного чата для этой цели недостаточно, в первую очередь потому, что в нём не хранится история общения, а без истории никакого сообщества у нас не будет. Но в качестве приятного дополнения чат будет не лишним.

Классический «блог разработчика» также не подойдёт на роль главной площадки, так как предполагает, что инициатива по началу общения создаётся только разработчиками.

### Как

Помните, что вы являетесь образцом поведения для игроков, поэтому ведите себя так, как хотите, чтобы вело себя сообщество:

1. Всегда будьте вежливы.
2. Установите границы допустимого и строго следите за ними (а сами придерживайтесь их ещё строже), в частности, необходимо чётко определить:
    1. отношение к троллям: кого, где, как и насколько можно троллить;
    2. отношение к мату и оскорблениям (обычно лучше совсем запретить, но могут быть исключения, например, при отыгрыше игровой роли);
    3. какую информацию можно раскрывать игрокам, а какую нельзя;
    4. стиль общения с игроками: официальный/не официальный, от лица «администрации/разработчиков» или от себя лично (для себя я взял полуофициальный тон для новостей и обсуждения ошибок, в остальном общаюсь от своего имени);
    5. запретные темы, например: политика, критика администрации, обсуждение конкурентов (я решил разрешать всё до тех пор, пока идёт вежливое обсуждение).
3. Большая часть конфликтов возникает из-за непонимания, поэтому в общении с игроками отвечайте всегда чётко и подробно, объясняя даже «элементарщину». Кроме того, такой подход покажет игрокам, что вы их цените.
4. Не бойтесь делать игрокам замечания и объяснять правила поведения, многие из них могут просто не подозревать, что ведут себя плохо.
5. Игроков, которые не хотят жить по правилам, баньте нещадно. Лучше один потерянный для игры грубиян, чем 10 расстроенных им игроков. В спорных случаях, на мой взгляд, лучше перегнуть палку, чем недогнуть.
6. Следуйте перечисленным правилам, даже когда у вас температура 39, соседи сверху в час ночи топят вашу квартиру, соседи снизу устраивают пьяный дебош, вас бросила девушка, а игроки тупят и пытаются вас оскорбить.

Всех игроков можно разделить на 3 группы:

1. активные — игроки любящие общаться и занимающиеся этим;
2. наблюдатели — следят за тем, чего там наобсуждали активные игроки;
3. невидимки — просто играют и не интересуются околоигровым общением.

Наблюдателей на порядок больше, чем активных, а невидимок — чем наблюдателей.

Наша задача обеспечить переход невидимок в наблюдателей, наблюдателей в активных, а активным игрокам не давать скучать.

Для этого мы можем делать следующие вещи:

- создавать инфоповоды, вокруг которых может начаться общение игроков;
- поддерживать существующее общение;
- подталкивать игроков к знакомству с сообществом.

Инфоповодом может быть любая вещь, про которую можно выразить хоть какое-нибудь мнение:

- Новости — пишите их много и разных, посвятить их можно большому количеству вещей:
    - Выпуску (и анонсам) обновлений— это само собой (ещё один из поводов выпускать их чаще).
    - Интересной статистике: зарегистрировался 1000-ый игрок? убит 1000000-ый монстр? — сообщите об этом игрокам.
    - Праздникам — все отмечают Новый Год, День Победы, 8 марта — общие праздники объединяют нас и дают повод поговорить.
    - Любым другим важным событиям в игре, сообществе или команде.
    - Важные внутриигровые события (например, захват территории) или конфликты (сторонники эльфов против сторонников орков), если такие имеются;
- Конкурсы и прочие акции;
- Опросы: какую расу ввести следующей? какого оружия не хватает для полного счастья? (даже если вы на самом деле уже давно всё решили сами). Люди любят мечтать и фантазировать, дайте им такую возможность.

При этом обязательно необходимо убедиться, что игроки об этих поводах узнают (предусмотрите соответствующую нотификацию в пользовательском интерфейсе).

Чем меньше общения между игроками, тем большее участие в нём необходимо принимать вам. Поэтому на первых порах за каждым обсуждением необходимо пристально следить и встревать в него по малейшему поводу. У этого есть и существенный плюс — на площадке общения вас будет «много», а значит именно вы будете задавать его характер.

Поддерживать общение можно несколькими способами:

- Общаться самостоятельно — самый простой и самый необходимый по началу способ.
- Поощряйте активных игроков. Простым примером может быть назначение статусов на форумах, в зависимости от количества сообщений, или доступ к уникальным смайликам.
- Подробно отвечайте на все вопросы и предложения игроков. По возможности оставляйте в них возможность дальнейшего обсуждения (например, намёки на будущее игры).
- Следите за «качеством» общения: пресекайте флуд и оскорбления, часто повторяющиеся вопросы выносите в F.A.Q., улучшайте структуру площадки (выделяйте новые разделы на форуме) в зависимости от популярности тех или иных тем.
- Способствуйте формированию «кружков по интересам»:
    - если механика игры предполагает возможность хоть какого-то состязания между группами игроков, делайте гильдии;
    - выделите место, куда игроки могут выкладывать творчество по вашей игре;
    - поощряйте любые созидательные начинания, будь-то коллективное стихосложение или написание сервиса по сбору статистики из вашей игры.
- Улучшайте удобство использования площадки общения.

Подталкивать людей к общению сложнее всего. Если человек не желает социализироваться, он это делать не будет. Но есть несколько способов:

- Поместите список «горячих» обсуждений на видное место, что-то из них может заинтересовать невидимок.
- Старайтесь зацепить игроков различными конкурсами и акциями: кто-то любит комиксы, кто-то клеит модельки — каждая оригинальная акция может привести к втягиванию в общение новых игроков.
- Сделайте общение частью геймплея, простым примером этого могут быть клановые разборки. У себя в игре я разрешил игрокам принимать законы, влияющие на игру, каждый закон — это повод для хорошего «горячего» обсуждения.

## Как получить выгоду от сообщества

Важно понимать, что игроки стараются не для вас (разработчиков игры), а для себя или других игроков и только до тех пор, пока им это интересно. Соответственно, инициатива обычно исходит снизу, наша задача не дать ей пропасть и направить в нужное русло.

Поэтому самое главное — поддерживать все начинания игроков, помогать им и советом и делом. При этом старайтесь упростить их работу: подробно опишите куда и как сообщать об ошибках, составьте список способов, которыми они могут помочь и так далее.

Главное правило: любое полезное действие должно требовать от игрока минимум усилий.

Кроме того, старайтесь поощрять игроков за проявление инициативы:

- Чаще благодарите: игрок нашёл баг — спасибо, написал рассказ — спасибо. Это очень простой и действенный способ.
- Упоминайте отличившихся игроков, особенно в «официальных» текстах, например, новостях. Если Вася нарисовал крутой комикс по миру игры, или посчитал интересную статистику — вставьте строчку про это в следующей новости (или даже напишите отдельную, посвящённую этому событию). С большой долей вероятности Вася обрадуется и сделает ещё что-нибудь полезное, а пара человек захочет, чтобы и про них тоже написали.
- Придумайте какие-нибудь особые награды, которые будут отличать самых-самых. У себя в игре я ввёл параметр «могущество», который немного усиливает игрока и изменяется вручную разработчиками за особые заслуги (найденную ошибку, победу в конкурсе и любой другой созидательный труд). Кроме того, что рейтинг по этому параметру очень стимулирует игроков, он ещё и позволяет мне ориентироваться в сообществе и видеть наиболее авторитетных его участников.

## В заключение

Пока писал, понял, что тема слишком объёмная, чтобы её можно было подробно раскрыть в одной статье. Про организацию тех же конкурсов можно отдельный трактат написать. Поэтому решил остановиться только на базовых вопросах, надеюсь полезность материала от этого не пострадала.
