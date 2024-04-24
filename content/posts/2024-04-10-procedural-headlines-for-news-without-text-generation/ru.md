---
title = "Процедурные заголовки для новостей без сложной генерации текста"
tags = [ "practice", "development", "gamedev", "game-design", "procedural-content-generation", "world-builders"]
published_at = "2024-04-10T12:00:00+00:00"
description = "Придумал как в прототипе игры генерировать заголовки новостей без сложной генерации текста."
seo_image = "./cover.gif"
---

/// brigid-images
src = "./cover.gif"
caption = "Интерфейс выбора коннотации новости из прототипа игры про агентство новостей. Новость: арест ведьмочки-подростка за пьяное вождение."
///

От [опросов про предпочтения игроков]{post:making-a-fictional-universe-quantity-survey-processing} потихоньку перешёл к работе над прототипом игры.

Игра будет про новостное агентсво, где вы — главный редаткор, а ваша задача — манипулировать общественным мнением, расследуя события и выбирая [коннотацию](https://ru.wikipedia.org/wiki/Коннотация) новостей: на что обратить внимение публики, что скрыть, в каком тоне преподнести темы, etc.

Поэтому всё действие будет происходить вокруг текста новостей.

Сходу можно сказать, что создавать большие простыни текста для каждой новости нет смысла — игра не про чтение новостей, а про управление ими. Поэтому разумно взаимодействие строить только на заголовках.

Но как сделать отображение новостей одновременно интересным и простым?

<!-- more -->

## Проблемы

Через игрока будет проходить огромный поток новостей. Я ожидаю 5-10 новостей в «игровой день» и, возможно, пару тысяч за игровую сессию.

Поэтому всплывает масса проблем.

Генерировать осмысленный текст традиционными способами либо слишком сложно (смотрите мой [шаблонизатор для русского языка](https://github.com/the-tale/utg), для [Сказки](https://the-tale.org/)) либо результат будет слишком однообразен. Не говоря уже о сложностях адаптации шаблонов для несколько языков.

Использовать [Large Language Models](https://ru.wikipedia.org/wiki/Большая_языковая_модель) всё ещё дорого и сложно. В теории, можно было бы заранее нагенерировать все возможные заголовки, но вариативность слишком большая (=> дорого), надо будет заниматься инженерингом запросов, может дообучать даже. Плюс, остаются проблемы, указанные далее. А вот через пару лет LLM стали бы моим выбором.

Игроки в стратегии обычно не смотрят на лор, в лучшем случае, обратят на него внимание в первую игровую сессию, после чего забьют. Поэтому делать rocket science в данной части игры не имеет смысла.

Чрезмерная разнообразность фраз будет мешать воспринимать важную для игроков информацию.

## Решение

В итоге я немного подумал и нашёл интересный подход, реализацию которого вы могли заметить на заглавной гифке:

- В заголовок в случайном порядке вставляем названия тем новости с коннотацией отличной от нейтральной.
- Каждую тему раскрашиваем в цвет, специфичный для конкретной коннотации. В нашем случае в красный для негативного отношения к теме и зелёный для позитивного.
- Между словами вставляем симпатичные блоки с белибердой из юникодных символов.

В итоге получаем «win-win»:

- Очень дешёвый и простой подход.
- Игрок всегда чётко видит важные элементы новости. Чёрные блоки легко фильтруются, особенно после короткого периода привыкания.
- Включается фантазия игрока. Каждый сам подсознательно будет подставлять нужные слова в зависимости от ситуации в игре, новости и своего настроения.