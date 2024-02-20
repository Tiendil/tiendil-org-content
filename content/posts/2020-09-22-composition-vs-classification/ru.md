---
title = "Композиция vs классификация"
tags = [ "thinking", "theory", "futurology", "interesting", "best"]
published_at = "2020-09-22T12:00:00+00:00"
description = "Два подхода к описанию свойств сущностей: композиция и классификация. Для чего они нужны, когда какой использовать и чем опасен неправильный выбор."
seo_image = "images/composition-vs-classification-cover.png"
---

/// brigid-images
src = "images/composition-vs-classification-cover.png"
alt = "Эволюция организации информации."
///

Раз мы обсудили [организацию информации]{post:organization-of-information}, давайте поговорим о подходах к описанию свойств сущностей: [композиции](https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%BC%D0%BF%D0%BE%D0%B7%D0%B8%D1%86%D0%B8%D1%8F) и [классификации](https://ru.wikipedia.org/wiki/%D0%9A%D0%BB%D0%B0%D1%81%D1%81%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F). Посмотрим для чего они нужны, когда какой использовать и чем может обернуться неправильный выбор.

Вопрос не так прост как кажется.

Исторически человечество сильно клонится к классификации. Начиная с ранних лет мы учим детей что классификация — это единственный основной способ организации информации — на неё опирается большинство учебников.

В итоге почти все взрослые люди имеют «урезанную» модель мира и не могут, например, в изобретательство.

К месту можно упомянуть и частный случай из отрасли — травмированность целого поколения разработчиков реализацией [ООП](https://ru.wikipedia.org/wiki/%D0%9E%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D0%BD%D0%BE-%D0%BE%D1%80%D0%B8%D0%B5%D0%BD%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%BE%D0%B5_%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5) в некоторых языках программирования, не будем показывать на [них](https://ru.wikipedia.org/wiki/C%2B%2B) [пальцем](https://ru.wikipedia.org/wiki/Java).

Заранее прошу прощения у математиков и других формалистов за отсутствие должной строгости в изложении. Свою задачу я вижу не в доказательстве математических свойств композиции и классификации, а в популяризации применения композиции.

<!-- more -->

## Композиция и классификация

Нельзя сказать, что эти подходы исключают друг друга. Наоборот, грамотное сочетание композиции с классификацией приносит больше пользы, чем использование их по отдельности. К сожалению, мало кто так поступает.

Разницу между подходами можно увидеть на примере описания понятия «человек».

«Человек есть животное о двух ногах, лишённое перьев, с широкими ногтями» (с) [Платон](https://ru.wikipedia.org/wiki/%D0%9F%D0%BB%D0%B0%D1%82%D0%BE%D0%BD) — это композиция — понятие определяется через сочетание признаков.

Биологический вид «Человек разумный» относится к роду Люди, семейства Гоминид, отряда Приматов, класса Млекопитающих, типа Хордовые, царства Животных, домена Эукариот — это классификация — понятие определяется через серию уточнений (срезов, делений по признаку) более общего понятия.

Может показаться, что отличий между композицией и классификацией нет: и там и там список признаков. Можно даже переделать платоновское определение человека в пародию на классификацию: человек относится к роду широконогтевых, отряда безпёрых, класса двуногих, царства Животных.

Но разница есть и она в наличии иерархии.

## Ремарка

Прежде чем перейдём к разбору различий между композицией и классификацией, отмечу одну особенность работы с информацией, в том числе мышления.

**Обработка информации заключается не только в создании новых понятий и использовании старых, но и в изменении существующих.**

Модель мира, отражённая в информации, которой мы манипулируем, физически не может на 100% соответствовать реальному положению дел. Несоответствие порождает [накопление ошибки, которое требуется постоянно устранять]{post:life-and-work-with-mistakes}, изменяя существующие информационные конструкции.

Изменение информации — это важный постоянный и затратный процесс, который значительно влияет на то, как мы работаем с информацией.

## Зависимые и независимые описания

**Композиция обеспечивает независимость описания одной сущности от другой.**

Мы можем свободно изменить перечень признаков в описании, не опасаясь, что это затронет другие сущности.

Даже если потребуется изменить семантику конкретного признака, изменение затронет только сущности, которые им обладают. При этом можно схитрить и вместо изменения существующего признака ввести новый, что позволит не трогать другие сущности или отложить их пересмотр на будущее.

**Классификация встраивает все сущности  в общую иерархическую сеть.**

Причём хорошая классификация подчиняется некоторым правилам, как [подсказывает википедия](https://ru.wikipedia.org/wiki/%D0%9A%D0%BB%D0%B0%D1%81%D1%81%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F):

1. На каждом уровне иерархии деление на подуровни стоит производить только по одному признаку. Например, плохой идеей будет делить бумагу на белую, чёрную, толстую и тонкую, так как в таком делении смешивается два признака: цвет и толщина, что исключает (в теории) или затрудняет (на практике) возможность их сочетания.
2. Сумма членов одного уровня классификации должна равняться (в теории) или быть не больше (на практике) объёма родительского уровня.

Когда эти правила нарушаются, появляются проблемы, которые выходят за рамки этого эссе. О них поговорим в другой раз. Будем считать, что и композиции и классификации у нас более-менее правильные.

Пусть есть простая классификация.

/// brigid-images
src = "images/composition-vs-classification-example.png"
alt = ""
///

Заглавные буквы в узлах обозначают обладание соответствующим признаком всех сущностей в этом и дочерних узлах.

Мы видим описания четырёх сущностей:

- A1B1
- A1B2
- A2C1
- A2C2

В разных ветвях иерархии могут находиться и одинаковые признаки, но мы этот вариант опустим — будем рассматривать наиболее общий случай.

Обратите внимание: A1 и A2 (B1 и B2, C1 и C2) — это разные признаки при делении по основанию A, например, цвету.

Также можно видеть, что справедливы следующие соотношения между множествами: ALL >= A1 + A1, A1 >= B1 + B2, A2 >= C1 + C2. В теории в этих отношениях должен быть знак равенства, но на практике не всегда разумно строить полное разбиение множества по всем вариантам признаков.

Если мы пересматриваем признак сущности, являющийся листом в [дереве](https://ru.wikipedia.org/wiki/%D0%94%D0%B5%D1%80%D0%B5%D0%B2%D0%BE_(%D1%82%D0%B5%D0%BE%D1%80%D0%B8%D1%8F_%D0%B3%D1%80%D0%B0%D1%84%D0%BE%D0%B2)) классификации, то проблем нет. Мы можем просто заменить A1B1 на A1B3, где B3 — новый признак при делении по основанию B. То есть теперь A1 >= B1 + B2 + B3. Или даже добавить новый уровень иерархии и получить A1B1D1.

Но если необходимо пересмотреть признак, находящийся выше по иерархии, то начинаются проблемы: иерархия создаёт зависимость признаков друг от друга.

Например, мы поняли, что для сущности A1B1 признак A1 определили по ошибке, на самом деле вместо A1 должен быть A2. Нам надо изменить описание сущности A1B1 на A2B1. Но в иерархии A2 нет места для деления по основанию B, там происходит деление по основанию C. Нам придётся в иерархию A2 на один из уровней добавить деление по основанию B, что потребует:

1. Пересмотр положения других сущностей в иерархии A2.
2. Добавление признаков из категории B для некоторых из них.

Если наша иерархия большая, то эти операции будут очень дорогими.

Аналогичная логика относится к удалению и добавлению признаков.

Кроме того, в принципе не получится построить хорошую классификацию, если некоторые сущности могут обладать сочетанием нескольких признаков одного основания, например одновременно иметь признаки A1 и A2.

Пока стрелки весов однозначно склоняются в сторону композиции, как более удобного метода описания. Но, как всегда, есть нюанс.

## Цена связей

Информация организуется с помощью связей между её кусочками. Например: «A это B» или «C обладает свойством D».

Работа с информацией, по сути, заключается в переборе, создании и удалении связей. И не важно как эта работа осуществляется: в голове, в компьютере, ручным перебором бумажек или хитрым сочетанием шестерёнок.

Чем меньше связей между сущностями, тем меньшим их количеством приходится оперировать единовременно (например, держать в голове), тем быстрее происходит обработка информации.

В этом плане классификация значительно опережает композицию.

Для простоты далее будем работать с примерами, когда информацию держат в голове.

**Композиция требует для каждой сущности поддерживать список связей со всеми актуальными признаками.**

Например, пользуясь композицией, в лесу мы должны будем для каждого дерева явно отмечать все необходимые нам признаки. Что-то вроде «эта штука может гореть». Добиться этого можно двумя способами:

- Запомнить для каждого конкретного объекта (дерева, зайца, ручья) связь с каждым из необходимых признаков: «это горит», «это бегает», etc.
- Держать в голове правило вроде «если это в виде столба, оно покрыто коричневой штукой и на нём есть зелёные штуки, то оно горит» для каждого отдельного признака и применять их к каждому встреченному объекту.

Очевидно, при попытке использовать этот подход на практике, голова просто «взорвётся».

**Классификация позволяет работать только с уточняющими и обобщающими связями.**

В том же примере с лесом, нам будет достаточно держать в голове только связи между классом объекта (например, «дерево») и соответствующими признаками («горит», «бегает»), плюс правило определения класса объекта, вроде: «если это в виде столба, оно покрыто коричневой штукой и на нём есть зелёные штуки, то это дерево».

В таком варианте нам необходимо держать в голове значительно меньше связей, что даёт ряд преимуществ:

- Мы можем держать в голове больше **разнообразной** информации.
- Мы можем сформировать общую понятийную базу из иерархии понятий и упростить передачу и хранение информации. Все знают что такое дерево, поэтому при общении не надо каждый раз заново перечислять все его признаки.
- Мы можем эффективно делать суждения сразу о множестве однотипных объектов. Без необходимости явно их перечислять.

Получается, что работать проще с классификацией, но изменять легче композицию.

## Полнота картины мира

Границы нашей картины мира зависят от того, как мы организуем информацию.

**Если сочетание параметров не может быть создано в рамках логики нашего мышления или его создание требует больших затрат, то мы этот вариант реальности не увидим.** Его буквально не будет существовать для нас.

Именно это я имел в виду в начале эссе, когда утверждал, что большинство взрослых не умеет в изобретательство.

Обучаясь по учебникам, полным классификаций, без практики использования композиции многие люди формируют у себя чрезмерно ограниченную, слишком классифицированную картину мира. Эта картина создаёт стоимостный барьер для изменения верхних уровней иерархии классов, что вынуждает людей уточнять картину мира через достраивание нижних уровней иерархии, тем самым вгоняя себя в ещё более жёсткие рамки.

Получается [положительная обратная связь](https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BB%D0%BE%D0%B6%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%BE%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D0%B0%D1%8F_%D1%81%D0%B2%D1%8F%D0%B7%D1%8C), которая в данном случае несёт явный вред.

## Композиция плюс классификация

В начале поста я упоминал, что грамотно сочетать композицию и классификацию выгоднее, чем использовать их по отдельности.

Внимательный читатель даже мог заменить, что в примере с классом деревьев в лесу используется и композиция. Признак «это горит» добавляется к классу «дерево» как раз композиционно, не встраиваясь в саму иерархию. Этот же признак можно независимо привязать к любому другому узлу дерева классификации, затрагивая только соответствующее подмножество сущностей.

Разумное сочетание композиции с классификацией обеспечивает выгодное соотношение между удобством использования и удобством изменения описаний для каждого конкретного случая.

Неудачное сочетание, наоборот, значительно усложнит жизнь и это касается не только науки, делопроизводства или юриспруденции. Применение классификации, особенно упрощённой, к сильно связанным областям информации порождает, например: расизм, шовинизм, чёрно-белую картину мира.

К сожалению, нет универсального алгоритма для определения правильного сочетания этих подходов. Определить его можно только экспериментально. Но можно предложить несколько эвристик.

1. Чем лучше вы понимаете [предметную область](https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B5%D0%B4%D0%BC%D0%B5%D1%82%D0%BD%D0%B0%D1%8F_%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C), тем выгоднее вам использовать классификацию.
2. Чем быстрее изменяется предметная область, тем выгоднее использовать композицию.
3. Чем сильнее творческая / изобретательская составляющая в вашей работе, тем выгоднее использовать композицию.
4. Плоская иерархия выгоднее глубокой.
5. Дополнять иерархию композицией признаков в узлах чаще всего выгодно.

Из них следуют более конкретные советы:

1. Если вы ничего не понимаете в предметной области, используйте композицию.
2. Если вы имеете дело с чем-то природным (например, физикой), то разумно склоняться в сторону классификации. Только если это не новая область знаний.
3. Если вы имеете дело чем-то социальным (например, управлением персоналом), то разумно склоняться в сторону композиции.

## Историческая перспектива

Темп нашей жизни и изменений в ней нарастает. Особенно изменение скорости видно в наше время. Я связываю это с развитием интернета и общим ускорением передачи информации между людьми.

В такой перспективе становится понятной склонность человечества к классификации. В условиях медленных изменений, она была выгоднее композиции.

Думаю ещё в XIX веке, изучая большинство наук, можно было верить, что изученное раз не изменится на протяжении десятилетий. А раз информация не менялась, то упор делался на классификацию.

В наше время, и тем более в будущем, ситуация иная.

Во-первых, информация изменяется всё быстрее. Причём не только в социальной сфере, но и в фундаментальных науках, вроде физики.

Во-вторых, мы научились автоматизировать работу с информацией — появились компьютеры. Машины способны значительно быстрее нас оперировать связями между кусками информации. Стоимость хранения и перебора связей стремительно уменьшается. Вокруг каждого человека формируется [экзокортекс]{post:my-exocortex}, на который переносится часть нашего мышления.

Поэтому я рискну предположить, что **мы стоим на пороге смены парадигмы мышления с доминирования классификации на доминирование композиции**.

Смена организации информации изменит даже не то «как мы видим мир», сколько «что мы видим в мире». И это будет захватывающе.