---
title = "Делаем вымышленную вселенную: результаты опроса"
tags = [ "practice", "development", "gamedev", "game-designe", "open-source", "world-builders"]
published_at = "2024-02-24T12:00:00+00:00"
description = "ТУДУ"
seo_image = ""  # туду
---

<!-- TODO: image -->

<!-- TODO: intro -->
<!-- TODO: исходники вопросов в предыдущем посте -->
<!-- В целом, куча стереотипов подтверждается, можете сами посчёлкать -->
<!-- Это не всеобъемлющий очёт, только базовые закономерности, игровая площадка -->
<!-- TODO: переформулировать заголовки в более конкретные -->
<!-- TODO: перевод названий груп -->

Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro

<!-- more -->

---8<--- "./initial_js.html"

## Соцдем

### Пол

---8<--- "./filter_selectors.html"

<div id="plot-gender"></div>

<script type="text/javascript">
function mapGender(row) {
  return row['q_gender'];
}

barPlot('plot-gender', mapGender, ['male', 'female', 'non_binary_other', 'prefer_not_to_say']);
</script>

### Возраст

---8<--- "./filter_selectors.html"

<div id="plot-age"></div>

<script type="text/javascript">
    barPlot('plot-age', groupMapper(ageGroups), groupIds(ageGroups));
</script>

### Занятость

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

---8<--- "./filter_selectors.html"

<div id="plot-is-game-developer"></div>

<script type="text/javascript">

function mapIsGameDev(row) {
  return row['q_is_game_developer'];
}

const isGameDeveGroupIds = [
'no',
'yes',
];

barPlot('plot-is-game-developer', mapIsGameDev, isGameDeveGroupIds);
</script>

##  Игровой опыт

### Играю на

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

---8<--- "./filter_selectors.html"

<div id="plot-play-strategies"></div>

<script type="text/javascript">
function mapPlayStrategies(row) {
    return row['q_play_strategy_games'];
}

