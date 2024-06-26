---
title = "Как завалить собес у меня"
tags = [ "backend", "python", "thinking", "education", "practice", "development", "reflection", "theory", "interesting"]
published_at = "2022-07-24T12:00:00+00:00"
seo_description = "Заметки о типичных проблемах людей на собеседованиях у меня. Независимо от уровня кандидата."
seo_image = ""
---

Мы в [Palta](https://palta.com/) активно [ищем сотрудников]{post:looking-for-people-to-join-the-team}, поэтому я собеседую людей уровня senior & lead. А до этого в [Melsoft](https://melsoft-games.com/) доводилось мидлов и выше собеседовать. Накопился ряд наблюдений, которыми хочется поделиться.

Сначала хотел написать на глобальную тему, вроде разницы между junior, middle, senior & lead, но дело шло туго, поэтому сделаю проще.

Расскажу о косяках, которые с большой вероятностью помешают пройти собеседование конкретно у меня.

По отдельности каждая проблема — не приговор, но точно снижает шансы на положительное впечатление.

Для каждой проблемы я написал упрощённый пример диалога. Надеюсь получилось наглядно. Главное помните, что вопросы и ответы там придуманы специально для иллюстрации проблемы, а не взяты из реальных собесов. По большей части :-)

<!-- more -->

## Закрытые ответы на вопросы

> — Расскажи как вы в команде контролируете качество кода.
>
> — Ну мы пишем юнит-тесты.
>
> … пытаюсь подождать, может человек задумался.
>
> … кандидат ждёт следующий вопрос.
>
> … неловкая пауза…
>
> — ещё код ревью делаем.

Каждый такой эпизод из меня буквально кусок души вытягивает. Бывали люди, после получаса такого общения с которыми я уставал сильнее, чем от авральной недели.

Ответы без подробностей — это повод сомневаться в знаниях и опыте кандидата. Нет подробного ответа — нет уверенности что он/она знает тему, а не кидается базвордами. На каждый закрытый ответ приходится на ходу придумывать серию уточняющих вопросов. Или забить — устроить допрос по паре тем можно, но не по всем же — на это никакого времени не хватит.

Собеседование — это не допрос и не монолог. Это диалог, который надо строить совместно. Надо искать точки соприкоснования — общий опыт, который позволит легко и комфортно разобраться в квалификации всех его участников.

В конце-концов кандидату тоже важно определить квалификацию будущих коллег. Самый простой и действенный способ сделать это — найти общий опыт и обсудить его. Если мы все условные сеньоро-лиды, то опыт неизбежно есть. Но его не найти, если одна из сторон закрывается.

Кроме того, закрытые ответы наводят на другие мысли:

- Что, если кандидат продолжит общаться в этом стиле и после найма? Это плохо скажется на продуктивности команды.
- Может этот собес ему и не нужен? Тогда зачем мы все тут собрались :-)

Софт навыки важны, хотя бы в области поддержания разговора. Могут быть исключения, но о них лучше предупреждать заранее. Тогда у нас будет возможность заранее подстроится под такое собеседование.

## Поверхностное знание базовых инструментов

