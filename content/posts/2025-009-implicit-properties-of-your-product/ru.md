---
title = "Точки зрения на продукт"
tags = [ "theory", "development", "systems", "management", "interesting", "vantage-on-management"]
series = "vantage-on-management"
published_at = "2025-07-16T12:00:00+00:00"
seo_description = "Посмотрим на продукт как на длящуюся во времени штуку, хаотическую систему, эволюционирующий организм."
seo_image = "cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "Эволюционирующий продукт (с) ChatGPT"
///

/// brigid-series
tag = "vantage-on-management"
///

Представим, вы разрабатываете [SaaS](https://ru.wikipedia.org/wiki/Программное_обеспечение_как_услуга) — тамагочи todo-лист для геймеров, или даже что-нибудь менее полезное.

Соответственно, этот SaaS — это ваш продукт — то, что вы предлагаете пользователям — то, за что они платят деньги.

Но что именно вы предлагаете? Только ли возможность кормить тамагочи todo-листами?

Кроме очевидных свойств, вроде конкретной функциональности, внешнего вида и брендированного джойстика в комплекте, ваш продукт обладает множеством неочевидных свойств, которые также важны для пользователей, а значит влияют на его успешность.

Давайте начнём с этих свойств и по логической цепочке пройдём через всё более ~~сложные~~ ~~холистические~~ системные точки зрения на продукт и управление им.

<!-- more -->

## Неочевидные свойства продукта

Вот несколько популярных примеров свойств, о которых любят забывать:

- Доступность — возможность пользоваться продуктом в любое время с любого устройства.
- Поддержка — возможность получить помощь в случае возникновения проблем.
- Ритм выпуска обновлений — динамика появления новых фич, без которых пользователи пока что могут обойтись, но на которые надеются в будущем.
- Надёжность — хранение данных пользователей целыми и невредимыми и схожие штуки.
- Безопасность — отсутствие утечек персональной информации, отсутствие вреда для устройств пользователя.

Ваши пользователи могут даже рассчитывать на конкретные эмоции от продукта. Это касается не только игр, в которых эмоции — один из ключевых компонентов (сравните, для примера, эмоции от [Dark Souls](https://ru.wikipedia.org/wiki/Dark_Souls), [Doom](https://ru.wikipedia.org/wiki/Doom_(игра,_1993)) и [The Sims](https://ru.wikipedia.org/wiki/The_Sims_(серия_игр)))), но и бизнес-приложений, которые могут фокусироваться на ощущениях контроля, надёжности, осведомлённости, etc.

Конечно, все аспекты продукта по-разному важны для пользователей, а значит с разной силой влияниют на успешность продукта — что-то влияет сильно, что-то слабо — каждый продукт уникален. Но будет неправильно разделять свойства продукта на явные-и-важные и неявные-и-неважные.

Например доступность крайне важна для большинства продуктов. О ней не всегда говорят, потому что она «максимально подразумевается» и вопрос её обеспечения всплывает в менеджерских кругах обычно, когда кто-то уже эпически накосячил, например, запустил маркетинговую активность на +1M DAU без консультации с разработчиками.

/// note | Более интересным примером могут быть эмоции

- Есть продукты, для которых они жизненно необходимы, например, — игры.
- Есть продукты, для которых они не особо нужны, например, сюда можно записать монопольные гос. сервисы, безальтернативный корпоративный софт и тому подобное.
- А есть продукты, для которых эмоции важны, но насколько не до конца понятно и об этом не всегда говорят. Например, приложения для шопинга, или для микротрейдинга.

///

Роль каждого конкретного свойства продукта в его успешности обычно не однозначна:

- Вы можете по-разному оценивать роль свойств продукта в его успехе.
- Пользователи могут по-разному оценивать роль этих свойств.
- Реальность может отличаться как от вашей картины мира, так и от картины мира пользователей.

Поэтому важно помнить, что без управления неявными свойствами продукта, он будет терять в ценности для пользователей в той же мере, что и при отсутствии управления той же базовой функциональностью.

Чтобы понять чем и как мы конкретно должны управлять, давайте пристальнее посмотрим на форму и содержимое нашего продукта.

## Наш продукт длится во времени

Давайте продолжим использовать Тамагочи todo-лист из начала поста в качестве примера.

Практически все свойства нашего SaaS имеют смысл только во временном измерении.

Функциональность SaaS обеспечивается запущенным на серверах кодом, который работает в реальном времени. Если сервера остановятся, то продукт моментально «пропадёт» для пользователя.

Доступность продукта обеспечивается не только запущенным кодом, но и процессами поддержки инфраструктуры, на которой он запущен. Всё время существования нашего продукта кто-то должен следить за состоянием серверов, наличием свободного места в базе и множеством других вещей.

Частью продукта являются формальные протяжённые во времени обязательства разработчиков перед пользователями и регуляторами: от сроков на удаление персональных данных согласно GDPR и минимального времени хранения информации о платежах (от 3-5 лет, по-моему, в зависимости от страны), до обязательств по, собственно, хранению информации пользователя существенной для задач нашего SaaS.

Можно указать и на более абстрактные свойства. Например, явные или неявные соглашения о скорости/периодичности выпуска новой функциональности, гарантии по исправлению ошибок и поддержке устаревшей функциональности.

В некоторых случаях даже определённые монетизационные активности могут стать длящейся частью продукта. Например, долгое время в моей [хобби ММО](https://the-tale.org) действовало неформальное соглашение между разработчиками и игроками о том, что у нас есть только одно время в году, когда игровую валюту можно купить со скидкой — неделя вокруг чёрной пятницы. Игроки учитывали это в планировании собственных трат и воспринимали как часть предоставляемых услуг.

/// note | Временное измерение справедливо для всех продуктов
Я выбрал SaaS для примера, так как это наиболее характерный и современный тип продукта.

На самом деле, временное измерение присуще всем продуктам, не только сервисам, даже полностью физическим, как молотки.

В системной инженерии даже говорят, что любая система — это четырёхмерный объет: три физических измерения плюс время. Так как у любой системы есть жизненный цикл от планирования до вывода из эксплутации (даже если они проводятся разными сущностями), а значит части системы проходят через разные состояния, что и является свидетельством временного измерения.

По современным практикам даже хороший производитель молотков должен учитывать временное измерение в своём продукте: давать гарантию на молоток, продавать сменные насадки, прокладки для ручек и прочую атрибутику, собирать статистика использования. Конечно, если хочет быть лидером рынка.

Другое дело, что игнорирование временного измерения при производстве физических продуктов «традиционно» (как «традиционны» любые пережитки прошлого) и иногда не так критично.
///

Соответственно, **поскольку у продукта есть временное измерение, то его свойства (а значит и успешность) зависят от штук, которые обеспечивают эту длительность: инфрастуктуры, процессов и, в первую очередь, команды.**

## Команда как неотъемлемая часть продукта

Можно выбрать точку зрения на проект, когда процессы, артефакты, инфраструктура и прочее — это производные от команды, которая работает над продуктом.

Если у вас опытная сплочённая команда, то вы быстро реализуете новые фичи, выкатываете их без инцидентов, не профукиваете безопасность, резво отвечаете на вопросы пользователей, и так далее. Тем самым, вы улучшаете соответствующие свойства продукта, увеличиваете его ценность для пользователей и свои доходы.

Команда продукта аккумулирует в себе множество неформализованных знаний, которые существуют только в головах её членов: неявные соглашения, допущения, связи между частями продукта, быстрые контакты, шаблоны поведения и решения инцидентов, etc. В большинстве случаев эти знания слишком дорого (и долго) формализовать, поэтому они остаются неотъемлемой часть каждого члена команды. Очевидно, чем старше и стабильнее команда, тем больше в ней таких знаний, тем эффективнее она работает, тем успешнее её продукт.

Допустим вы поменяете сработанных людей на новых случайных. Из-за отсутствия знаний о работающей системе у вас моментально просядут все сопутствующие показатели. Выпуск обновлений замедлится, поддержка станет медленнее, скорее всего даже просядут доступность, надёжность и безопасность.

Пользователи заметят изменения (возможно при первом же обновлении сервиса) и изменят своё поведение — увеличится процент отказов от подписки, снизится LTV, воронка регистраций станет хуже — всё в том же духе.

Поэтому можно утверждать, что:

- **Продавая пользователю продукт, вы продаёте ему и команду, которая в данный момент работает над этим продуктом.**
- **Изменяя команду, вы сразу изменяете свойства продукта.**

Более того, команда не обязательно является сугубо внутренней/скрытой частью продукта.

В наше время гипертрофированной публичности и социальности, стать внезапным лицом продукта (и компании) может не только официальный лидер продукта или сотрудник поддержки, но и вообще кто угодно из команды. Поэтому вся публичная активность всех сотрудников является частью продукта — независимо от того нравится нам это или нет. Мы можем решать сколько фокуса мы хотим выделять этому аспекту: от полного игнорирования до вложания ресурсов в развитие личных брендов сотрудников и повышения их социальной грамотности — в любом случае, это надо учитывать — полностью спрятать команду сложно.

## Продукт как хаотическая система

Можно выбрать точку зрения на проект, когда команда, процессы, артефакты, инфраструктура и прочее — это сильно связанная сеть из штук, где всё влияет на всё.

/// hint | Здесь нет противоречия с прошлым разделом
Команда может влиять на процессы и, тем самым быть их первопричиной, но уже запущенные процессы в свою очередь будут влиять на команду. Это же касается любых других продуктов деятельности команды.

К тому же, в «традиционных» подходах к управлению любят ставить управленца вне команды и даже вне управляемой системы. Что приводит к спусканию процессов и инфраструктуры сверху, без учёта реального состояния дел. В SOTA практиках от этого стараются максимально уходить, но, честно говоря, я видел попытки, но не видел стопроцентного успеха. Даже на моей прошлой работе вроде бы как все были активно «за», но не во всём у нас получалось. Про «традиционные» и «модерновые» практики я ещё напишу в будущих постах.
///

Поскольку все компоненты продукта связаны в тесную причинно-следственную сеть, то мы имеем в своём рассположении не предсказуемый «линейный» механизм, а [хаотическую систему](https://ru.wikipedia.org/wiki/Теория_хаоса), изменение одной части которой может привести к непредсказуемым последствиям в других частях.

Хаотическая природа предполагает практическую невозможность надёжного централизованного долгосрочного планирования жизненного пути продукта, в том числе его свойств. Теоретическая возможность, конечно, есть. Вот, например, квантовые компьютеры обещают нам что-то похожее для более прикладных задач.

/// note | Хаос был всегда, но в меньшей степени

Люди всегда организовывались в группы и планировали свою совместную деятельность. Большую часть нашей истории это планирование как раз было централизованным. От хаоса оно тоже страдало, но не в той степени, как сейчас — поведение хаотической системы всё-таки можно предсказать до какой-то временной границы.

Проблема в том, что увеличился масштаб систем, сложность мира и скорость взаимодействий в нём.

Поэтому граница достоверного предсказания стремительно приближается к «планируем до завтра». Лет 50 назад планировать можно было значительно дальше, лет 150 — ещё дальше. Мир ускоряется и становится невообразимо сложнее, необходимо учитывать это.

///

В условиях, когда централизованное управление системой становится невозможным, а направлять её куда-то всё-таки надо, остаётся либо полагаться на удачу, либо запускать эволюционные/адаптационные процессы через самоорганизацию её частей.

## Продукт как эволюционирующая адаптирующаяся система

Если мы запускаем самоорганизацию, то разумно начать смотреть на продукт как на живой организм.

Для примера, мы не спускаем нашему сердцу график сокращений, а печёнке баланс веществ в крови на сегодня. Мы уверены что они как-нибудь разберутся с этим самостоятельно. Вместо детального управления частями организма мы сосредоточены на нём, как на целом: где он находится, куда двигается и так далее.

Нет смысла управлять конкретным органом ради управления этим органом.

Мы можем захотеть произвести какие-то изменения в части продукта, но они будут осмысленны только в контексте всего продукта и для нужд всего продукта. Вместо детального планирования и микроменеджмента лучше заняться оценкой свойств продукта и направлением его эволюции в нужную сторону через подталкивание его к необходимым изменениям.

/// note | Let's do it for fun
Можно изменять части организма just for fun. Например, научиться шевелить ушами, или начать есть стероиды, чтобы надуть мышцы.

Но это справедливо скорее для персоналий, в мире компаний fun имеет меньшую ценность. Есть случаи, когда под конкретного человека может быть организован отдел (обычно R&D), но в этом случае скорее надо менять абстракцию и представлять уже компанию как организм, а отдел как его часть — результат эволюции/адаптации.
///

Есть очевидные исключения:

- Если организм болен или просто слаб, мы можем захотеть грубо вмешаться в работу конкретной его части.
- Если организму не хватает сил для чего-то специфического, мы можем ему помочь витаминчиками или, например, целенаправленными тренировками.

Но, как идеальный конечный результат, как норму, мы всё-таки хотим видеть продукт, который адаптируется самостоятельно, без постоянного вмешательства в его части. Такой продукт будет адаптироваться к изменениям внешней среды быстрее и эффективнее, чем может достичь внешнее планирование его изменений. По крайней мере до тех пор, пока среда изменяется достаточно плавно. В случае резких изменений при форс-мажорах, конечно, может потребоваться вмешательство.

/// hint | Исключение — [иммунная система](https://ru.wikipedia.org/wiki/Иммунная_система) продукта

В любой сложной системе неизбежно организуется иммунная подсистема, которая отвечает за поддержание целостности родительской системы и её компонентов. Задача этой подсистемы не улучшение надсистемы, а предотвращение её деградации.

В организациях и продуктах такая штука редко проявляется в явном виде — вещь дорогая — все экономят. Обычно она существует в виде процессов и ролей, которые частично выполняют её функции: безопасники, peer review, технические и неформальные лидеры, etc.

Эта система как раз занимается точечной оценкой влияния на продукт/организацию их компонентов и модификацией их при необходимости. Иногда это может выглядеть как директивное управление, от которого я в этом тексте отговариваю.

Этот подход работает, потому что для иммунной системы важно не конкретное влияние компонента на конкретный конечный параметр нашего организма, а оценка общей полезности этого компонента: наносит ли он пользы больше, чем вреда.

Соответственно можно сказать, что у нас должно быть запущено два процесса адаптации

- Сверху — руление всем продуктом.
- Снизу — устранение конркетных больших проблем, которые части продукта не могут решить самостоятельно.
///

Подробнее про руление продуктом через гипотезы и запуск цикла обратной связи я расскажу в следующем посте.

## Часть продукта — часть корабля

Из логики выше можно вывести множество следствий, части их я посвящу будущие посты. Здесь же я хочу обратить внимание на несколько ключевых и/или интересных.

**Роль современного лидера — направлять, а не управлять**. Разница может быть неочевидной, но она значима. Управление предполагает директивность, детализацию и контроль; направление — «мягкую силу» — информирование, обучение, поддержку, поощрение, создание условий для самоорганизации.

В современном мире один человек не может достоверно знать куда двигаться, но **при наличии опыта и знаний можно понимать как удобнее двигаться и куда точно двигаться не надо**. Если такой человек находится в команде, которая не боится проявлять инициативу, экспериментировать, то она, при его поддержке, будет двигаться в (более) оптимальную сторону.

**Не стоит разделять управление продуктом и управление командой** (инфраструктурой, процессами, артефактами — выберите своё, далее буду упоминать только команду). Меняя одно мы меняем другое. Разные роли могут иметь разный фокус, но при здоровой организации труда зоны ответственности будут пересекаться. В таких пересечениях следует способствовать возникновению коммуникации и коллаборации, а не вычищать их по правилу «останется только один ответственный».

**Измеряем ценность продукта, а не ценность команды.** Если продукт наносит достаточно пользы, оставьте его команду в покое. Если не наносит — думайте как изменить продукт. Может быть для этого потребуется изменить команду, а может быть и нет.

В пару к предыдущему утверждению: **изменяем продукт, а не команду.** Нам важны изменения в свойствах продукта, чтобы их достичь мы направляем его развитие в конкретную сторону. Движение в эту сторону может потребовать изменения в команде, а может и не потребовать.

И ещё раз отдельно отмечу, что все эти утверждения справедливы и для инфраструктуры, и для артефактов, и для процессов. С этим часто большие проблемы у инженеров — нам часто интересно покрутить что-нибудь просто потому, что мы можем (интересно что получится), а не потому что это изменит что-то существенное в продукте. Надо следить за собой и, по мере сил, пресекать такие порывы. Но иногда можно и не пресекать :-D
