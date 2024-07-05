---
title = "GraphQL & Python"
tags = [ "backend", "python", "practice", "development", "interesting"]
published_at = "2021-04-05T12:00:00+00:00"
seo_description = "О GraphQL, нюансах его использования и интеграции с Python."
seo_image = ""
---

Как и [собирался]{post:tarantoga-the-first-pancake}, полез разбираться с [GraphQL](https://graphql.org/).

Смотрел на него в контексте Python, поэтому возможны искажения — технология родилась, как и многое сейчас, в мире JavaScript — [референсная реализация](https://github.com/graphql/graphql-js) на этом языке сделана.

<!-- more -->

## О GraphQL

Свечку при рождении стандарта я не держал, но, думаю, всё было примерно так…

Представьте, что вы Facebook.

У вас тыщи-тыщ микросервисов и столько же GUI к ним. Все эти сущности связаны [многие-ко-многим](https://ru.wikipedia.org/wiki/%D0%98%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%BE%D0%B5_%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5_%D0%BF%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BD%D1%8B%D1%85_%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D0%B5%D0%B9), имеют разные версии, обновляются по разным правилам и с разной скоростью.

В вашей инфраструктуре творится ад. При изменении одной сущности приходится перепроверять не сломает ли она что-либо в десятках других, с которыми взаимодействует. Время на согласование, реализацию и внедрение изменений начинает стремиться к бесконечности. А скорость внедрения изменений — ваши деньги.

Поэтому вы ищете способ борьбы со сложностью — абстракцию, которая спрячет часть проблем, выторгует время интеграции в обмен на что-нибудь другое. Например, на:

- Машинное время, которое значительно дешевле.
- Архитектурные ограничения — время разработчиков, которое не так дёшево, но всё-таки даёт выигрыш. Много времени интеграции можно сторговать на не очень много времени разработчиков.

Абстракция приходит к вам в виде стандарта описания и организации API, который позволяет:

- Клиентам — запрашивать подмножество данных, предоставляемых сервисом.
- Сервису — проверять соответствие запрошенного подмножества актуальной схеме.

GraphQL позволяет значительно ослабить, но не убрать (!), требования синхронизации версий. Фактически, ваш мир из квантованного атомарными релизами сдвигается в сторону аналогового, в котором модели данных плавно эволюционируют. Отсутствие резких скачков упрощает поддержание согласованности сущностей.

Поскольку всё общение между сущностями сопровождается передачей схем данных в виде запросов, становится легче отследить рассинхронизацию. Да, я знаю что в GraphQL запрос и схема — разные вещи, но, фактически, запрос является облегчённой схемой.

Вроде как профит и все довольны, но есть нюансы.

## Проблемы GraphQL

У меня сложилось впечатление, что стандарт родился в специфическом окружении, со своей атмосферой и требованиями. После чего он быстро пошёл на взлёт внутри Facebook, а потом и во внешнем мире.

В итоге GraphQL достиг популярности быстрее, чем начали проявляться его недоработки. Исправлять их теперь очень дорого из-за инерции в виде огромного количества зависимых проектов.

Стандарт хорошо работает для ммм… сети «плоских» сущностей, с простой логикой. Но если вам необходимо работать со сложными структурами данных или сложными изменениями, то вы будете страдать. Особенно, если вы хотите делать металогику любого рода.

Если вы Facebook или Google, которые в состоянии масштабироваться деньгами, покупая железо и людей, то GraphQL — вариант для вас. Если вы не можете торговать сложность за деньги, то он вам не подойдёт.

Косяков Особенностей у стандарта масса, многие из них имеют любимую мной привычку всплывать в совершенно неожиданный момент. Потому что «нельзя было подумать, что это не работает». Некоторые из особенностей даже вполне обоснованы, что не делает их менее приятными, к сожалению.

Вот что я насобирал из «мелкого»:

1. Нет типа для словаря.
2. Нельзя попросить сервер [вернуть все поля объекта](https://github.com/graphql/graphql-spec/issues/127), помимо явно указанных в запросе.
3. [Проблема N+1](https://stackoverflow.com/questions/97197/what-is-the-n1-selects-problem-in-orm-object-relational-mapping), которую [решили](https://github.com/graphql/dataloader) ограничением логики работы с доменами.
4. Ограничено формирования Union типов. Например, нельзя создать Union скаляра и контейнера, как и нельзя сделать Union частью Union.
5. Проблемы с вложенными и прочими сложными типами.

Справедливости ради отмечу, что ту же проблему N+1 они решили вполне нормально. Я и сам когда-то думал о похожем решении для сглаживания нагрузки. Но дело в том, что это решение не опционально, а практически обязательно. То есть **стандарт коммуникации между клиентом и сервером накладывает серьёзные ограничения на коммуникацию между сервером и хранилищами.**

Есть и более крупные косяки.

Во-первых, GraphQL различает входные и выходные типы данных. Мало того, что в итоге типы надо описывать дважды, так на входные типы ещё и наложены дополнительные ограничения. Например, они могут содержать только конкретные типы, а Union не могут. Это сразу ставит крест на некоторых интересных решениях вроде передачи гетерогенного списка операций на сервер.

Народ массово просит убрать это дикое разделение, но разработчики держатся. Обсуждения [началось в 2015 году](https://github.com/graphql/graphql-js/issues/207), [продолжилось в 2018](https://github.com/graphql/graphql-spec/issues/488) и только [в 2020 начали обсуждать реализацию](https://github.com/graphql/graphql-spec/pull/733).

Раньше у меня был любимый тикет в Django, с обсуждением производительности ORM. Теперь есть ещё один любимый тред.

Во-вторых, в одном стандарте объединили требования к схеме данных с требованиями к взаимодействию с сервером. Что мешало дать это на откуп разработчикам или сделать два стандарта не знаю, но вот сделали… Ладно, я понимаю, для Facebook с его инфраструктурой это актуально и даже нужно. Но остальным зачем страдать?

И первое и второе, в общем-то, — классический, банальнейший пример детской ошибки разработчиков библиотек и фреймворков. **Разработчик вспомогательного кода не должен диктовать пользователям как его код использовать**. Это азы.

Небольшая группа не может предусмотреть все потребности большой, поэтому она не должна вводить диктаторские механизмы контроля. Превентивная диктаторская защита пользователя никогда не шла на благо.

Хотите защитить: описывайте best practices, пишите утилиты для автоматического поиска ошибок, вводите дополнительные стандарты.

При необходимости защититься, сообщество эволюционным путём сделает это лучше оригинальных разработчиков.

Вон, в Django раньше тоже страдали стрёмными ограничениями (или мне так казалось), а потом увидели, что сообщество параллельно пилит свои автоматические чекеры и сделали их [поддержку во фреймворке](https://docs.djangoproject.com/en/3.1/topics/checks/). Кому надо — проверяет, кому не надо — не проверяет. Таков путь.

## GraphQL в Python

Перечень актуальных серверов и клиентов можно найти на [сайте GraphQL](https://graphql.org/code/#python).

Все они выглядят полуживыми, особенно клиенты. Собственно, на клиентов я посмотрел и решил не использовать.

Из серверов активно смотрел [graphene](https://github.com/graphql-python/graphene) и [ariadne](https://github.com/mirumee/ariadne).

У всех серверов, кроме [strawberry](https://github.com/strawberry-graphql/strawberry) основная активность закончилась до 2020 года. Активность в strawberry, предполагаю, связана с выходом новых стандартов Python, а не с GraphQL.

Топовый по лайкам на гитхабе graphene в марте этого года [начал искать мейнтейнеров](https://github.com/graphql-python/graphene/issues/1312). И в целом давно не развивается.

Документация серверов выглядит куцей.

Скорее всего, сервера ориентированы на взаимодействие с JavaScript клиентами и в целом выглядят как минималистичные порты. Но это моё впечатление на уровне чуйки, могу ошибаться.

В пользу этой теории говорит то, что ни в graphene ни в ariadne я не нашёл удобного способа десериализовать ответ сервера обратно в питоновские объекты. Это как-минимум странно, так как это первое, что хочется сделать, имея клиент и сервер с общей кодовой базой.

Graphene, ariadne и strawbery используют одну и ту же библиотеку для реализации core логики. Она так и называется: [graphql-core.](https://github.com/graphql-python/graphql-core) Если вам вдруг очень надо, можно сразу её брать и писать на ней самый правильный сервер.

Также есть разница в подходах к работе со схемой данных:

1. code-first — схема описывается кодом на Python.
2. schema-first — схема описывается канонической схемой GraphQL.

Зачем использовать code-first подход при работе с кроссплатформенной технологией я не знаю. Это нерационально, так как становится сложнее переносить схему. Также такой подход привязывает схему к конкретной реализации сервера.

Для решения проблемы N+1 на Python я нашёл две библиотеки:

- профильную: [aiodataloader](https://github.com/syrusakbary/aiodataloader)
- непрофильную: [promise](https://github.com/syrusakbary/promise)

В обоих активности нет больше года, популярностью они тоже обделены.

Соответственно вердикт следующий.

Если ваш фронтенд на JavaScript, а бэкенд на Python и вам ооочень надо, то GraphQL можно использовать. Я предлагаю для сервера ariadne из-за schema-first подхода.

Вполне возможно, GraphQL будет выглядеть значительно лучше, когда вся инфраструктура написана на JavaScript.

В остальных случаях лучше искать другие варианты.