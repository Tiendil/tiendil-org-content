---
title = "Feeds Fun — читалка новостей с тегами и ChatGPT"
tags = [ "feeds-fun", "open-source", "python", "neural-networks", "practice", "development", "tarantoga", "exocortex",]
published_at = "2023-09-24T12:00:00+00:00"
seo_description = "Описание моего пет-проекта — читалки новостей с тегами и ChatGPT."
seo_image = "images/feeds-fun-news-reader-with-tags-and-chatgpt-cover.png"
---

/// brigid-images
src = "images/feeds-fun-news-reader-with-tags-and-chatgpt-cover.png"
caption = "Выглядит неприглядно, но это временно."
///

Задержался с постом, а между тем читалка уже работает и экономит мне 4-8 часов в неделю.

Для нетерпеливых и ленивых:

- Репозиторий: [github.com/tiendil/feeds.fun](https://github.com/Tiendil/feeds.fun)
- Сайт: [feeds.fun](https://feeds.fun/) — заходите, подписывайтесь на подготовленные коллекции новостей, экспериментируйте.

Суть:

- Читалка автоматически определяет теги для каждой новости. Тут очень кстати пришлась ChatGPT.
- Вы создаёте правила в духе `elon-musk & twitter => score -100500`, `procedural-content-generation & hentai => score +13`.
- В интерфейсе сортируете новости по интересности и читаете только самые-самые именно для вас.

Если есть просьбы по фичам — создавайте issue, постараюсь воплощать. Хочется, чтобы штука пошла в народ.

<!-- more -->

## Мотивация

[Закончив с Тарантогой]{post:experiments-with-tarantoga-completed}, изначальную проблему я не решил: поток информации как перегружал меня, так и продолжил перегружать. Надо было что-то придумывать, поэтому я взял накопленный опыт, выделил самую большую проблему и пошёл её решать.

Проблема:

- Я подписан на много новостных потоков (RSS, ATOM). На момент написания поста — 380.
- Многие из потоков очень активны.
- Это выливается в 700-1000 уникальных новостей/постов в неделю.
- Пройтись по ним и отделить интересные зёрна от скучных плевел возможно, но тяжело и долго.

Софта, который мог бы это удобно фильтровать, нет или он стрёмный:

- Большинство online читалок не умеют в теги и определение интересности новости в каком-либо виде. Есть offline читалки, даже в emacs вроде, но мне они не удобны => не интересны.
- Есть open source [Tiny Tiny RSS](https://tt-rss.org/) с тегами и скорингом по ним, но он старый до безобразия, неудобный, с кривым API, да ещё и на PHP. Поэтому я сделал на нём прототип, но дописывать не захотел.
- Есть Feedly… Дорогая читалка для корпоративных пользователей, судя по фичам. Она умеет в какой-то ИИ и фильтры, но делает это настолько непрозрачно и неудобно, что пользоваться я не смог.

Как говорится, хочешь чтобы было сделано хорошо — сделай это сам.

## Идеология

Само-собой, код открыт под BSD-3, ограничений на поднятие своей копии сервиса нет.

Заодно придумал вот такую идеологию для проекта:

- You are in control.
- No black box recommendation algorithms.
- No "smart" reordering of your news.
- No ads.
- No selling of your data.

### Советы по использованию

Благодаря удобному фильтру не обязательно использовать читалку регулярно. Можно читать новости каждый день по чуть-чуть, но если у вас не было времени, легко вернуться через неделю/месяц и увидеть самые интересные новости за этот период.

Для новости может быть определено 50-100 тегов. Поэтому правила можно настраивать достаточно точно. За 2 месяца использования feeds.fun у меня накопилось 314 правил.

Частично такое количество тегов обусловлено принятым подходом: лучше добавить лишние/неверные теги, чем пропустить нужные. В будущем попробую лучше побороться с ошибками первого/второго рода.

#### Как создавать правила

- Правило номер 1: много правил не бывает.
- Легче всего убрать темы, которые точно не хотите видеть. Например, мне не интересны корпоративные новости, поэтому тегам вида `twitter`, `unity`, `oracle` я ставлю очень низкий рейтинг.
- Если у вас есть любимый источник, вы можете поставить высокий рейтинг тегу с доменом его сайта. Например, тегу `tiendil.org` :-)
- Лучше не ставить рейтинг очень общим тегам. Нет смысла подымать/опускать в рейтинге условную половину новостей. Вместо правила `business => score +100` используйте несколько конкретных: `business & game-development => score +100`, `business & machine-learning => score +100`.

/// brigid-images
src = "images/feeds-fun-news-reader-with-tags-and-chatgpt-crearte-rule-1.png"
caption = "Выбираем теги для нового правила."
///

#### Установите ключ OpenAI API

API ChatGPT платное и недешёвое, а читалка (пока?) бесплатна. Поэтому действуют следующие правила:

- Для новостных каналов из коллекций теги проставляются всегда.
- Для остальных каналов ChatGPT проставит теги, только если один из их читателей установил ключ OpenAI API.
- Если канал читает несколько пользователей с ключом, их ключи будут использоваться равномерно.
- В настройках можно указать не только ключ, но и лимиты его использования, чтобы тратить ровно столько, сколько хотите, на то, на что хотите.
- Статистика использования ключа, конечно, тоже есть.

**Чем больше людей установит ключ в настройках, тем дешевле для всех будет пользоваться сервисом.**

Если вы не доверяете ключ мне (имеете право), можете поднять свою копию сервиса и пользоваться ей.

#### Теги

Основной источник тегов — ChatGPT. Но есть и другие «процессоры» новостей, которые отвечают за более конкретные теги.

Сейчас это:

- Теги домена источника новости: `tiendil.org`, `reddit.com`, etc.
- Теги из самой новости, если источник их выставил.
- Тег `upper-case-title` — ДЛЯ ВОТ ТАКИХ ЗАГОЛОВКОВ, на случай если вы не хотите видеть новости с ними :-)

В будущем планирую делать упор именно на специализированные процессоры.

## Технологии

- Python, потому что умею на нём писать быстро и качественно + все батарейки есть.
- FastAPI, потому что де-факто стандарт сейчас.
- TypeScipt, потому что единственная нормальная альтернатива JavaScript.
- Vue.js, потому что единственный фронтенд фреймворк, от которого меня не воротит :-)
- База: PostgreSQL.
- Авторизация: [Supertokens](https://supertokens.com/), я писал про [open source сервисы аутентификации]{post:open-source-authentication-services}.