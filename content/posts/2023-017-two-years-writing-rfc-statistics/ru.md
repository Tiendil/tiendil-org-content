---
title = "Два года пишем RFC — статистика"
tags = [ "thinking", "practice", "development", "reflection", "systems", "theory", "management", "best", "interesting"]
published_at = "2023-12-22T12:00:00+00:00"
seo_description = "Статистика двух лет применения практики написания RFC в команде. С заметками о коррекляции метрик с динамикой команды."
seo_image = "images/two-years-writing-rfc-statistics-rfc-count-per-year.png"
---

/// brigid-images
src = "images/two-years-writing-rfc-statistics-rfc-count-per-year.png"
alt = "График количества RFC за два года"
///

Два года как я Lead/Engineering Manager в платёжке Palta. А на следующей неделе я ухожу из компании в очередной [творческий отпуск]{post:the-results-of-the-sabbatical-2019-2021}.

Время подводить итоги. Начну с моей самой любимой инициативы.

С первого месяца я начал продвигать идею предварения крупных изменений текстовыми документами — [RFC](https://en.wikipedia.org/wiki/Request_for_Comments) — Request for Comments.

В этом посте будет анализ двух лет применения этой практики. Чтобы пошарить опыт, подвести итоги и иметь под рукой агитку для моего следующего места работы.

<!-- more -->

## Что такое RFC, как выглядят и зачем нужны

Концепция RFC довольно известна в инженерных кругах, но не сказать что бы точно определена. Каждый понимает под ней что-то своё.

Поэтому для начала я кратко изложу своё видение, которое базируется на нескольких постулатах:

- Комфорт людей важнее формальностей.
- Мы не делаем Google, мы не размером с Google и так далее. От нас не зависят жизни и здоровье людей.
- Работать удобнее малыми командами.
- Поэтому можно делать проще.

### Запрос на комментарии vs запрос на изменения

Некоторые даже расшифровывают аббревиатуру RFC по-разному.

- Request for Comments
- Request for Change

Я предпочитаю первый вариант, потому что он более широкий и менее требовательный к разработчикам.

Запрашивая изменения, автор документа, формально, подписывается кровью под изложенным в нём, что не всегда возможно и может быть некомфортно. Времени на подготовку документа тратится больше, потенциальный профит за тратами не успевает.

Запрашивая комментарии, автор может немного расслабиться, разрешить себе ошибиться, а значит, быть более творческим и подготовить документ быстрее. Да, может быть что-то упущено, но такие ошибки можно ловить и на следующих этапах разработки.

### Структура документа

Наиболее известные документы такого рода: [классические RFC](https://en.wikipedia.org/wiki/Request_for_Comments), [Python Enhancement Proposal](https://en.wikipedia.org/wiki/Python_(programming_language)#Development) и прочие — очень формальны. Оно и понятно, больше ответственности — больше формализации. Писать стандарты интернета или менять язык программирования — не шутка.

Но мы, хоть и платёжка, не ответственны за будущее всего человечества и не имеем сотен стейкхолдеров. Поэтому RFC изначально внедрялись без фиксированной структуры. Основной критерий — тебя должны понять читатели документа.

Мы несколько раз обсуждали формализацию структуры RFC. Сошлись на том, что на наших масштабах вреда от закручивания гаек будет больше, чем пользы.

Фактически, общая структура просматривается, так как мы смотрим на документы друг друга и перенимаем лучшее, но нет требования следовать какой-то форме.

Например, я немного упарываюсь в формальную структуру, но не требую этого от других. Быстрая подготовка структурированных документов — отдельный навык, который есть не у всех и не все хотят его развивать.

### Примеры тем RFC

RFC у нас ограничились четырьмя темами: архитектура, процессы, анализ и планирование. В следующей главе будут графики, а пока просто несколько названий реальных RFC, чтобы не быть голословным:

- The architecture of our fraud prevention system
- Synchronization of subscriptions changes
- Metrics
- Architecture vision
- Comments on OKRs for Q1/23
- Requirements for a project management tool
- Testing and test process
- Review & better classification of technical tasks
- Open questions about work processes

### Зачем нужны RFC

Фактически, это практика [мышления письмом]{post:thinking-through-writing} на уровне команды. Почитайте текст по ссылке, если хотите глубже окунуться в тему.

Тезисно.

**Каждая деятельность должна оставлять артефакт.** RFC — артефакт мыслительной работы, которую делают все разработчики, но почти никогда не сохраняют её результаты. В итоге куча проделанной работы теряется со временем — вымывается из памяти. RFC сохраняют эти результаты.

**Перенося мысли в текст человек верифицирует свои [ментальные модели]{post:life-and-work-with-models}.** Даже сам факт записывания мыслей улучшает понимание задачи, выявляет ошибки и так далее.

**Дешёвая база знаний.** Дешёвая, потому что RFC не надо поддерживать в актуальном состоянии, как обычную документацию. При этом они остаются полезными и актуальными. Это история развития проекта. Очень удобно, когда приходится заниматься технологической археологией.

**Обмен знаниями.** Не всегда можно оперативно перекидывать разработчиков между частями проекта, чтобы они шарили знания на практике. Это дорого. Обсуждение RFC позволяет шарить базовые знания о проекте по всей команде.

**Быстрая обратная связь**. Чем раньше найти ошибку, тем дешевле её исправить. RFC позволяют находить проблемы до их переноса в код, что очень дёшево.

**Упрощает onboarding.** Нового сотрудника можно отправить полистать RFC по порядку и он будет более-менее понимать, что происходит, каким путём шёл проект.

**Асинхронные дискуссии** (чаты, форумы, комментарии) эффективнее синхронных (созвоны). Ещё не встретил ни одного человека, который мог бы сходу в реальном времени обсуждать сложные штуки. Я тоже не умею. Асинхронные дискуссии позволяют не только лучше вести обсуждения, но и не разрывают день разработчиков, что очень важно.

## Вступление к статистике

Далее будет несколько блоков с графиками. В начале каждого блока будет вступление: что изображено, о чём графики свидетельствуют, etc.

Но сначала несколько заметок о данных и способе сбора:

- Я инициатор практики и я же делаю её анализ. Некоторые искажения неизбежны, делайте поправку на это.
- Документацию мы ведём в Notion. Для получения некоторых данных мне пришлось выгрузить документы как HTML и парсить их. Код проверял, но и на старуху бывает проруха.
- Для некоторых документов было сложно определить автора: была коллаборация или один человек делал заготовку документа, а второй наполнял её. В этом случае я старался по памяти определить главного автора.
- Тематику RFC и состояние документа я определял по своему экспертному мнению и памяти. История только за два года, документы довольно понятные, все прошли через меня, поэтому особых неточностей быть не должно.
- Данные максимально анонимизированы. Никаких имен, ников, названий, etc. Только цифры и графики. Проект живой, завязан на деньги. Не хочу заниматься лишними согласованиями.
- Статистика собрана ровно за два календарных года. За это время менялись и команда и проект. Это надо учитывать и это видно по графикам.
- Core команда выросла с 3 до 7 человек. На Slack канале команды на конец второго года сидит 19 человек, всех их можно считать стейкхолдерами практики. Большинство из них принимало участие в обсуждении хотя бы одного документа.

## Статистика

### Темпы подготовки RFC

- Всего подготовлено 76 RFC.
- Количество RFC за первый год раза в 2 больше чем за второй. Первый год — закладывание архитектуры, второй — тюнинг и больше бизнес задач.
- В разбивке по кварталам можно видеть как разработка набирала обороты, достигла пика на третьем квартале, после чего количество крупных изменений начало плавно снижаться. Думаю они останутся на уровне 3 +/- 1 RFC в квартал.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-per-year.png"
alt = "График количества RFC за два года."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter.png"
alt = "График количества RFC за квартал."
///

### Разбивка по авторам

- Статистика анонимная. Имена заменены на буквы. Если вы из моей команды, напишите в личку, дам расшифровку.
- Можно догадаться, что `A` — это я — больше всего написано. Во-первых, я лидил. Во-вторых, внедрять практики можно только собственным примером.
- Приятно удивило, что только треть RFC от меня. Думал будет около половины.
- На примере годовых и квартальных графиков видно как менялся состав команды. Приходили новые люди, кто-то уходил.
- RFC у нас пишут все. В большинстве случаев первый RFC документ готовится во время испытательного срока. Так как мы стараемся давать сделать что-то важное во время него.
- На годовых графиках видно что все члены команды вовлечены в подготовку RFC примерно поровну. С поправкой на всплески, которые характерны для маленькой выборки: в одно время мы активно работаем над одной частью проекта, где эксперт один, в другое — над другой, где эксперт — второй.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-author.png"
alt = "График количества RFC у каждого автора."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-author.png"
alt = "График количества RFC у авторов по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-author-percents.png"
alt = "График доли RFC от авторов по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-author.png"
alt = "График количества RFC у авторов по кварталам."
///

### Актуальность документов

Мы не обновляем RFC — это история. Поэтому, с исторической точки зрения, все они актуальны.

Но всё-таки их можно разделить по их отражению на текущем состоянии проекта.

Я выделил 4 состояния:

- `applied` — как-минимум часть RFC применена в каком-то виде к проекту. Она сейчас есть в коде или процессах.
- `planned` — RFC обсуждён командой, одобрен, но ещё не применён из-за других приоритетов планирования. Обычно это какие-то крупные изменения в архитектуре, которые не нужно делать прямо сейчас, но к которым нужно готовиться.
- `applied & deprecated` — изменения были применены, но потом от них полнолстью отказались. Например, они не сработали, или изменилась концепция проекта.
- `not applied & deprecated` — обсудили, но не одобрили. Или запланировали, но потом концепция поменялась.

В итоге:

- Большая часть RFC применена и актуальна.
- Полностью «бесполезных» RFC около 13%. На мой взгляд это хороший показатель — мы обсуждаем то, что надо. А что не надо — не обсуждаем.
- Чем дальше в прошлое, тем больше `deprecated` RFC. Чем ближе к настоящему, тем больше `planned` RFC. Выглядит логично.
- Можно заметить, что Q3/22 был особенно богат на неприменённые RFC. Это хорошо коррелирует с изменениями планов и команды, которые произошли в Q4/22.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-state.png"
alt = "График количества RFC по актуальности."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-state.png"
alt = "График количества RFC по актуальности по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-state-percents.png"
alt = "График доли RFC по актуальности по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-state.png"
alt = "График количества RFC по актуальности по кварталам."
///

### RFC по доле исследовательской работы

Написание любого RFC предполагает исследовательскую работу. Но мне было интересно разделить документы по усилиям на исследования:

- `no research` — просто сел и написал из своего опыта.
- `with research` — собрал данные, поговорил с людьми, сделал анализ, синтезировал результат.

В итоге:

- Глубокого исследования у нас было не очень много. Особенно в 2022 году, в 2023 стало больше в процентном отношении.
- Я это связываю с тем, что в 2022 команда была маленькой, надо было фигачить, процессы ещё не устоялись, люди не сработались. В 2023 порешали кучу проблем, наладили работу и смогли больше времени уделить исследованиям.
- Большая часть бизнесового планирования у нас находится вне команды. Мне это не особо нравится, но как есть. Поэтому, например, мы не выбираем сервисы с какими интегрироваться. Куда скажут, туда и копаем :-)

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-research.png"
alt = "График количества исследовательских RFC."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-research.png"
alt = "График количества исследовательских RFC по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-research-percents.png"
alt = "График доли исследовательских RFC по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-research.png"
alt = "График количества исследовательских RFC по кварталам."
///

### Распределение по тематике

Как я упоминал, у нас четыре тематики для RFC: архитектура, процессы, анализ (текущего состояния чего-то) и планирование. Этот список не дан свыше, мы его не обсуждали. Фактически, это вещи, о которых мы посчитали необходимым писать RFC.

RFC может закрывать несколько тем. Например, анализ показателей проекта, предложение изменение архитектуры и планирование реализации. Поэтому на графиках сегментов больше четырёх.

Что можно увидеть:

- Около 80% RFC посвящено архитектуре. Неудивительно, всё-таки мы программисты.
- Около 21% — процессы. Когда мержить, как тестировать, как с конфигами работать, как задачи создавать, etc.
- Около 15% — анализ. Например, через полгода разработки я готовил документ с описанием состояния проекта, рисков, динамики, etc.
- Около 8% — планирование. Что когда делать и почему.
- Во втором году уменьшилось количество RFC чисто по архитектуре и увеличилось по всему остальному. Это связано с ростом и перестройкой команды, становлением проекта.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-meta-thematics.png"
alt = "График количества RFC по метатематике."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-thematics.png"
alt = "График количества RFC по тематике."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-thematics.png"
alt = "График количества RFC по тематике по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-thematics-percents.png"
alt = "График доли RFC по тематике по годам "

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-thematics.png"
alt = "График количества RFC по тематике по кварталам."
///

### Количество вопросов на RFC

Notion позволяет комментировать документы. Тут сделан анализ количества потоков обсуждения (threads) на документ. Каждое обсуждение может содержать несколько комментариев. Фактически, это нижняя оценка количества вопросов к документу.

Что важно учитывать:

- Notion позволяет комментировать часть документа (выделенный текст). Одно выделение считается одним обсуждением.
- Notion позволяет комментировать весь документ (отдельный блок в шапке). Весь блок считается одним обсуждением, так как автоматически определить количество вопросов в нём не получится.

Что можно увидеть:

- Четверть документов без обсуждения. Это не значит, что их не обсуждали. Обсуждение могло быть на созвоне или в Slack. Но также есть довольно простые документы, которые просто надо сделать и услышать «всё ок».
- Доля документов без обсуждения в 2023 в два раза меньше, чем в 2022 (15% vs 30%). Команда втянулась, набили руку.
- ~50% RFC содержат больше трёх обсуждений. ~25% — больше восьми. Каждое обсуждение — закрытый риск, обнаруженная ошибка, обмен знаниями. Короткий цикл обратной связи работает.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-comment-threads.png"
alt = "График количества RFC по веткам комментариев."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comment-threads.png"
alt = "График количества RFC по веткам комментариев по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comment-threads-percents.png"
alt = "График доли RFC по веткам комментариев по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-comment-threads.png"
alt = "График количества RFC по веткам комментариев по кварталам."
///

### Количество комментариев на RFC

Аналогично предыдущим выводам. Со временем обсуждать стали активнее.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-comments.png"
alt = "График количества RFC по комментариям."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments.png"
alt = "График количества RFC по комментариям по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments-percents.png"
alt = "График доли RFC по комментариям по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-comments.png"
alt = "График количества RFC по комментариям по кварталам."
///

### Количество комментариев на дискуссию

- Длинных дискуссий в комментариях нет. Либо всё решается быстро, либо переходим на другие каналы общения. В основном потому, что комментарии Notion очень неудобны.
- На второй год дискуссии стали более конкретными. Больше дискуссий с комментариями, но меньше с большим количеством комментариев. Думаю, частично научились обсуждать, частично вопросы стали более приземлёнными — меньше философии и абстракций.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-comments-per-discussion.png"
alt = "График количества RFC по комментариям на ветку."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments-per-discussion.png"
alt = "График количества RFC по комментариям на ветку по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments-percents-per-discussion.png"
alt = "График доли RFC по комментариям на ветку по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-comments-per-discussion.png"
alt = "График количества RFC по комментариям на ветку по кварталам."
///

### Количество участников в обсуждениях

Количество людей, которые написали хоть один комментарий к RFC. За вычетом автора.

- Доля RFC без участников обсуждений чуть больше, чем доля без обсуждений. Иногда автор сам пишет комментарий или вопрос к своему тексту. Этот вопрос может быть отвечен не в Notion.
- Часть RFC обсуждается подгруппой команды — только заинтересованными людьми. На мой взгляд это нормально. Не надо отвлекать всех от работы и тратить время людей. В большинстве случаев заинтересованные сами приходят в обсуждение.
- Больше половины RFC обсуждаются тремя и более людьми. Это хорошо. Значит несколько пар глаз верифицируют текст, понимают его достаточно, чтобы задать вопрос. Следовательно снижаются риски, шарятся знания.
- Большинство RFC обсуждаются внутри команды, но иногда мы приглашаем людей из вне.
- В 2023 году больше людей стало обсуждать RFC. С одной стороны команда выросла, с другой — практика прижилась.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-participants.png"
alt = "График количества RFC по участникам обсуждения."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-participants.png"
alt = "График количества RFC по участникам обсуждения по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-participants-percents.png"
alt = "График доли RFC по участникам обсуждения по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-participants.png"
alt = "График количества RFC по участникам обсуждения по кварталам."
///

### Участие людей в написании RFC в разбивке по людям

- По аналогии с первыми графиками, `A` — это я.
- Все пишут примерно поровну, кроме меня.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-members-author-of-rfcs.png"
alt = "График разбивки количества RFC по авторам по годам."

[[images]]
src = "images/two-years-writing-rfc-statistics-members-author-of-rfcs-percents.png"
alt = "График разбивки доли RFC по авторам по годам."
///

### Участие людей в обсуждениях в разбивке по людям

- По аналогии с первыми графиками, `A` — это я.
- На второй год, RFC стало меньше, но каждый стал принимать больше участия в их обсуждении.
- Можно заметить, что в команде и проекте были сильные изменения.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-members-participated-in-rfc.png"
alt = "График разбивки количества RFC по участникам обсуждения."

[[images]]
src = "images/two-years-writing-rfc-statistics-members-participated-in-rfc-percents.png"
alt = "График разбивки доли RFC по участникам обсуждения."
///

## Выводы

Внедрение RFC было большим экспериментом для меня. Я знал, что практика точно будет работать для меня лично и что, в теории, мышление письмом должно работать для всех. Но не было уверенности, что команда примет практику и что результаты будут позитивными.

По сути, это был прыжок веры для меня.

На мой взгляд, эксперимент удался:

- Команда приняла практику: все пишут и обсуждают RFC.
- Шаринг знаний идёт.
- Быстрая обратная связь работает.
- Асинхронные обсуждения работают.

Неожиданное: статистика по RFC хорошо отображает состояние команды и проекта, их динамику. В следующий раз попробую сделать её метрикой здоровья команды.

Ложка неизвестности: очень интересно как практика продолжится без меня. Поскольку я лид, то часто инициировал написание RFC, в духе «этот вопрос слишком сложный для устной дискуссии, давайте готовить RFC». Поэтому не ясно будет ли команда писать RFC без подталкивания с моей стороны. Через год кого-нибудь выловлю и спрошу как дела. А может выпрошу себе временный доступ к текстам.
