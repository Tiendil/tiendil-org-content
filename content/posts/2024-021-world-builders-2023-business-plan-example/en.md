---
title = "Preparing a business plan for a game on Steam"
tags = ["practice", "theory", "development", "gamedev", "monetization", "business", "interesting", "best", "world-builders", "tutorial"]
published_at = "2024-08-15T12:00:00+00:00"
seo_description = "An example of developing a business plan for a game on Steam with a description of logic, calculations, and remarks."
seo_image = "./images/cover.jpg"
---

/// brigid-images
src = "./images/cover.png"
caption = "Earning millions is easier than ever, I'll tell you how :-D"
///

When I posted my [final presentation]{post:@choose-nearest-language:world-builders-2023-final-presentation} ([slides](https://drive.google.com/file/d/1BUhTWCW9YysP0ZCUrIoFbmqXDa-Fz946/view?usp=sharing)) for [World Builders 2023 schooll]{tags:world-builders}, I promised to tell how I made a roadmap and a financial model for the game. So, here they are.

At the end of this post, we will have:

- A brief strategy of our company: what we do, how, why, and why.
- A table with our lighthouses — successful games that are roughly similar to what we want to make. Similar in gameplay, team size, budget, etc.
- A composition of the team we need to assemble.
- A roadmap — a development plan for our game.
- A rudiments of our marketing strategy.
- A financial model — how much we will spend, how much we will earn.
- A large number of my caveats throughout the post
- Jokes and ~~I hope~~ witty remarks.

All the final documents can be found [here](https://drive.google.com/drive/folders/11EkcbEicQkSM-08FFh-Bx43gH7SuVfsT?usp=sharing).

<!-- more -->

## Disclaimer

/// attention | Attention!
Following advices in this post and my logic in a whole is strictly on your conscience and responsibility. Think with your head before copy-pasting.
///

In case you lose millions of dollars following this post, and gloomy guys come to you with questions, please do not redirect them to me. Take responsibility with your head held high, even if your legs are already in concrete. Just kidding, do not deal with non-specialized investors, and your health will be fine.

Here is why you should critically look at this tutorial:

- I'm not a professional businessman. I had a business, and I spent more on it than I earned.
- This is the best of two business plans I've ever made. The fact that it is the best does not cancel the fact that it is the second.
- I have not yet received money for it and even the person who is looking for investors is not me. So I do not know how investors will react to these calculations.
- This business plan was prepared as part of my studies, not as part of "I put my soul into opening my company and investing all my time and resources into it."
- I is possible to make it 100500 times better, but I did not. Pa-ra-pa-pam. Because there was no time, and sometimes I was lazy.

## Iterative development

During the reading, it may seem that all the work can be done sequentially from beginning to end. This is not the case. I post-factum organized everything into a narrative form so as not to make you jump chaotically between documents.

/// note | Move in a spiral
While developing your business plan, you will find mistakes in your logic, in calculations, in data, in everything. You will forget different things and then remember them. So you will have to jump between different documents, iteratively adaping them to each other's constraints. This is normal and should be so in any healthy development of a complex thing.

But if you don't do it this way and try to force your way through, you will definitely make a mess. ~~Not that I didn't make a mess.~~
///

So.

## Define company strategy

Imagine, for some reason, you've decided to make a game for ~~the indie developers graveyard~~ Steam. And it's a single-player sandbox strategy game (see [presentation](https://drive.google.com/file/d/1BUhTWCW9YysP0ZCUrIoFbmqXDa-Fz946/view?usp=sharing) if your are interested). Maybe with multiplayer, but you're not sure yet.

Listing the possible reasons for these decisions is beyond the scope of this essay.

For example, if you focus on earning money (why then go into gamedev?), you should find reports on different platforms, see which genres make money on which platform, evaluate the average team size, investments, and development time, and make a weighted decision to create a free-to-play mobile MMORPG for low-grade mobiles in the African market or something like that. Just in case, [I'm serious about Africa](https://www.statista.com/outlook/dmo/digital-media/video-games/africa).

/// note | Why I decided to do what I do

I chose the entertainment sphere because the school is about making something in this area.

Games (not comics, movies, books, etc.) were chosen because I have good expertise in [gamedev]{tags:gamedev}, the school's main expertise is there too, most residents decided to make games. I didn't want to break away from the team and spend more time than I was willing to spend.

Mobile games are a [simulacrum](https://en.wikipedia.org/wiki/Simulacrum) — [a form triumphing over conten]{post:@choose-nearest-language:one-form-two-products} with a marketing budget larger than the development budget. Not interesting. It's funny, but in our final financial plan, the marketing budget will also be larger, but, of course, it's different :-)

VR, consoles, and other things are more complex (for me) in terms of technology and game design.

PC platform remains, dominated by Steam.

Strategy and RPG are the genres in which ~~I played the most~~ I have the most expertise and which I like. Plus, they allow to reveal the world better. Revealing the world is one of the school's requirements for the product.

[MMORPGs]{tags:mmo} are also interesting to me, but my view on them is radically different from the view of any person similar to an investor, so not this time.

In my opinion, it is much easier to make a good strategy (even with RPG elements) than a good RPG. Because making an RPG with a linear plot is not fun, and the development of a non-linear plot makes me tremble with combinatorics and the pain it will cause.
///

## Choosing ~~monetization~~ the main financial flow

There are several approaches to monetizing games on Steam:

1. Through major releases.
2. Through selling DLC — [Downloadable Content](https://en.wikipedia.org/wiki/Downloadable_content).
3. ~~Through microtransactions~~

In my world model, the company will aim for one thing and use the rest as an additional source of income. If you try to catch two hares, you usually catch none.

I will not consider microtransactions, as in the field of single-player PC games, only AAA studios ~~now how~~ can allow themselves to do so, and only through giant marketing budgets and reputation loss. Indie developers will be buried alive by the Steam community for such a thing. And rightly so. Not to mention, I have no desire to mess up my karma..

Therefore, we have several options for the basic strategy:

1. Make a big release of "My Mega Game". Move on to something else.
2. Make a big release of "My Mega Game". Move on to something similar: make a sci-fi strategy after a fantasy one.
3. Make a big release of "My Mega Game". Make a big release of "My Mega Game 2". Make a big release of "My Mega Game 3". And so on.
4. Make a big release of "My Mega Game". Release a couple of DLCs. In parallel, work on something based on plan 2 or 3.
5. Make a big release of "My Mega Game". Endlessly release DLCs.

In the old days, there was a concept of Addon, but for simplicity, we will consider them the same as DLCs. At least I don't see any significant differences for the purposes of this post.

**Option 1**, in my opinion, is almost never practiced now, in the case of a successful product. Because a lot of resources are wasted: the team's expertise is lost, the code, the pool of freelance specialists, the community — it's not very profitable. But some especially dedicated indie developers might do it just for fun.

**Options 2 and 3** are close, they can even be alternated. They allow you to reuse much artifacts of work than option 1. The downside is a very uneven flow of money, and it's not guaranteed. And that means holes in the budget.

/// attention | Is it easy to repeat success?
If you made a good game once (in ±two years), it doesn't mean that the second time it will be better or the same, or that your players will forgive you for the same mistakes you made the first time.
///

The series of big releases is a risky venture. Therefore, in case of success of the first release, many developers try to release at least a few DLCs to support the development of the next game. Which brings us to the fourth option.

**Option 4** — releasing DLC in parallel with the development of the next game is a good way to reduce risks and make the life of the studio more predictable.

The problem with this approach is that not all teams can make a game that will be relatively easy to modify in an interesting way for players. Plus, not all genres are well suited for DLC.

For example, RPGs make it challenging to add each subsequent DLC because the game follows a single narrative. This makes it difficult to change mechanics (due to campaign balance) and to extend the story (since good games are released with a complete and consistent storyline).

/// hint | DLC as separate companies in RPG
It's strange, but I can't remember any RPG where separate campaigns were released as DLCs. Aka with stories that are not related to the main plot and that need to be played with a new character.

I think it would significantly simplify the lives of developers. And it would be much more interesting for me as a player to create a new group six months to a year after the first playthrough, rather than remembering the plot and the mechanics of 100 abilities in the old save.
///

But if we don't have such problems, we can look at **option 5** — replacing the main money flow from the releases of new games to the releases of DLCs. I call it the [Paradox](https://www.paradoxinteractive.com/) way because they are the best at it, as I see it.

The first release still brings a significant share of income, but the development focus is initially on the production of DLCs, which eventually outweighs the profit from the first release.

/// note | **Option 6** — endless development of the base game
There are a few games, for example, [No Man's Sky](https://store.steampowered.com/app/275850/No_Mans_Sky/), [Stardew Valley](https://store.steampowered.com/app/413150/Stardew_Valley/), developers of which just continue to polish the base game (without DLCs) and continue selling it.

It's incredibly cool, the developers deserve all sorts of praise. But, in my opinion, such a decision is made when you have already hit the target. Not even hit the target, but, like Robin Hood, split the arrow in the bullseye. This decision can be made after the release of the first version when you already have money, a growing community, and you see THE POTENTIAL.

I can not recommend building a business plan based on such an optimistic scenario.
///

### Massprodusing DLCs

Efficient, well-organized production of DLCs is great for two reasons.

**Firstly**, it forms a strong developing ecosystem uniting the company and the player community:

1. With each released DLC, you improve the base game, tune it to a specific niche, and eventually become a monopolist in it.
2. Improved base game continues to be bought by players for whom it was not so good before. Therefore, your community continues to grow for a long time after the release.
3. A strong community provides quick and high-quality feedback for your decisions, leading to the release of better DLCs. Good DLCs improve the game. Improved game attracts people to the community. The community provides even better feedback.

/// brigid-images
src = "./images/dlc-feedback-loop.png"
caption = "This is how I see it. Money, in fact, is also a form of feedback."
///

**Secondly**, you get a predictable cash flow:

1. The period between major inflows decreases from 1-2 years to 3-6 months.
2. The risks associated with errors are reduced. In case of a failed release, studios often close. In case of a failed DLC, you release the next one. The studio lives as long as it can learn from its mistakes.
3. You sell DLCs not to random people, but to your players. This makes marketing cheaper and income more predictable. You know how many people play your game, what percentage bought the previous DLC, so you can estimate how much money the next one will bring.

However, there are downsides:

- It works not with all genres. I think only with strategies and maybe sandboxes.
- The first release still has to be quite noticeable and high-quality to form the core of your community. Paradox can afford to release mediocre products (judging by the reviews) and then polish them. But this is more of an exception, they are forgiven.
- You should know how to make games and how to listen to players. Not everyone can do this, and not everyone wants to.

Since we are making both a strategy and a sandbox, and in a free genre (public opinion simulation), we can risk and aim for the fifth option. In case of problems with organizing pipeline for DLC production or with quality, we can always switch to the fourth option.

## Early Access

An experienced developer may have noticed that I have bypassed Early Access.

I did this for several reasons:

- Now it is de facto standard. There is no point in skipping Early Access. The earlier you do Early Access, the earlier you get [feedback from the universe]{post:@choose-nearest-language:life-and-work-with-mistakes}, the earlier you fix mistakes, the better the game will be.
- From my point of view, what exactly to release in Early Access is defined not by monetization but by marketing, team capabilities, and investors' wishes.

There are two poles:

1. Full release in Early Access. We release what we would release in a regular release, only now we are forgiven more bugs, and the team is calmly working on the day-one, week-one, month-one, year-one patches. When everything is sold, we make a release to highlight the game for players who, for some reason, missed Early Access.
2. "Quiet" release in Early Access. We release a consistent integral game but significantly cut in features. Based on players' feedback, we work hard to polish and improve the game. When the game is ready, we make a "loud" release.

In my opinion, the second approach is unconditionally more effective, as it provides feedback much earlier, which inevitably increases the quality of development at its final stage. If the team is ready to hear feedback, of course.

But not everyone can afford this:

- There is a risk of wrongly defining what a "minimal integral game" is. If you release the wrong thing, you will quickly fall into the purgatory. If you have financing by rounds, you may not receive money for the final development stage.
- Your game may be initially designed minimally, for example, due to budget constraints. That is, you will have nothing to cut from it.
- Marketers or investors will shift the development schedule so that you simply cannot release with the necessary set of features: "full release by Christmas or death."

## Итоговая стратегия

1. Мы делаем стратегию-песочницу под Steam.
2. Мы ориентируемся на длительный выпуск большого количества DLC.
3. Мы ориентируеся на «тихий» выход в Early Access, культивацию сообщества, активную эксплуатацию обратной связи от него и громкий релиз.
4. Если выпуск DLC окажется недостаточно финансово эффективным, мы переключаемся на разработку нового продукта, с использованием существующих наработок, подерживая его выпуском нескольких DLC к первой игре.

На основе планов выхода в Early Access и понимания геймдева мы можем описать крупные этапы разработки нашей игры.

/// brigid-images
src = "./images/roadmap-without-numbers.png"
caption = "Слайд из презентации. Числа закрасил — на текущем этапе у нас их нет. Красным прописана главная цель каждого этапа. Под ней краткая расшифровка."
///

## Roadmap

Теперь нам надо оценить объём работы. Для этого мы должны развернуть этапы разработки в конкретные крупные задачи и оценить время, необходимое на их выполнение.

Итоговый Roadmap вы можете найти по [ссылке](https://docs.google.com/spreadsheets/d/11D4wl-dk4eLU4Jj3vVnQQY7TurMW8eC_nHzTexP7wgY/edit?usp=sharing).

Roadmap состоит из трёх таблиц. Для удобства я выделил цветом их заголовки:

- Красная таблица — все крупные задачи, которые мы должны сделать.
- Синяя таблица — объём задач по трекам и этапам.
- Зелёная таблица — итоговая оценка времени на каждый этап.

Красную таблицу мы заполняем.

Синяя и зелёная таблицы рассчитываются полуавтоматически: часть значений мы задаём, часть берём из других тиблиц. Синяя считается по Красной, Зелёная — по Синей.

### Красная таблица

Пример из начала таблицы, если вам лень открывать оригинал:

Stage  | Epic                       | Feature                                                | Track       | Estimation |
------ | -------------------------- | -------------------------------------------------------| ----------- | ---------- |
Alpha  | Game skeleton              | —                                                      | development | 10         |
Alpha  | Game design simplification | We should simplify game design, comparing to prototype | game design | 2          |
Alpha  | Game design simplification | We should simplify game design, comparing to prototype | development | 5          |
Alpha  | Base user interface        | User journey specification                             | game design | 3          |
Alpha  | Base user interface        | UI Schemas                                             | game design | 4          |
Alpha  | Base user interface        | Game Sketches                                          | art         |            |
Alpha  | Base user interface        | Sketches with GUI                                      | art         |            |
Alpha  | Base user interface        | Implement base UI                                      | development | 10         |

Колонки:

- `Stage` — этап разработки, на котором мы должны выполнить задачу.
- `Epic` — крупный кусок работы, который мы делаем всей командой.
- `Feature` — кусок эпика, который делают конкретные специалисты, например, разработчики или дизайнеры.
- `Track` — какие специалисты делают эту задачу: разработчики, дизайнеры, маркетологи, etc. Почему колонка называется `Track` объясню ниже.
- `Estimation` — наша оценка времени на выполнение задачи.
- `Comments` — любые дополнительные комментарии.

#### Что такое трек

В проекте всегда можно выделить несколько потоков задач, которые хорошо бы (но не всегда возможно) выполнять всегда, например, каждый спринт брать по одной задаче. Иначе какая-то часть проекта будет деградировать.

Самое простое из геймдева, это треки разработки, игрового дизайна, художественного оформления.

/// note | Части проекта, оставленные без внимания, деградируют
Если мы в какой-то момент решим, что по геймдизайну мы всё сделали, а разработчикам ещё пару месяцев пилить код, то за эти пару месяцев геймдизайн (реальный в имплементации игры, не тот, что в голове геймдиза) деградирует, а не останется таким же, как может показаться.

Так как модель игры в коде изменится (накопит ~~ошибки~~ расхождения), а модель геймдизайна в документации и головах геймдизов останется старой.
///

Поэтому, **при идеальном ведении проекта с неограниченным бюджетом**, по каждому треку всегда что-то делается, чтобы проект рос равномерно.

Обращу внимание, что не надо путать треки с ролями, должностями, компетенциями. Выше был приведён пример высокоуровневых треков. Вот для примера более специализированные треки для веб разработки:

- разработка бизнес-фич;
- улучшение контролируемости проекта: метрики, логи, тесты;
- контроль безопасности проекта;
- улучшение производительности.

Бинзнес ~~всегда~~ обычно грешит тем, что игнорит задачи с не-самых-обязательных-и-заметных треков, которые не-приносят-value-напрямую.

Например, не одобряет задачи по улучшению контролируемости проекта, потому что «сейчас и так всё ок». Но фишка в том, что долг по треку растёт как снежный ком, снежинка за снежнкой, если не платить его, то в какой-то момент приходит беда, все фичи откладываются в пользу срочных исправлений через костыли, что приводит к существенному нарушению планирования того же бизнеса и, до кучи, к глубинной деградации проекта, которая через время ещё сильнее рушит планирование и так по кругу.

Поэтому задача лидера проекта в том, чтобы поддерживать активными все треки.

Соответственно, начиная делать таблицу, я решил расписывать задачи именно по трекам, предполагая что:

- перечень треков определится по ходу заполнения;
- на каждом этапе на каждом треке будет какой-то объём работы.

По факту, можно заметить, что именно в нашем конкретном случае можно было писать должности. Но, если бы проект был больше, то треки были бы не такими общими. Например, геймдизайн мог разделиться на треки левел-дизайна, механик и нарратива.

Также нет гарантии, что по мере разаботки продукта и становления команды, мы не захотим увеличить детализацию наших планов.

#### Как выделять задачи

Самое главное — чувствовать меру. При всём желании мы не можем знать весь перечень эелементов интерфейса, звуков, механик и чего угодно в финальной игре. Поэтому нет никакого смысла его составлять.

Вместо этого надо набрасывать работу крупными кусками, ориентируясь на здравый смысл и собственный опыт.

Если у вас нет опыта, используйте только здравый смысл :-) Потом найдите опытного товарища и попросите его проверить вашу работу. Делать наоборот (искать человека сделать эту работу сразу за вас) не могу рекомендовать, так как человек уйдёт, а вы останетесь с артефактом, который не понимаете.

Делегировать накидывание задач человеку из команды (который подписался, что будет с вами и дальше), конечно, можно. **Ещё круче, делать это всей командой.** У меня команды нет, поэтому делал сам.

В нашей стратегии, для кажого этапа разработки мы картко сформулировали, что должно получиться в итоге.

Например, в нашем случае для Alpha версии:

- Цель: `Implement core game mechanics.`
- Описание результата: `The PC game where you can play 1 game session and have some fun.`

Зная, что за игру мы делаем, мы можем определить что в ней должно быть для завершения этого этапа:

- Минимальное описание геймдизайна.
- Минимальный интерфейс пользователя.
- Зачатки базовых механик. В нашем случае карта, каналы распространения новостей, расследование событий.
- Какой-то контент.

Эти задачи мы должны сделать всей командой, но каждая из них содержит разный объём работы для разных специалистов. Поэтому разложим их на треки.

/// note | Почему недостаточно одних эпиков
Может показаться, что для roadmap достаточно прописать только эпики. Дескать мы ж работаем командой, поэтому сначала всей командой сдлаем один эпик, потом второй и так далее. Но это не так.

Каждая игра требует уникального количества работы по разным трекам. Где-то надо больше графики, где-то — игровой логики, где-то ещё чего-то.

На примере карт:

- Есть игры в которых очень красивые карты, но за ними мало логики — они просто картинки.
- Есть игры со сложной логикой карт: масштабированием, сменой режимов отображения, фильтрами, кнопками и ползунками.
- А есть игры, в которых карта отображется не через графику, а [через звук](https://store.steampowered.com/app/437530/A_Blind_Legend/), и вам нужен будет звукоинженер, а не художник.

Соответственно, каждый трек будет иметь свой объём работы и потребуется такая команда, которая бы прошла по всем трекам без простоя (траты денег впустую). Например, если по арту у вас будет работы `x`, а по разработке — `2*x`, то вам желательно иметь двух разработчиков на одного художника.

Поэтому нам надо считать объём работы по каждому треку.

Но, как и в остальном, нужно знать меру. В некоторых случаях часть треков можно опустить.

Например, где-то на середине проработки roadmap я увидел, что объём работы для разработчиков и геймдизайнеров значительно больше работы для любого другого трека. То есть именно они будут ограничивать скорость разработки, а на остальные треки можно нанять по одному человеку. Поэтому я стал меньше времени тратить на проработку некоторых задач.
///


Например, вот мы знаем что нам нужна карта в игре.

- Какая это будет карта? А кто же его знает. Поэтому мы выделяем подзадачи на исследование сразу по двум трекам:
    - как карта должна работать в геймдизайне;
    - как карта должна выглядеть.
- Конечно, нам надо реализовать карту в коде. Поэтому у нас появляется третий трек — разработка.
- Было бы круто иметь процедурную генерацию карты. Но в Alpha версии она определённо не нужна, так как не соответствует цели разработки. Поэтому эту идею мы выносим в отдельные куски работы и помещаем на этапы разработки Beta и Early Access версий.

/// attention | Обратите внимание
Мы не прописываем что конкретно хужожник должен нарисовать (сколько скетчей, спрайтов, кнопок) или какие кнопки и механики должен запрограммировать разработчик.

Детальное описание задач будет нужно уже на этапе разработки, когда вы будете точно знать возможности своей команды и все вместе будете детально планировать работу.
///

Кроме прямых задач на разработку, есть задачи невидимые со стороны, но тоже обязательные. Нельзя о них забывать. Вот примеры из моего roadmap:

- Перенос логики игры из прототипа в реальный проект. Необходим, так как прототип разрабатывался на технологиях, удобных для прототипирования (web), а не для игры в Steam.
- Разработка инструментария, который должен помогать геймдизайнерам работать быстрее.
- Плейтесты в конце каждого этапа и доработка игры по их результатам.
- Разработка QA подходов для оценки качества контента. В моей игре будет процедурная генерация историй, поэтому необходима возможность оценить нижнюю границу их качества. Достаточно ли они разнообразы, затрагивают ли всех NPC, и так далее. Другими словами, нужно защитить себя от случайного тотального факапа, который не заметит никто из разработчиков, потому что разработчики не могут гонять полные игровые сессии целыми днями (им работать надо), из-за чего им сложно замечать статистические явления.
- Проработка мира, в котором происходт игра. Без цельного контекста, геймдизайнерам и художникам будет сложно согласовывать свою работу друг с другом.
- Проверка и настройка разнообразия в игре. Мы делаем игру про современный мегаполис, поэтому у нас должны быть представлены люди разных рас, взглядов, возможностей.
- Туториал.
- Создание Newspedia (по аналогии с Civilopedia в серии Civilization). В игре будет много нюансов, нужно помочь игрокам ориентироваться в них.
- Задачи на формирование сообщества и работу с ним.
- Инфраструктура для отслеживания ошибок и метрик игры.
- Что-нибудь прикольное для Delux версии, которую мы будем продавать чуть дороже.
- Поддержка модов.
- Адаптация для людей с ограниченными возможностями.
- Вики для сообщества.

#### Оценка задач

Оценка задач — вопрос сложный и запутанный. Конкретный подход зависит от вашего опыта.

Можно выделить два подхода:

- Оценка в story points — абстрактных единицах сложности. Например, вы говорите, что самая простая задача стоит одно очко, после чего все остальные задачи оцениваете пропорционально ей. Когда всё оценено, переводити очки во время по какому-то курсу.
- Оценка сразу в реальном времени.

/// attention | Оценка происходит в рабочем времени, не в календарном
В календарном месяце ±30 дней, в рабочем ±20. Зарплату вы платите за календарные месяцы, а работа двигается по рабочим. Поэтому последней операций в расчёте суммарного времени будет перевод рабочего времени в календарное. У меня это сделано в Зелёной таблице.
///

Для себя работу я обычно оцениваю в «идеальный рабочих днях» (когда никто и ничто не отвлекает). Этот же подход выбрал для roadmap. Но **для совместной оценки лучше использовать story points.**

### Синяя таблица

После того как мы рассписали всю работу, мы можем узнать сколько времени займёт каждый трек на каждом этапе разработки. Это позволит нам подобрать количество сотрудинков на треки так, чтобы равномерно двигаться по ним.

Для этого мы группируем Красную таблицу по тройке значений `этап + эпик + трек` и суммируем рабочее время в них.

 Stage        | Track       | Sum     | Workers   | Workdays | Work Months |
--------------|-------------|-------- | ----------|----------|------------ |
 Alpha        | development | 82      | 1.4       | 59       | 3           |
 Alpha        | game design | 56      | 1.4       | 40       | 2           |
 Beta         | development | 151     | 2.25      | 68       | 3.4         |
 Beta         | game design | 85      | 2.25      | 38       | 1.9         |
 Early Access | development | 165     | 2.25      | 74       | 3.7         |
 Early Access | game design | 97      | 2.25      | 44       | 2.2         |
 Release      | development | 150     | 2.25      | 67       | 3.4         |
 Release      | game design | 114     | 2.25      | 51       | 2.6         |

/// attention | Внимение!
В моей Синей таблице есть только треки разработки и геймдизайна. Это не значит что изначально там были только они! Таблица уже отфильтрована по самым значимым трекам, после того, как стало ясно, что по остальным работы значительно меньше.
///

Колонки:

- `Stage` — этап разработки.
- `Track` — трек.
- `Sum` — общий объём работы по треку в днях.
- `Workers` — количество сотрудников, которые будут на треке на этом этапе. Дробная часть — это доля моего времени, которое я смогу выделять на помощь. Как подбирать количество сотрудников на треки расскажу ниже.
- `Workdays` — количество рабочих дней на человека.
- `Work Months` — количество рабочих месяцев, которое займёт трек.

Всё время я перевожу в рабочие месяцы, так как расчёты очень приближённые и далее никому «точное» количество дней будет не интересно.

### Зелёная таблица

Синяя таблица даёт нижнюю (оптимистичную) оценку длительности каждого этапа для нашей команды (про которую поговорим чуть позже).

Задача зелёной таблицы — перевести оптимистичную оценку рабочего времени в реалистичну оценку календарного времени.

| Stage        | Max | Forgotten Work % | Mistakes Fixing % | Learning %         | Team Lubrication % | Vacations %   | Expected Work |
|--------------|-----|------------------|-------------------|--------------------|--------------------|---------------|---------------|
| Alpha        | 3   | 0.1              | 0.05              | 0.15               | 0.1                | 0.08          | 5             |
| Beta         | 3.4 | 0.2              | 0.05              | 0.1                | 0.05               | 0.08          | 6             |
| Early Access | 3.7 | 0.3              | 0.075             | 0.05               | 0                  | 0.08          | 6             |
| Release      | 3.4 | 0.4              | 0.1               | 0.025              | 0                  | 0.08          | 6             |

Для этого мы:

- Время каждого этапа приравниваем к длительности максимального трека.
- Увеличиваем его на разные умные коэфициенты.
- Округляем вверх, так как в разработке софта нет предела пессимизму.

Колонки:

- `Stage` — этап разработки.
- `Max` — длительность этапа, равна длительности максимального трека.
- `Forgotten Work` — наша оценка доли работы, которую мы забыли для этапа. Коэфициент возрастает, так как первые этапы мы видим лучше, чем последние. Работа на последних будет сильно отличаться от плана из-за накопления ошибки в нашей модели мира и улучшения нашего понимания его же.
- `Mistakes Fixing` — ожидаемое дополнительное время на исправление ошибок. С учётом вашей компетенции и **ожидаемой компетенции команды**.
- `Learning` — затраты на обучение команды. Не бывает такого, что команда сразу умеет всё, что вам надо. Обазятально нужно будет учить новые инструменты, подходы, теории, etc.
- `Team Lubrication` — штраф на время срабатывания команды. Людям нужно время, чтобы научиться работать друг с другом.
- `Vacations` — вы же не забыли про отпуска и болезни? Правда-правда? `0.08` в таблице — это примерно `1/12` года.
- `Expected Work` — округлённая вверх оценка времени на этап.

/// attention | Внимание!
Ожидаемая компетенция команды должна отразиться в зарплатах в финансовой модели.
///

Итого, у нас получается 4 этапа разработки, каждый по полгода — отличный план как ~~убить~~ потратить с пользой два года своей жизни.

Кстати, это не считая DLC. Вопрос сложности разработки DLC в нашем планировании остаётся за кадром и будет определяться требованиями финансовой модели, потому что:

- Сложность их разработки сильно зависит от качества архитектуры игры. Сейчас это непредсказуемо, всё равно, что гадать на печени козла.
- Поскольку мы ориентируемся на длительную монетизацию через DLC, после релиза (итоговые фичи которого можно варьировать довольно гибко) нам надо будет построить конвеер производства DLC, который будет ограничен сверху требованиями маркетинга и свойствами нашего сообщества, а снизу — ограничениями архитектуры и команды. Нам потребуется так планировать фичи каждого DLC, чтобы его разработка влезала в ограниченные временные рамки.

/// note | Разница между разработкой базой игры и DLC
При сильном приближении можно сказать так.

При подготовке базовой игры мы можем торговать время (которое нам дадут инвесторы) на фичи (которые нам надо сделать для цельной игры).

При подготовке DLC мы будем торговать фичи (кандидаты на попадание в DLC) на время (которое нам будет нужно, чтобы вовремя выпустить DLC).
///

## Планирование команды

/// brigid-images
src = "./images/team.png"
caption = "Итоговая картина команды, которую надо собрать. Сам себя не назначишь директором — никто не назначит."
///

Итак, в Синей таблице нам надо прописать количество сотрудников на трек на этап разработки.

Подбирая количество сотрудников мы ориентируемся на следующие соображения:

- На каждом этапе на каждом треке разумно иметь столько сотрудников, чтобы треки занимали примерно одинаковое время.
- Не обязательно сразу нанимать всех. Во-первых, разработка нового проекта всегда стартует с малого фронта работ, когда лишние люди мешают, и только со временем этот фронт расширяется. Во-вторых, это снижает ваши запросы на первые инвестиции. Особенно, если инвестиции предполгаются раундами.

/// note | «Условные» и реальные сотрудники
В таблице мы оперируем «условными« сотрудниками, не реальными.

Собирая команду, мы будем нанимать уникальных людей, а не шестерёнки. Поэтому по мере найма мы должны менять оценки в Синей таблице, отражая реальное состояние команды. Это будет вызывать пересчёт сроков и финансовой модель.

Конечно, можно искать «чистых разработчиков», «чистых геймдизайнеров» и так далее, но это может быть не лучшей стратегией. Особенно, если вы начинающий инди. Куда выгоднее искать [T-shaped](https://en.wikipedia.org/wiki/T-shaped_skills) сотрудников.

- Во-первых, будет проще налаживать коммуникацию внутри команды.
- Во-вторых, команда сможет действовать более автономно, без ~~погонщика~~ менеджера.
- В-третьих, поскольку вы noname команда, такие к вам скорее и пойдут. Узкие специалисты обычно идут в крупные компании, где для них есть узкий и глубокий фронт работ.
///

У меня под рукой команды нет, поэтому я оперировал «чистыми» сотрудниками и просто приплюсовал долю своего времени в нужные графы.

Если же у вас есть команда (или будет), в Синию таблицу разумно добавлять по колонке на сотрудника. Там можно будет точно отражать сколько времени он сможет тратить на какой трек. Это же пригодится и в случае найма «звезды», которая будет работать за пятерых, и стажёра, который сойдёт за половину сотрудника.

Следуя этим соображениям, мы получаем такую команду:

- По два программиста и геймдизайнера, чтобы закрывать основые треки.
- По одному ключевому специалисту, для задач, которых слишком много для аутсорса.
- Найм в два этапа: под старт проекта и под выход на ровную разработку.
- Задачи и специализации сотрудников скорректированы под требования этапов разработки. Например, для Alpha версии нам не нужны вспомогательные утилиты и автоматизация QA, но для ровного хода разработки и нужного качества они обязательны.
- Продюсера нанимаем к Beta версии, так как с синхронизацией пяти толковых ребят я смогу справиться на полставки, а дальше потребуется помощь. Плюс, у меня нет опыта взаимодействия с аутсорсом, было бы круто это делегировать.

## Позиционирование — игры-маяки

/// brigid-images
src = "./images/positioning.png"
caption = "Игры, которым наша игра будет близка. Более подробную «сырую» таблицу можно найти по [ссылке](https://docs.google.com/spreadsheets/d/1kzkX0gXd7RqrkZGUiOPMJvDoo5Swdqa8JfyuBWXYgbo/edit?usp=sharing)."
///

Прежде чем приступить к разработке финансовой модели, нам будет полезно собрать немного инфы про судьбу похожих проектов.

- Во-первых, если нет похожик на ваш продуктов, то это повод крепко задуматься а то ли вы делаете.
- Во-вторых, это даст вам обратную связь по ожидаемым объёму работ и команде. Вы сможете сравнить свои подсчёты с реальными данными.
- В-третьих, это позволит вам прикинуть (с помощью эвристик) некоторые параметры для бизнес модели.

Я выбирал маяки по жанру и значимому опыту, который получают игроки. Тут можно пофилосовстовать и найти кучу альтернатив. Например, раскопать какую-нибудь статистику Steam или подключить ИИ, кластеризацию и прочий data-science.

Какие данные нам интересны:

- Время разработки.
- Размер команды.
- Цена в момент релиза.
- Проданные копии.
- Примерная выручка (revenue).

Большинство из этого приватные данные и никто так просто их вам не даст. Особенно точные значения.

Но точные данные нам и не нужны (типо все предыдущие наши расчёты были точны, ага), а примерная информация, в моём случае, неожиданно легко нашлась в Википедии и новостных ресурсах.

/// hint | Лайфхак
Размер одной из команд я посчитал по количеству лиц на фотке из Reddit.
///

Кстати совет. Если вы собираетесь когда-нибудь в будущем делать игру, но вот не прямо сейчас, начинайте собирать ссылки на интервью и прессрелизы разработчиков. Потом как найдёте.

Для случаев, когда Википедии недостаточно, у нас есть несколько аггрегаторов статистики Steam. Например, [Steam Spy](https://steamspy.com/).

## Маркетинговая стратегия

/// brigid-images
src = "./images/marketing.png"
caption = "Предполагаемые маркетинговые активности. Зелёным выделены очень большие траты, жёлтым — просто большие. Маленьких трат в маркетинге не бывает."
///

Ещё одно важное дело перед расчётом финансовой модели — накидать маркетинговые активности, так как на маркетинг сейчас уходит половина бюджета разработки, а то и больше.

Я опущу общие размышления по формированию сообщества, поиску игроков и тому подобное. Во-первых, про это есть пара слайдов в презентации. Во-вторых, это известная и популярная тема, в интернете полно материалов. Даже у меня [небольшое эссе]{post:@choose-nearest-language:the-game-community-from-the-point-of-view-of-an-independent-game-developer} есть. Плюс, на мой взгляд, все эти соображения скорее определяют философию маркетинга (кого и где искать), чем реальные траты (сколько искать и сколько платить). Нам же интересно сколько платить.

В рамках маркетинга нам важны две вещи.

Во-первых, ключевые события к которым надо готовить маркетинговую активность:

- Выход в Early Access.
- Релиз.
- Выход DLC.

Во-вторых, виды этой активности, у нас это:

- Выпуск сопровождающего видео.
- Привлечение новых игроков.
- Привлечение старых игроков.

/// note | Вернёмся немного в планирование стратегии
Я решил разбить DLC на два типа: платные и бесплатные и чередовать их.

Платное DLC должно быть крутым, его дольше делать и, скорее всего, доля работы для программистов в нём будет больше, чем для геймдизов.

Поэтому, между выпуском платных DLC мы можем выпускать более простые бесплатные. Они помогут нам удержать интерес старых игроков, обогатить базовую игру, привлечь новых игроков и, конечно, загрузить полезной работой геймдизов.

Если посмотреть на хронологию событий в итоговой финансовой модели, то можно увидить, что игроки увидят выпуск DLC раз в два месяца. Но для разработчиков это будут циклы по 4 месяца. Разработка двух DLC будет начинаться одновременно, бесплатное DLC будет готовиться 2 месяца, а платное 4, после чего команда будет переходить на следующую итерацию.
///

В остальном фокус должен быть виден из таблички:

- Для Early Access снимаем геймплей видео и «немного» тратимся на привлечение хардкорных игроков в стратегии, чтобы культивировать из них ядро сообщества.
- На Release снимаем крутое видео с идеей игры и вливаем деньги в широкую аудиторию, чтобы набрать игроков.
- На выпуске бесплатного DLC возвраащаем старых игроков и немного привлекаем новых, целясь на особенности конкретного DLC. Например, если DLC будет вдохновлено X-Files, мы можем запустить компанию нацеленную на фанатов сериала.
- На выпуске платного DLC делаем видео про идею DLC, целимся в старых игроков и немного в новых.

## Финансовая модель

Наконец мы можем заняться самым интересным — подсчётом денег.

Эксельку с расчётами можно найти по [ссылке](https://docs.google.com/spreadsheets/d/1QmU-hp3VN0OsWIZEhlfJnJpUrC9J6nI8KKq-0wHFOMw/edit?usp=sharing).

В ней два листа:

- Детальный помесячный расчёт — для нас и для удобства расчёта.
- Краткая выдержка из первого листа — срез самых важных параметров в моменты ключевых событий разработки — для инвесторов и для красивой презентации.

Второй лист строится автоматическм на основе данных с первого листа.

План построен до выпуска четвёртого платного DLC включительно, но расчитан на чуть больший срок — до конца 4-ого года разработки.

Разбирать буду первый лист, в нём 65 строк. Расчёт идёт сверхну вниз слева направо, поэтому буду просто описывать все строчки по порядку.

Формулы прописывать не буду, их можно посмотреть в оригинальной таблице, но буду описывать идею расчёта.

Описание разобью на разделы по близости данных. В таблице они отличаются цветом фона.

Итак, поехали.

/// attention | Смотрите на модель через внутреннего скептика
Многие значения в этой модели брались не из статистики, а из мнения экспертов (например, преподавателей школы), моего здравого смысла и прочих не обязательно самых достоверных источников.
///

### Шапка

`[1] Year` — Цветовая дифференциация лет разработки для удобства навигации.

`[2] Month`— Порядковый номер месяца, тоже для удобства навигации.

`[3] Milestones` — Важные события в жизни игры. Каждое событие обычно меняет параметры финансовой модели. Например, при начале разработки Beta версии мы увеличиваем размер команды.

/// note | Моменты описанные в `Milestones` важны для инвесторов
По наличию значения в ячейках `Milestones` мы отбираем столбцы таблицы для краткой выдержки модели на втором листе.
///

### Продажи основной игры

`[4] Standard Edition Price $` — Цена базовой версии игры. Её выбираем балансируя между нашей жадностью и ценой продажи игр-маяков на их релизе.

`[5] Delux Edition Price $` — Цена люксовой версии игры, для игроков, которые хотят занести немного больше денег разработчикам. Выбираем чуть дороже цены базовой версии.

`[6] Game Purchases / Month` — Ожидаемое количество органических покупок в месяц. С отголосков маркетинга, работы с сообществом и прочих активностей.

/// warning | Осторожно!
Если вы ничего не делали по маркетингу до релизов, то тут у вас будет 0.
///

`[7] Game Purchases Boost `— Количество покупок игры, которые мы ожидаем от наших маркетинговых усилий. Этот параметр мы не расчитываем, а задаём. **Причины выбора такого подхода и его альтернативы будут разобраны чуть позже**, когда дойдём до расчётов трат на маркетинг.

/// attention | На эти числа легко уйдёт половина вашего бюджета
Чем больше покупок, тем больше прибыль, но тем больше и затраты на маркетинг. Затраты на маркетинг идут до прибыли, а значит увеличивают сумму, которую вы просите у инвесторов, следовательно, уменьшают вашу долю в результате.
///

Выбирая, учитывайте:

- Сколько денег вам могут дать.
- Сколько игроков в выбранном вами жанре на выбраной платформе. Имхо, даже 10% от ЦА — это успешный успех, ориентируйтесь на 1%.

Также обратите внимание, что ваш маркетинг будет приурочен к конкретным событиям. То есть вы будете вливать очень много денег в конкретный месяц, а потом поддерживать какую-то минимальную активность, чтобы подобрать хвост.

`[8] Game Purchases Boost Tail` — Игроки, которые привлекаются как хвост/эхо ваших маркетинговых активностей. Рассчитываю как `1/3` от эффективности маркетинга в предыдущий месяц. `1/3` взял на глаз из графиков SteamSpy (как быстро уменьшается скорость прироста аудитории).

`[9] Game Purchases / Month` — Общее число покупок основной игры в месяц.

`[10] Total Game Owners` — Сколько покупок будет совершено за всё время, включая этот месяц.

`[11] Delux Edition Purchases %` — Доля покупок люксовой версии игры. Взял скромные `5%`.

`[12] Standard Edition Purchases` — Количество покупок базовой версии игры в месяц.

`[13] Delux Edition Purchases` — Количество покупок люксовой версии игры в месяц.

`[14] Standard Edition Revenue` — Сколько заплатят игроки за базовую версию в месяц.

`[15] Delux Edition Revenue` — Сколько заплатят игроки за люксовую версию в месяц.

`[16] Game Revenue`— Сколько заплатят за обе версии в месяц.

`[17] Total Game Revenue` — Сколько заплатят за обе версии за всё время, включая этот месяц.

### Продажи DLC

Все платные DLC описаны в рамках одной логики, поэтому разберу только строки первого DLC.

`[18] Paid DLC 1 Convertion Rate` — Наша оценка доли владельцев базовой версии игры, которые купят DLC. Оценку брал погуглив новости, но информации не то, чтобы много. `30%` конверсии — это амбиционзная цель.

`[19] Paid DLC 1 Purchases` — Количество игроков, которые купят DLC. Там немного запутанная формула, но её суть в том, чтобы считать новых игроков, приходящих каждый месяц и при этом не считать людей дважды.

`[20] Paid DLC 1 Price` — Цена за DLC. Балансируем между жадностью, индустриальными стандартами и вашим представленим об объёме DLC. Для определения допустимого интервала цен я просто глянул цены DLC от Paradox. Плюс, первое DLC будет «на пробу» и какое-то время уйдёт на решение неизбежных технических проблем, поэтому DLC может быть меньше и цену ставлю меньше.

`[21] Paid DLC 1 Revenue` — Ожидаемый доход от продажи DLC в месяц.

`[22] Total Paid DLC 1 Revenue` — Ожидаемый доход от продажи DLC за всё время, включая этот месяц.

/// note | Прочие DLC отличаются
- Датой начала продаж, что логично.
- Ценой DLC. Я вижу разумным варьировать цены циклически.
- Ожидаемой конверсией. Данных у меня нет, но думаю она должна уменьшаться со временем. В моём случае я опускаю её с `30%` до `20%`.
///

### Расчёт денег, которые мы получим от Steam

Конечно, все деньги, которые мы насчитали мы и близко не увидим. В этой части мы считаем что может придти к нам на счёт.

`[38] Raw Gross Revenue` — Суммарный доход от продаж игры и всех дополнений за месяц.

`[39] Expected Discounts Loss` — Ожидаемые «потери» от скидок в Стиме.

/// note | Как мы учитываем скидки
К расчёту скидок может быть два подхода.

1. Мы считаем покупки на скидках как отдельный тип покупок, а-ля DLC. В теории, особенно если у вас есть доступ к статистике, это даст более точные результаты. Минусом тут будет сильное раздувание таблицы.
2. Мы обращаеся к экспертному мнению, которое говорит, что на скидках мы будем «терять» `X%` от возможного дохода. Поскольку секретной статистики у нас нет, а эксперты школы есть, это наш путь.

«Терять» тут в кавычках, очевидно, что это скорее «находить» (так как без скидок игру и не купили бы), но будем использовать термин «терять», он лучше соответствует логике расчёта.

Так вот, на сколько я понимаю, в перспективе на скидках может «теряться» до `50%` возможного дохода. Но такие большие скидки у нас будут не сразу. Поэтому я сделал рост потерь на скидках от `20%` до `50%` с шагом в полгода.
///

`[40] Raw Gross Revenue - Discounts` — Наш доход после учёта скидок.

`[41] Steam Fees` — Комиссия Steam. Стандартные `30%`. Говорят можно договориться, но noname студии это не грозит.

`[42] Revenue After Steam Fees` — Наш доход после комиссии Steam.

`[43] Total Revenue After Steam Fees` — Наш суммарный доход после всех потерь, включая текущий месяц.

### Траты на разработку

Та часть модели, для которой мы так долго считали roadmap и состав команды.

`[44] Team Size` — Размер команды на месяц расчёта.

`[45] Average Gross Sallary $` — Средняя зарплата члена команды.

/// note | Надо ли прописывать зарплаты по должностям?
Не вижу никакого смысла.

Часто roadmap и даже концепцию продукта проще загнуть под команду, чем собрать команду под продукт. Например, когда я работал над [Сказкой](https://the-tale.org), я поменял стилистику игры с юморной на серьёзную, потому что нашёл геймдизов которые круто умели в серьёзные тексты. В случае крупных проектов, это не так актуально, но всё равно следует учитывать.

Утрируя, вы не знаете кто вам подвернётся при найме. Крутой мотивированый спец может повернуть всю вашу разработку в совершенно новое и более крутое русло только за счёт своего опыта и уникального видения. Отбрасывать эту возможность не стоит.
///

`[46] Sallary Indexation` — Индексация зарплат. Думаю, это почти никто не закладывает, а зря. На мой взгляд это обязательный элемент соглашения в наши дни. Так сказать, элемент рабочей этики.

`[47] Final Sallary` — Итоговая средняя зарплата с учётом индексации.

`[48] Team Cost` — Суммарные затраты на команду в месяц.

/// note | На самом деле затрат на команду будет больше
Содержаине организации приводит к огромному количеству непрямых трат: на офис, на бухгалтера, на юриста, etc.

В нашей модели эти затраты не учтены: не ясно ни для какой страны их считать, ни для какой конфигурайции команды (удалёнка, офис, смещанный вариант, b2b или найм, etc.). На момент создания модели не было ясно, будет ли отдельная компания создаваться.

**Это минус нашей финансовой модели.** Но по сравнению с размером трат на маркетинг, «забытая» сумма будет небольшой.

По-хорошему, надо было бы поднять статистику, экспертов и сказать, что «в среднем на поддержание работы компании тратися `X%` от зарплатного фонда».
///

`[49] Average Outsorce Staff` — Количество аутсорсеров, с которыми будем работать. Моя «экспертная» оценка: что-то постоянно будет аутсорсится, но не ясно в каком объёме, скорее всего в небольшом, поэтому `1`.

`[50] Average Outsource Cost` — Ожидаемая стоимость одного аутсорсера в месяц, логика такая же, как и со средней зарплатой команды.

`[51] Outsoursing Cost` — Суммарная стоимость аутсорса в месяц.

`[52] Development Cost`— Суммарная стоимость всей разработки в месяц.

`[53] Total Development Cost` — Общая стоимость всей разработки с начала времён, включая текущий месяц.

### Расчёт маркетинга

Давайте немного отвлечёмся от таблицы и подумаем как мы будем считать маркетинг.

/// attention | Оценка эффекта маркетинга через количество вишлистов

Сейчас модно считать коэфициенты конверсии количества вишлистов Steam в покупки.

Я вижу с этим несколько существенных проблем:

1. Оперируя вишлистами мы усложняем нашу модель. Появляется два неопределённых этапа: набор вишлистов и конверсия их в покупки. Поведение нашего продукта, Steam и игроков на каждом из этапов слабо предсказуемо, ака, случайное. На мой взгляд, модель с двумя «случайными» параметрами будет давать результаты хуже модели с одним «случайным» параметром, которую используем мы.

2. Steam и геймдев в целом — очень динамические среды. Любое обновление Steam легко пошатает сложные модели. Вот, например, недавно улучшили функциональность демо версий, как следствие, поменялась логика продвижения игр, а раздел `New & Trending` полностью изменил своё содеражание — теперь он забит демками. Соответственно, если у вас были данные, например, о стоимости вишлиста в прошлом году, то сейчас они уже не актуальны.

3. Мне не удалось найти достоверных утверждений про «стоимость одного добавления в вишлист», а оценки коэфициентов конверсии из вишлистов в покупку от источника к источнику могут отличаться в 1.5-2 раза. Тем боле, оценки будут отличаться для разных жанров, стилей и размеров игр. Статистики для стратегий не то, чтобы много, скорее нет, потому что самих стратегий мало.

4. По наблюдаемому мной в интернетах, вся движуха с вишлистами выглядит как очередной хайп про очередную серебряную пулю, которая всё порешает.
///

В нашей модели мы выберем самый простой (и от того надёжный) подход — будем напрямую оценивать стоимость привлечения покупателя нашей игры, ака [CPI](https://ru.wikipedia.org/wiki/Cost_per_install).

`CPI` для Steam величина такая же неопределённая, как конверсии в вишлисты и из них, зато:

- Это один параметр, а не два. Меньше эффект накопления ошибки по цепочке, не будет искушения подгонять параметры друг под друга.
- Его проще оценить, достаточно знать бюджет на маркетинг и суммарное количество продаж игры. Эту информацию мы добыли, когда искали игры-маяки.
- `CPI` — глобальное иннериционное явление, он меньше склонен резко меняться, обычно ~~только увеличивается~~ следует долгим глобальным трендам.
- Оценка `CPI` будет точнее конверсий вишлистов, так как напрямую и жёстко ограничивается рынком: бюджетами, готовностью людей вестись на реклмау, etc. Компании, сделавшие плохой маркетинг, уходят с рынка. Если мы будем использовать данные успешных продуктов, мы будем получать относительно реалистичную оценку `CPI`.

`CPI` для базовой игры мы будем оценивать просто:

- Бюджет на маркетинг игр-маяков принимаем равным половине их доходов (revenue).
- Делим бюджет маркетинга на оценку количества покупок, получаем `CPI`.

Наш `CPI` (для базовой игры) установим примерно посередине между играми-маяками. Дополнительно обращу внимание, что мы заложили меньшие продажи, чем у игр-маяков, поэтому и `CPI` может быть чуть ниже. `CPI` растёт по мере охвата целевой аудитории, так как становится сложнее находить новых покупателей.

### Траты на маркетинг

Итак, возвращаемя к самой большой области наших расходов. Согласно финальным расчётам нашей модели к релизу на маркетинг уйдёт раза в 2.5 больше, чем на разработку :-D

/// note | Возможно я недооценил количество маркетологов в команде
Учитывая размеры бюджетов, их может потребоваться больше. С другой стороны, можно попробовать отдать весь маркетинг на аутсорс и ограничиться лидом маркетинга в нашей команде.
///

`[54] Marketing Wishlists Cost` — Оценка минимальной перманентной ежемесячной активности по «лёгкому» пиару игры, чтобы не пропадать с радаров.

`[55] Marketing Videos Cost` — Ожидаемая стоимость разработки видео под конкретные события (релизы). Стоимость минуты видео относительно легко можно нагуглить. А можно даже написать конторам, которые этим занимаются, вам дадут прайс-лист.

`[56] Marketing New User Cost`— Ожидаемая стоимость привлечения новых пользователей — `CPI`.

`[57] Marketing Old User Cost` — Ожидалемая стоимость привлечения старых пользователей к покупке DLC.

/// attention | Внимание, большая неопределённость
Это наш ключевой коэфициент, поскольку мы выбрали монетизироваться через продажу DLC.

Проблема с ним в том, что в отличии от `CPI` для основной игры, непонятно как оценить `CPI` для DLC. Колебания этого значения сильно влияют на модель.

В нашу таблицу внесена экспертная оценка, после моего общения с преподавателями школы.
///

`[58] Marketing Performance on New Users (Game)` — Траты на привлечение новых игроков, в месяц.

/// note | Направление расчёта
Маркетинг можно считать в двух направлениях:

1. Мы просим у инвесторов `X$` в месяц на маркетинг, с учётом `CPI` мы будем привлекать `Y` покупателей.
2. Мы хотим приввлекать `Y` покупателей, поэтому с учётом `CPI` мы будем просить у инвесторов `X$` в месяц на маркетинг.

Я выбрал второй вариант, но скорее из-за личного удобства, а не потому что он более правильный. Смотрите по своим предпочтениям и тому, что вы хотите получить от итоговой модели, какие рычажки хотите крутить.

Рычаг для изменения количества продаж (владельцев игры) выглядит более естественным.
///

`[59] Marketing Performance on Old Users (DLC)`— Траты на привлечение наших игроков к покупке DLC, в месяц.

`[60] Marketing Month Cost` — Все траты на маркетинг в месяц.

`[61] Total Marketing Cost` — Суммарные траты на маркетинг с начала времён по текущий месяц включительно.

### Итоговые суммы

По сути, самая важная часть нашей таблицы — итог всей нашей работы, всех наших исследований и расчётов.

`[62] Month Costs` — Все затраты в месяц.

`[63] Total Costs` — Суммарные затраты с начала времён по текущий месяц включительно.

`[64] Month Gross Revenue` — Наш доход в месяц, после всех приходов и расходов.

`[65] EBITDA`— [EBITDA](https://ru.wikipedia.org/wiki/EBITDA) как она есть — наши деньги до вычета непрямых расходов (налоги, амортизация, проценты, etc). Этот параметр смотрят инвесторы.

## Что делать, когда закончили финансовую модель

После того как вы вобьёте последнюю формулу, растянете колонки на нужное количество месяцев, разукрасите всё, вы посмотрите на итоговые числа и увидите, что там фигня какая-то неприбыльная. Или, наоборот, сильно подозрительно прибыльная.

Это значит, что у вас начинается очень интерсный этап настройки модели, когда вы крутите кучу рычажков (констант в таблице), играетесь с объёмом работ, размером команды, чтобы получить картину, которая будет убедительной для вас и для инвесторов.

Have Fun!

## Сколько времени заняла разработка бизнес-плана

Вместо заключения приведу статистику по времени, которые у меня отняли эти документы.

Конечно, это примерное время, так как я не делал эту работу full-time.

- **Краткая стратегия компании** — стратегию вы продумываете не в какой-то конкретный момент, а всё время пока работаете над концептами, презентациями, и прочим. Потом вы просто записываете информацию, которая уже давно сидит в голове.
- **Табличка игр-маяков** — ±2 дня. Долго пытался понять что и где искать, когда разобрался, пошло быстро.
- **Состав команды** — меньше дня, базовый состав должен быть хорошо виден из Roadmap.
- **Roadmap** — ±2 дня.
- **Зачатки маркетинговой стратеги** — тут те же соображения, как и с общей стратегией.
- **Финансовая модель** — ±3 дня, концепция расчётов несколько раз менялась. Если взять готовую модель, то намного быстрее будет.

На этом всё. Спасибо за ваше время и удачи в геймдеве!
