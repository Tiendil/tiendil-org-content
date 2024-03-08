---
title = "Preferences of strategy players"
tags = [ "practice", "development", "gamedev", "game-design", "open-source", "world-builders"]
published_at = "2024-02-24T12:00:00+00:00"
description = "In this post you will find an interactive dashboard to explore the preferences of strategy players."
seo_image = "./images/cover.jpg"
---

/// brigid-images
src = "./images/cover.jpg"
caption = "Looking at the survey data and trying to find something useful."
///

Recently I've conducted a survey about the preferences of strategy players.

In the previous post, we [cleaned up the data]{post:making-a-fictional-universe-quantity-survey-cleaning}, and in this one, we will try to find insights within it.

In this post you will find an interactive dashboard with a bunch of charts, where you can compare two samples of your choice. There are many samples — for every taste and color, so feel free to explore and share the patterns you find on [Telegram](https://t.me/tiendil_org_en) and [Discord](https://discord.gg/2JNHAV7uMP).

But be careful with conclusions. There is little data, in some cases very little. For example, the difference between the sample sizes of male and female respondents is about tenfold => you should be very careful in interpreting the differences between them.

In general, do not take this post as a full-fledged study. I'm sure many analysts would have torn my hands off for such a thing. Then sewed them back and torn them off again :-D Use the post as an interface to the data, and make your own conclusions.

<!-- more -->

## The data and the code

The data on which the charts are built are in the [repository](https://github.com/Tiendil/world-builders-2023/tree/main/quantity-research).

In the [previous post]{post:making-a-fictional-universe-quantity-survey-cleaning} you can find:

- a copy of the original survey;
- the methodology of data cleaning;
- a list of my mistakes in creating the survey.

The code for data processing can be found right in the sources of this page. Or in the [repository with the sources of the post](https://github.com/Tiendil/tiendil-org-content/tree/main/content/posts/2024-02-23-making-a-fictional-universe-quantity-survey-processing). The code is not the best, but it seems to work.

## The structure of the dashboard

The post consists of a few parts:

- Bar charts for each question, with the ability to compare two samples on them. In all charts, the Y-axis is percentages, the absolute values is shown in the tooltips.
- A pair of radar charts to look at the quantitative properties of the samples. They also can be used to compare two samples.
- A pair of heatmaps to look at correlations.
- My thoughts on the target audience for the game, based on the data.

To some charts I added very subjective comments: what to look at, what conclusions can be drawn.

To make reading charts easier, for each chart I added the corresponding question from the survey.

## Samples

You could find dropdown menus with samples at the top of each chart.

**Be sure to look at the sample sizes before interpreting the chart.** The sizes are displayed in square brackets at the end of the sample name.

Samples are globally switched; selecting a sample in one chart will change all charts accordingly. That is, you will always see a comparison of the same samples on every chart. It is convenient to choose groups of people and go through the post from top to bottom, looking at how they differ across criteria.

I tried to name the samples clearly, but just in case, keep a copy of the original survey in front of you.

What samples are there:

- For each qualitative question, there is a filter. Except for some questions, which will be mentioned later.
- For questions about preferences in games, style of the world, and style of the plot, besides the filters "I like X", there are filters "not a fan of X".
- Answers to quantitative questions are grouped to simplify analysis. Values that fall into the group are indicated in square brackets. For example `[1..6]`.
- There are several artificial samples. Their names begin with `*`. These samples are described in separate chapters.

Grouped samples from qualitative questions:

- **Occupation**: employment, student, other (all other options).
- **Competitors**: few, a lot; other options are too few to be interpreted in any way.
- **Agency size**: small ("up to 10", "up to 25", "up to 50", "small or automation"), big ("up to 100", "bureaucratic empire", "small or automation"). Note that respondents who chose "small or automation" are included in both groups. This answer variant was added based on the results of processing free responses.

**Note**, although some answers are grouped, they remain separated in the corresponding charts. If there were 10 answer options in the question, you will see 10 columns on the chart.

### Players: hard, core, casual

After a long meditation on the charts for quantitative questions, I came to the conclusion that all players can be divided into three groups (obvious post factum):

- `Hard` — the biggest fans of strategies: push everything to the maximum: complexity, role-playing, world size, management, etc.
- `Core` — dedicated strategy fans: play a lot, like strategies, but without extremes.
- `Casual` — all the rest.

There are numerous quantitative questions. Obviously, not every person will choose answers specific only to one group. To clearly separate respondents into groups, I did the following:

- Divided the answers in each quantitative question into three groups: `Hard`, `Core`, `Casual`.
- For each respondent, I counted how many times they fell into each group.
- For each respondent, I assigned the group they fell into most often.
- When the number of "points" was the same, the group was chosen in the order of priority: `Core`, `Casual`, `Hard`.

You can find the groups in the samples `* Players: <type>`. There are interesting differences. For example:

- `Core` players prefer the urban legends genre significantly more than `Hard` players, who in turn favor documentaries, conspiracy theories, and noir more.
- There are more `Hard` players among the youth, and, with age, strategy fans "calm down" a bit. But, most likely, they just can't spend the same amount of time on games because of work and family.
- `Hard` players believe that several channels of information distribution are literally mandatory for a news agency. `Core` players consider this an important element, but not essential. The same situation with the realism of journalism.
- `Core` players prefer to manage a small agency, `Hard` players — to build a bureaucratic empire.

## General thoughts

I managed to target PC strategy fans, which is good.

My hypothesis about the difference between game developers and players was not confirmed. There are no significant differences between the groups.

I don't see significant differences between fans of different genres of strategies.

To my surprise, strategy fans are very positive about role-playing elements.

<!-- more -->

---8<--- "./translations_en.html"
---8<--- "./initial_js.html"

## Main characteristics of the respondents

The first section of the survey.

### Gender

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

### Age

```
Age
```

- By selecting different samples, you can observe "expected" changes in preferences with age.
- The `Adults (30-39)` group clearly deviates from the trends in some samples. Maybe it's the midlife crisis hitting, reality check time, or just some
wonky data.

---8<--- "./filter_selectors.html"

<div id="plot-age"></div>

<script type="text/javascript">
    barPlot('plot-age', groupMapper(ageGroups), groupIds(ageGroups));
</script>

### Occupation

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

### Game developers

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

## Game experience

The second section of the survey — the overall gaming experience of the respondent.

### Playing on

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

### Playing in strategies

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

### Kinds of strategy games

```
Which kind of strategy games do you like the most? Select up to four items.
```

The column "tactics" is small, because I forgot to specify this option in the survey and only those who did not bother to specify this preference in the free response are counted in it. So, there are many fans of tactics and this is a big drawback of the collected data.

---8<--- "./filter_selectors.html"

<div id="plot-strategy-games"></div>

<script type="text/javascript">
barPlot('plot-strategy-games', groupMapper(strategyGamesGroups), groupIds(strategyGamesGroups));
</script>

### Sources of new games

```
How do you know about new games to play?
```

---8<--- "./filter_selectors.html"

<div id="plot-know-about-games"></div>

<script type="text/javascript">
barPlot('plot-know-about-games', groupMapper(knowAboutGamesGroups), groupIds(knowAboutGamesGroups));
</script>

### Playing effort

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

### Like in games

```
What do you like in games the most? Choose up to five items.
```

- Unexpectedly for me, strategy fans like to explore the world the most, and creating game strategies is only in the second place. For myself, I interpret "world exploration" as "map exploration and dealing with the properties of game objects and mechanics", but it would be great to dig deeper. Maybe "exploration" should be divided into several more specific preferences.
- Also unexpectedly for me, "story" and "roleplaying" are in the leaders.

---8<--- "./filter_selectors.html"

<div id="plot-like-in-games"></div>

<script type="text/javascript">
barPlot('plot-like-in-games', groupMapper(likeInGamesGroups), groupIds(likeInGamesGroups));
</script>

### RPG elements

```
I like RPG elements in strategy games: character progress, stories, personal abilities, etc.
```

It looks like RPG elements are a mandatory element of modern strategies.

---8<--- "./filter_selectors.html"

<div id="plot-rpg-elements"></div>

<script type="text/javascript">

function mapRPGElements(row) {
    return row['q_rpg_elements'];
}

barPlot('plot-rpg-elements', mapRPGElements, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

## Game mechanics

The third section of the survey — expected mechanics (from the game about the news agency).

### Amount of channels to spread news

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

### Preferred channels of news distribution

```
Choose up to five channels of news distribution you would like to see in the game in the first place
```

---8<--- "./filter_selectors.html"

<div id="plot-news-channels-types"></div>

<script type="text/javascript">
barPlot('plot-news-channels-types', groupMapper(newsChannelsTypes), groupIds(newsChannelsTypes));
</script>

### Journalistic realism

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

### Competitors

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

### Maximum size of your news agency

```
Maximum size of your news agency. How many people (journalists, photographs, investigators, etc) do you want to manage?
```

We can see a clear division between two game variants on this question. Exaggerating, "game about a small cozy agency" and "game about a news corporation".

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

### Budget management

```
How much effort do you want to put into managing the budget of your news agency?
```

This is probably the question with the most spread-out answers on the scale. I interpret this as "some budget is required, but no one knows in what form it should be" and "we want to play journalism, not accounting".

---8<--- "./filter_selectors.html"

<div id="plot-budget-effort"></div>

<script type="text/javascript">

function mapBudgetEffort(row) {
    return row['q_budget_effort'];
}

barPlot('plot-budget-effort', mapBudgetEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>


### Relationship management

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

### Office management

```
How much effort do you want to put into managing the office of your news agency?
```

My interpretation: the office is required, but it may be managed in different ways.

---8<--- "./filter_selectors.html"

<div id="plot-office-effort"></div>

<script type="text/javascript">

function mapRelationshipsEffort(row) {
    return row['q_office_effort'];
}

barPlot('plot-office-effort', mapRelationshipsEffort, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

## Stories

The fourth section of the survey — preferences in stories, world image, and plots.

Look at these charts across samples of different ages. The differences will be clearly noticeable.

Unfortunately, I couldn't clearly identify groups of preferences. Maybe the problem is in the phrasing of the question; perhaps, it would have been better to make a separate quantitative scale for each type of plot and world. However, this would significantly expand the survey and, therefore, reduce the number of responses. A small sample size also plays a role.

I added one custom filter: `* Genre: Not about the future` — respondents who did not choose "science fiction" or "cyberpunk" in the preferred genres.

### Shades of genres and plots

```
Choose up to four shades of the plot/genre style you prefer the most.
```

---8<--- "./filter_selectors.html"

<div id="plot-shades-of-genre"></div>

<script type="text/javascript">
barPlot('plot-shades-of-genre', groupMapper(shadesOfGenreGroups), groupIds(shadesOfGenreGroups));
</script>

### Complexity of moral questions

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

### Style of the world

```
How do you want to see the world in the game of a modern news agency with some magic and sci-fi technology? Choose up to six options.
```

---8<--- "./filter_selectors.html"

<div id="plot-world-style"></div>

<script type="text/javascript">
barPlot('plot-world-style', groupMapper(worldStyleGroups), groupIds(worldStyleGroups));
</script>

## Groups of players by hardcoreness

How I divided players into groups `Hard`, `Core`, `Casual` is described at the beginning of the post.

### Distribution of players by points of `Hard` group

---8<--- "./filter_selectors.html"

<div id="plot-meta-hard"></div>

<script type="text/javascript">

function mapMetaHard(row) {
    return row['m_hard'];
}

barPlot('plot-meta-hard', mapMetaHard, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Distribution of players by points of `Core` group

---8<--- "./filter_selectors.html"

<div id="plot-meta-core"></div>

<script type="text/javascript">

function mapMetaCore(row) {
    return row['m_core'];
}

barPlot('plot-meta-core', mapMetaCore, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Distribution of players by points of `Casual` group

---8<--- "./filter_selectors.html"

<div id="plot-meta-casual"></div>

<script type="text/javascript">

function mapMetaCasual(row) {
    return row['m_casual'];
}

barPlot('plot-meta-casual', mapMetaCasual, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
</script>

### Distribution of players by groups

---8<--- "./filter_selectors.html"

<div id="plot-meta-effort"></div>

<script type="text/javascript">

function mapMetaEffort(row) {
    return row['m_effort'];
}

barPlot('plot-meta-effort', mapMetaEffort, ['casual', 'core', 'hard']);
</script>

## Radar charts

Radar charts make it easier to see the overall picture of the samples.

The axes of the radars are quantitative questions (including age). All answers are normalized to the interval `[0, 1]`.

### Medians of preferences

---8<--- "./filter_selectors.html"

<div id="plot-radar-median"></div>

<script type="text/javascript">
scatterpolarPlot('plot-radar-median', 'median');
</script>

### Averages of preferences

---8<--- "./filter_selectors.html"

<div id="plot-radar-average"></div>

<script type="text/javascript">
scatterpolarPlot('plot-radar-average', 'average');
</script>

## Heatmaps

By analogy with radars, two heatmaps to look at the correlations.

### Absolute number of respondents

A cell displays the number of respondents from the sample with a combination of choices from the column and row.

---8<--- "./filter_selectors_single.html"
---8<--- "./heatmap_filter_selectors.html"

<div id="plot-heatmap-absolute"></div>

### Propotions of respondents

A cell displays the number of respondents from the sample with a combination of choices from the column and row divided by the number of respondents who chose an answer from the column.

This allows you to look, for example, at the share of sci-fi fans among fans of different genres of strategies.

---8<--- "./filter_selectors_single.html"
---8<--- "./heatmap_filter_selectors.html"

<div id="plot-heatmap-norm"></div>

<script type="text/javascript">
heatmapPlot('plot-heatmap-absolute', 'absolute');
heatmapPlot('plot-heatmap-norm', 'norm');
</script>

## What the game and the target audience could look like

I managed to find three more or less clear characteristics of players:

- By involvement in the game: `Hard`, `Core`, `Casual`.
- By preferred size of the agency: `small`, `big`.
- By preferred number of competitors: `few`, `many`.

I couldn’t manage to identify groups based on mechanics, world, and plots, but that doesn’t mean they don’t exist.

So, let's try to look at the combinations of characteristics and their most popular preferences.

### All possible groups

We will look only at players who actively play strategies (fans of strategies who answered 7 or more to the corresponding question). They are the majority in the survey, see the filter `Play strategies: actively [7..10]`.

I excluded `Casual` players almost immediately — this is the smallest group (compared to `Hard` and `Core`) and is iterpreted more as "all the rest". Plus, making a game for both `Hard` and `Casual` players at the same time is difficult, and hardcore players are much more interesting, especially in terms of working with the community.

As a result, we have 8 groups.

<div id="table-final-groups-raw" class=""></div>

### Uniting groups

Making a game for a `Hard` audience is risky and difficult. In my opinion, it is more reasonable to make a game for `Core` (especially since it is larger) and, if possible, capture `Hard` players.

You can notice that the preferences of `Hard` and `Core` players are close for the same sizes of agencies and the number of competitors. Therefore, they can be combined into one group.

The combination of the properties "small agency" + "many competitors" looks strange in terms of gameplay. This is also could be seen from the sizes of the groups, so, in my opinion, it can be removed from consideration.

As a result, we will have three types of possible games.

You may see the properties of the groups using the filters `* Game: <group number>`.

<div id="table-final-groups-basic"></div>

The whole picture of preferences in mechanics, world, and plot is clear, but there is a nuance, which we will look at below.

### Development sequence / feature scaling

It is possible to notice that three types of games can be adapted to each other.

If we make a game about a small agency and a few competitors, everything goes well and we find a way to increase the size of the agency without harming the gameplay, we'll capture a new audience.

If, after that, we find a way to tweak the interface and balance to make interacting with numerous competitors convenient, then, once again, we will reach a new audience."

But this is heavy theorizing and a very big "if". I think such luck is unlikely. But, just for fun, here are the tables with the combined groups (or stages of development). It's also worth noting that the last group will include players whom we excluded from consideration by the "small agency" + "many competitors" groups.

<div id="table-final-groups-iterations"></div>

</script>

### Slices of interests

This is shaky ground, as there is little data and their presentation method is not very convenient.

For the main target group (`Core` + `Hard` players, small agency, few competitors) we will look at slices by the combination of factors from each group of properties

Here are the 20 largest slices out of 2162 possible.

<div id="table-iteration-1-slices"></div>

It's clear that nothing is clear :-) Yes, there is a general picture, but it's like an average across the hospital. If we look at specific slices, they are quite different and evenly distributed.

Formally, we can say that we will target "strategists who enjoy exploring the world and want to do so in a setting of conspiratorial black humor'. Then, we can state that our most-targeted audience is `21/243` (`Core` + `Hard` strategists), which is approximately `8.5%` of strategy players.

In other words, this is a highly optimistic upper limit, the achievement of which will depend on the game's quality."

But this is already on the border of magical thinking, in my opinion.

## Conclusion

Overall, I am pleased with the results. I've clarified who are my players, which mechanics to focus on, and the approximate style of the world. And I've resolved some other questions.

Unfortunately, I couldn't dig up anything interesting about the plot and the style of the world. Maybe I'll return to this data later.

One more time, thank you to all survey participants, and to the moderators who interacted with me and shared the link to the survey.

Special thanks to my wife — [Yulia](https://burankova.org/) — for her advice. But all the mistakes in the code and conclusions are mine :-)

<!-- footer -->

---8<--- "./csv_data.html"
---8<--- "./filters_initialization.html"
