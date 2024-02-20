---
title = "Процедурную генерацию в массы!"
tags = [ "gamedev", "neural-networks", "practice", "procedural-content-generation", "development", "futurology",]
published_at = "2020-11-20T12:00:00+00:00"
description = "Google выпустил экспериментальную нейронку, которая создаёт изображения новых существ «по чертежу»."
seo_image = "images/google-gan-creature-generator.jpg"
---

/// brigid-images
src = "images/google-gan-creature-generator.jpg"
caption = "Пример процедурной генерации."
///

Google выпустил [экспериментальную нейронку](https://ai.googleblog.com/2020/11/using-gans-to-create-fantastical.html), которая создаёт изображения новых существ «по чертежу». «Пример чертежа» на заглавной картинке.

То есть на [генерации аватарок]{post:nn-anime-avatars-generator} развитие нейронок не остановилось и даже не запнулось. Грядут большие перемены, как минимум, на рынке мультимедиа.

Но одна вещь меня пугает: что дозволено Юпитеру, не дозволено быку. Нейронки и процедурная генерация способны очень на многое, но насколько эти технологии будут доступны рядовым разработчикам?

<!-- more -->

Обучить нейронку или создать процедурный генератор чего-то нового — удовольствие дорогое. Конечно, один раз подготовленный софт можно поместить в облако и давать к нему доступ за копейки, но это будет доступ к генератору шаблонного контента. Не случится ли засилье шаблонных миров в геймдеве? Они и сейчас-то не сильно разнообразны.

Известно, что крупные компании не склонны к экспериментированию, а у малых разработчиков может не хватить ресурсов, чтобы создавать свои генераторы.

К счастью всё может быть не так плохо, как кажется. Уже в истории с генерацией аватарок можно обратить внимание на то, что там задействовалось несколько нейронок, используемых в качестве модулей единой системы.

Может сложиться, что из облачных нейронок можно будет собирать достаточно уникальные генераторы. Например, одна нейронка создаёт топологию, другая детализирует её, третья стилизует, четвёртая устраняет логические ошибки и так далее.

Модульность немного улучшит ситуацию, но не уберёт саму проблему создания генераторов для чего-то нового.

Другой вариант — суровая формализация генерации контента, до уровня языка программирования. Но до этого как до луны.