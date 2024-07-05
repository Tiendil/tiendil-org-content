---
title = "Используем DALL-E для геймдева"
tags = [ "gamedev", "neural-networks", "practice", "procedural-content-generation", "development", "prompt-engineering",]
published_at = "2022-08-13T12:00:00+00:00"
seo_description = "Эксперименты по генерации графики для игры с помощью DALL-E."
seo_image = "images/dall-e-24-11.02.58.jpg"
---

/// brigid-images
src = "images/dall-e-24-11.02.58.jpg"
caption = 'DALL-E: "Vrubel-style painting of an indie game developer working on her game, like The Demon Seated."'
///

Получил доступ к [DALL-E](https://labs.openai.com/) и попробовал применить его к чему-нибудь полезному — геймдеву. В конце-концов, к чему ещё прикручивать процедурную генерацию.

Сначала тезисно расскажу об общих впечатлениях, а потом посмотрим для чего в геймдеве можно использовать этот инстрмент прямо сейчас. А для чего пока не получится.

**Осторожно, много трафика** — DALL-E отдаёт png файлы размером 1-2 мегабайта. Я немного пожал их, но качество старался сохранить на максимуме, поэтому картинки всё-равно тяжёлые.

<!-- more -->

## DALL-E

DALL-E - это [SOTA](https://en.wikipedia.org/wiki/State_of_the_art) нейронная сеть для генерации изображений.

Она может:

1. Создать несколько изображений по текстовому описанию.
2. Создать вариации конкретного изображения, из п.1
3. Дополнить/изменить изображение из п.1. Пользователь стирает часть картинки, пишет новое описание и сеть заново заполняет убраные части.

Доступ дают всем, кто хочет, но есть задержка (дни/недели после регистрации). Изображения создаются за кредиты, которые можно докупать. Каждому пользователю даётся достаточно бесплатных кредитов, чтобы поэкспериментировать, плюс каждый месяц немного будут досыпать.

На мой взгляд, доступ к инструменту довольно дешёвый.

Есть цензура. Если захотите сгенерировать порнушку, увидите что-то вроде этого:

```
It looks like this request may not follow our content policy.
Further policy violations may lead to an automatic suspension of your account.
```

Цензура, конечно, тоже на каком-то ML построена, поэтому есть способы обходить :-) Одно из направлений атаки опишу в этом посте, но я им не злоупотреблял, поэтому не знаю на сколько оно будет эффективным.

## Общие впечатления

У меня больше не будет проблем с поиском интересных заглавных изображений для постов.

По ощущениям, инструмент находится близко к тому, что я описывал как [Feature Programming]{post:feature-programming}.

Работает DALL-E не идеально — это не полноценная замена профессиональным художникам. Но это крутой способ быстро и дёшево получать изображения достаточного качества для многих задач.

Проблемы, которые я обнаружил:

- Не умеет выполнять детальные запросы. Чем больше слов в описании, чем оно конкретнее, тем хуже будет результат.
- Сильно тяготеет к мемичным оптимумам. Сеть училась на контенте из наших интернетов, который сильно перекошен в сторону популярных мемов. Чем ближе запрос к мемам, тем лучше будет результат. Чем дальше от популярной темы, тем хуже. Например, сеть на раз генерирует котиков, но [эльдар](https://en.wikipedia.org/wiki/Eldar_(Warhammer_40,000)) или [Слаанеш](https://en.wikipedia.org/wiki/Chaos_(Warhammer)) из [W40K](https://en.wikipedia.org/wiki/Warhammer_40,000) сходу получить сложнее.
- Плохо справляется с мелкими деталями, частными случаями, etc.

**DALL-E - это не волшебная палочка** и, с большой вероятность, не станет ей в обозримом будущем.

**Это новый тип инструмента, которым надо учиться пользоваться.** Он безусловно изменит многие отрасли, но не более того.

Де-факто, это что-то вроде компаса для навигации в коллективном инфополе — океане идей, где острова — это мемы (устоявшиеся и возможные), а воды между ними — [terra incognita](https://en.wikipedia.org/wiki/Terra_incognita). С помощью DALL-E мы можем целенаправленно исследовать этот океан в поисках новых мемом.

Поэтому взаимодействие с сетью ближе всего к работе исследователя. А исследователям нужны вспомогательные инструменты.

Поэтому предполагаю, что скоро начнут появляться надстройки над DALL-E, которые будут давать больше инструментов для точной навигации. Например:

- Ввод текста заменят или дополнят кучей ползунков и флажков для более точного выбора направления. Самый простой вариант: выбор стиля картинки кликом по иконке с типичным для него изображением.
- «Умная» автоматическая генерация бОльшего количества вариантов изображений с помощью автоматических преобразований оригинальной фразы.

Если бы у меня было время и деньги, я бы, пожалуй, даже занялся разработкой такой штуки.

## Используем DALL-E для задач геймдева

Я пробовал несколько направлений использования, буду рассказывать о них по-порядку. То есть начну с самых наивных попыток :-)

В примерах картинок обычно будет 4 изначальных варианта плюс три детализации лучшей версии.

### Скриншот игры по концепт-документу

Я люблю писать [концепты игр]{tags:concepts}, поэтому первое и самое наивное, что пришло мне в голову: а не нагенерить ли скриншотов гипотетических игр. Было бы круто концепты сопровождать сразу скринами.

Экспериментировал, конечно, на своих концептах.

[Space Opera Engine]{post:concept-document-for-the-game-s-space-opera-engine}

```
Screenshot of an indie game for PC: a simulator of the universe — multiplayer socio-political sandbox on the scale of Space Opera.

Stylistics is minimalist. Basic information is presented in text, pictograms, and icons. For images, low-detailed vector drawings are used.
```

/// brigid-images

[[images]]
src = "images/dall-e-01-09.44.42-1.jpg"
alt = "Скриншот 1 инди игры Space Opera Engine созданный DALL-E"

[[images]]
src = "images/dall-e-01-09.44.48.jpg"
alt = "Скриншот 2 инди игры Space Opera Engine созданный DALL-E"

[[images]]
src = "images/dall-e-01-09.44.51.jpg"
alt = "Скриншот 3 инди игры Space Opera Engine созданный DALL-E"

[[images]]
src = "images/dall-e-01-09.44.55.jpg"
alt = "Скриншот 4 инди игры Space Opera Engine созданный DALL-E"

[[images]]
src = "images/dall-e-01-09.45.15.jpg"
alt = "Скриншот 5 инди игры Space Opera Engine созданный DALL-E"

[[images]]
src = "images/dall-e-01-09.45.18.jpg"
alt = "Скриншот 6 инди игры Space Opera Engine созданный DALL-E"

[[images]]
src = "images/dall-e-01-09.45.21.jpg"
alt = "Скриншот 7 инди игры Space Opera Engine созданный DALL-E"
///


[NoCraft]{post:concept-document-nocraft}

```
Indie game "NoCraft" — like StarCraft but without micromanagement. Less reflexes, more strategy. RTS with indirect control, mutations of units and their behaviour. The setting is space, captured by zergs. The graphics style is simplified, cartoonish, frivolous, and vector.
```

/// brigid-images

[[images]]
src = "images/dall-e-02-09.51.11.jpg"
alt = "Скриншот 1 инди игры NoCraft созданный DALL-E"

[[images]]
src = "images/dall-e-02-09.51.16.jpg"
alt = "Скриншот 2 инди игры NoCraft созданный DALL-E"

[[images]]
src = "images/dall-e-02-09.51.21.jpg"
alt = "Скриншот 3 инди игры NoCraft созданный DALL-E"

[[images]]
src = "images/dall-e-02-09.51.23.jpg"
alt = "Скриншот 4 инди игры NoCraft созданный DALL-E"

[[images]]
src = "images/dall-e-02-09.52.34.jpg"
alt = "Скриншот 5 инди игры NoCraft созданный DALL-E"

[[images]]
src = "images/dall-e-02-09.52.37.jpg"
alt = "Скриншот 6 инди игры NoCraft созданный DALL-E"

[[images]]
src = "images/dall-e-02-09.52.43.jpg"
alt = "Скриншот 7 инди игры NoCraft созданный DALL-E"

[[images]]
src = "images/dall-e-02-09.52.46.jpg"
alt = "Скриншот 8 инди игры NoCraft созданный DALL-E"

[[images]]
src = "images/dall-e-02-09.52.54.jpg"
alt = "Скриншот 9 инди игры NoCraft созданный DALL-E"

[[images]]
src = "images/dall-e-02-09.52.57.jpg"
alt = "Скриншот 10 инди игры NoCraft созданный DALL-E"
///

Как можно видеть, DALL-E хорошо схватил тему инди игр и космоса, но в остальном получился откровенный трешак. Поэтому я отложил концепты игр и вспомнил об идее [Write Your Own Adventure]{post:write-your-own-adventure}.

### Детальное описание сцены

Тексты, которые может воспринимать DALL-E сильно ограничены по размеру. И далее вы увидите, что, чем меньше размер, тем лучше результат. В нюансы сеть пока не умеет.

```
Concept art of an old dwarf-necromancer who stands on the top of a hill. The dwarf has a magically enchanted leg prosthesis, one eye is replaced with a glowing ruby. The hill is surrounded by the inquisition. There are spirits flying in the sky.
```

/// brigid-images
[[images]]
src = "images/dall-e-03-09.58.20.jpg"
alt = "Пример 1 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-03-09.58.24.jpg"
alt = "Пример 2 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-03-09.58.26.jpg"
alt = "Пример 3 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-03-09.58.29.jpg"
alt = "Пример 4 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-03-09.59.31.jpg"
alt = "Пример 5 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-03-09.59.33.jpg"
alt = "Пример 6 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-03-09.59.36.jpg"
alt = "Пример 7 концепт арта от DALL-E"
///


```
Concept art of an old dwarf-necromancer who stands on the top of a hill. The dwarf has a magically enchanted leg prosthesis, one eye is replaced with a glowing ruby.
```

/// brigid-images
[[images]]
src = "images/dall-e-04-10.00.56.jpg"
alt = "Пример 1 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-04-10.00.59.jpg"
alt = "Пример 2 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-04-10.01.01.jpg"
alt = "Пример 3 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-04-10.01.04.jpg"
alt = "Пример 4 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-04-10.01.49.jpg"
alt = "Пример 5 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-04-10.01.51.jpg"
alt = "Пример 6 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-04-10.01.54.jpg"
alt = "Пример 7 концепт арта от DALL-E"
///

Обратите внимание, что персонаж не имеет протеза ноги, а рубиновый глаз нашёл отражение только в цветовой гамме.

### Концепт-арт

Если убрать уточнения, то концепт-арт какой-то получается.

```
Concept art of an old dwarf-necromancer who stands on the top of a hill.
```

/// brigid-images
[[images]]
src = "images/dall-e-08-10.10.37.jpg"
alt = "Пример 1 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-08-10.10.39.jpg"
alt = "Пример 2 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-08-10.10.42.jpg"
alt = "Пример 3 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-08-10.10.44.jpg"
alt = "Пример 4 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-08-10.11.13.jpg"
alt = "Пример 5 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-08-10.11.16.jpg"
alt = "Пример 6 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-08-10.11.17.jpg"
alt = "Пример 7 концепт арта от DALL-E"
///

```
Digital art of an old dwarf-necromancer who stands on the top of a hill.
```

/// brigid-images
[[images]]
src = "images/dall-e-09-10.13.37.jpg"
alt = "Пример 1 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-09-10.13.40.jpg"
alt = "Пример 2 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-09-10.13.43.jpg"
alt = "Пример 3 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-09-10.13.46.jpg"
alt = "Пример 4 концепт арта от DALL-E"
///

```
Scary old dwarf-necromancer who stands on the top of a hill.
```

/// brigid-images
[[images]]
src = "images/dall-e-10-10.16.04.jpg"
alt = "Пример 1 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-10-10.16.07.jpg"
alt = "Пример 2 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-10-10.16.09.jpg"
alt = "Пример 3 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-10-10.16.12.jpg"
alt = "Пример 4 концепт арта от DALL-E"
///

```
Scary old dwarf-necromancer fighting inquisition
```

/// brigid-images
[[images]]
src = "images/dall-e-11-10.18.17.jpg"
alt = "Пример 1 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-11-10.18.20.jpg"
alt = "Пример 2 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-11-10.18.22.jpg"
alt = "Пример 3 концепт арта от DALL-E"

[[images]]
src = "images/dall-e-11-10.18.24.jpg"
alt = "Пример 4 концепт арта от DALL-E"
///

Как видите, самое короткое описание дало самый лучший результат. Но всё равно не точный — битвой с инквизицией и не пахнет.

Детальное отображение сцены всё-ещё невозможно, но концепт-арт определённо получается, каким-то. Для низкобюджетного инди должен подойти.

### Низкобюджетный pixel art

Тогда давайте посмотрим на самую дешманскую графику, которую мы можем получить.

```
Pixel art image of an scary old dwarf-necromancer fighting inquisition
```

/// brigid-images
galery_class = "brigid-images-4-in-row"

[[images]]
src = "images/dall-e-12-10.20.07.jpg"
alt = "Пример 1 пиксель арта от DALL-E"

[[images]]
src = "images/dall-e-12-10.20.10.jpg"
alt = "Пример 2 пиксель арта от DALL-E"

[[images]]
src = "images/dall-e-12-10.20.12.jpg"
alt = "Пример 3 пиксель арта от DALL-E"

[[images]]
src = "images/dall-e-12-10.20.15.jpg"
alt = "Пример 4 пиксель арта от DALL-E"
///

Ну, вы сами всё видите. Готовые спрайты для рогалика без анимации. Сколько их можно нагенерить? Миллионы.

```
High-resolution pixel art image of an scary old dwarf-necromancer fighting inquisition
```

/// brigid-images
galery_class = "brigid-images-4-in-row"

[[images]]
src = "images/dall-e-13-10.23.17.jpg"
alt = "Пример 1 пиксель арта от DALL-E"

[[images]]
src = "images/dall-e-13-10.23.19.jpg"
alt = "Пример 2 пиксель арта от DALL-E"

[[images]]
src = "images/dall-e-13-10.23.22.jpg"
alt = "Пример 3 пиксель арта от DALL-E"

[[images]]
src = "images/dall-e-13-10.23.24.jpg"
alt = "Пример 4 пиксель арта от DALL-E"
///

Можно даже с детализацией!

А если про космос? И сразу sprite sheet.

```
Pixel art sprite sheet with monsters for a roguelike in cosmos
```

/// brigid-images
[[images]]
src = "images/dall-e-14-10.24.46.jpg"
alt = "Пример 1 pixel art sprite sheet от DALL-E"

[[images]]
src = "images/dall-e-14-10.24.49.jpg"
alt = "Пример 2 pixel art sprite sheet от DALL-E"

[[images]]
src = "images/dall-e-14-10.24.52.jpg"
alt = "Пример 3 pixel art sprite sheet от DALL-E"

[[images]]
src = "images/dall-e-14-10.24.56.jpg"
alt = "Пример 4 pixel art sprite sheet от DALL-E"

[[images]]
src = "images/dall-e-14-10.25.30.jpg"
alt = "Пример 5 pixel art sprite sheet от DALL-E"

[[images]]
src = "images/dall-e-14-10.25.33.jpg"
alt = "Пример 6 pixel art sprite sheet от DALL-E"

[[images]]
src = "images/dall-e-14-10.25.36.jpg"
alt = "Пример 7 pixel art sprite sheet от DALL-E"

[[images]]
src = "images/dall-e-14-10.26.04.jpg"
alt = "Пример 8 pixel art sprite sheet от DALL-E"

[[images]]
src = "images/dall-e-14-10.26.07.jpg"
alt = "Пример 9 pixel art sprite sheet от DALL-E"

[[images]]
src = "images/dall-e-14-10.26.08.jpg"
alt = "Пример 10 pixel art sprite sheet от DALL-E"
///

Sprite sheets пока сложно делать, а если по отдельности?

```
Pixel art sprite of a monster from outer space for a roguelike game
```

/// brigid-images
galery_class = "brigid-images-4-in-row"

[[images]]
src = "images/dall-e-15-10.27.48.jpg"
alt = "Пример 1 pixel art спрайта монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-15-10.27.51.jpg"
alt = "Пример 2 pixel art спрайта монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-15-10.27.53.jpg"
alt = "Пример 3 pixel art спрайта монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-15-10.27.56.jpg"
alt = "Пример 4 pixel art спрайта монстра из космоса от DALL-E"
///

Графика посложнее тоже получается, но это уже ближе к концепт-арту.

```
2D image of a monster from outer space for a PC game
```

/// brigid-images
[[images]]
src = "images/dall-e-16-10.30.52.jpg"
alt = "Пример 1 2D изображения монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-16-10.30.50.jpg"
alt = "Пример 2 2D изображения монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-16-10.30.47.jpg"
alt = "Пример 3 2D изображения монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-16-10.30.42.jpg"
alt = "Пример 4 2D изображения монстра из космоса от DALL-E"
///

А вот и обещанный чит для кастомизации картинок. DALL-E умён, если затереть часть тела, специфичную для гендера и попросить его сдвинуть картинку в сторону выраженности гендера, то он это сделает. Например, можно затереть монстрику грудную клетку.

```
More womanly image
```

/// brigid-images
[[images]]
src = "images/dall-e-16.1-10.41.17.jpg"
alt = "Пример 1 более женственного изображения монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-16.1-10.40.00.jpg"
alt = "Пример 2 более женственного изображения монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-16.1-10.40.03.jpg"
alt = "Пример 3 более женственного изображения монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-16.1-10.41.14.jpg"
alt = "Пример 4 более женственного изображения монстра из космоса от DALL-E"
///

Если попросить нарисовать профессиональнее, DALL-E нарисует.

```
Professional 2D image of a monster from outer space for a PC game
```

/// brigid-images
[[images]]
src = "images/dall-e-17-10.32.02.jpg"
alt = "Пример 1 профессионального 2D изображения монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-17-10.32.11.jpg"
alt = "Пример 2 профессионального 2D изображения монстра из космоса от DALL-E"

[[images]]
src = "images/dall-e-17-10.32.12.jpg"
alt = "Пример 3 профессионального 2D изображения монстра из космоса от DALL-E"
///

Тематический pixel art тоже получается, если тема известная.

```
Pixel art image of star trek crew
```

/// brigid-images
galery_class = "brigid-images-4-in-row"

[[images]]
src = "images/dall-e-27-11.19.02.jpg"
alt = "Пример 1 пиксель арта команды Star Trek от DALL-E"

[[images]]
src = "images/dall-e-27-11.19.00.jpg"
alt = "Пример 2 пиксель арта команды Star Trek от DALL-E"

[[images]]
src = "images/dall-e-27-11.18.58.jpg"
alt = "Пример 3 пиксель арта команды Star Trek от DALL-E"

[[images]]
src = "images/dall-e-27-11.18.56.jpg"
alt = "Пример 4 пиксель арта команды Star Trek от DALL-E"
///

Попытался создать спрайты для карты, но не особо получилось, всё-таки много нюансов.

```
Tiled pixel art map of fantasy kingdom
```

/// brigid-images
[[images]]
src = "images/dall-e-18-10.35.15.jpg"
alt = "Пример 1 пиксель арта карты фэнтезийного королевства от DALL-E"

[[images]]
src = "images/dall-e-18-10.35.17.jpg"
alt = "Пример 2 пиксель арта карты фэнтезийного королевства от DALL-E"

[[images]]
src = "images/dall-e-18-10.35.20.jpg"
alt = "Пример 3 пиксель арта карты фэнтезийного королевства от DALL-E"

[[images]]
src = "images/dall-e-18-10.35.23.jpg"
alt = "Пример 4 пиксель арта карты фэнтезийного королевства от DALL-E"
///

DALL-E почти умеет делать покадровую анимацию. Кадры умеет, анимацию пока нет :-)

```
Pixel art sprite sheet with an animation of running warrior
```

/// brigid-images
galery_class = "brigid-images-3-in-row"

[[images]]
src = "images/dall-e-28-11.21.45.jpg"
alt = "Пример 1 пиксель арта спрайта бегущего воина от DALL-E"

[[images]]
src = "images/dall-e-28-11.21.18.jpg"
alt = "Пример 2 пиксель арта спрайта бегущего воина от DALL-E"

[[images]]
src = "images/dall-e-28-11.21.15.jpg"
alt = "Пример 3 пиксель арта спрайта бегущего воина от DALL-E"
///

## Прочие интересные штуки

Сеть очень плохо работает на редких пересечениях мемов. Например, для кучи вариаций запроса получилась только одна интересная картинка.

```
Zerg queen in Japanese school uniform
```

/// brigid-images
src = "images/dall-e-19-10.44.40.jpg"
alt = "Пример неудачного изображения от DALL-E для очень частного случая"
///

Но некоторые страннае запросы отрисовывает довольно интересно. Например, для трёх запросов

```
1. epic battle diorama of MMORPG game
2. realistic epic battle diorama of MMORPG game
3. epic battle diorama of pixel art MMORPG game
```

/// brigid-images
galery_class = "brigid-images-3-in-row"

[[images]]
src = "images/dall-e-21-10.53.51.jpg"
alt = "Пример 1 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-20-10.51.48.jpg"
alt = "Пример 2 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-20-10.51.52.jpg"
alt = "Пример 3 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-20-10.51.54.jpg"
alt = "Пример 4 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-20-10.51.57.jpg"
alt = "Пример 5 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-21-10.53.48.jpg"
alt = "Пример 6 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-21-10.53.53.jpg"
alt = "Пример 7 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-21-10.53.55.jpg"
alt = "Пример 8 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-22-10.55.29.jpg"
alt = "Пример 9 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-22-10.55.32.jpg"
alt = "Пример 10 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-22-10.55.33.jpg"
alt = "Пример 11 эпической битвы в диораме от DALL-E"

[[images]]
src = "images/dall-e-22-10.55.36.jpg"
alt = "Пример 12 эпической битвы в диораме от DALL-E"
///

```
Most beautiful image of a divine steampunk dwarf hamster.
```

/// brigid-images
[[images]]
src = "images/dall-e-07-10.07.38.jpg"
alt = "Пример 1 красивого изображения стимпанк хомяка от DALL-E"

[[images]]
src = "images/dall-e-07-10.07.36.jpg"
alt = "Пример 2 красивого изображения стимпанк хомяка от DALL-E"

[[images]]
src = "images/dall-e-07-10.07.33.jpg"
alt = "Пример 3 красивого изображения стимпанк хомяка от DALL-E"

[[images]]
src = "images/dall-e-07-10.07.29.jpg"
alt = "Пример 4 красивого изображения стимпанк хомяка от DALL-E"
///

```
1. Vrubel-style painting of an indie game developer working on her game.
2. Vrubel-style painting of an indie game developer working on her game, like The Demon Seated.
3. Vrubel-style painting of an indie game developer working on his game, like The Demon Seated.
4. Vrubel-style painting of an indie game developer working on his game
```

/// brigid-images
galery_class = "brigid-images-4-in-row"

[[images]]
src = "images/dall-e-26-11.08.11.jpg"
alt = "Пример 1 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-26-11.08.08.jpg"
alt = "Пример 2 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-26-11.08.06.jpg"
alt = "Пример 3 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-26-11.08.04.jpg"
alt = "Пример 4 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-25-11.05.39.jpg"
alt = "Пример 5 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-25-11.05.37.jpg"
alt = "Пример 6 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-25-11.05.34.jpg"
alt = "Пример 7 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-25-11.05.33.jpg"
alt = "Пример 8 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-24-11.03.03.jpg"
alt = "Пример 9 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-24-11.03.00.jpg"
alt = "Пример 10 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-24-11.02.58.jpg"
alt = "Пример 11 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-24-11.02.55.jpg"
alt = "Пример 12 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-23-11.02.23.jpg"
alt = "Пример 13 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-23-11.02.20.jpg"
alt = "Пример 14 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-23-11.02.18.jpg"
alt = "Пример 15 картины в стиле Врубеля от DALL-E"

[[images]]
src = "images/dall-e-23-11.02.16.jpg"
alt = "Пример 16 картины в стиле Врубеля от DALL-E"
///

## Выводы

В общем-то по примерам всё видно. Уже сейчас DALLE-E это:

- Быстрые дешёвые наброски концепт-арта.
- Быстрый дешёвый пиксель-арт.
- Быстрые уникальные картинки для блогов.
- Инструмент навигации в пространстве мемов.

Что стоит ждать от следующих версий:

- Анимации.
- Более точного исполнения запросов.
- Поддержания концептуальной и стилистической целостности между множеством изображений.
- Итеративного конструктора сцен, в стиле [github copilot](https://github.com/features/copilot).
