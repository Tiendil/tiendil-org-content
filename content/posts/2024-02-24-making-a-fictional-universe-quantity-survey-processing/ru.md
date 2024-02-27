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

Перед началом анализа я планировал кучей текста сопроводить пару красивых показательных графиков. В итоге получилось наоборот.

В посте вы найдёте «интерактиный исследовательский стенд» с кучей графиков, на которых можно смотреть разницу между двух выборок на ваш выбор. Извините за тавтологию. Выборок много — на разный вкус и цвет, поэтому счёлкать можно долго — делитесь в [Telegram](https://t.me/tiendil_org_ru) и [Discord](https://discord.gg/ZyNy28ZXM6) найденными закономерностями.

Но будьте аккуратны в выводами. Данных мало, а в некоторых выборках совсем мало. Например, разница между группами мужчин и женщин примерно десятикратная => интерпретировать любые отличия между ними следует очень осторожно.

В целом, не воспринимайте этот пост как полноценное исследование. Уверен, многие аналитики мне бы руки за такое оторвали. Потом пришили и снова оторвали. Лучше делайте свои выводы.

<!-- more -->

## Примечания

Данные, по которым строятся графики, можно найти в [репозитории](https://github.com/Tiendil/world-builders-2023/tree/main/quantity-research).

В [предыдущем посте]{post:making-a-fictional-universe-quantity-survey-cleaning} можно найти:

- копию оригинального опроса;
- методику очистки данных;
- список ошибок при создании опроса.

Код для обработки данных можно найти прямо в исходниках этой страницы. Или в [репозитории с исходниками поста](https://github.com/Tiendil/tiendil-org-content/tree/main/content/posts/2024-02-23-making-a-fictional-universe-quantity-survey-processing). Код не лучший, но вроде работает.

### Структура стенда

Стенд можно разделить на несколько частей:

- Bar plots для каждого вопроса, с возомжностью сравнить на них две выборки.
- Пара радарных графиков, чтобы смотреть на количественные свойства выборок. Тоже можно сравнивать две выборки.
- Пара тепловых карт, чтобы смотреть корреляции.
- Моя попытка посмотреть на целевую аудиторию для игры.

### Выборки

**Обязательно смотрите на размеры выборок перед интерпретацией графика.** Размер выборки указан в квадритных скобках в конце её названия.

- Для каждого варианта ответа на качественный вопрос есть фильтр. За исключенем некоторых вопросов, которые будут указаны далее.
- Ответы на количественные вопросы сгруппированы, чтобы упростить анализ. Попавшие значения указаны в квадратных скобках. Например `[1..6]`.
- Есть несколько искусственных выборок. Их названия начинаются с `*`. Такие выборки описаны в отдельных главах.

Сгруппированные выборки из качественных вопросов:

- Занятость: работаю, студент, другое (все остальные варианты)
- Конкуренты: мало, много; остальных вариантов слишком мало.
-

#### Hard, Core, Casual ответы игроки

После долгой медитации на графики количественных вопросов, пришёл к выводу, что всех игроков можно разделить на три очевидные группы:

- `Hard` — самые отъявленные любители стратегий, выкручивают всё на максимум: сложность, отыгрыш, размер мира, менеджмент, etc.
- `Core` — преданные любители стратегий, играют много, любят стратегии, но без крайностей.
- `Casual` — все остальные

По распределению ответов в количественных вопросах хорошо видны эти группы.

Чтобы явно разделить респондентов по группам сделал следующее:

- Разбил ответы в каждом количественном вопросе на три группы: `Hard`, `Core`, `Casual`.
- Для каждого респондента посчитал, сколько раз он попал в каждую из групп.
- Каждому респонденту назначил группу, в которую он попал чаще всего.

### Общие выводы

Удалось попасть в любителей стратегий на PC, что хорошо.

Моя гипотеза о разнице между разработчиками игр и игроками не подтвердилась. Существенных отличий между группами не обнаружил.

Существенных отлиличий между любителями разных жанров стратегий не обнаружил.



Пришло время по

<!-- TODO: image -->

<!-- В целом, куча стереотипов подтверждается, можете сами посчёлкать -->
<!-- Это не всеобъемлющий очёт, только базовые закономерности, игровая площадка -->
<!-- TODO: переформулировать заголовки в более конкретные -->
<!-- TODO: перевод названий груп -->
<!-- TODO: данных откровенно мало. Их хватает, чтобы видеть общие закономерности, но смотреть глубоко не получается. -->
<!-- Казуальные группы объедены с «не интересуюсь», т.к. во второй вообще не набирается выборка, а казуальные группы малы. -->

Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro Bla-bla-bla some intro

<!-- more -->

---8<--- "./translations_ru.html"
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

TODO: tactics мало, т.к. она был в others только

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

## Мета группы

### Hardcore игроки

---8<--- "./filter_selectors.html"

<div id="plot-meta-hard"></div>

<script type="text/javascript">

function mapMetaHard(row) {
    return row['m_hard'];
}

barPlot('plot-meta-hard', mapMetaHard, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Core игроки

---8<--- "./filter_selectors.html"

<div id="plot-meta-core"></div>

<script type="text/javascript">

function mapMetaCore(row) {
    return row['m_core'];
}

barPlot('plot-meta-core', mapMetaCore, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Casual игроки

---8<--- "./filter_selectors.html"

<div id="plot-meta-casual"></div>

<script type="text/javascript">

function mapMetaCasual(row) {
    return row['m_casual'];
}

barPlot('plot-meta-casual', mapMetaCasual, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Группы по увлечённости

---8<--- "./filter_selectors.html"

<div id="plot-meta-effort"></div>

<script type="text/javascript">

function mapMetaEffort(row) {
    return row['m_effort'];
}

barPlot('plot-meta-effort', mapMetaEffort, ['casual', 'core', 'hard']);
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

### Тепловые карты

TODO: age is missed here

TODO: only first filter works here

#### Абсолютная

---8<--- "./filter_selectors.html"
---8<--- "./heatmap_filter_selectors.html"

TODO: describe selectors

<div id="plot-heatmap-absolute"></div>

#### Нормированная на количество в колонке

---8<--- "./filter_selectors.html"
---8<--- "./heatmap_filter_selectors.html"

TODO: describe selectors

<div id="plot-heatmap-norm"></div>

<script type="text/javascript">
heatmapPlot('plot-heatmap-absolute', 'absolute');
heatmapPlot('plot-heatmap-norm', 'norm');
</script>

## Финальные группы

### Все выделенные группы

<div id="table-final-groups-raw"></div>

### Определённые ключевые группы

<div id="table-final-groups-basic"></div>

### Группы итераций

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

<!-- footer -->

---8<--- "./csv_data.html"
---8<--- "./filters_initialization.html"
