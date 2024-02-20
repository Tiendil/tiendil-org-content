---
title = "Этика (анти)читерства"
tags = [ "business", "gamedev", "game-designe", "mmo", "society", "practice", "theory",]
published_at = "2021-12-26T12:00:00+00:00"
description = "Мысли по мотивам новости: Wargaming подала в суд на россиянина за продажу ботов и читов для WoT."
seo_image = ""
---

Мысли по мотивам новости: [Wargaming подала в суд на россиянина за продажу ботов и читов для WoT](https://habr.com/ru/news/t/597883/).

Рекомендую почитать не только новость, но и комментарии — там найдутся хорошие аргументы с разных позиций, если получится продраться сквозь срач и школоту.

Глубокой аргументации не будет, так как расписывать её долго. Если хотите прояснить конкретный тезис — пишите вопрос в комментарии.

Также изложение будет крениться в сторону этики, а не бизнеса, так как этика мне интереснее.

<!-- more -->

### Почему меня может быть интересно выслушать

У меня большой стаж как игрока так и разработчика игр. Я играл в разные игры и разрабатывал тоже разные игры. В том числе пилил собственную игру, а значит представляю ситуацию не только со стороны разработки, но и со стороны бизнеса.

Над опытом в геймдеве я активно рефлексирую, в том числе думаю о вопросах [нарушения игровых и неигровых правил]{post:bots-and-twinks-in-games}.

Поэтому в контексте геймдева я достаточно компетентен, чтобы иметь своё веское мнение :-D

Кроме того, я не чешу языком, а делом подтверждаю свою позицию, например, по открытости информации, монетизации или работе с «нарушителями».

Например, статистика моей игры, включая финансовую часть, была открыта с момента своего появления. Я делал [open startup](https://hackernoon.com/what-does-it-mean-to-be-an-open-startup-f4446984189), когда ещё такого термина не было :-)

Плюс, я в целом интересуюсь вопросами этики в цифровом пространстве и поведением сложных систем.

### Моя логика

**Информация на устройстве пользователя должна принадлежать пользователю.** Это же касается железа.

В любом другом случае в будущем нас ждёт лютая инфернальная хаотическая жесть. В насколько далёком и какая именно — отдельный вопрос. Аргументировать это надо отдельным постом, но в общих чертах можно обратить внимание на:

- Последствия протечки абстракций.
- Последствия нарушения границ систем в целом.
- Устойчивость централизованных и децентрализованных систем, включая их способность к изменениям. Косвенно это затрагивают мои посты [Ремонт сложных систем]{post:repair-of-complex-systems} и [Композиция vs классификация]{post:composition-vs-classification}.

**Пользователь волен делать всё что угодно со своей информацией.** И железом.

Это естественно вытекает из предыдущего утверждения.

**Все разработчики крупных игр «заигрывают» с инклюзивностью в широком смысле.** С целью максимизации прибыли, а не, например, честности и справедливости игры.

Я специально использовал кавычки и термин «заигрывают», так как пространство вариантов реализации инклюзивности в широком смысле велико.

Самые простые примеры:

- Формирование команд на основе статистики и параметров игроков, чтобы каждый мог получить свою порцию эндорфинов.
- Автоматическая подстройка сложности игры под пользователя.
- Модификации GUI и правил игры под людей с ограниченными возможностями, например, цветокоррекция, автоприцеливание разного рода.
- Как частный случай предыдущего, модификация механик игры под платформу, для кроссплея. Например, логики прицеливания под джойстик и клавиатуру.

Иными словами:

**Разработчики игр сами разрабатывают средства «читерства».** Но называют их по-другому.

и…

**Не все средства «читерства» однозначно плохие.**

Для примера рассмотрим гипертрофированный случай, который заодно вернёт нас к вопросу о владении информацией и железом.

Недалёк тот день, когда многие из нас будут пользоваться тем или иным видом аугментации: умными протезами глаз, рук и так далее. Все предпосылки для этого есть, а для спортивных соревнований это уже действительность.

Как в таком контексте рассматривать тот же софт для автоприцеливания? Протез глаза вкупе с протезом руки может не то только сравниться с автоприцеливанием, но и превзойти его.

Варианты:

- Запрещать людям с аугментациями доступ к играм?
- Внедрять в протезы искусственные ограничители? Контролируемые кем?
- Делать доступ в игру строго по документам и модифицировать её механики под спецификации аугментаций?

Для меня эти варианты звучат лютым бредом, а для вас?

Для меня очевидно, что…

**Необходимо адаптироваться под новые условия, искать новые механики и подходы к разработке игр.** А не уподобляться музыкальным и кино брендам в попытке всех засудить и законтролировать.

Ведь даже в случае горе хакера, на которого WG подала в суд, его работу могли использовать не только тролли, но люди, например, с тремором рук.

### Моя позиция

**У Wargaming нет ни капли мотивации сделать игры лучше, честнее или наказать читеров.**

Действенные подходы к работе с подобными читами в крупных играх хорошо известны и среди них нет варианта «всех засудить.

Весь процесс следует рассматривать сугубо с позиции зарабатывания бабла, что приводит меня к двум вариантам.

Вариант 1: действия WG смехотворны, так как озвученные суммы:

- Мизерны в масштабах WG.
- Сильно завышены в контексте реального вреда, который человек мог нанести.

Вариант 2: WG или кто-то с её помощью прощупывает почву для серьёзной регуляции рынка.

Оба варианта чести WG не делают и свидетельствуют о некомпетентности менеджеров, непонимании ими геймдева и его тенденций.

Победа WG в суде в любом случае станет прецедентом, который нанесёт существенный вред геймдеву. Поэтому выступить против иска следует независимо от вашего отношения к читерству как таковому.