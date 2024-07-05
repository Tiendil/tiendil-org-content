---
title = "Используем DALL-E-3 для геймдева"
tags = [ "gamedev", "game-design", "neural-networks", "practice", "procedural-content-generation", "development", "prompt-engineering",]
published_at = "2023-10-15T12:00:00+00:00"
seo_description = "Эксперименты по генерации графики для игры с помощью DALL-E 3."
seo_image = "./images/using-dall-e-3-for-gamedev-cover.jpg"
---

/// brigid-images
src = "./images/using-dall-e-3-for-gamedev-cover.jpg"
caption = 'DALL-E: "Draw a Vrubel-style painting of an indie game developer working on her game, like The Demon Seated. With the accent on Vrubel style."'
///

Получил доступ к [DALL-E-3](https://openai.com/dall-e-3), а значит можно повторить [прошлогодний эксперимент]{post:using-dall-e-for-gamedev} и посмотреть что изменилось.

Фантазировать, искать новые направления пока не буду, повторим идеи и запросы из прошлогоднего поста.

**Осторожно, много трафика** — DALL-E отдаёт png файлы размером 1-2 мегабайта. Я их немного пожал, но пост всё равно будет тяжёлым.

<!-- more -->

## Общие впечатления

Я не слежу активно за генерацией графики — больше текстами интересуюсь. Midjourney и весь остальной прогресс за год прошли мимо меня. Поэтому я смотрю именно на разницу в год.

Скорость изменений, качество и открывающиеся возможности поражают.

DALL-E стал на порядок более творческим, глубоким, окультуренным. Может быть даже слишком окультуренным. Раньше его работы были похожи по духу на работы школьника с фломастером, имели ожидаемую для школьника семантику. Теперь же DALL-E — это что-то вроде художника с дополнительным образованием в области истории искусства либо философии.

Может быть с точки зрения профессионала это не заметно или даже явное преувеличение, но для профана вроде меня выглядит именно так. По-умолчанию DALL-E создаёт изображения глубже, чем я ожидаю и прошу, с большей творческой компонентой и вариативностью, чем требуется. Для примера, посмотрите на «творческое переосмысление» стиля [Врубеля](https://ru.wikipedia.org/wiki/%D0%92%D1%80%D1%83%D0%B1%D0%B5%D0%BB%D1%8C,_%D0%9C%D0%B8%D1%85%D0%B0%D0%B8%D0%BB_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%BE%D0%B2%D0%B8%D1%87) на заглавной картинке и на альтернативах внизу поста: выглядит похоже, но скорее по духу, чем по стилю. Наверняка это можно тюнить детальными запросами, так как взаимодействие с DALL-E происходит через ChatGPT 4.

Описанные в прошлом посте проблемы (малый контекст, сильное тяготение к [мемам]{post:genes-memes-memeplexes}, проблема с мелкими деталями) исправлены.

**Update:** Жена не согласна с тем, что исправлено тяготение к мемам. Если попросить нарисовать хомяка, то DALL-E рисует только сирийцев, игнорируя все прочие виды. Даже если явно попросить. Но я бы это списал на отсутствие конкретных знаний, а не на тяготение к мемам.

Предыдущая версия DALL-E выглядела как специфический инструмент для навигации в пространстве мемов, а-ля графический компас. Новая версия приближается к волшебной палочке, которая даёт что просишь. Учитывая скорость прогресса, через год-два будет волшебная палочка. Независимые разработчики ликуют, непродуктовые творцы паникуют.

По прогнозам из предыдущего поста.

_«Ввод текста заменят или дополнят кучей ползунков и флажков для более точного выбора направления.»_ На сколько я знаю, реализовано частично в других инструментах.

_««Умная» автоматическая генерация бОльшего количества вариантов изображений с помощью автоматических преобразований оригинальной фразы.»_ Реализовано в DALL-E-3: создаётся 4 вариации промта, по ним генерируются картинки. Промты можно увидеть, если открыть вариант картинки в интерфейсе ChatGPT.

Два из двух! Читайте мой блог и всегда будете на шаг впереди прогресса :-D

Технические моменты:

- Все запросы делались в новом чистом контексте. Качество результатов должно быть легко улучшить подсказками.
- Картинки создаются немного дольше, чем в предыдущей версии. Возможно из-за большой нагрузки на инфраструктуру, а не из-за ограничений модели.

## Используем DALL-E для задач геймдева

Я пробовал несколько направлений использования, те же, что и в прошлом году.

### Скриншот игры по концепт-документу

Экспериментировал, конечно, на тех же [концептах]{tags:concepts}, что и в прошлом году.

[Space Opera Engine]{post:concept-document-for-the-game-s-space-opera-engine}

```
Screenshot of an indie game for PC: a simulator of the universe — multiplayer socio-political sandbox on the scale of Space Opera.

Stylistics is minimalist. Basic information is presented in text, pictograms, and icons. For images, low-detailed vector drawings are used.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-01-01.jpg"
alt = "Пример 1 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-01-02.jpg"
alt = "Пример 2 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-01-03.jpg"
alt = "Пример 3 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-01-04.jpg"
alt = "Пример 4 концепта от DALL-E"
///

Отвисла ли у вас челюсть, господа? Готовы ли вы нести деньги за такие игры? Я готов.

Раз сетка так хорошо справилась с простым запросом, давайте скормим ей весь концепт! На самом деле концепт целиком не влез в контекст — только половина — пришлось удалить ненужные части про маркетинг, риски и прочие скучные вещи.

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-02-04.jpg"
alt = "Пример 4 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-02-01.jpg"
alt = "Пример 1 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-02-02.jpg"
alt = "Пример 2 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-02-03.jpg"
alt = "Пример 3 концепта от DALL-E"
///

Как видим, суть уловлена, но не получилось сконцентрироваться на тексте, как основном способе подачи ситуации. Оно и понятно.

Более того, ChatGPT сопроводила скриншоты корректным описанием:

```
- A minimalist user interface for the game, showcasing a galaxy with various star systems.
- A detailed view of a star system with multiple planets, each having unique properties.
- A planet's surface divided into regions with distinct icons representing forests, mountains, lakes, and cities.
- An in-game event illustration where a city on a planet is highlighted, presenting a situation for the player to interact with.
```

Продолжим.

[NoCraft]{post:concept-document-nocraft}

```
Screenshot of an indie game "NoCraft" — like StarCraft but without micromanagement. Less reflexes, more strategy. RTS with indirect control, mutations of units and their behaviour. The setting is space, captured by zergs. The graphics style is simplified, cartoonish, frivolous, and vector.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-03-01.jpg"
alt = "Пример 1 скриншота от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-03-02.jpg"
alt = "Пример 2 скриншота от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-03-03.jpg"
alt = "Пример 3 скриншота от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-03-04.jpg"
alt = "Пример 4 скриншота от DALL-E"
///


Опять, суть уловлена верно, качество отличное, но на лицо путаница в жанрах — на картинках скорее мобильные игры предствлены. Плюс, изображения больше похожи на промо арт, чем на реальные скриншоты.

Скормим концепт целиком.

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-04-04.jpg"
alt = "Пример 4 скриншота от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-04-03.jpg"
alt = "Пример 3 скриншота от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-04-02.jpg"
alt = "Пример 2 скриншота от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-04-01.jpg"
alt = "Пример 1 скриншота от DALL-E"
///


Нда, DALL-E определённо учился на скринах мобилок, фотках настолок и спрайтлистах :-D В основном пошаговых игр. Сходу заставить его создать что-то похожее на StarCraft не получилось.

Придётся пока TBS пилить или ждать ещё год.

### Детальное описание сцены и концепт-арт

Поскольку проблема размера контекста из прошлого поста решена полностью, приведу только самый сложный пример из сцен, который сходу отрендерен полностью корректно. Разве что некромант не очень страшный.

```
Concept art of an old dwarf-necromancer who stands on the top of a hill. The dwarf has a magically enchanted leg prosthesis, one eye is replaced with a glowing ruby. The hill is surrounded by the inquisition. There are spirits flying in the sky.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-05-4.jpg"
alt = "Пример 4 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-05-01.jpg"
alt = "Пример 1 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-05-02.jpg"
alt = "Пример 2 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-05-03.jpg"
alt = "Пример 3 концепта от DALL-E"
///


Но если надо жути, то вот.

```
Scary old dwarf-necromancer who stands on the top of a hill.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-06-01.jpg"
alt = "Пример 3 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-06-04.jpg"
alt = "Пример 4 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-06-03.jpg"
alt = "Пример 1 концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-06-02.jpg"
alt = "Пример 2 концепта от DALL-E"
///

### Низкобюджетный pixel art

Даже прошлая версия DALL-E была хороша в pixel art, поэтому сразу было ясно что будет круто.

```
Pixel art image of an scary old dwarf-necromancer fighting inquisition
```


/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-07-01.jpg"
alt = "Пример 1 pixel art концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-07-02.jpg"
alt = "Пример 2 pixel art концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-07-03.jpg"
alt = "Пример 3 pixel art концепта от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-07-04.jpg"
alt = "Пример 4 pixel art концепта от DALL-E"
///

Но нам, конечно, нужен низкодетализированный pixel art для рогаликов и условных карт.

```
Grid sprite sheet of very low-detailed pixel art sprites of variants of a scary dwarf-necromancer ready to use in a roguelike game.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-08-01.jpg"
alt = "Пример 1 pixel art sprite sheet от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-08-02.jpg"
alt = "Пример 2 pixel art sprite sheet от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-08-03.jpg"
alt = "Пример 3 pixel art sprite sheet от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-08-04.jpg"
alt = "Пример 4 pixel art sprite sheet от DALL-E"
///


С запросом пришлось повозиться и получилось всё-равно слишком детализировано. DALL-E стал откровенно тяготеть к высокой детализации. Плюс, границы сетки просто так не соблюдает.

Для анимаций на этот раз вместо бегуна попросил сделать демона.

```
Pixel art sprite sheet of 8 frames of imp casting a fireball.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-09-01.jpg"
alt = "Пример 1 pixel art sprite sheet с анимацией от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-09-02.jpg"
alt = "Пример 2 pixel art sprite sheet с анимацией от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-09-03.jpg"
alt = "Пример 3 pixel art sprite sheet с анимацией от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-09-04.jpg"
alt = "Пример 4 pixel art sprite sheet с анимацией от DALL-E"
///

Немного пошаманил и вуа-ля — гифка. Кривая конечно. Отчасти, потому, что DALL-E не хочет генерировать выровненные спрайты, отчасти, потому, что я не умею этот результат нарезать на кадры. Надо срочно тренировать нейронку для нарезания спрайтов.

/// brigid-images
src = "./images/using-dall-e-3-for-gamedev-fireball.gif"
alt = "Пример pixel art анимации от DALL-E"
///


Возвращаясь к pixel art. Прошлая версия DALL-E не умела в pixel art карты, текущая умеет слишком хорошо — очень детализовано.

```
Tiled pixel art map of fantasy kingdom
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-10-01.jpg"
alt = "Пример 1 pixel art карты от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-10-02.jpg"
alt = "Пример 2 pixel art карты от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-10-03.jpg"
alt = "Пример 3 pixel art карты от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-10-04.jpg"
alt = "Пример 4 pixel art карты DALL-E"
///

Как видите, эти карты назвать «tiled» можно только с большой натяжкой.

Приходится просить точнее.

```
Sprite sheet with tiles of a fantasy kingdom map for a game, top-down perspective.
```

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-11-01.jpg"
alt = "Пример 1 pixel art тайлов карты от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-11-02.jpg"
alt = "Пример 2 pixel art тайлов карты от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-11-03.jpg"
alt = "Пример 3 pixel art тайлов карты от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-11-04.jpg"
alt = "Пример 4 pixel art тайлов карты DALL-E"
///


Небо и земля по сравнению с предыдущей версией. Но пока не похоже, чтобы тайлы хорошо стыковались друг с другом. Особенно в части дорог и рек. Но как заготовка выглядит очень хорошо. Возможно, если аккуратно и детально составить запрос, можно будет получить менее детализированные, но лучше стыкующиеся тайлы.

Хотел попробовать использовать продвинутые методы работы с LLM вроде chain-of-thoughts для генерации spritesheets. Но остановился в самом начале — не смог заставить DALL-E создать квадратную сетку для спрайтов. Он упорно рисует её повёрнутой, в изометрии, в 3d, неровной с левыми картинками — любую, но не чистую шахматную сетку.

### Варианты заглавной картинки

DALL-E очень хорошо умеет в проработанные изображения. Поэтому вот, как бонус, все варинты заглавной картинки.

/// brigid-images
[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-01.jpg"
alt = "Вариант 1 картинки из заглавного изображения от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-02.jpg"
alt = "Вариант 2 картинки из заглавного изображения от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-03.jpg"
alt = "Вариант 3 картинки из заглавного изображения от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-04.jpg"
alt = "Вариант 4 картинки из заглавного изображения от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-05.jpg"
alt = "Вариант 5 картинки из заглавного изображения от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-06.jpg"
alt = "Вариант 6 картинки из заглавного изображения от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-07.jpg"
alt = "Вариант 7 картинки из заглавного изображения от DALL-E"

[[images]]
src = "./images/using-dall-e-3-for-gamedev-12-08.jpg"
alt = "Вариант 8 картинки из заглавного изображения от DALL-E"
///
