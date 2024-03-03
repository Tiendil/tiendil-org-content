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


В процессе сбора и обработки данных нашёл несколько ошибок.

1. Не добавил вопрос «откуда пришли в анкету» — пригодился бы для анализа эффективности её распространения.
2. В вопросе `Which kind of strategy games do you like the most?` упустил несколько вариантов:
     - тактика (включая rpg с тактическими боями)
     - tower defense
     - autobattlers (или это тоже тактика?)
     - wargames (а это?)
     - automatization (Factorio, Satisfactory, etc.)

     Люди часто упоминали RPG, но не уверен, что их имеет смысл относить к стратегиям.

3. В вопросе `How do you know about new games to play?` забыл вариант «магазины игр». После анализа ответов, сложилось впечатление, что надо давать по варианту на каждый магазин (Steam, GoG, Epic, Google Play, etc.). Возможно, даже на разные фичи магазинов (рекомендации, теги, главная страница).
4. В том же вопросе стоило явно указать видео сервисы (YouTube, Twitch, etc.).
5. В вопросе `Choose up to four shades of the plot/genre style you prefer the most` забыл добавить вариант «horror».
6. В вопросе `How do you want to see the world in the game..` забыл добавить «свой вариант ответа», было бы интересно почитать.
7. Некоторые вопросы, которые предполагались как вопросы о стратегических играх, сформулированы как вопросы об играх в целом. Это путало респондентов. В будущем буду внимательнее.

## Поиск респондентов

Я человек не социальный, мало в каких группах состою. Поэтому было сложно, но я старался :-)

Так как игра будет делаться (если будет), в первую очередь, для англоязычной аудитории (самая большая из доступных), опрос нацеливался на англоговорящих людей и места, где их можно найти.

Анкету активно распространял в:

- Reddit: subreddits + реклама
- Discord
- Facebook
- 4chan `/vst/`
- Fido — попросил знакомого
- По личным контактам: Telegram, форум «Сказки», знакомые, LinkedIn.

С учётом правил сообществ, конечно.

Список площадок, где размещал анкету, шарить не буду, дабы не провоцировать спам. В любом случае, для ваших целей, скорее всего, надо искать другие сообщества.

### Впечатления

К сожалению, не додумался добавить вопрос «откуда пришли в анкету», поэтому эффективность разных каналов оцениваю на глаз.

Сообщества на форумах рулят! Reddit — крутой, 4chan — даже круче :-)

На Reddit у многих subreddits в правилах явно указан запрет на опросы, но есть и те, где разрешено. Обычно, они более специализированные.

От 4chan ждал подставы, игнора или чего-нибудь нейтрального. Был приятно удивлён положительной реакцией. «На хуй», конечно, разок послали, но так, что я даже слезу ностальгии пустил.

Facebook скорее мёртв.

Discord огорожен и очень недружественен к любым ссылкам. Полон попсовых серваков. Но можно найти хорошие ламповые сообщества с отзывчивыми модераторами, большое им спасибо за работу.

Как искать чаты/группы для раскидывания анкеты в Telegram я не понял :-D

Посмотрел на форумы и чаты Steam — они скорее мертвы.

Инфлюэнсерам, стримерам не писал.

### Реклама на Reddit

Запускал как страховку — боялся не набрать достаточное количество респондентов. Достаточность мерил на глаз, статистических расчётов не делал.

<!-- TODO: link to a vision documents post -->
<!-- Так как текстовые посты на Reddit нельзя продвигать с оплатой за клик, пришлось взять [картинку из vision-документов]{post:making-a-fictional-universe-month-2}. -->

Таргетировал на конкретные большие subreddits, где не мог сделать пост по правилам сообществ.

