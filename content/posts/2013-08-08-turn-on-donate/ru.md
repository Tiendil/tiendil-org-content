---
title = "Включил донат в своей игрушке"
tags = [ "the-tale", "gamedev", "monetization", "practice", "development",]
published_at = "2013-08-08T12:00:00+00:00"
description = "Наконец включил доход в своей игрушке. Расскажу как я это делал."
seo_image = ""
---

На этой неделе наконец включил донат в своей игрушке.

Расскажу о том, как и кудой я этот донат делал. А также как вообще можно организовать приём денег у нас в стране максимально простым способом. Под максимально простым способом я понимаю получение денег на беларуское юр. лицо в родной валюте, без заморочек с открытием фирм в левых странах, приёма иностранной валюты и подобных вещей.

<!-- more -->

Принимать платежи у нас можно с помощью следующих систем:

- [WebMoney](http://webmoney.ru/)
- [Деньги Online](http://dengionline.com/)
- [Xsolla](http://xsolla.com/)
- [EasyPay](http://easypay.by/)
- [IPay](http://ipay.by/)
- [RoboKassa](http://robokassa.ru/)

EasyPay и IPay сразу отбросил, т.к. это сугубо локальные системы и завязываться на них не хотелось.

Robokassa не работает с юр. лицами из Беларуси, но позволяет подключиться к себе любому физическому лицу и выводить деньги куда хочешь. Сейчас бы смело выбирал её.

WebMoney рассматривались как последний вариант, т.к. это, по сути, не агрегагатор, а конкретная платёжная система, которой пользуются далеко не все. К тому же лично мне они кажутся древним динозавром — всегда с трудом удавалось использовать.

Первым делом решил подключаться к ДеньгиOnline, по следующим мотивам:

- система больше на слуху и старше;
- их беларуский филиал нагуглился первым;
- работать они предлагали в качестве посредника между мной и пользователями (а значит не надо было заключать стрёмные договора на передачу лицензий софта). Следствием этого пункта является уплата Единого Налога (т.к. предоставляются услуги физическим лицам), что максимально упрощает отчётность и уплату налогов.

В результате реализовал нужные интерфейсы (про API скажу чуть позже), завершил согласование договора с ДО и должны были уже подписывать, но… Та-да-да… Они внезапно прекратили поддерживать беларуские проекты. О возобновлении деятельности мне пока не сообщали.

В результате потерял огромное количество нервов, 2 недели разработки и возможность перейти на УСН (упрощённое налогообложение), т.к. истекло время написания заявления на переход. Спасибо ДО.

Xsolla мне советовало несколько человек ещё раньше, но у этой компании в то время не было филиала в РБ (или я его не нашёл), а мне было лень возиться с приёмом иностранной валюты, да и были же ДО… В результате я таки договорился с ними, и скажу, что ДО они делают по всем параметрам (саппорт, АПИ, отчётность) за исключением формы сотрудничества — заключается лицензионный договор на передачу прав использования программного средства. Плюс они ориентируются именно на игры (и сайты знакомств :-) ).

Несколько общих фактов:

- Судя по всему, и у ДО и у Xsolla в Беларуси в лучшем случае сидят юрист с бухгалтером (если это не один человек и не на пол ставки);
- API ДО и Xsolla местами требует использования кодировки cp1251, видимо тяжёлое наследие;
- API ДО стрёмное, плохо документировано и вообще не выглядит цельным (вплоть до разницы именования параметров запросов);
- По факту запуска, счёт по багам между мной и Xsolla 4:1 в мою пользу :-) Но надо сказать, что ребята быстро их правили;
- При переписке с Xsolla их нужно постоянно пинать, этим можно ускорить процесс раза в 3;

В итоге у меня сейчас в игрушке небольшая банковская система, которая может работать с ДО (теоретически) и Xsolla (фактически), если вдруг кому надо, могу напрячься и вынести в отдельный проект (изначально на это ориентировался) и даже документацию напишу.

Если что забыл, спрашивайте.