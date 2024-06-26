---
title = "Концепт-документ игры Рой"
tags = [ "gamedev", "game-design", "concepts", "monetization", "practice", "development", "interesting"]
published_at = "2021-10-11T12:00:00+00:00"
seo_description = "Концепт-документ игры про «зергов» с механиками на клеточных автоматах."
seo_image = "images/concept-document-for-the-game-swarm-cover.jpg"
---

/// brigid-images
src = "images/concept-document-for-the-game-swarm-cover.jpg"
alt = "Игра должна выглядеть как-то так, только в виде сверху, на клеточном поле, в pixel art и с минимальной детализацией. Изображение взято [отсюда](https://www.warhammer-community.com/2020/06/23/faction-focus-tyranidsgw-homepage-post-4fw-homepage-post-4/)."
///

Продолжаю публиковать [концепты игр]{tags:concepts}. Эта игра в духе [NoCraft]{post:concept-document-nocraft} — опять про зергов, но уже с другой механикой, завязаной на [клеточные автоматы](https://ru.wikipedia.org/wiki/%D0%9A%D0%BB%D0%B5%D1%82%D0%BE%D1%87%D0%BD%D1%8B%D0%B9_%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%B0%D1%82).

<!-- more -->

## Название

Рой

## Одной строкой

Выводи собственных «зергов», объединяй их в рой и поедай планеты.

## Платформы

Мобильные или браузеры.

## Жанр

Эволюционная стратегия-головоломка с элементами коллекционирования.

## Ближайшие аналоги

[Игра Конвея «Жизнь»](https://ru.wikipedia.org/wiki/%D0%98%D0%B3%D1%80%D0%B0_%C2%AB%D0%96%D0%B8%D0%B7%D0%BD%D1%8C%C2%BB), [Screeps](https://store.steampowered.com/app/464350/Screeps_World/), Покемоны, [Factorio](https://www.factorio.com/), [Creeper World](https://store.steampowered.com/app/280220/Creeper_World_3_Arc_Eternal/)

## Сеттинг

Sci-Fi в глубоком космосе с большим разнообразием рас, типов планет, etc.

Галактика дрожит в страхе от роёв сверхадаптивных суперогранизмов — а-ля зергов. Рой закидывает на планету базовый организм (первое здание), который размножается и захватывает всю планету. После захвата из планеты выкачиваются все ресурсы.

Игрок выступает интеллектом одного из роёв, управляет формированием базовых организмов и выбором планет для атаки.

## Стилистика

Шуточный или полушуточный пиксельарт в зерговской стилистике: насекомые, плоть, etc. Минимум детализации юнитов в бою на планете, но хорошая детализация элементов интерфейса.

## Главные особенности

1. Бой за планету в духе клеточных автоматов, как игра [жизнь](https://ru.wikipedia.org/wiki/%D0%98%D0%B3%D1%80%D0%B0_%C2%AB%D0%96%D0%B8%D0%B7%D0%BD%D1%8C%C2%BB), но сложнее и богаче визуально.
2. Бой происходит автоматически, задача игрока — сформировать базовый организм под условия карты.
3. Конструирование зданий и юнитов через управление их эволюцией.
4. Easy to learn hard to master.
5. Проигрыш тоже интересен.
6. Процедурная генерация уровней.

## Игровой процесс

Игрок выступает разумом роя, управляет ресурсами и прототипами организмов (см. далее) для успешного захвата планет.

Задачи роя простые:

- искать планеты богатые ресурсами;
- захватывать их;
- за счёт ресурсов выводить более эффективные прототипы организмов.

Интерес игрока заключается в решении головоломок по созданию оптимальных базовых организмов для захвата планет.

Поскольку планеты создаются процедурно, а правила поведения юнитов и зданий формируются эволюционным путём, каждая высадка на планету становится уникальной.

### Coregame

1. Игрок выбирает одну из доступных для захвата планет
2. Игрок изучает свойства и особенности планеты,.
3. Игрок конструирует базовый организм для вторжения (см. далее).
4. Игрок отправляет организм на планету.
5. Игрок наблюдает бой на планете.
6. С помощью полученных ресурсов и наблюдаемой картины боя игрок изменяет набор прототипов организмов.

#### Бой за планету

Карта планеты поделена на клетки, каждая клетка обладает набором свойств, которые влияют на эффективность зданий и юнитов роя на ней. Примеры биомов клеток: озеро, море, горы, лес. На клетке могут быть модификаторы: уникальный ресурс, здания местной (или не местной) цивилизации, растительность, etc.

Рой на планете представлен зданиями и юнитами.

Каждое здание занимает целиком одну клетку. Юниты значительно меньше клеток и могут двигаться по любым траекториям, но на их движение влияют параметры карты и зданий. Например, плавающие юниты не могут перемещаться по суше, а летающие двигаются над любой поверхностью с одинаковой скоростью.

Базовый организм размещается на одной из клеток планеты. Он создаёт на ней первое здание, которое начинает развиваться по правилам клеточных автоматов, записанным в ДНК базового организма.

Общая логика:

- Каждое здание действует независимо от других, исходя только из свойств своей клетки и соседних.
- Здание может выполнять несколько действий, в зависимости от правил в ДНК:
    - поглощать ресурсы клетки, на которой находится здание;
    - породить новое здание на соседней пустой клетке;
    - изменить свой тип на другой, например, из добывающего здания стать производственным, потом снова добывающим, потом другим производственным;
    - создать автономный юнит.

Планета считается захваченной, когда на 80% её клеток находятся здания роя.

Кроме роя, на карте могут находиться другие сущности. Например, родная цивилизация планеты или её фауна. Здания и юниты этих сущностей действуют по той же логике.

#### Базовой организм

Чтобы дать игроку пространство для планирования и экспериментов, необходима возможность подстраивать поведения роя под конкретные условия. Для этого базовый организм, который высаживается на планету, делается модульным.

Модульность достигается за счёт отделения правил распространения и преобразования зданий, от самих зданий и юнитов.

Базовый организм формируется из следующих компонентов:

- Шаблон логики роя — общий алгоритм распространения и преобразования зданий роя со слотами для конкретных прототипов зданий.
- Прототипы зданий — типы зданий, которые игрок может вставить в шаблон логики. Если здание производит юнитов, у него есть аналогичные слоты для прототипов юнитов.
- Прототипы юнитов — типы юнитов, которые игрок может вставить в слоты прототипа здания.

Игрок формирует базовый организм следующим образом:

1. Выбирает шаблон логики роя
2. В шаблоне заполняет все слоты прототипами зданий.
3. Если здания производят юнитов, у них тоже могут быть слоты, которые заполняются прототипами юнитов.

Итоговый заполненный шаблон и будет описывать поведение роя на планете.

Иными словами, игрок выбирает базовый чертёж и дополняет его конкретными деталями: зданиями и юнитами.

#### Пример вариативности базового организма

Пусть у игрока есть шаблон логики, который умеет «разделять» острова и материк. На островах строить одни здания, а на материке — другие.

Тогда мы можем изменять его поведение в зависимости от типа планеты:

- Если на планете нет угрозы в морях/воздухе, мы выбираем строить на островах здания, которые эффективно выкачивают ресурсы, чтобы быстрее проводить экспансию.
- Если на планете есть угроза в море/воздухе, мы вместо прототипа добывающего здания в островной слот поставим здание, производящее боевых юнитов или работающее как ПВО.
- Если на планете нет изолированных кусков суши, мы можем выбрать другой шаблон логики.

### Metagame

Между захватами планет у игрока есть несколько занятий:

- Управление органиченным перечнем захваченных планет, чтобы получать бонусы и поток ресурсов, пока планета не иссякнет. Истощённая планета уничтожается.
- Селекция новых прототипов организмов (логики роя, зданий и юнитов), чтобы можно было захватывать более интересные планеты.
- Изучение записей боёв, чтобы увеличивать понимание взаимодействий элементов карты, логики роя, зданий и юнитов.

#### Селекция

Каждый прототип (логики роя, зданий и юнитов) имеет ДНК, в котором описаны его параметры и правила поведения. Игрок не видит ДНК и сохранённую в нём логику, но может анализировать поведение базовых организмов по записям боёв за планеты.

Игрок может получать новые прототипы, потратив ресурсы на:

- мутацию имеющегося прототипа;
- скрещивание двух имеющихся прототипов;
- клонирование имеющегося прототипа;
- встраивание в ДНК прототипа одного из базовых свойств/правил.

Базовые свойства получаются за захват планет с уникальными свойствами. Продолжая аналогию со StarCraft, если «зерги» захватили планету «протосов», то они смогут добавить к своим организмам свойство «энергетический щит».

Новые прототипы игрок может проверить как в песочнице, если превратил в неё одну из планет, так и сразу при штурме новой планеты.

Количество использований прототипа может быть ограничено, чтобы игрок не завёл рой в локальный оптимум и должен был постоянно проводить эксперименты с селекцией.

#### Easy to learn hard to master

Локальность правил поведения зданий делает правила доступными для понимания и в то же время сложными для глубокого анализа. Благодаря случайным картам, увеличиваются вариативность игровых ситуаций и глубина планирования.

Как следствие, ощущения от игры должны приближаться к игре в шахматы или в цивилизацию. В то же время игра будет доступна большему количеству игроков, так как предполагает быстрые сессии и меньше негативных эмоций от проигрыша, который, тоже несёт новые впечатления и новую информацию для игрока

## Монетизация

1. Продажа управления вероятностями:
    1. пересоздание списка планет для захвата;
    2. изменение вероятностей при селекции прототипов;
2. Продажа базовых прототипов с интересными наборами свойств.
3. Разовые улучшения, возможно, за подписку:
    1. больше планет при выборе атаки;
    2. больше доступных для хранения прототипов организмов;
    3. etc.

## Маркетинг

### Целевая аудитория

- Мидкорные игроки, желающие убить время.
- Любители головоломок, в том числе шахматных.
- Достигаторы, любящие «взламывать» механики игр.
- Любители соревнований и рейтингов. Игра не предполагает возможности «выкачаться в максимум» — требуется постоянное изменений стратегий.
- Коллекционеры будут собирать интересные базовые организмы и делиться записями боёв за планету.

### Привлечение игроков

Имеет смысл сосредоточиться на следующих направлениях:

- Реклама в полупрофессиональных сообществах игроков в RTS, TBS, 4X, шахматы.
- Стримеры, ориентированные на fun. Эмерджентное поведение и «самостоятельные» действия виртуальных «зверюшек» всегда интересны игрокам.
- Социальные сети должны хорошо себя показать благодаря «экспериментальному» характеру игры и коротким динамичным роликам боёв за планету.

## Риски

1. Не получится реализовать механику ДНК и правил поведения роя с большим разнообразием возможных поведений.
2. Не получится визуализировать бой на планете красиво и удобно для анализа.
3. Не получится объяснить через интерфейс и tutorial механики игры.
4. Игра окажется сложнее, чем планировалось.

## Minimum Viable Product

1. PvE режим.
2. 2-3 типа планет, на каждой 5-10 типов клеток.
3. 2-3 модификатора свойств для планет: пылевые бури, падение метеоритов, etc.
4. 5-10 типов рас противников и прочих дополнительных препятствий.
5. 3-5 типов поведений для зданий.
6. 3-5 типов поведений для юнитов.

## Направления развития

1. Увеличения количества типов и свойств объектов.
2. Тюнинг вероятностей селекции, чтобы получать более разнообразное поведение.
3. PvP:
    1. общий рейтинг;
    2. турниры.
4. Мета игра «сражение за галактику», в которой игроки соревнуются за контроль на конкретной многопользовательской карте.
5. Создание и шаринг контента пользователями:
    1. редактор карты;
    2. трансляции записей матчей;
    3. шаринг записей матчей в социальных сетях.
