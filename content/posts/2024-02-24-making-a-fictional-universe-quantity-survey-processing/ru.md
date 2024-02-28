---
title = "Делаем вымышленную вселенную: предпочтения игроков в стратегии"
tags = [ "practice", "development", "gamedev", "game-designe", "open-source", "world-builders"]
published_at = "2024-02-24T12:00:00+00:00"
description = "ТУДУ"
seo_image = "./images/cover.jpg"
---

/// brigid-images
src = "./images/cover.jpg"
caption = "Смотрим на данные опроса и пытаемся найти что-нибудь полезное."
///

Недавно я делал опрос о предпочтениях игроков в стратегии.

В предыдущем посте мы [очищали данные]{post:making-a-fictional-universe-quantity-survey-cleaning}, в этом попробуем чего-нибудь в них найти.

В посте вы найдёте «интерактиный исследовательский стенд» с кучей графиков, на которых можно смотреть разницу между двух выборок на ваш выбор. Выборок много — на разный вкус и цвет, поэтому счёлкать можно долго — делитесь в [Telegram](https://t.me/tiendil_org_ru) и [Discord](https://discord.gg/ZyNy28ZXM6) найденными закономерностями.

Но будьте аккуратны в выводами. Данных мало, а в некоторых случаях совсем мало. Например, разница между группами мужчин и женщин примерно десятикратная => интерпретировать отличия между ними следует очень осторожно.

В целом, не воспринимайте этот пост как полноценное исследование. Уверен, многие аналитики мне бы руки за такое оторвали. Пришили и снова оторвали. Пользуйтесь постом как интерфесом к данным, а выводы делайте свои.

<!-- more -->

## Данные и код

Данные, по которым строятся графики, лежат в [репозитории](https://github.com/Tiendil/world-builders-2023/tree/main/quantity-research).

В [предыдущем посте]{post:making-a-fictional-universe-quantity-survey-cleaning} можно найти:

- копию оригинального опроса;
- методику очистки данных;
- список моих ошибок при создании опроса.

Код для обработки данных можно найти прямо в исходниках этой страницы. Или в [репозитории с исходниками поста](https://github.com/Tiendil/tiendil-org-content/tree/main/content/posts/2024-02-23-making-a-fictional-universe-quantity-survey-processing). Код не лучший, но вроде работает.

## Структура стенда

Пост можно разделить на несколько частей:

- Bar plots для каждого вопроса, с возомжностью сравнить на них две выборки. Во всех bar plots, ось Y — проценты, в подсказе к столбцам будут абсолютные значения.
- Пара радарных графиков, чтобы смотреть на количественные свойства выборок. На них тоже можно сравнивать две выборки.
- Пара тепловых карт, чтобы смотреть корреляции.
- Описание моей попытки посмотреть на целевую аудиторию для игры.

К некоторым графикам я добавил очень субъективные комментарии: что посмотреть, какие выводы можно сделать.

Также, для каждого графика будет добавлен соответствующий ему вопрос из опроса.

## Выборки

**Обязательно смотрите на размеры выборок перед интерпретацией графика.** Размер выборки указан в квадритных скобках в конце её названия.

Выборки переключаются глобально: замена в одном месте приведёт к замене во всех графиках. То есть на всех графиках вы всегда будете видеть сравнение одних и тех же выборок. Удобно выбирать группы людей и проходить по посту сверху вниз, смотря как они отличаютя по различным критериям.

Я старался именовать выборки понятно, но, на всякий случай, держите перед собой копию оригинального опроса.

Какие выборки есть:

- Для каждого варианта ответа на качественный вопрос есть фильтр. За исключенем некоторых вопросов, которые будут указаны далее.
- Для вопросов с предпочтениями в играх, стиле мира и сюжетов, кроме фильтров «люблю Х», сделаны фильтры «не фанат X».
- Ответы на количественные вопросы сгруппированы, чтобы упростить анализ. Попавшие в группу значения указаны в квадратных скобках. Например `[1..6]`.
- Есть несколько искусственных выборок. Их названия начинаются с `*`. Такие выборки описаны в отдельных главах.

Сгруппированные выборки из качественных вопросов:

- Занятость: работаю, студент, другое (все остальные варианты)
- Конкуренты: мало, много; остальных вариантов слишком мало.
- Размер агенства: маленький («до 10», «до 25», «до 50», «маленькое или автоматизация»), большое («до 100», «бюрократическая имерия», «маленькое или автоматизация»). Обратите вниамние, респонденты с выбором «маленькое или автоматизация» попадают в обе группы. Это вариант добавлен по итогам обработки свободных ответов.

**Обратите внимание**, несмотря на группировку некоторых ответов, на соответствующих графиках они будут разделены. Если в вопросе было 10 вариантов ответов, столько колонок вы и увидите на графике.

### Игроки: hard, core, casual

После долгой медитации на графики количественных вопросов, пришёл к выводу, что всех игроков можно разделить на три группы (очевидные постфактум):

- `Hard` — самые отъявленные любители стратегий, выкручивают всё на максимум: сложность, отыгрыш, размер мира, менеджмент, etc.
- `Core` — преданные любители стратегий, играют много, любят стратегии, но без крайностей.
- `Casual` — все остальные.

Количественных вопросов много. Очевидно, не каждый человек будет выбирать ответы специфичные только для одной группы. Чтобы явно разделить респондентов по группам сделал следующее:

- Разбил ответы в каждом количественном вопросе на три группы: `Hard`, `Core`, `Casual`.
- Для каждого респондента посчитал, сколько раз он попал в каждую из групп.
- Каждому респонденту назначил группу, в которую он попал чаще всего.
- Если количество попаданий было одинаковым, то выбиралось в порядке приоритета: `Core`, `Casual`, `Hard`.

Вы можете посмотреть на группы в выборках `* Игроки: <тип>`. Есть интересные различия. Например:

- `Core` игроки значительно больше любят жанр городских легенд, чем `Hard`, а последние больше любят документалистику, конспиралогию и нуар.
- Хардкорщиков больше среди молодёжи, а с возрастом стратеги слегка успокаиваются. Но, скорее всего, просто не могут упарываться в игры из-за работы и семьи.
- Хардкорщики считают, что несколько каналов распространения информации, для агенства, буквально обязательны. `Core` игроки считают это важным элементом, но не принципиальным. С реализмом журналистики та же ситуация.
- `Core` игроки предпочтут управлять небольшим агентством, `Hard` — строить бюрократическую империю.

## Общие закономерности

Удалось попасть в любителей стратегий на PC, что хорошо.

Моя гипотеза о разнице между разработчиками игр и игроками не подтвердилась. Существенных отличий между группами не обнаружил.

Существенных отлиличий между любителями разных жанров стратегий не обнаружил.

Неожиданно позитивно для меня, стратеги относятся к ролевым элементам.

<!-- more -->

---8<--- "./translations_ru.html"
---8<--- "./initial_js.html"

## Основные характеристики респондентов

Первая секция анкеты.

### Пол

```
Gender
```

---8<--- "./filter_selectors.html"

<div id="plot-gender"></div>

<script type="text/javascript">
function mapGender(row) {
  return row['q_gender'];
}

barPlot('plot-gender', mapGender, ['male', 'female', 'non_binary_other', 'prefer_not_to_say']);
</script>

### Возраст

```
Age
```

- Если поиграть с выборками, можно увидеть «логичные» изменения в предпочтениях с возрастом.
- Группа `взрослые (30-39)` на некоторых выборках явно выбивается из тренда. То ли кризис среднего возраста, то ли возраст столкновения с реальностью, то ли искажения данных.

---8<--- "./filter_selectors.html"

<div id="plot-age"></div>

<script type="text/javascript">
    barPlot('plot-age', groupMapper(ageGroups), groupIds(ageGroups));
</script>

### Занятость

```
What is your primary occupation or main daily activity?
```

---8<--- "./filter_selectors.html"

<div id="plot-occupation"></div>

<script type="text/javascript">

function mapOccupation(row) {
  return row['q_occupation'];
}

const occupationGroupIds = [
'employment',
'sabbatical',
'unemployed',
'student',
'volunteering'
];

barPlot('plot-occupation', mapOccupation, occupationGroupIds);
</script>

### Разработчики игр

```
I'm a game developer
```

---8<--- "./filter_selectors.html"

<div id="plot-is-game-developer"></div>

<script type="text/javascript">

function mapIsGameDev(row) {
  return row['q_is_game_developer'];
}

const isGameDevGroupIds = [
'no',
'yes',
];

barPlot('plot-is-game-developer', mapIsGameDev, isGameDevGroupIds);
</script>

##  Игровой опыт

Вторая секция анкеты — общий игровой опыт респондента.

### Играю на

```
I'm playing on
```

---8<--- "./filter_selectors.html"

<div id="plot-playing-on"></div>

<script type="text/javascript">

function mapPlayingOn(row) {
    const groups = [];

    if (row['q_playing_on#consoles'] ) {
        groups.push('consoles');
    }

    if (row['q_playing_on#mobile_consoles'] ) {
        groups.push('mobile_consoles');
    }

    if (row['q_playing_on#mobile_devices'] ) {
        groups.push('mobile_devices');
    }

    if (row['q_playing_on#pc'] ) {
        groups.push('pc');
    }

    if (row['q_playing_on#tv'] ) {
        groups.push('tv');
    }

    if (row['q_playing_on#virtual_reality'] ) {
        groups.push('virtual_reality');
    }

    return groups;
}

const playingOnGroupIds = [
'pc',
'consoles',
'mobile_consoles',
'mobile_devices',
'tv',
'virtual_reality'
];

barPlot('plot-playing-on', mapPlayingOn, playingOnGroupIds);
</script>

### Играю в стратегии

```
Do you play strategy games? Any kind and genre: turn-based, real-time, modern, sci-fi, fantasy...
```

---8<--- "./filter_selectors.html"

<div id="plot-play-strategies"></div>

<script type="text/javascript">
function mapPlayStrategies(row) {
    return row['q_play_strategy_games'];
}

barPlot('plot-play-strategies', mapPlayStrategies, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### В какие стратегии играете

```
Which kind of strategy games do you like the most? Select up to four items.
```

- Колонка «тактика» маленькая, так как я забыл указать этот вариант в анкете и в неё посчитаны только те, кто не поленился и указал это предпочтение текстом в свободном ответа. То есть любителей тактики много и это большой недостаток собранных данных.

---8<--- "./filter_selectors.html"

<div id="plot-strategy-games"></div>

<script type="text/javascript">
barPlot('plot-strategy-games', groupMapper(strategyGamesGroups), groupIds(strategyGamesGroups));
</script>

### Откуда узнаёте о новых играх

```
How do you know about new games to play?
```

---8<--- "./filter_selectors.html"

<div id="plot-know-about-games"></div>

<script type="text/javascript">
barPlot('plot-know-about-games', groupMapper(knowAboutGamesGroups), groupIds(knowAboutGamesGroups));
</script>

### Сколько усилий вкладываете в игру

```
How much effort do you usually spend while playing?
```

---8<--- "./filter_selectors.html"

<div id="plot-playing-effort"></div>

<script type="text/javascript">
function mapPlayingEffort(row) {
    return row['q_playing_effort'];
}

barPlot('plot-playing-effort', mapPlayingEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Что вам нравится в играх больше всего

```
What do you like in games the most? Choose up to five items.
```

- Неожиданно для меня, стратеги больше всего любят «исследование мира», а «создание игровых стратегий» только на втором месте. Для себя я трактую это как «разведку карты и разбирательство со свойствами игровых объектов и механиками», но было бы здорово копнуть глубже. Возможно, «исследование» надо разделить на несколько более конкретных предпочтений.
- Также неожиданно для меня, в лидерах «история» и «отыгрывание роли».

---8<--- "./filter_selectors.html"

<div id="plot-like-in-games"></div>

<script type="text/javascript">
barPlot('plot-like-in-games', groupMapper(likeInGamesGroups), groupIds(likeInGamesGroups));
</script>

### Отношение к RPG элементам в играх

```
I like RPG elements in strategy games: character progress, stories, personal abilities, etc.
```

- Похоже, RPG элементы — обязательный элемент современных стратегий.

---8<--- "./filter_selectors.html"

<div id="plot-rpg-elements"></div>

<script type="text/javascript">

function mapRPGElements(row) {
    return row['q_rpg_elements'];
}

barPlot('plot-rpg-elements', mapRPGElements, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

## Механики игры

Третья секция — ожидаемые механики (от игры про новостное агентство).

### Количество каналов распространения новостей

```
In the old times, if you were to release a newspaper, you only release a newspaper. In our times, you should publish news in chats, tweet about them, record TikToks, make videos on YouTube, and so on.

For a game about a news agency to be believable, how is it essential to allow more than a single channel of news distribution?
```

---8<--- "./filter_selectors.html"

<div id="plot-news-channels-essential"></div>

<script type="text/javascript">

function mapNewsChannelsEssential(row) {
    return row['q_multiple_channels_esential'];
}

barPlot('plot-news-channels-essential', mapNewsChannelsEssential, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Каналы распространения новостей

```
Choose up to five channels of news distribution you would like to see in the game in the first place
```

---8<--- "./filter_selectors.html"

<div id="plot-news-channels-types"></div>

<script type="text/javascript">
barPlot('plot-news-channels-types', groupMapper(newsChannelsTypes), groupIds(newsChannelsTypes));
</script>

### Реализм журналистики

```
How realistic should be shown the work of news agencies and journalists? Including all nuances.
```

---8<--- "./filter_selectors.html"

<div id="plot-journalism-realism"></div>

<script type="text/javascript">

function mapJournalismRealism(row) {
    return row['q_realistic_work'];
}

barPlot('plot-journalism-realism', mapJournalismRealism, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Количество соперничающих новостных агентств

```
How many concurrent news agencies should be in the game?
```

---8<--- "./filter_selectors.html"

<div id="plot-competitors"></div>

<script type="text/javascript">

function mapCompetitors(row) {
    if (row['q_concurrent_agencies'] == null) {
        return 'N/A';
    }
    return row['q_concurrent_agencies'];
}

barPlot('plot-competitors', mapCompetitors, ['single', 'few', 'the_more_the_better', 'N/A']);
</script>

### Максимальный размер новостного агентства

```
Maximum size of your news agency. How many people (journalists, photographs, investigators, etc) do you want to manage?
```

- На этом вопросе видно чёткое разделение между двумя вариантами игр. Утрируя, про «маленькое ламповое агентство» и про «международную корпорацию новостей».

---8<--- "./filter_selectors.html"

<div id="plot-maximum-size"></div>

<script type="text/javascript">

function mapMaxSize(row) {
    if (row['q_max_agency_size'] == null) {
        return 'N/A';
    }
    return row['q_max_agency_size'];
}

barPlot('plot-maximum-size', mapMaxSize, ['up_to_10', 'up_to_25', 'up_to_50', 'up_to_100', 'bureaucratic_empire', 'small_or_automanage', 'N/A']);
</script>

### Управление бюджетом новостного агентства

```
How much effort do you want to put into managing the budget of your news agency?
```

- Это, пожалуй, вопрос с самыми размазанными по шкале ответами. Я трактую это как «никто не хочет гемороиться с бюджетами» и «хотим играть в журналистику, а не в бухгалтерию».

---8<--- "./filter_selectors.html"

<div id="plot-budget-effort"></div>

<script type="text/javascript">

function mapBudgetEffort(row) {
    return row['q_budget_effort'];
}

barPlot('plot-budget-effort', mapBudgetEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Управление отношениями

```
How much effort do you want to put into managing relationships between the agency and everyone outside?
```

---8<--- "./filter_selectors.html"

<div id="plot-relationships-effort"></div>

<script type="text/javascript">

function mapRelationshipsEffort(row) {
    return row['q_relationships_effort'];
}

barPlot('plot-relationships-effort', mapRelationshipsEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Управление офисом

```
How much effort do you want to put into managing the office of your news agency?
```

- Моя трактовка: офис нужен, но управлять им можно по-разному.

---8<--- "./filter_selectors.html"

<div id="plot-office-effort"></div>

<script type="text/javascript">

function mapRelationshipsEffort(row) {
    return row['q_office_effort'];
}

barPlot('plot-office-effort', mapRelationshipsEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

## Истории

Четвёртая секция — предпочтения в историях, образе мира и сюжетов.

Посмотрите на эти графики через выборки разных возростов. Отличия будут хорошо заметны.

К сожалению, выделить чёткие группы предпочтений не получилось. Возможно, проблема в формулировке вопроса, надо было на каждый тип сюжета и мира делать отдельную количественную шкалу. Но это существенно раздуло бы опрос, что могло сократить количество ответов. Небольшая выборка тоже играет свою роль.

Я добавил один кастомный фильтр: «* Жанр: не про будущее» — респонденты, которые не выбирали «научную фантастику» или «киберпанк» в предпочитаемых жанрах.

### Оттенки жанров и сюжетов

```
Choose up to four shades of the plot/genre style you prefer the most.
```

---8<--- "./filter_selectors.html"

<div id="plot-shades-of-genre"></div>

<script type="text/javascript">
barPlot('plot-shades-of-genre', groupMapper(shadesOfGenreGroups), groupIds(shadesOfGenreGroups));
</script>

### Сложность моральных вопросов

```
How complex should morale questions be in the game world?
```

---8<--- "./filter_selectors.html"

<div id="plot-moral-complexity"></div>

<script type="text/javascript">

function mapMoralComplexity(row) {
    return row['q_morale_complexity'];
}

barPlot('plot-moral-complexity', mapMoralComplexity, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Стиль мира

```
How do you want to see the world in the game of a modern news agency with some magic and sci-fi technology? Choose up to six options.
```

---8<--- "./filter_selectors.html"

<div id="plot-world-style"></div>

<script type="text/javascript">
barPlot('plot-world-style', groupMapper(worldStyleGroups), groupIds(worldStyleGroups));
</script>

## Группы игроков по хардкорности

Принцип разделения игроков по группам `Hard`, `Core`, `Casual` описан в начале поста.

### Распределение игроков по очкам `Hard` группы

---8<--- "./filter_selectors.html"

<div id="plot-meta-hard"></div>

<script type="text/javascript">

function mapMetaHard(row) {
    return row['m_hard'];
}

barPlot('plot-meta-hard', mapMetaHard, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Распределение игроков по очкам `Core` группы

---8<--- "./filter_selectors.html"

<div id="plot-meta-core"></div>

<script type="text/javascript">

function mapMetaCore(row) {
    return row['m_core'];
}

barPlot('plot-meta-core', mapMetaCore, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Распределение игроков по очкам `Casual` группы

---8<--- "./filter_selectors.html"

<div id="plot-meta-casual"></div>

<script type="text/javascript">

function mapMetaCasual(row) {
    return row['m_casual'];
}

barPlot('plot-meta-casual', mapMetaCasual, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Распределение игроков по группам

---8<--- "./filter_selectors.html"

<div id="plot-meta-effort"></div>

<script type="text/javascript">

function mapMetaEffort(row) {
    return row['m_effort'];
}

barPlot('plot-meta-effort', mapMetaEffort, ['casual', 'core', 'hard']);
</script>

## Радары

Радарные графики позволяют проще смотреть общую картину выборки.

Оси радаров — числовые вопросы + возраст. Все ответы нормированы в интервал `[0, 1]`.

### Медианы предпочтений

---8<--- "./filter_selectors.html"

<div id="plot-radar-median"></div>

<script type="text/javascript">
scatterpolarPlot('plot-radar-median', 'median');
</script>

### Средние предпочтения

---8<--- "./filter_selectors.html"

<div id="plot-radar-average"></div>

<script type="text/javascript">
scatterpolarPlot('plot-radar-average', 'average');
</script>

## Тепловые карты

По аналогии с радарами, две тепловые карты, чтобы смотреть корреляцию

### Абсолютное количество респондентов

Ячейка отображает количество респондентов из выборки с сочетанием выборов из колонки и строки.

---8<--- "./filter_selectors_single.html"
---8<--- "./heatmap_filter_selectors.html"

<div id="plot-heatmap-absolute"></div>

### Доля респондентов

Ячейка отображает долю респондентов из строки по отношению к количеству респондентов в колонке.

Это позволяет смотреть, например, долю любителей sci-fi среди любителей разных жанров стратегий.

---8<--- "./filter_selectors_single.html"
---8<--- "./heatmap_filter_selectors.html"

<div id="plot-heatmap-norm"></div>

<script type="text/javascript">
heatmapPlot('plot-heatmap-absolute', 'absolute');
heatmapPlot('plot-heatmap-norm', 'norm');
</script>

## Как может выглядеть игра и целевая аудитория

У меня получилось найти 3 более-менее чётких характеристики игроков:

- По вовлечённости в игру: `Hard`, `Core`, `Casual`.
- По предпочитаемому размеру агентства: `маленькое`, `большое`.
- По предпочитаемому количеству конкурентов: `мало`, `много`.

Выделить группы по механикам, миру и сюжетам не получилось.

Поэтому попробуем посмотреть на комбинации характеристик и их самые популярные предпочтения.

### Все выделенные группы

Смотреть будем только на игроков, которые активно играют в стратегии (фанатов стратегий, ответивших 7 и более на соответствующий вопрос). Их большинство в опросе, смотрите фильтр «Играю в стратегии: активно [7..10]».

`Casual` игроков я исключил почти сразу — это самая маленькая группа (по сравнению с `Hard` и `Core`) и интерпретируется скорее как «все осальные». Плюс, делать игру одновременно и для `Hard`, и для `Casual` — сложно, а хардкорщики намного более интересная группа, особенно в плане работы с сообществом.

В итоге получилось 8 групп.

<div id="table-final-groups-raw" class=""></div>

### Объединим группы

Делать игру для `Hard` аудитории рисковано и сложно. На мой взгляд, разумнее делать для `Core` (тем более она больше) и по возможности захватывать `Hard`.

Можно обратить внимание, что предпочтения `Hard` и `Core` игроков близки для одинаковых размеров агенств и количества конкурентов. Поэтому можно объединять их в одну группу.

Сочетание свойств «маленькое агенство» + «много конкурентов» выглядит странным с точки зрения геймплея. Это же видно по размерам итоговых групп, поэтому, на мой взгляд, его можно убрать из рассмотрения.

В итоге у нас получится три типа возможной игры.

<div id="table-final-groups-basic"></div>

### Последовательность разработки / наращивание фич

Можно обратить внимание, что три возможных типа игры можно адаптировать друг к другу.

Если мы делаем игру про небольшое агенство и нескольких конкурентов, всё идёт хорошо и мы находим способ наращивать размер агентсва без вреда для геймплея, мы захватываем новую аудиторию.

Если после этого мы находим способ докрутить интерфейс и баланс так, чтобы можно было удобно взаимодействовать с множеством конкурентов, то, опять, мы выходим на новую аудиторию.

Но это очень сильное теоретизирование и очень большое «если». Думаю, такая удача маловероятна. Но, just for fun, вот таблички с объединёнными группами (или этапами разработки). Можно также обратить вниамание, что в последней группе будут и игроки, которых мы исключили из рассмотрения по группам «маленькое агенство» + «много конкурентов».

<div id="table-final-groups-iterations"></div>

</script>

### Посмотрим на конркетные срезы

Тут очень зыбкая почтва.

Для самой первой узкой круппы посмотрим на срезы по сочетанию факторов из каждой группы.

Вот 20 самых больших срезов из 2162 возможных.

<div id="table-iteration-1-slices"></div>

Видно, что ничего не видно. Формально да, можно сказать, что вот мы будем ориентироваться на «стратегов, которые любят иссоедовать мир и хотят это делать в сеттинге конспирологического чёрног юмора». И тогда мы скажем, но наша самая-целевая-целевая аудитория это 21/243 (core+hardcore strategies) ~ 8.5% от любителей стратегий.

Но сложно сделать игру чисто с одной механикой и чисто с одним типом мира и чистым сеттингом. Скорее всего в игре должно быть несколько ключевых механик, несколько смешанных (но близких) типов миров и несколько смешанных (но близких) сеттингов.

Давайте, ради интереса, посмотрим на размер следующей группы:

- минимум 2 из 5 механик (exploring, story, creating_strategies, roleplaying, changing_game_world)
- минимум 2 из 5 стилей миров (dark_humorous, dystopian, complex, realistic, imaginative)
- минимум 2 из 5 сеттингов (scifi, cyberpunk, noir, conspirology, urban_legends)

Размер группы — 50. 50/243 ~ 20.5%

=> Мы ориентируемя на сегмент от 8.5% до 20.5% от заядлых любителей стратегий. <--- очень позитивная оценка.


<!-- TODO: adult 30-39 — странная группа, у неё предпочтения противоположны двум соседним -->
<!-- TODO: Управление отношениями сильно отилчается по полам -->
<!-- TODO: core тяготеет к городским легендам -->
<!-- TODO: hardcore тяготеет к реализму, серьёзности, мрачности -->
<!-- woman — mystery -->

<!-- Insites: effort влияет на предпочтения -->
<!-- множество каналов важны для тех, кто задрачивает и играет в стратегии много-->
<!-- реализм журналистики важен для тех, кто задрачивает и играет в стратегии много-->
<!-- размер важен для тех, кто хочет играть во много стратегий -->
<!-- Каналы распространения новостей по возрастам -->
<!-- Любители магии любят РПГ, но не любят напрягаться -->
<!-- Офис сильно коррелирует с бюджетом -->
<!-- Управлять бюджетом никто особо не любит -->
<!-- Первое большое разделение: несколько конкурентов vs много конкурентов -->
<!-- Второй большое разделение: размер агентства -->
<!-- hard/core ~ 1/2 -->

<!-- Гипотеза: аудитория упарывающихся стратегов -->
<!-- Противоречие: молоды хотят больше агентств, постаршке хотят поменьше -->

<!-- TODO: сделать несколько селекторов чисто по механикам Игра 1, Игра 2, Игра 3, etc. -->
<!-- Сделать несколько селекторов по историям -->

<!-- Шкалы -->
<!-- Некоторые шкалы может быть правильнее разбить по-другому -->
<!-- Или предложить другую общую шкалу разбиения, более детальную -->
<!-- TODO: все числовые шкалы делились на 3 группы -->
<!-- TODO: под графиками шкал рисовать ещё один график для обобщённых групп -->

<!-- Тупо посчитать корреляцию многовариантных ответов -->
<!-- Спасибо Юле -->

<!-- TODO: переформулировать заголовки в более конкретные -->
<!-- TODO: перевод всех названий -->
<!-- Казуальные группы объедены с «не интересуюсь», т.к. во второй вообще не набирается выборка, а казуальные группы малы. -->
<!-- Туду, посмотреть противоположность топовой атмосфере -->
<!-- Долго думал включать в срезы механики или не включать. Решил включать т.к. игра — это сложная сильно связанная система. -->
<!-- На самом деле, 8.5% — это оптимистичный прогноз, если всё сдеано круто и точно порпали в срез. Скорее будет в 2-3 раза меньше -->
<!-- TODO: проверить q_age на радарных графиках -->
<!-- remove all console output -->
<!-- TODO: раскраска базовой таблицы: что с чем объединяем -->

<!-- footer -->

---8<--- "./csv_data.html"
---8<--- "./filters_initialization.html"
