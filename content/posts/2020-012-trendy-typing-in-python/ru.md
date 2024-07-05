---
title = "Модная типизация в Python"
tags = [ "the-tale", "open-source", "python", "practice", "development", "theory", "interesting", "best"]
published_at = "2020-05-11T12:00:00+00:00"
seo_description = "Обзор подходов к статической и динамической проверке типов в Python."
seo_image = "images/cover-trendy-typing-in-python.jpg"
---

/// brigid-images
src = "images/cover-trendy-typing-in-python.jpg"
caption = "Разработчики пришивают типы к Python."
///

Раз в несколько лет я нахожу время, чтобы покопаться в наработках сообщества по «продвинутым» проверкам типов. Благо у меня под рукой есть взрослый, большой и нетривиальный [проект](https://github.com/the-tale), на котором можно безбоязненно ставить эксперименты.

Не могу сказать что я разделяю оптимизм по поводу продвинутой типизации в Python. Наоборот, считаю, что это как попытка пришить змее ноги — забавно, но вряд ли удобно. Но раз куча людей тратит на это время, надо быть в курсе.

В этот раз я:

- Посмотрел что из себя представляет [mypy](http://mypy-lang.org/) и чем может быть полезно (мало чем).
- Посмотрел чем можно автоматически сгенерировать аннотации типов (ничего рабочего нет).
- Подумал о том, как правильно использовать проверку типов в Python, раз их так форсят.
- Нашёл [библиотеку](https://github.com/agronholm/typeguard), реализующую идеологически верный подход.

Рассказывать буду тезисно, без глубоких обоснований, так как делать нормального качества обоснования для таких холиварных вопросов слишком долго, а я уже дней 5 на копание в этом потратил.

**Большая часть поста не про mypy, а про философию проверки типов и будущее Python.** Поэтому должно быть интересно, даже если сам mypy вас не интересует.

<!-- more -->

## Оговорки

На всякий случай некоторые уточнения:

1. Я не против статической типизации и типизации в целом. Но только в тех инструментах и тех процессах, которые изначально её предполагают.
2. У меня 5 лет опыта разработки на C++, причём на нём я начинал карьеру и как плюсист, считаю, был весьма компетентен. Поэтому, когда я говорю о статической типизации, я говорю не о какой-то эфемерной магии, которую в глаза не видел, а о своём собственном опыте её использования (типизации, не магии) на одном из хардкорных языков в хардкорных проектах.

## Mypy и компания

Что я делал с mypy:

1. Написал плагин для [smart\_imports](https://github.com/Tiendil/smart-imports), который помогает mypy находить импорты, когда они скрыты за smart\_imports.
2. Добавил аннотации в модули, отвечающие за ядро баланса Сказки.
3. Попытался сгенерировать аннотации для остального кода, ни одним способом сделать это не удалось.
4. Оценил время на ручную разметку кода и счёл это занятие полностью бессмысленным.
5. Поправил все ошибки, которые mypy сообщал.
6. Посмотрел на общую картину.
7. Потыкался в другие анализаторы.
8. Откатил всё, кроме разметки модулей баланса и плагина.

Вот что могу сказать про этот интересный опыт:

- Выявил 3 минорных ошибки в коде Сказки, вызванные копипастой.
- Когда я последний раз смотрел, в репозитории mypy на github было открыто 1199 задач, из которых 388 — баги. Как вы думаете, это хороший показатель для софта, отвечающего за поиск ошибок, который разрабатывается с 2012 года?
- Сама mypy (всё ещё) находится в активной разработке. В коде хватает частично удалённой логики, которая легко вас запутает.
- Если у вас в проекте используется метапрограммирование, то вы будете страдать.
- Если у вас в проекте активно используется метапрограммирование, то вы будете очень сильно страдать.
- Чтобы сделать статическую разметку типов для кода с метапрограммированием, вам придётся очень загнаться: читать код mypy и делать плагин для него (как это сделали, например, для [Django](https://pypi.org/project/django-stubs/)).
- Про это хорошо сказано в [документации](https://mypy.readthedocs.io/en/stable/extending_mypy.html):
    - Extending the [PEP 484](https://www.python.org/dev/peps/pep-0484) type system to accommodate all existing dynamic patterns is impractical and often just impossible.
    - The plugin system is experimental and prone to change.
- Предлагаемое для плагинов api выглядит очень куцым.
- Плагины для поддержки сторонних библиотек, равно как и библиотеки stub файлов, само собой, отстают от актуальных версий самих библиотек и не претендуют на полноту.

Но не mypy единым жива статическая проверка типов в Python. Сразу три корпорации отметились своим софтом:

- [Microsoft](https://github.com/microsoft/pyright) — 60% кода на TypeScript.
- [Facebook](https://github.com/facebook/pyre-check) — 73% кода на OCaml о\_О.
- [Google](https://github.com/google/pytype) — смогли написать на Python, но: «Python versions > 3.7 are not yet supported».

Завязываться на первые два, само собой, себе дороже. Гугловская же библиотека не поддерживает синтаксис (к чёрту семантику, хоть бы запускалась) версии языка, выпущенной полгода назад.

Учитывая время, потраченное на mypy, я решил с этой тройкой не связываться.

Для автоматической генерации аннотаций нашёл две библиотеки:

- [Monkeytype](https://github.com/Instagram/MonkeyType) от Instagram.
- [PyAnnotate](https://github.com/dropbox/pyannotate) от Dropbox.

Логика их работы одинакова: встраиваете их в свой проект, запускаете его, они собирают статистику, по статистике пытаются что-нибудь сгенерировать. Обе не удалось заставить генерировать что-либо полезное из-за серьёзных ошибок.

Типичные примеры:

- Генерация синтаксически неправильных типов, например пустой tuple Monkeytype описывает как Tuple\[\], что не соответствует синтаксису Python.
- В целом, у них сложности с распознаванием tuple переменной длины.
- Monkeytype не умеет разделять одноимённые классы из разных модулей. Если оба класса используются в целевом модуле, то Monkeytype сгенерирует их импорты по именам, одно имя затрётся и часть аннотаций станет неверными.

Monkeytype ещё и оперативу выедает (8Гб съел легко и быстро).

## Статическая проверка типов в Python

Правильную аналогию я уже привёл: **делать статическую проверку типов в Python — это как пришивать змее ноги.**

Почти все преимущества Python происходят из его динамической природы: простота, скорость разработки, легкость вхождения, гибкость.

Python — один из лучших языков для прототипирования, итерационной, эволюционной, <ваш вариант> разработки. **Вы начинаете с простого кода и усложняете его там, где вам необходимо. В том числе, с помощью тестов и метапрограммирования. Добавляете проверки и ограничения там и только там, где они нужны.**

Статическая проверка типов работает не так. Вы не получите существенных результатов, пока не добьётесь покрытия типами всего кода. При этом вы должны будете либо отказаться от метапрограммирования, либо смириться с повышением на порядок затрат на работу с ним.

На каждую фичу Python, статический анализатор должен иметь свой костыль. Сугубо из-за разницы между статической и динамикой парадигмами. Вы же должны будете набор этих костылей знать и использовать.

По сути, для внедрения статической проверки типов, вы должны будете отказаться от самых сильных преимуществ Python. **Зачем тогда вам Python?**

Кстати, о костылях, вы в курсе, что тот же mypy всё равно импортирует анализируемые модули, несмотря на то, что заявляется как статический анализатор? Потому что сам Python работает динамически и для возможности хотя бы найти дочерний модуль ему нужно загрузить родительский. И это правильная логика в рамках динамической парадигмы.

Зачем же тогда все так ломятся в статический анализ? Почему Facebook, Microsoft и Google выпустили свои средства для этого?

Люди занимаются этим потому, что это считается крутым и выглядит крутым. Статический анализ сам по себе крут, если заниматься им в соответствующих языках или в несоответствующих, но в качестве хобби проекта.

Корпорации же решают не те задачи, которые решаем мы.

С точки зрения профессионального программиста, одна из основных его проблем (и тем самым задач) заключается в том, чтобы не повторять себя — известный принцип [DRY](https://ru.wikipedia.org/wiki/Don%E2%80%99t_repeat_yourself). Это же волнует и целые команды разработчиков. Следование этому принципу экономит время, нервы, деньги.

Python в этом плане очень хорош, благодаря метапрограммированию. Всё, что повторяется, можно сгенерировать.

Поэтому хорошая программа на питоне постепенно становится похожа на набор конфигов вперемешку с уникальным кодом. Это мы можем наблюдать, например, в области эволюции веб-фреймворков.

У корпораций же другая проблема. Им не выгодно содержать команды высококвалифицированных специалистов, которые умеют в метапрограммирование. Столько работников, сколько им надо, просто нет на рынке. Тем более не выгодно (если вообще возможно) заниматься синхронизацией работы множества таких команд.

Поэтому корпорации делают ставку не на профессионализм, а на массовость и простоту. В таком случае и появляется необходимость в статическом анализе типов — метапрограммирование не используется, а огромное количество людей печатает всё новые строчки однотипного кода.

Но так будет не всегда.

Интерес корпораций в статическом анализе Python временный. Он вызван широким распространением Python и огромной кодовой базой, написанной, когда альтернатив для Python не было.

В своё время Python занял много свободных ниш сугубо благодаря своей простоте, гибкости и универсальности. Но согласно логике эволюции дальше он будет вытесняться более специализированными инструментами:

- Во многих частях веба его будет заменять Go.
- В машинном обучении его заменят специализированные инструменты и / или языки.

В целом, новые инструменты будут теснить Python в каждой области, требующей массового труда низко- и средне- квалифицированных программистов.

Обратите внимание, я говорю о программистской квалификации, а не о квалификации в основной профессии. Можно быть хорошим аналитиком и посредственным программистом, великим учёным и посредственным программистом и так далее. Для таких людей будут создаваться отдельные специализированные инструменты.

С вытеснением Python из областей, требующих написания однотипного кода, будет заканчиваться и поддержка статического анализа типов со стороны больших игроков.

## Динамическая проверка типов в Python

Если статическая типизация нам не подходит, то имеет смысл взглянуть на динамическую. То есть внедрять дополнительные проверки типов при выполнении программы. Например, при работе тестов.

Python и так проверяет типы в рамках своей логики. Аннотации он, конечно, не учитывает, но их могут учитывать сторонние библиотеки. Для этого Python, в силу своей динамичности, имеет огромное количество средств.

Так как природа проверок совпадает с природой языка, то их внедрение (при наличии нужной библиотеки) будет происходить также легко, как и написание тех же тестов.

Более того, динамическая проверка типов начнёт приносить пользу сразу. Если нам надо проверять типы при вызове конкретной функции, нам достаточно описать только её типы и запустить код. С описанными типами можно сравнивать уже типы фактически переданных аргументов. В отличии от статических проверок, когда необходимо кроме типов самой функции описать типы всего, что с ней явно или неявно связано.

Динамическая типизация позволяет нам пользоваться всеми преимуществами Python. Как и в случае с остальными фичами, вы начинаете с простого кода и усложняете / детализируете его только в тех местах, которые считаете достаточно важными для этого. Вам нет необходимости поддерживать во всём проекте некие дополнительные сквозные требования.

Если подумать, то я слабо понимаю почему сообщество так активно выступает за статическую типизацию вместо динамической. Последняя легко встраивается в уже существующие подходы — ту же практику написания тестов, которая автоматически создаёт пространство для удобного внедрения динамических проверок при своём запуске.

## Typeguard

К счастью, не всё сообщество двинуло в сторону статической типизации. Есть ещё светлые головы :-)

Поэтому хочу порекомендовать [typeguard](https://github.com/agronholm/typeguard) — библиотеку для проверки типов аргументов функций во время исполнения.

Typeguard умеет как включать проверки для конкретных функций (с помощью декораторов), так и проверять все функции (встраивается в процесс импорта и навешивает декораторы на все функции и методы).

Интересно сравнить сложность её внедрения с mypy. Внедрял typeguard я примерно так:

1. Импортировал
2. Вызвал метод для встраивания библиотеки в процесс импорта модулей.
3. Добавил аннотации в модули, отвечающие за баланс Сказки (это было уже сделано в случае mypy).
4. Запустил тесты.

Всё!

Библиотека заработала со smart\_imports без всяких плагинов. Не потребовала конфигов и плагинов, не сделала ложных срабатываний, нашла ошибки в аннотациях, которые пропустил mypy (и не нашёл бы, пока я бы не разметил весь код).

**Потому что идеология библиотеки соответствует идеологии языка.**

К сожалению, функциональность библиотеки не покрывает все необходимые для полной проверки типов случаи: проверяются вызовы функций, но не операции внутри них (например, не происходит проверка присваивания).

Для этих целей, видимо, необходимо выбирать более хитрый подход.

Со своей стороны я сделал [pull request](https://github.com/agronholm/typeguard/pull/125), чтобы добавить проверку типов атрибутов модуля, после его импорта. Если его примут, то мои текущие требования к проверке типов typeguard полностью закроет.

## Что в итоге будет в Сказке

Буду использовать typeguard для кода, работающего с балансом и прочим геймдизайном.

Не вижу никакого смысла в явной проверке типов инфраструктурного кода (в обработке запросов, демонах, очередях, etc). Этот код покрыт тестами  и неявными проверками типов в спецификациях и метапрограммировании (Django, protobuf и прочие библиотеки, которые «делают магию», использование этой же «магии» проверяют лучше, чем типизация). Подавляющее большинство потенциальных ошибок типов в этих местах будет словлено либо сторонними библиотеками либо тестами.