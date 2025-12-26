---
title = "Results of 2025 for me and my blog"
tags = [ "blog", "practice", "reflection", "results-of-the-year"]
published_at = "2025-12-27T12:00:00+00:00"
seo_description = What I was doing in 2025, how my plans for the past year went, and what are my plans for the coming year.
seo_image = "cover.png"
---

/// brigid-images
src = "cover.png"
caption = "Blog metrics for 2025."
///

The New Year is near, it's time to sum up the results of this year. Let me tell you what I was doing in 2025, how my [plans for the past year]{post:results-of-2024-for-me-and-the-blog} went, and what my plans are for the coming year.

<!-- more -->

## Blog metrics

This is probably the first year when the blog's traffic stopped growing, and may have even declined.

I am not sure about the causes. The engine has only improved over the year — the blog became faster and more accurate. According to Google, the number of impressions in search nearly doubled, the average position in the results improved from 12 to 8, while the number of clicks and CTR decreased. There are two hypotheses:

1. The black magic of search algorithms — according to Google Search Console.
2. The ban of the internet in Russia — judging by per-country traffic statistics — the decline is mostly in Russia.

ChatGPT suggests that the blog may have started to appear for broader/less "my" queries: impressions are growing, the average position is improving, but the content is less relevant to the user which leads to fewer clicks. AI says this is a typical pattern, especially if the content has become better "understood" by the search engine.

