---
title = "Пара слов о GitHub Сopilot"
tags = [ "neural-networks", "practice", "development", "reflection", "futurology", "exocortex",]
published_at = "2023-03-12T12:00:00+00:00"
description = "Впечатления от GitHub Сopilot."
seo_image = "images/few-words-about-github-copilot-cover.jpg"
---

/// brigid-images
src = "images/few-words-about-github-copilot-cover.jpg"
caption = 'DALL-E: "Vrubel style painting of pair programming Robot + Human. An robot is writing code, a human is reviewing code".'
///

Последние несколько недель использовал [GitHub Сopilot](https://github.com/features/copilot), благо для Emacs есть [плагин](https://github.com/zerolfx/copilot.el). Поделюсь впечатлениями.

Для справки, я уже лет 15 осознанно не использовал умное автодополнение. Всё моё автодополнение — это [DynamicAbbreviations](https://www.emacswiki.org/emacs/DynamicAbbreviations), по сути — дополнение написанного слова на основе словаря из открытых исходников.

Причина отказа такая: используя «умное» автодополнение (например, подсказку аттрибутов/методов объекта) перестаёшь понимать проект. Начинаешь на автомате брать предлагаемые варианты методов/переменных, не разбираясь что они конкретно делают и есть ли альтернатинвые варианты.

В краткосрочной перспективе отказ от автодополнения повышает нагрузку на человека (особенно на память) и замедляет работу, но в доглосрочной даёт глубокое понимание проекта, возможнсоть крутить его в голове как угодно, что с лихвой окупает потери на скорости в моменте. А поскольку я работаю только над долгими проектами, долгосрочная выгода важнее.

С Copilot я, похоже, вернуcь к умному автодополнению, в его более правильном варианте.

Итак, давайте посмотрим чего умеет и не умеет Copilot.

<!-- more -->

## Что Copilot не может

По крайней мере сейчас Copilot не умеет:

- Создавать большие куски кода без багов.
- Стабильно создавать мелкие куски кода без багов.
- Читать ваши мысли, спеки (если они не вшиты прямо в код или комментарии), учитывать неявные соглашения, etc. Это вроде само собой разумеющееся, но в условиях хайпа, лучше это проговорить :-)
- Генерировать любого рода архитектуру в каком-либо виде.

Фактически, это не более чем умное автодополнение, которое может генерировать несколько строк кода.

## Что Copilot может

Главная фича, которая делает Copilot крутым инструменом — это понимание контекста, в котором вы пишете код.

Не в смысле:

«Программист поставил точку после переменной класса X, значит ему надо показать список методов класса X».

А в смысле:

«Программист пишет функцию в модуле, который работает с базой, в этом модуле есть примеры запросов, примеры использования переменных, код модуля описывает словарь доменной области, значит для тела этой функции, исходя из её названия и уже написанно кода можено предложить такую-то реализацию».

Другими словами, Copilot выступает в роли Junior Developer, который плохо пишет код, плохо знает проект, но всё-таки по образу и подобию существюующего кода может наносить пользу.

По сути, вы начинаете заниматься парным программированием, где в роли напарника у вас джун с высокой скоростью написания кода:

- сложные куски, или первый код в модуле/проекте вы пишете сами.
- чем больше кода в контексте вашей текущей работы, чем более он «стандартен для планеты», тем чаще вы начинаете делать ревью кода джуна, вместо того, чтобы писать код самому.

Парное программирование, как известно, рулит, но очень дорого для проекта. Copilot делает его дешёвым.

## Будущее

Кажется я уже  писал похожие соображения, но ссылку не найду, поэтому повторюсь:

- Очевидно, уровень Junior Developer временный. Через год будет Middle, через пару лет — Senior. Это определённо перевернёт разработку.
- В то же время, Copilot и аналоги — просто инструмент, он не заберёт работу программистов, но существенно её изменит. Работа станет больше про чтение, про ответственность, про формализацию реального мира.
- Возможности, которые демонстрирует ChatGPT, ещё больше смещают фокус в сторону парной работы в формате AI+Human. Думаю, это будет круто. Особенно для людей с опытом и мозгами.

Также я пока не уверен, что Copilot будет полезен для молодых специалистов. Им будет сложно определять косяки и проблемы его подсказок. При отсутствии опыта и глубоких знаний, появляется большой риск стать зависимым от Copilot, что в долгосрочной перспективе либо поставит крест на профессиональном росте, либо значительно замедлит его.

По сути, для текущего джуна, работа с Copilot — это как списывание на экзамене, причём не у самого лучшего ученика.

P.S. Copilot использовался, чтобы написать этот пост :-D