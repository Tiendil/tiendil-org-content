---
title = "Проекты"
published_at = "2020-07-26T12:00:00+00:00"
seo_description = "Список моих пет-проектов."
seo_image = ""
---

В свободное время занимаюсь хобби проектами разной степени экспериментальности.

Найти их все можно на GitHub: [github.com/tiendil](https://github.com/tiendil)

С радостью пообщаюсь о любом из них, равно как и приму помощь в разработке.

## Активные проеты

### Feeds Fun

- Сайт: [feeds.fun](https://feeds.fun/)
- GitHub: [github.com/tiendil/feeds.fun](https://github.com/tiendil/feeds.fun)
- PyPI: [pypi.org/project/ffun](https://pypi.org/project/ffun/)
- [Описание]{post:feeds-fun-news-reader-with-tags-and-chatgpt}
- Подробнее в постах по тегу [feeds.fun]{tags:feeds-fun}

Читалка новостей с тегами и нейросетями. Доступна онлайн, self-hosted по желанию.

- Автоматически определяет теги для каждой новости.
- Вы создаёте правила в духе `elon-musk & twitter => score -100500`, `procedural-content-generation & hentai => score +13`.
- В интерфейсе сортируете новости по интересности и читаете только самые-самые именно для вас.

### Brigid

- GitHub: [github.com/tiendil/brigid](https://github.com/tiendil/brigid)
- PyPI: [pypi.org/project/brigid](https://pypi.org/project/brigid/)

Движок на котором работает этот сайт.

### Сказка

- Сайт: [the-tale.org](https://the-tale.org/)
- GitHub: [github.com/the-tale](https://github.com/the-tale)
- [Концепт-документ]{post:the-tale-concept-document}
- Подробнее в постах по тегу [the-tale.org]{tags:the-tale} <!-- TODO: autorender correct tag name -->

Браузерная многопользовательская текстовая zero player game & политическая песочница с крутой генерацией текста на русском языке.

Игроки управляют своими протагонистами косвенно, зато могут изменять весь мир игры. Игра отличается интересным лором и продвинутой генерацией текста.

### Pynames

- GitHub: [github.com/the-tale/pynames](https://github.com/the-tale/pynames)
- PyPI: [pypi.org/project/pynames](https://pypi.org/project/pynames/)

Генератор имён персонажей. Поддерживает английский и русский. На русском генерирует все падежи. Используется в Сказке.

## Не поддерживаются

Мои проекты, поддержку которых я прекратил по разным причинам.

### Smart Imports

- GitHub: [github.com/tiendil/smart-imports](https://github.com/tiendil/smart-imports)
- PyPi: [pypi.org/project/smart_imports](https://pypi.org/project/smart_imports)

Библиотека для автоматического импорта модулей в Python. Позволяет избавиться от многострочных списков импортов в ваших исходниках. Есть [статья на Хабре](https://habr.com/ru/post/459930/).

### Universal Text Generator

- GitHub: [github.com/the-tale/utg](https://github.com/the-tale/utg)
- PyPi: [pypi.org/project/utg](https://pypi.org/project/utg)

Библиотека для генерации русского текста по шаблонам с учётом зависимости слов, морфологии, etc. На нём работает Сказка ([примеры фраз](https://the-tale.org/linguistics/templates/), [спецификация](https://the-tale.org/linguistics/templates/specification)). Есть [статья на Хабре](https://habr.com/ru/post/471278/).

### QuestGen

- GitHub: [github.com/the-tale/questgen](https://github.com/the-tale/questgen)
- PyPi: [pypi.org/project/questgen/](https://pypi.org/project/questgen/)
- [Подробнее]{post:automatic-quests-generator}

Генератор нелинейных квестов с условиями. На выходе выдаёт граф задания ([примеры](https://github.com/the-tale/questgen/tree/master/svgs)). Используется в Сказке. Развивать далее не планирую, но сгодится как пример того, куда можно двигаться в процедурной генерации заданий.

## Morphologic

- Сайт: [tiendil.github.io/morphologic](https://tiendil.github.io/morphologic/)
- GitHub: [github.com/tiendil/morphologic](https://github.com/tiendil/morphologic))
- [Описание]{post:morphological-analysis-prototype}
<!-- TODO: add special tag? -->

Прототип софта для проведения [морфологического анализа](https://ru.wikipedia.org/wiki/%D0%9C%D0%BE%D1%80%D1%84%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7_(%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B5%D1%82%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE)) (не путать морфологическим разбором в лингвистике).

Может пригодиться, если вам необходимо определить лучшее сочетание параметров в сложной и / или слабо формализированной области. Например, вы знаете, что решение может обладать свойствами `A, B, C, D, … Z`, но не знаете какое сочетание свойств будет оптимальным. При том, что `A` и `D` несовместимы, а сочетание свойств `B+X+Y` выглядит лучше, чем `P+Q`.

## Olbanizer

- GitHub: [github.com/tiendil/olbanizer](https://github.com/tiendil/olbanizer)

Транслятор с русского на олбанский язык (падонковский). Делался для 1 апреля в Сказке.

### Справочник по веб-разработке

[Справочник]{post:webdev} — в своё время написал, чтобы проверить полноту своих знаний. Не обновлялся с 2015 года, но может быть полезен.