The number of subscribers in [the Russian-speaking Telegram](https://t.me/tiendil_org_ru) increased by 27% and now stands at 118 people. The [English-speaking Telegram](https://t.me/tiendil_org_en) is completely inactive, apparently the English-speaking internet works differently. The blog's Discord servers are dead, I'll delete them soon.

## Posts

I've wrote 20 posts this year — closer to my "work" norm than to the "sabbatical" norm. The reason was a spectacular schedule slip in the second half of the year, which I'll explain below.

**The top new posts for 2025**

 # | English version  | Russian version
-- | ---------------- | ---------------
1 | []{post:eu-key-principles-on-in-game-virtual-currencies}  | []{post:@lang=ru:@lang-title=en:harsh-reality-of-gamedev}
2 | []{post:engineering-is-science-is-engineering}  | []{post:@lang=ru:@lang-title=en:sabbaticals}
3 | []{post:automatic-quests-generator} (translation of an old post)  | []{post:@lang=ru:@lang-title=en:vantage-on-management-books}
4 | []{post:feeds-fun-marketing-test}  | []{post:@lang=ru:@lang-title=en:gpt-5-release}
5 | []{post:no-instructions-for-engineering}  | []{post:@lang=ru:@lang-title=en:payment-processors-cancel-games}

**The overall top posts for 2025**

 # | English version  | Russian version
-- | ---------------- | ---------------
1 | []{post:eu-key-principles-on-in-game-virtual-currencies}  | []{post:@lang=ru:@lang-title=en:slay-the-princess-combinatoric-narrative}
2 | []{post:dungeon-generation-from-simple-to-complex}  | []{post:@lang=ru:@lang-title=en:my-gpts}
3 | []{post:slay-the-princess-combinatoric-narrative}  | []{post:@lang=ru:@lang-title=en:dungeon-generation-from-simple-to-complex}
4 | []{post:fun-case-of-speeding-up-data-retrieval-with-psycopg}  | []{post:@lang=ru:@lang-title=en:how-to-design-a-dungeon}
5 | []{post:about-book-harry-potter}  | []{post:@lang=ru:@lang-title=en:julia-experience}

Fun fact:

- The amount of traffic from the AI services increased 11 times: from 7 to 79 (ChatGPT — 50, Perplexity — 29).
- The amount of traffic from DuckDuckGo nearly tripled: from 15 to 46.

**Top 10 countries by unique visitors**

Country  | Unique Visitors
-------- | ----------------
🇷🇺 Russian Federation | 7.5k
🇺🇸 United States | 1.5k
🇩🇪 Germany | 743
🇧🇾 Belarus | 675
🇺🇦 Ukraine | 515
🇬🇧 United Kingdom | 439
🇳🇱 Netherlands | 382
🇰🇿 Kazakhstan | 379
🇵🇱 Poland | 334
🇸🇬 Singapore | 275

The Germany placement is on the high side because I am the most active reader of this blog :-D

## Failed plans

The first half of the year went quite well. The second half turned into an epic failure on all fronts — I should have bragged less in the post about [my sabbaticals]{post:sabbaticals} :-D

There where tree primary problems.

**First**, as a finalization of my research into management theory, I planned to write just two posts. As it turned out, I [wrote five]{post:points-of-view-on-a-product} and have two more planned :-D And this is despite the fact that I specifically combined all [book reviews]{post:vantage-on-management-books} into the single post.

The reflection posts end up long and don't come easy — I didn't expect to accumulate such a volume of thoughts. On the other hand, I like how all these thoughts agree with each other and come together into a coherent picture.

**Second**, I could skip some experiments in [Feeds Fun](https://feeds.fun) and not implement some features, as they seem less important now than at the beginning of the year. This would have saved some time. But this is clearly post factum knowledge.

**Third**, I decided to implement "proper" authentication in [Feeds Fun](https://feeds.fun), which led me to spend 2-3 months diving into complex protocols and sketchy (with all due respect) software. This activity spawned several whining posts ([1]{post:crazy-ory-infrastructure}, [2]{post:cool-open-source-project-for-portfolio}, [3]{post:llm-agents-are-still-unfit-for-real-world-tasks}). Similar functionality could have been assembled ~~out of duct tape and prayers~~ in a month, but I really didn't want to implement security by hand — it's risky. Plus, it was a good opportunity to close this gap in my technical knowledge — the last time I implemented full-fledged authentication was in 2012, and things were different back then.

**Fourht**, I spread myself too thin. There were two main projects this year: Feeds Fun and management books. But besides that, I decided to prototype a game for fun, which I had been working on as part of the [World Builders 2023 school]{tags:world-builders-2023}.

I can not say that I spent a huge amount of time on the game — I do such perversions in the evenings when my brain stops working, but I can still code on reflex. However, some time was lost, partially because not all of development could be done purely on reflex — I had to take days away from the main projects. I estimate the lost time to be about 6 weeks, but it's not time that would have compensated the whole delay on the main projects.

## Analysis of failures

Not a final thoughts. Obviously, I will mull over this situation for a longer time, but for now it looks more like an inevitable delay: I went on sabbatical to do specific things, and these things need to be completed in order to exit subbatical with a positive result.

### Underestimation of time for management books

The knowledge has to be digested. To achieve this, I need to write as many posts as necessary to put my thoughts in order. This is my personal learning process. If I don't go through it, it will end up worse for me and for the people to whom I will try to apply this knowledge.

**Conclusion**: next time, be significantly more pessimistic in estimating the amount of work required to analyze the books I read for learning. Especially when they are stacked together to cover a specific topic.

### Delays in the development of Feeds Fun

I already cut features in Feeds Fun pretty aggressively. Looking back at the experiments from the first half of the year, I could have saved a month or two of work — but that knowledge only exists in hindsight.

From the other side, if at the beginning of the sabbatical (2 years ago) I had decided that I would definitely turn on monetization in Feeds Fun, I could have saved a total of 3-6 months of work by skipping some features, research, experiments.

It looks like I was waiting for some significant failure that would show that it makes no sense to continue working on the project, so I moved slowly, testing hypotheses like "what if it doesn't work out here or there". An epic failure did not happen, but the progress slowed down.

**Conclusion**: be more decisive, do not play "too safe", do not try to "outplay the universe". In fact, this is a big problem of mine: when I plan something on the personal side, I try to account for all possible scenarios, which wastes time. I need to watch myself. Interestingly, this manifests itself much less on the work side — maybe I am more responsible when I spend other people's money.

### Authentication overhead

The situation with the time spent on the authentication research is unpleasant. Partly I brought it on myself, partly —
shit happens. It just so happened that I hadn't dealt with proper authentication for quite a while, which meant I had to absorb a large amount of information at once.

The positive side is that it is a one-time delay, in the future I hope to reuse this knowledge.

One can say that I took the opportunity. Experience shows that taking such opportunities more often brings benefits than harm.

For now, there are no conclusions here — time will show.

### World Builders

Looking back on the whole two years of subbatical, the biggest questionable point is my participation in the World Builders school. The opportunity to participate in it came up just before the start of the sabbatical, and it was already clear then that this activity would not align with my primary plans, thus it carries risk.

Theoretically, if I had ignored the school, I would have won about six months (over two years) — right equal as the accumulated delay time.

However:

- My experience shows that unique opportunities that arise are better to be used than ignored.
- I still picked up some valuable, highly specific insights and synced with reality in important areas for me.

That is why, for now, I consider the time spent on World Builders to be useful unplanned expenses.

## Итоги по планам на 2025 год

> Определиться с будущим [Feeds Fun](https://feeds.fun/): бизнес или хобби. Попиарить, собрать фидбек, пофиксить, попиарить ещё раз, сделать несколько таких циклов, принять решение.

В процессе — будет тестовый запуск монетизации, после чего решу, насколько имеет смысл вкладываться в развитие проекта.

В конце весны сделал [тест маркетинга]{post:feeds-fun-marketing-test}. Результаты неоднозначные, возможно из-за чрезмерной сложности доступа к главной фиче проекта — тегам. Чтобы читалка начала ставить теги новостям пользователя, тот должен ввести API ключ OpenAI или Gemini — определённо, это не каждый захочет делать. Поэтому хочу включить монетизацию и повторить тест с более комфортным для пользователя сценарием.

К сожалению, в быструю итерацию не получилось, так как Feeds Fun не единственная активность в этом году.

Оптимизма добавляет то, что люди читалкой интересуются. На текущий момент у [репозитория](https://github.com/Tiendil/feeds.fun) 312 звёздочек — теперь это мой самый звёздный проект.

> Сделать MVP [игры]{post:simulation-of-public-opinion-in-a-game}, которую очертил на занятиях [World Builders]{tags:world-builders-2023}.

Начинал я это мероприятие с мыслью «быстро сделать что-то работающее», но вскоре решил, что буду потихоньку прототипировать для души, так как возникало много сложных вопросов, решать которые быстро и влоб не получалось. Учитывая меньший приоритет, чем у основных проектов.

В итоге я полез разбираться с [Rust](https://rust-lang.org/) и [Godot](https://godotengine.org/), а вместо самой игры у меня теперь есть прототип движка детерминированной игровой логики в котором я пытаюсь порешать проблемы, наболевшие ещё во время разработки [Сказки](https://the-tale.org). Оптимисты могут считать это разработкой движка для Сказки 2.0, но я пока не оптимист :-D Сверху на это наложилось несколько итераций геймдизайна, а в последний месяц туда же добавились эксперименты с LLM агентами.

Итераций геймдизайна было довольно много и они были ммм… интеллектуально болезненными, но полезными глобально. Сделать механизм генерации эмерджентных историй, который может конфигурировать и контролировать человек, оказалось не так-то просто. По крайней мере не так-то просто без команды и бюджета. У меня там уже чуть ли не логическое программирование используется :-D

В итоге этой активности:

- Пост про Rust будет в следующем году — язык интересный и разносторонний, очень неоднозначные впечатления.
- Поста про Godot не будет — я окончательно убедился, что не могу работать с визуальными редакторами — прям бесит — профессиональная деформация. Поэтому объективно оценить этот движок не могу. Если буду делать игру, то всё в ней будет описываться кодом и конфигами.
- Возможно, в следующем году релизну утилиту для LLM агентов, которая позволяет им держать фокус на выполняемой задаче.
- Возможно, в следующем году будет какая-нибудь прикольная демка, но я особо не рассчитываю на это.

Возможно, вместо Rust стоило выбрать [Zig](https://ziglang.org/), но я всё ещё в этом не уверен. Думаю, что Rust и Zig в будущем на пару попилят всю область, захваченную сейчас C/C++. Причём именно совместно.

> Определиться будет какое-то финансовое взаимодействие с Mad Crusaders или нет.

Определилось, финансирования не получилось.

Вместо разработки пакета игр, организаторы школы сейчас пилят что-то вроде генератора/конструктора интеллектуальной собственности (вымышленных миров) на LLM агентах. Это сейчас модно и перспективно, удачи им, надеюсь получится. Хотя у меня есть некоторые сомнения насчёт успеха задумки именно их небольшими силами.

> Если продолжу сотрудничество с Mad Crusaders, то начать делать игру с ними на базе MVP.

Игра не делается.

> Если не продолжу сотрудничество с Mad Crusaders И MVP будет играбельный И будет время, выпустить игру в Steam в виде авторской поделки от соло-разработчика.

Даже близко не подошёл к этому.

> Начать систематически тренировать разговорный английский.

Мой провал десятилетия — вечно откладываю на потом и не нахожу времени.

> Выучить 1000 новых английских слов. Художественная литература в помощь.

Успех года. Сейчас у меня 645 карточек с выученными словами. Поскольку 1000 я брал для красивого числа (100 — мало), считаю это большим прогрессом для себя. Результат виден в реальной жизни — новые слова мелькают то в сериалах, то в книгах, то в постах.

Для изучения слов использую [DouCards](https://play.google.com/store/apps/details?id=com.duocards.app). Весной делал небольшое исследование софта для изучения слов и остановился на нём. Каждая карточка сопровождается ассоциированной картинкой, примерами использования, озвучкой. ИИ генерирует переводы и примеры.

В пару к приложению у меня есть блокнот для подключения мышечной памяти — без него учить слова не получалось — не запоминались. Выглядит процесс так:

- DuoCards показывает слово.
- Я записываю его в блокнот с переводом.
- Проверяю мой ответ в приложении. Если неправильно, пишу правильный перевод в блокнот.

Лично мне, письмо помогает прогонять слова через бОльшее количество путей в мозгу, что помогает запоминанию.

Есть ощущение, что периодическое листание карточек теперь на уровне привычки. Посмотрим как пойдёт в следующем году.

> Перевести топ 10 русскоязычных постов на английский.

Перевёл только 5 из 10. В середине года понял, что ручной перевод занимает слишком много времени и не приводит к существенному росту посещаемости англоязычной версии блога.

Пока не знаю, что с этим делать. Скорее всего подожду, пока ИИ научится переводить тексты с сохранением стиля автора и натравлю его на старые посты.

> Закончить подтягивание менеджерских знаний.

Почти закончил, всего два поста осталось :-D

> Слезть с колы и не подсесть на альтернативный кофеин.

Внезапно слез.

За второе полугодие 2024 на колу было потрачено около 1000 eur, за весь 2025 год — около 250 eur. Получается экономия в восемь раз год к году.

Теперь пью два вида чая:

- China Mannong Pu Erh — люто штырящий чай, если надо сконцентрироваться на работе.
- Rooibos Lemon — не чай, без кофеина, но заваривается и пьётся как чай. Пью в основном его, чтобы зазря не кофеиниться.

> Начать искать работу, если проекты мои не выстрелят.

Жду завершения экспериментов с Feeds Fun.

## Вне планов на год

Некоторые вещи не входили в планы, но случились.

### Похудел на 10 кг

Совершенно внезапно скинул себя со 100 до 90 кг.

Методику можно описать просто и сложно.

1. Просто — перестал жрать после 6 вечера.
2. Сложно — научился определять когда я хочу есть от голода, а когда — для комфорта или эмоций. Перестал есть во втором случае. Поначалу было сложно, но сейчас это почти привычка.

### Посмотрел весь Stargate

Заняло около девяти месяцев.

Постепенно пересматриваю всю классику ~~около~~научной фантастики, которую упустил в молодости. До этого [X-Files]{post:the-truth-is-out-there} пересмотрел и где-то половину Star Trek — надо бы досмотреть. Впереди ещё «Вавилон 5».

На современную фантастику не тянет совсем. Либо возраст, либо классика рулит. Скорее всего и то и другое.

## Планы на следующий год

1. Выйти из творческого отпуска.

Надо было сделать в этом году, но что не успел, то не успел.

Для этого надо:

1.1. Закончить с итоговыми постами по менеджменту.
1.2. Провести эксперимент с монетизацией Feeds Fun.
1.3. После эксперимента либо продолжить заниматься Feeds Fun как работой, либо найти работу.

Должен справиться за полгода.

2. Начать систематически тренировать разговорный английский.

3. Разобраться с разработкой в паре с LLM агентами.

Агенты однозначно станут темой 2026 года и новой реальностью разработки софта. Однако сейчас никто не знает в точности как эта реальность будет выглядеть. Практика должна прояснить это в следующем году.

Надо быть в тренде, чтобы оставаться в топе :-D

4. Продолжать эксперименты с геймдевом.

Конкретной цели не ставлю, на текущий момент это просто хобби.

5. Похудеть ещё на 5-10 кг

- На пять — чтобы вернуться в норму.
- На десять — в качестве эксперимента.
