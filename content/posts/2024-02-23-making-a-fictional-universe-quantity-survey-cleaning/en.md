---
title = "Cleaning the results of the strategy players survey"
tags = [ "practice", "development", "gamedev", "game-designe", "open-source", "world-builders"]
published_at = "2024-02-23T12:00:00+00:00"
description = "Cleaning the results of the survey about strategy games. Describing the methodology of data collection and processing. Publishing cleaned data."
seo_image = "./images/cover.png"
---

/// brigid-images
src = "./images/cover.png"
caption = "The survey was targeted at the fans of strategy games. It seems, I was able to find audience quite accurately."
///

Recently I asked you to fill in a survey about strategy games.

Thank you to everyone who took the time to do this. It's time to share the results.

363 respondents filled in the survey. 304 answers remained after data normalization and cleaning.

There will be two posts:

- This one — about the methodology of data collection and processing, and their cleaning. Cleaned data will be shared.
- The next one — about the analysis of the results.

<!-- TODO: add link to the processing post -->

<!-- more -->

## The survey

/// details | The original survey
    open: false

The exact copy of the original survey: questions, answer options, comments. For history.

--8<-- "./original_survey.md"
///


The scales in the questions are of the same size: 1..10. This helps respondents and me to less often switch brain between different gradations of the assessment. Plus, there will be less mistakes in data processing due to typos and copy-paste.

In the questions with multiple choices, the number of choices was limited to 1/3 of the available ones. There is no deep idea behind 1/3, I just choose the standard rule based on logic: "1/2 is too much, 1/4 is too little" — a matter of taste.

### Validating the survey on friends

Preliminary testing of the survey is a must-have.

The first version of the survey was a bit scary, especially in the stories section => it was completely reworked.

Also, for example, initially I turned on option to shuffle the answer options for each respondent (Google Forms has such feature), but after testing on friends, I turned it off. The options usually go in some logical order (for example, in descending order of realism), shuffling makes people constantly jump between semantically opposite parts of answers space. This leads to confusion and suffering.

### Made mistakes

I the process of collecting and processing the data I found a few mistakes made while preparing the survey.

1. I didn't add the question `Where did you come from?` — it would have been useful for analyzing the effectiveness of the survey distribution.
2. In the question `Which kind of strategy games do you like the most?` I missed several options:
    - tactics (including rpg with tactical battles)
    - tower defense
    - autobattlers (or is it also tactics?)
    - wargames (and this?)
    - automatization (Factorio, Satisfactory, etc.)

    Also, people often mentioned RPG, but I'm not sure if it makes sense to include such an answer in the strategy games survey.

3. In the question `How do you know about new games to play?` I missed the option "game stores". After analyzing the answers, I got the impression that there should be an option for each store (Steam, GoG, Epic, Google Play, etc.). Maybe even an option for each particular feature of the stores (recommendations, tags, home page).
4. In the same question, it was worth explicitly specifying video services (YouTube, Twitch, etc.).
5. In the question `Choose up to four shades of the plot/genre style you prefer the most` I forgot to add the "horror" option.
6. In the question `How do you want to see the world in the game?` I forgot to add "other" option with a free text field. It would be interesting to read.
7. Some questions, which were supposed to be about strategy games, were formulated as questions about games in general. This confused some people. In the future, I will be more careful.

## Search for respondents

I'm not a social person, participate only in a few communities. So it was difficult, but I tried :-)

Because the game will be made (if it will be made) primarily for an English-speaking audience (the largest of the accessible for me), the survey was targeted at English-speaking people and places where they can be found.

I actively distributed the survey in:

- Reddit: subreddits + ads (single ad post)
- Discord
- Facebook
- 4chan `/vst/`
- Fido — asked a friend
- By personal contacts: Telegram, forum of my pet-project-game, acquaintances, LinkedIn.

Of course, with respect to the rules of the communities. I hope I didn't break any of them.

I will not share the list of groups where I placed the survey to avoid spamming. In any case, for your purposes, you probably need to look for other communities.

### Impressions