barPlot('plot-play-strategies', mapPlayStrategies, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### В какие стратегии играете

---8<--- "./filter_selectors.html"

<div id="plot-strategy-games"></div>

<script type="text/javascript">
barPlot('plot-strategy-games', groupMapper(strategyGamesGroups), groupIds(strategyGamesGroups));
</script>

### Откуда узнаёте о новых играх

---8<--- "./filter_selectors.html"

<div id="plot-know-about-games"></div>

<script type="text/javascript">
barPlot('plot-know-about-games', groupMapper(knowAboutGamesGroups), groupIds(knowAboutGamesGroups));
</script>

### Сколько усилий вкладываете в игру

---8<--- "./filter_selectors.html"

<div id="plot-playing-effort"></div>

<script type="text/javascript">
function mapPlayingEffort(row) {
    return row['q_playing_effort'];
}

barPlot('plot-playing-effort', mapPlayingEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Что вам нравится в играх больше всего

---8<--- "./filter_selectors.html"

<div id="plot-like-in-games"></div>

<script type="text/javascript">
barPlot('plot-like-in-games', groupMapper(likeInGamesGroups), groupIds(likeInGamesGroups));
</script>

### Отношение к RPG элементам в играх

---8<--- "./filter_selectors.html"

<div id="plot-rpg-elements"></div>

<script type="text/javascript">

function mapRPGElements(row) {
    return row['q_rpg_elements'];
}

barPlot('plot-rpg-elements', mapRPGElements, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

## Механики игры

### Количество каналов распространения новостей

---8<--- "./filter_selectors.html"

<div id="plot-news-channels-essential"></div>

<script type="text/javascript">

function mapNewsChannelsEssential(row) {
    return row['q_multiple_channels_esential'];
}

barPlot('plot-news-channels-essential', mapNewsChannelsEssential, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Каналы распространения новостей

---8<--- "./filter_selectors.html"

<div id="plot-news-channels-types"></div>

<script type="text/javascript">
barPlot('plot-news-channels-types', groupMapper(newsChannelsTypes), groupIds(newsChannelsTypes));
</script>

### Реализм журналистики

---8<--- "./filter_selectors.html"

<div id="plot-journalism-realism"></div>

<script type="text/javascript">

function mapJournalismRealism(row) {
    return row['q_realistic_work'];
}

barPlot('plot-journalism-realism', mapJournalismRealism, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Количество соперничающих новостных агентств

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

---8<--- "./filter_selectors.html"

<div id="plot-budget-effort"></div>

<script type="text/javascript">

function mapBudgetEffort(row) {
    return row['q_budget_effort'];
}

barPlot('plot-budget-effort', mapBudgetEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Управление отношениями

---8<--- "./filter_selectors.html"

<div id="plot-relationships-effort"></div>

<script type="text/javascript">

function mapRelationshipsEffort(row) {
    return row['q_relationships_effort'];
}

barPlot('plot-relationships-effort', mapRelationshipsEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Управление офисом

---8<--- "./filter_selectors.html"

<div id="plot-office-effort"></div>

<script type="text/javascript">

function mapRelationshipsEffort(row) {
    return row['q_office_effort'];
}

barPlot('plot-office-effort', mapRelationshipsEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

## Истории

### Оттенки жанров и сюжетов

---8<--- "./filter_selectors.html"

<div id="plot-shades-of-genre"></div>

<script type="text/javascript">
barPlot('plot-shades-of-genre', groupMapper(shadesOfGenreGroups), groupIds(shadesOfGenreGroups));
</script>

### Сложность моральных вопросов

---8<--- "./filter_selectors.html"

<div id="plot-moral-complexity"></div>

<script type="text/javascript">

function mapMoralComplexity(row) {
    return row['q_morale_complexity'];
}

barPlot('plot-moral-complexity', mapMoralComplexity, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Стиль мира

---8<--- "./filter_selectors.html"

<div id="plot-world-style"></div>

<script type="text/javascript">
barPlot('plot-world-style', groupMapper(worldStyleGroups), groupIds(worldStyleGroups));
</script>


## Некоторые инструменты

### Радар медиан предпочтений

---8<--- "./filter_selectors.html"

<div id="plot-radar-median"></div>

<script type="text/javascript">
scatterpolarPlot('plot-radar-median', 'median');
</script>

### Радар средних предпочтений

---8<--- "./filter_selectors.html"

<div id="plot-radar-average"></div>

<script type="text/javascript">
scatterpolarPlot('plot-radar-average', 'median');
</script>

### Тепловая карта

TODO: WE NEED TWO HEATMAPS, что-то удобно смотреть на ненормированной мапе, что-то — на нормированной?

TODO: data skipped for columns with less than 10 records

TODO: this heatmap may be wrong or missinterpreted

TODO: age is missed here

TODO: normed on number records with sign from column

TODO: only first filter works here

---8<--- "./filter_selectors.html"

TODO: describe selectors

<!-- TODO: add id or name attributes -->
<div class="plot-heatmap-filters-group">
    <select class="plot-heatmap-filter plot-heatmap-filter-a" onchange="selectHeatmapFilterA(this.value)">
    </select>

    <select class="plot-heatmap-filter plot-heatmap-filter-b" onchange="selectHeatmapFilterB(this.value)">
    </select>
</div>

<div id="plot-heatmap"></div>

<script type="text/javascript">
heatmapPlot('plot-heatmap');
</script>


<!-- TODO Tatget audience filter: adult, playing PC, employed -->

<!-- TODO: effort vs playing_strategies -->
<!-- TODO: scatter plot X vs Y -->
<!-- TODO: на фильтры добавить количество элементов выборки -->
<!-- TODO: корреялция топовых выборов в вопросах с мультивыбором -->
<!-- TODO: adult 30-39 — странная группа, у неё предпочтения противоположны двум соседним -->

<!-- Insites: effort влияет на предпочтения -->
<!-- множество каналов важны для тех, кто задрачивает и играет в стратегии много-->
<!-- реализм журналистики важен для тех, кто задрачивает и играет в стратегии много-->
<!-- размер важен для тех, кто хочет играть во много стратегий -->
<!-- Каналы распространения новостей по возрастам -->
<!-- Любители магии любят РПГ, но не любят напрягаться -->
<!-- Офис сильно коррелирует с бюджетом -->
<!-- Первое большое разделение: несколько конкурентов vs много конкурентов -->
<!-- Второй большое разделение: размер агентства -->

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

<!-- footer -->

---8<--- "./csv_data.html"
---8<--- "./filters_initialization.html"