> — Я сеньор, 5 лет пишу бэкенд на Django и FastAPI.
>
> — Круто! Что такое [GIL](https://wiki.python.org/moin/GlobalInterpreterLock)? Где в Django (по твоему мнению) используются метаклассы? Сравни Django и FastAPI. Что нового в последних версиях Python?
>
> — Это какая-то блокировка. Не знаю. Django — большой, FastAPI — маленький и быстрый. Async/await вроде появились.

Доступные способы решения задач определяются нашими знаниями и инструментами.

Если у нас нет знания, мы теряем доступ к решениям, которые на нём основываются.

Если мы не знаем инструментов, мы, опять-таки, теряем доступ ко множеству потенциальных решений.

Из-за подобных пробелов мы не то что можем не знать точного решения, мы можем даже не догадываться о его теоретической возможности.

Есть компании в которых нужно вечно делать простейшие вещи в типовых проектах. Для них приемлемы специалисты с поверхностными знаниями.

Я, исторически, работаю на проектах требующих нестандартных решений или, как минимум, сложных, нетривиальных.

Поэтому, если кандидат годы профессионально использовал микроскоп, но не продвинулся дальше забивания им гвоздей, то нам, скорее всего, не по пути.

## Внезапные эпические пробелы в знаниях

> — Я делал сложные оптимизации БД, писал сложные алгоритмы.
>
> … Рассказывает что-то похожее на правду, но без глубокой конкретики.
>
> — Что такое [сложность алгоритма](https://ru.wikipedia.org/wiki/%D0%92%D1%8B%D1%87%D0%B8%D1%81%D0%BB%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D1%81%D0%BB%D0%BE%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D1%8C)? Что такое [нормализация/денормализация данных](https://ru.wikipedia.org/wiki/%D0%9D%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D1%84%D0%BE%D1%80%D0%BC%D0%B0)?
>
> — Не знаю.
>
> … о\_О, тянусь за списком базовых вопросов, чтобы определить чего ещё кандидат может не знать.

Если у кандидата есть внезапная/нелогичная/неожиданная большая дыра в знаниях, значит могут быть и другие. Выявить их все за 1-2 часа собеса невозможно. Значит при найме будет вероятность получить специалиста непригодного для фронта работ или неспособного понимать решения и аргументацию коллег.

Также появляется вероятность, что кандидат за счёт софт скилов выглядит профессиональнее, чем являетесь на самом деле.

## Рассуждения не на том уровне абстракций

> — Я сеньор с 10 годами опыта.
>
> — Расскажи в чём плюсы и минусы [очереди](https://ru.wikipedia.org/wiki/%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D1%8C_(%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5)) как архитектурного решения.
>
> — Очереди позволяют слать сообщения, мы можем отправлять их не зная кто конкретно получатель, для микросервисов можно использовать.

или

> — Я тим-лид с 10 годами опыта, управлял 100500 человек.
>
> — Расскажи в чём разница между монолитной и микросервисной архитектурой. Когда что лучше применять.
>
> — Микросервисы — это (рассказывает базовую инфу о микросервисах). Монолит — это (тоже о монолите). Микросервисы маленькие — их легко изменять, монолит большой — его сложно изменять.

Моя любимая и не очевидная для многих, как мне кажется, претензия. Правда не уверен, что хорошо примеры сделал — наверняка можно было лучше.

Так вот, говоря об опыте, ответственности и грейдах справедливо утверждать, что от конкретного грейда ожидаются рассуждения в рамках конкретного масштаба: организационного, технологического, временного, etc.

Абстракции в которых рассуждает человек должны соответствовать его ответственности.

Проблема абсолютного большинства кандидатов, которых я собеседовал, в отставании уровня на котором человек рассуждает от ответственности, которую предполагает его грейд.

Утрируя, сеньоры отвечают в терминах мидлов, лиды рассуждают на временных масштабах джунов, etc.

На сколько я понимаю, это проявление [принципа Питера](https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B8%D0%BD%D1%86%D0%B8%D0%BF_%D0%9F%D0%B8%D1%82%D0%B5%D1%80%D0%B0): «В иерархической системе каждый индивидуум имеет тенденцию подняться до уровня своей некомпетентности». Из-за того, что людям дают ответственность раньше, чем они получают необходимые навыки и знания.

Большая редкость, наоборот, встретить человека, который рассуждает на уровне более высоком, чем его предполагаемая ответственность. Пару таких встречал, неизменно хорошими спецами оказывались.

Чтобы не быть голословным и уточнить мысль, вот, примерно, что я ожидаю в ответ на вопросы из примеров. С учётом, что важнее всё-таки сам процесс рассуждений, а не точный ответ — пересказ томов книг никто не ждёт.

Очереди:

- junior — это что-то для отправки сообщений.
- middle — использовал в одном проекте, ща расскажу, позволило размазать фоновые задачи по серверам.
- senior — очереди позволяют сгладить нагрузку, уменьшить связанность кода, etc., но их же ещё настраивать и поддерживать надо.
- lead — гладкая нагрузка; меньше связанность; бла-бла-бла; для малых проектов может быть перебором; [закон Конвея](https://ru.wikipedia.org/wiki/%D0%97%D0%B0%D0%BA%D0%BE%D0%BD_%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D1%8F); а ещё протокол сообщений устанавливать надо, команду учить; а если через год очередь не выдержит нагрузку? А если в облака, то может и выдержит…

Монолит vs Микросервисы:

- junior — все крутые поцоны используют микросервисы, потому что так правильно.
- middle 1 — я работал в конторе из 1000 человек и там все делали микросервисами, чтобы проще было изменения вносить. А ещё были люди, которые kubernetes настраивали — тоже важная работа.
- middle 2 — я работал в конторе из 1000 человек и там все пилили один монолит с историей в 20 лет. Один сумасшедший попробовал разбить его на микросервисы и умер — у нас сложно размазать логику по независимым сервисам. Есть, конечно, сложности, но и микросервисы не сахар.
- senior — Один микросервис проще делать, но появляется дополнительная работа по согласованию API, инфраструктуре, новые типы багов и проблем производительности. Монолит тоже может быть хорошим решением.
- lead — [закон Конвея](https://ru.wikipedia.org/wiki/%D0%97%D0%B0%D0%BA%D0%BE%D0%BD_%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D1%8F); связанность vs цена инфраструктуры; владение сервисами; монолит можно готовить почти как микросервисы, только дешевле; а микросервисы зато на разных технологиях можно делать; длительная поддержка сервисов.