Unfortunately, I didn't think to add the question `Where did you come from?` to the survey, so I evaluate the effectiveness of different channels by eye.

Communities on forums rule! Reddit — cool, 4chan — even cooler :-)

On Reddit, many subreddits explicitly prohibit surveys in their rules, but there are those where it is allowed. Usually, they are more specialized.

From 4chan I expected a setup, ignore, or something neutral. I was pleasantly surprised by the positive reaction. Of course, they sent me "to hell" once or twice, but in such a way that I even shed a tear of nostalgia.

Facebook is more dead than alive.

Discord is fenced off and very unfriendly to any links. Full of pop servers. But you can find good cozy communities with responsive moderators, many thanks to them for their work.

I didn't understand how to search for chats/groups for distributing the survey in Telegram :-D

I looked at Steam forums and chats — they look like dead.

I didn't write to influencers, streamers.

### Advertising on Reddit

I launched an add on Reddit as an isnsurance — I was afraid of not getting enough respondents.

<!-- TODO: link to a vision documents post -->
Because Reddit does not allow promoting text posts with pay-per-click, I had to take an AI-generated image from one of my vision documents for the game.

I targeted large computer-games-related subreddits where I couldn't make a post according to the their rules.

The result exceeded expectations. Now this is my [most upvoted post on Reddit](https://www.reddit.com/user/Tiendil/comments/1aklobf/im_making_a_game_where_you_play_as_the_chief/) — 58 upvotes :-D Actually, I'm not sure if I should be proud of it, should make more of not-ad original posts.

Of the top of my head, the ad brought from 30% to 50% of the respondents. With a price per answer of ~1$ plus or minus. But, as you can see from the statistics, the number of clicks on the post was significantly higher than the number of filled in surveys — many people drop out.

/// brigid-images
src = "./images/reddit-ads-statistics.png"
caption = "Reddit ads statistics"
///

What I learned from the advertising experience:

- Advertising with turned on comments rocks, if you are ready to answer them. A must-have option for indie developers. Even users in the comments noted this.
- People understand and ok with the AI-generated art if it is made with some effort. But there is a small fraction of negative comments on this topic.
- The price per click is surprisingly low (?), which is cool.
- It seems to me that a couple of people followed me after the ad post.
- I will continue to use Reddit ads.

## Data cleaning methodology

First of all, I want to thank everyone who chose the free answer option and wrote their thoughts. I read them all and made a bunch of notes!

At the moment of closing the survey, 363 answers were received. After normalization and cleaning, 304 remained.

The link to the cleaned anonymized data will be at the end of the post.

### Normalization

The goal of normalization is to prepare the data for analysis, remove ambiguities, and bring it to standard formats.

- All answers were converted to standard text or numeric values.
- All columns with multiple choice answers were split into independent columns, one column per answer, with values 1 and 0.
- All column names were replaced with identifiers:
  - `q_<short_question_id>` for a question with a single answer.
  - `q_<short_question_id>#<short_answer_id>` for each answer option in a multiple choice question.
- Free answers with the meaning "all of the above", "can't choose", "nothing from the above" were interpreted as "nothing is chosen".
- Free answers that were writing from game developer's point of view were ignored. The survey was about personal preferences in games, not about the right way to make games.
- Some free answers could be converted into several predefined ones. This was not done because there was no time to write code, and there were only 6 such answers.
- For all other free answers, the closest option from the predefined ones was chosen. In some cases, a new answer option was added. For example, in the question about strategy games, the option `tactics` was added.

To the question `Which kind of strategy games do you like the most? Select up to four items.` the option `tactics` was added.

To the question `How do you know about new games to play?` the options `game_stores`, `video_services`, `free_search` (in Google), `do_not_search` (never search) were added.

To the question `Maximum size of your news agency` the option `small_or_automanage` was added for answers in the spirit of "if with automation, then large size, otherwise small", and "if it will be large, automation is required to protect me from micromanagement".

### Cleaning

/// brigid-images
src = "./images/honesty.png"
caption = "Surprisingly many people are not ready to honestly answer questions."
///

The goal of cleaning is to remove incorrect data sets — questionnaires filled in poorly in jest or deliberately. Of course, it is impossible to determine how a person treated the survey with 100% accuracy. But it is possible, using heuristics, to select questionnaires that were most likely filled in poorly.

For this, the following questions were added:

- `Are you answering this survey with honesty?` — a question for attentiveness, identifying uncertain respondents, jokers. In addition, by answering this question correctly, the respondent takes on the obligation to answer correctly in the future. Added a little psychology :-)
- `Are you still with us? Select the correct answer for 2+5 =` — weeded out sleeping or mindlessly clicking respondents. Strangely, there were significantly fewer incorrect answers here than in the first question.

