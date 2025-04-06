---
title = "Key principles on in-game virtual currencies in the EU"
tags = [ "theory", "development", "gamedev", "game-design", "futurology", "monetization", "state"]
published_at = "2025-04-07T12:00:00+00:00"
seo_description = "Review of guidelines for using in-game currencies in the European Union."
seo_image = ""
---

Last month, the [Consumer Protection Cooperation Network](https://commission.europa.eu/live-work-travel-eu/consumer-rights-and-complaints/enforcement-consumer-protection/consumer-protection-cooperation-network_en) in coordination with the European Commission released interesting guidelines on the implementation of in-game currencies.

- [News](https://ec.europa.eu/commission/presscorner/detail/en/ip_25_831)
- [The document](https://drive.google.com/file/d/1rwD44ZV16U8rZtrdN5g_nVe5_vSjo32y/view?usp=drive_link) on my Google Drive — just in case the originals move somewhere.

The document does not have the status of a law; it is a recommendation for interpreting existing EU consumer protection laws in the field of computer games. As I understand it, each country decides separately whether to follow these recommendations or not.

I have a dual attitude towards such regulations.

From one side, the nonsense that goes on in free-to-play games (especially mobile ones) should have been stopped a long time ago. From my ethical position, I fully support attempts to bring order there.

From the other side, regulations always complicate life for small and medium businesses and have little effect on large companies. The larger the company, the easier it is for them to ignore regulations.

In the following text, I'll list the main theses of the document, speculate on how these recommendations should be implemented according to the authors' intent, and how they, most likely, will be implemented in reality.

Also, the document is small — only 8 pages — and nicely formatted, so you can read it yourself.

/// warning | Disclaimer
I'm not a lawyer and have nothing to do with free-to-play for about 5 years, so don't take my thoughts as recommendations.

Think of this text as an interesting exercise, a free flight of thought.
///

<!-- more -->

## Theses

Simplified, in my own words.

1. In-game currency is recognized as a digital representation of real money if the main purpose of this currency is to purchase something in the game.
2. In-game transactions are equivalent to real-world transactions in terms of consumer rights protection.
3. It is prohibited to use practices that exploit cognitive biases to make the player pay more or receive less.
4. Price in real-world currency always must be displayed next to the price in in-game currency.
5. It is recommended not to introduce multiple currencies and complicated exchange chains.
6. It is recommended not to force the player to buy more currency than they need. For example, do not sell currency in fixed bundles, especially those that do not match the prices in the game (packs of 1000 coins when the price of the desired item is 1001 coins).
7. All currency spending proposals must be accompanied by detailed transaction information, including a clear description of the purchased items and (maybe) a link to the description of consumer rights.
8. The player has the right to cancel the transaction within 14 days unless they've explicitly waived this right.
9. The player has the right to cancel the transaction if they believe they received a product that does not match the description. For example, if they received a sword with a different sprite or that sword haven't helped to kill the boss they expected to kill.
10. In particular, partial rollback of transactions is recommended — refunding real-world money for the remaining unspent in-game currency.
11. Game operators should not confuse players with overcomplicated terms, delete something from the game (especially if it's purchasable), modify the costs of in-game currency, permanently ban players without the possibility of contesting the ban.
12. Game operators should especially carefully handle vulnerable clients. Of course, children, but there are more interesting options. For example, a person outside the game may not be considered vulnerable, but in the game, they may start to be considered vulnerable if the game targets specific vulnerabilities such as gambling addiction, shopping addiction, etc.
13. "Whales" can be considered vulnerable clients, as their behavior suggests issues with impulse control and gambling. Therefore, all games targeting "whales" are likely considered to be targeting vulnerable clients.
14. Parental control functions should be implemented in the game, it is possible to use platform-provided functions.

It looks like a lot of fun :-)

## How difficult it is to follow the regulations

For the start, let's **assess the complexity of following the letter and spirit of the recommendations**. What might be required from bona fide developers of free-to-play games?

Obviously, following the recommendations to the letter and spirit is expensive and difficult. I won't separately prove this point; instead, I'll focus on what exactly makes it difficult and expensive.

### Markets restrictions

The first thing to decide is whether you are making the game only for the European Union or for the whole world. This affects, at least, a number of interface and balance variants you should create.

The EU's free-to-play market, at the best, is the third largest after the USA and China.

Therefore, if you want a lot of free-to-play money, it is currently more profitable to ignore Europe by simply not releasing the game there. When and if you have a big bag of money, you can consider to adapt the game.

Or, you can consciously limit the influx of money and roll out an ethically correct monetization model to the whole planet, hoping that you won't go bankrupt along the way, as **the price of traffic for unit-economics is set by crazy free-to-play monetization, not by European regulations.**

I'm not considering the option of making two versions right away, as it is only for the very rich — they have their own life, their own problems.

So, let's assume you decided to follow the recommendations. What awaits you?

### Обеззубленная монетизация

Большая часть монетизации free-to-play заточена на китов; использует кучу хитрых трюков. Если разработчики  избавятся от этого, то легко могут потерять, навскидку, 3/4 дохода. Зависит от игры, конечно, но в целом только киты могут давать 50+% дохода.

Это не говоря ещё о переучивании геймдизайнеров и маркетологов, которые очень сильно заточены на очень конкретные механики и поведение игроков.

/// note | Уйти из Европы или переделать игру?
Преувеличим и допустим, что в Евросоюзе — `1/3` рынка free-to-play игр, и что при следовании регуляциям у нас остаётся `1/4` дохода.

1. Если уйти из Европы, то мы остаёмся с `2/3` дохода.
2. Если остаться в Европе, то мы остаёмся с `1/4` дохода.
3. Если сделать две версии игры, то мы остаёмся с `2/3 + 1/4 * 1/3 = 8/12 + 1/12 = 9/12 = 3/4` дохода.

Вариант 3 выигрывает перед вариантом 1 на `1/12` — меньше 10% профита, но куда больше гемороя. В целом, нет гарантии, что поддержка «двух версий» не окажется дороже чем `1/12` дохода.
///

### Новые-старые концепции интерфейсов и баланса

Интерфейс и баланс, конечно, штуки разные, но в нашем случае с ними потребуется сделать одно и то же — откатить к практикам классических игр, после чего, может быть, постепенно нащупать их новые «этические» варианты для «европейского» free-to-play.

Звучит просто и даже экономно — меньше работы — нужно «просто делать игру», а не [симулякры]{post:@choose-nearest-language:one-form-two-products}, не надо тратить силы на дополнительные усложнения.

Нюанс в том, что большинство геймдизайнеров условного мобильного free-to-play не знает как делать классические игры. Обратное тоже верно, конечно. Я сходу даже не назову успешного прецедента, когда разработчики из free-to-play рынка сходу влились в тот же рынок PC игр для Steam.

Та же логика, думаю, справедлива и для интерфейсов.

Возьмём, для примера, требование писать сумму в реальной валюте рядом с суммой в виртуальной. Попробуйте надёжно объяснить игрокам, что покупка не потребует оплаты сразу в двух валютах :-)

Соответственно, при трансформации надо будет не просто «убрать что-то», но проводить серию экспериментов на поиск новых рабочих подходов.

### Бухгалтерия внутриигровых транзакций

Потребуется реализовать лог внутриигровых транзакций, чтобы можно было их надёжно отслеживать, отменять, etc.

Сейчас наличие такого лога, часто, довольно условно, особенно в небольших играх. Его может не быть, или он может быть в виде неточного текстового лога, иногда прямо в профиле игрока (который можно отредактировать на клиенте).

Сделать лог транзакций надёжным и полным — дорогое удовольствие как по человеко-часам, так и по инфраструктуре. За свою карьеру я работал над 3-4 вариантами «платёжек», плюс делал элементы подобного лога в [Сказке](https://the-tale.org), и могу сказать, что это много работы, которая, де-факто, не нужна ни вам, ни игрокам. Один из примеров того, как мой перфекционизм вышел боком.

Проблема даже не в самом логе, а в том, как с ним должна игра взаимодействовать.

Например, многие игры держат большую долю логики на клиенте и (обоснованно) применяют хаки в духе «если сети нет, то верим клиенту».

/// details | Почему логика оказывается на клиенте
До сих пор не знаю почему, у меня три гипотезы:

- Бэкендщики много дороже клиентских разрабов.
- Во время начала разработки, идеологи не часто знают что бэкенд есть хотя бы как концепция.
- Lean startup & fake it till you make it.

Скорее всего сочетание всех трёх, так как встречал очень разную аргументацию.
///

Если мы начинаем качественно отслеживать все игровые транзакции, то возникают проблемы не только с реализацией бэка, но и адаптацией поведения игры к новым сетевым задержкам. Как следствие, лог транзакций становится ещё одним видом «вечной платы», который будет отнимать ресурсы всё время существования игры.

Если у вас уже есть игра, то внедрение лога транзакций в неподготовленную для него архитектуру займёт от «очень долго» до бесконечности. Серьёзно, текущая парадигма разработки просто не предполагает глубокой проработки архитектуры от разработчиков. Вам должно очень повести с лидерами разработки ~~например, меня наймёте~~, чтобы такой финт оказалось возможно провернуть без больших проблем.

На всякий случай ещё раз оговорюсь, что это рассуждения для случая, когда мы очень сильно стараемся следовать рекомендациям. Если мы не стараемся им следовать, то и технические решения могут быть более простыми.

### Вещи, которые просто надо будет сделать

- Умные рефанды.
- Родительский контроль.

Обе вещи уже есть в большинстве платформ, поэтому на них просто надо будет потратить время и силы.

### Больше работы отделу поддержки

Саппорт должен будет уметь разруливать более сложные жалобы и быть готовым к оспариванию банов и любых игровых транзакций. Сотрудников (или ботов) может понадобиться больше, чем обычно надо.

## К чему должна привести регуляция в идеале

По замыслу, видимо, к оздоровлению сегмента мобильных и просто онлайн игр.

Все игры должны дружно перейти на модель buy-to-play или на подписки. Представьте Google Play, но с играми как в Steam — звучит круто, не правда ли?

## К чему могла бы привести такая регуляция

Мы говорим о европейской бюрократии, так что я бы поставил на то, что в ближайшие лет 10 это ни к чему не приведёт. К сожалению.

Но давайте представим, что за выполнением этих рекомендаций начнут следить и обходить их не получится. Что будет?

Крупные издательства/разработчики портируют свои игры для Европы — «чтобы было» — «копейка рубль бережёт» и всё такое. Немного потеряют в деньгах, но для них ничего существенно не изменится.

В Европе станут недоступны большинство free-to-play игр «классической» модели (выкачивание денег) от малых и средних разработчиков.

Как следствие, малые и средние разработчики потеряют около 1/3 дохода, что может по ним сильно ударить.

Хотел написать, что сочувствую им из солидарности, но не могу. Каждый человек сам выбирает на что тратить своё время. Если вы решили делать современное free-to-play, бог вам судья :-)

Европейский рынок освободится от мусора, цена маркетинга упадёт и появится шанс у ребят, которые хотят и могут делать реальные игры. Новые компании создадут новые продукты, окрепнут в европейской песочнице и будут менять мир вокруг.

Хотелось бы верить, но…

## К чему скорее всего приведёт такая регуляция

Вы слышали о крупных разбирательствах в области GDPR на игровом рынке? Я тоже нет.

Вы заметили пользу, которую принёс GDPR игрокам и/или разработчикам на игровом рынке? Я тоже нет.

А разговоров-то было… Кстати, у меня есть пост о том [как делать поддержку GPDR]{post:@choose-nearest-language:how-i-did-and-would-do-gdpr-support}.

Так вот, то же самое случится и с этими регуляциями.

Не только потому, что это будет делать европейская бюрократия, но и потому, что мы говорим о полностью виртуальных мирах, логику которых можно гнуть как угодно. Это не реальный мир с физическими продуктами, которые надо физически производить из физических ресурсов, логика потребления которых диктуется культурой обществ и физикой человеческого тела.

Это будет борьба формализмов с фантазией/творчеством, фактически, богов виртуальных миров, которые могут изменять правила своих миров как угодно. Человеческая фантазия в таких комфортных условиях гарантированно победит. Поэтому большинство разработчиков просто слегка адаптируют свои игры, не меняя их суть.

## Как разработчики будут обходить регуляции

Самые простые и быстрые решения, которые отсекут 80% проблем:

- Очередная галочка при регистрации в духе «разработчик всегда прав, я всегда неправ» или её аналога.
- Эвристики для саппорта в духе «возвращаем деньги, после чего баним навечно по любому спорному вопросу».
- Неточный текстовый лог транзакций, в который саппорт будет смотреть глазами, после чего применять предыдущий пункт.

Но, конечно, самые крутые решения будут в геймдизайне.

Если регуляции касаются валюты у которой покупка — основное назначение, то можно сделать так, чтобы её основное назначение выглядело не основным:

- Продавать не валюту, а здания, которые украшают твою базу и, случайно, производят какие-то другие ресурсы, которые совсем-совсем не валюта.
- За трату реальных денег (на что угодно, хоть на рейтинг «кто больше потратил») качать внутриигровую шахту, которая добывает игровую валюту и, де-факто, цены в реальной валюте не имеет. Что-то похожее сделано в [Mechabellum](https://store.steampowered.com/app/669330/Mechabellum/).
- Продавать коллекционные карточки, которые нужны только для коллекционирования, но ещё их можно менять на всякое. Но они же коллекционные, поэтому нужны только для коллекционирования, а обмен — это второстепенное действие.
- Продавать токены для покупки подписки, как в [EVE](https://wiki.eveuniversity.org/Accounts#PLEX), а что игроки начнут их использовать как валюту — так это ж право игроков, разработчики этого не требуют.
- Продавать временный доступ к премиум контенту, в котором можно фармить уникальные предметы, на которые можно менять другие предметы. Ну вы поняли.

В общем, навернуть такую игровую систему, в которой никто не сможет сходу доказать где у тебя какая валюта — как два пальца. Когда юристы говорят, что дело швах, быстро меняешь правила и вся бюрократическая тягомотина начинается сначала.

И это не говоря о практиках монетизации из серой зоны. Например, можно продавать хард валюту задёшево с лимитом в 1 покупку в месяц, а остальные продажи делать задорого с бесконечным лимитом. Во всех ценах писать эквивалентную цену по дешёвому курсу, так как «наша игра рассчитана именно на такое количество трат в месяц, а всё сверх этого есть ненужный бонус для фанатов».

## Итого

Определённо хотели как лучше (и старались, судя по хорошему оформлению документа), но получится как всегда.

Как делать правильно, к сожалению, я не знаю.