Результат превзошёл ожидания. Теперь это мой [самый залайканый пост на Reddit](https://www.reddit.com/user/Tiendil/comments/1aklobf/im_making_a_game_where_you_play_as_the_chief/) — 58 лайков :-D

Навскидку, реклама привела от 30% до 50% респондентов. С ценой за ответ ~1$ плюс-минус. Но, как можно видеть по статистике, переходов на анкету было значительно больше, чем заполненных анкет — много людей отваливается.

/// brigid-images
src = "./images/reddit-ads-statistics.png"
caption = "Статистика рекламы на Reddit"
///

Что я вынес из опыта рекламы:

- Реклама с включёнными комментариями рулит, если вы готовы на них отвечать. Обязательная опция для инди разработчиков. Это даже пользователи в комментариях отмечали.
- К ИИ арту, сделанному с минимальным старанием, люди относятся понимающе. Но есть небольшая доля негативных комментариев на эту тему.
- Цена за клик удивительно низкая (?), что круто.
- По-моему, пара человек зафоловила меня по итогам рекламного поста.
- Буду пользоваться дальше.

## Методика очистки данных

Хочу поблагодарить всех, кто выбирал свободный вариант ответа и писал свои мысли. Я все их прочитал и сделал кучу заметок!

На момент закрытия анкеты было получено 363 ответа. После нормализации и очистки данных осталось 304.

Ссылка на очищенные обезличенные (анонимизированные) данные будет в конце поста.

### Нормализация

Задача нормализации — подготовить данные к анализу, убрать неоднозначности, привести к стандартным форматам.

- Все ответы приведены к стандартным текстовым или числовым значениям.
- Все колонки ответов с выбором нескольких вариантов разбиты на независимые колонки, по колонке на вариант, со значениями 1 и 0.
- Все названия колонок заменены на идентификаторы:
  - `q_<short_question_id>` для вопроса с одним вариантом ответа.
  - `q_<short_question_id>#<short_answer_id>` для каждого варианта ответа в вопросе с выбором нескольких ответов.
- Все свободные ответы со смыслом «всё из перечисленного», «не могу выбрать», «ничего из перечисленного» трактуются как «ничего не выбрано».
- Свободные ответы, написанные с позиции разработчика игр, игнорировались, так как ожидается именно личное мнение о том что нравится, а не профессиональное «как правильно делать».
- Некоторые свободные ответы можно было конвертировать в несколько предопределённых. Это не делалось, так как нет времени писать код, а таких ответов только 6.
- Для всех остальных свободных ответов выбирался наиболее близкий вариант из предложенных в вопросе вариантов. В некоторых случаях добавлялся новый вариант ответа. Например, в случае тактических игр.

В вопрос `Which kind of strategy games do you like the most? Select up to four items.` добавлен вариант `tactics`.

В вопрос `How do you know about new games to play?` добавлены варианты: `game_stores`, `video_services`, `free_search` (в Google), `do_not_search` (никогда не ищу).

В вопрос `Maximum size of your news agency` добавлен вариант `small_or_automanage` для ответов в духе «если с автоматизацией, то большой размер, иначе маленький», и «если будет большой размер, нужна автоматизация, чтобы защититься от микроменеджмента».

### Очистка

/// brigid-images
src = "./images/honesty.png"
caption = "Поразительно много людей не готовы честно отвечать на вопросы."
///

Задача очистки — убрать некорректные наборы данных — анкеты, заполненные плохо в шутку или сознательно. Конечно, нельзя на 100% определить, как человек относился к заполнению анкеты. Но можно, с помощью эвристик, выбрать анкеты, которые с большой вероятностью заполнены плохо.

Для этого были добавлены вопросы:

- `Are you answering this survey with honesty?` — вопрос на внимательность, выявление неуверенных респондентов, шутников. Кроме того, ответив верно на этот вопрос респондент берёт на себя обязательство отвечать верно в будущем. Добавил немного психологии :-)
- `Are you still with us? Select the correct answer for 2+5 =` — отсеиваем заснувших или прокликивающих респондентов. Странно, но тут было значительно меньше неправильных ответов, чем в первом вопросе.

Все ответы не равные `Yes` и `7` приводили к исключению анкеты из итоговой выборки.

Кроме того, исключались следующие анкеты:

- Слишком большой или слишком малый возраст (2 года, 100 лет).
- Чрезмерно шутливые или агрессивные свободные ответы («продаю наркотики», расистские высказывания, etc.).

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