All answers not equal to `Yes` and `7` were excluded from the final sample.

In addition, the following questionnaires were excluded:

- Too large or too small age of a respondent (2 years, 100 years).
- Too jocular or too aggressive free answers (`I sell drugs`, racist statements, etc.).

### Примечания

Варианты со свободным ответом значительно усложняют обработку данных, но полезны — указывают на упущения, дают интересные инсайты, читать их интересно.

Большинство респондентов отсеялось по вопросу о честности: `Are you answering this survey with honesty?`.

## Ответы и комментарии на некоторые «свободные ответы»

Поскольку контактов респондентов я не собирал, хочу ответить на пару вопросов, которые задали в свободных ответах.

> What's the need for magic elements? Do you think the kind of people interested in news will be interested as much in magical fantasy?

Магические элементы могут быть нужны, чтобы снизить сложность проработки мира. Делать реалистический sci-fi мир сложно. Особенно для игр, когда интересность взаимодействия с миров начинает конфликтовать с реалистичностью его отображения. Магические элементы помогают сгладить эти противоречия.

> "/vst/ is a terrible place to advertise on, just so you know.

У меня не было задачи продвижения чего-либо, так как пока нечего продвигать.

В остальном, результаты говорят, что `/vst/` — отличное место, чтобы получить обратную связь. Хорошее, отзывчивое сообщество со своей культурой.

> Just in relation to the ""realistic journalism"", are we on about like current rag journos, or actual journos? the ones making it on the RSF website after getting shot by Iraqi militiamen, instead of the other journalists using a 10 second social media clip to try and get people throwing bricks at police vans.

Думаю, реалистичное отображение журналистики должно включать оба варианта.

Конечно, можно уделять разное внимание аспектам этой профессии, но если говорить о реалистичном отображении, то надо показывать все стороны.

Лично мне хотелось бы глубже копнуть в крутую опасную журналистику, но это сложная штука, требует много труда и налагает определённую ответственность. Посмотрим.

> I know nothing of what you're making but answering the questions made me imagine something for myself"

Так и задумывалось.

- Первая часть анкеты — техническая и чёткая, её можно оформлять сухо.
- Вторая часть анкеты про опыт, который люди хотят получать от игр. Опыт не может быть «сухим», «бездушным». Поэтому формулировки должны пробуждать фантазию, заставлять представлять «а как бы оно было, если бы». Надеюсь у меня получилось.

> make this game such that it inspire the real journalists to do there jobs properly

и

> I work at a news agency for real. I'll make sure to follow this project.

Много подобных комментариев. На мой взгляд это круто, значит я что-то нащупал.

## Небольшая фановая статистика

После подсчёта и группировки ответов из последней секции, появились такие результаты:

- Пожеланий удачи: 86
- Жду игру: 38
- Интересный концепт: 36
- Отличный опрос: 9
- Готов быть тестером: 3
- Оставлено ников для добавления в credits: 289 ~ 80% отвечавших
- Оставлено ответов на вопрос `Write here anything you want to add`: 203 ~ 56%

Все комментарии очень позитивные.

## Очищенные данные

Очищенные обезличенные (анонимизированные) данные можно найти в [репозитории](https://github.com/Tiendil/world-builders-2023/tree/main/quantity-research).

## Заключение

Спасибо всем участникам опроса, всем модераторам, которые со мной общались и шарили ссылки.

Отдельное спасибо жене — [Юле](https://burankova.org/) — за проверку моей работы по очистке данных.