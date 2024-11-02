---
title = "Notes on AI in 2024: industry transparency"
tags = ["practice", "theory", "neural-networks"]
published_at = "2024-11-03T12:00:00+00:00"
seo_description = "My notes on the current state of AI at the end of 2024, this part is about industry transparency."
seo_image = ""
---

Nearly a year and a half ago, I published a large [forecast on artificial intelligence]{post:@choose-nearest-language:silly-predictions-about-artificial-intelligence}. Read it if you haven't already — it's still looking good.

Recently, I've decided to expand the prognosis, but a large comprehensive post just isn't coming together, so it will be a series of smaller notes.

I'll start with speaking about the transparency of the industry: the current AI movement has several cool features that I want to speak about.

<!-- more -->

## A low delay in receiving information about the current state of the industry

A large portion of industry events are public (here and further, by "we" I mean an abstract humanity):

- We either know in the moment who of the key companies is doing what, or we are finding out within half a year.
- We almost instantly know when key specialists change companies, sometimes even projects.
- Within months, we notice a large part of ~~important~~ interesting scientific developments. For example, after the publication of a preprint on [Kolmogorov-Arnold Networks](https://arxiv.org/abs/2404.19756), the topic went through stages of hype and the first checks of the concept in practice just within a few months.

## All major projects are led by experienced IT businessmen

These people know the value of money and the potential benefit of its distribution. Well, maybe not all of them know it perfectly, but most likely they better with money than an average person.

Consequently, the directions of companies' efforts correlate well with the assessment of technology prospects. And with the prospect of raising hype too, for the sake of fairness.

Therefore, if a lot of money is going somewhere, it is quite reasonable to assume one of two options, sometimes both at once:

- The technology is considered ~~sufficiently promising~~ more promising than most others in terms of potential return on investment. For myself, I interpret the return as at least 2-3 orders of magnitude.
- A request for some feature/possibility from potential customers is assessed as so large that the potential profit justifies the risk of losing money due to technology unreadiness.

## Нехватка рук специализированных разработчиков/учёных vs обилие денег

Если у вас есть лишний миллион долларов, то вы не сможете получить из воздуха нового специалиста по SOTA архитектурам нейронок быстрее, чем лет за пять, может за два-три, если человек особо способный. Можно только переманить уже готового специалиста, — перекинуть его с проекта на проект, если смотреть на проблему в масштабе человечества.

Для примера, есть версия, что [Google недавно купил стартап за 2.7 млрд$ только для того, чтобы забрать его основателей и core команду обратно к себе](https://www.linkedin.com/pulse/analyzing-googles-characterai-acquisition-sramana-mitra-iramc/).

Соответственно:

- Пространство возможных архитектур нейронок исследуется медленно — работа не масштабируется вливанием денег.
- Большинство денег вливается в масштабирование всего, что можно масштабировать: данных, железа, команд поддержки (сюда можно включить не только условных разметчиков данных, но и дорогих спецов из области MLOps или писателей кода под железо).

Это должно приводить к важным скрытым трендам, но это сугубо мои гипотезы:

- Выбор направлений исследований в коммерческих компаниях, а именно в них сейчас происходит большинство исследований, находится под сильным давлением необходимости масштабировать нейронки. Соответственно, более интересные (но хуже масштабируемые) подходы могут не получать должного внимания, что скажется в будущем на скорости прогресса.
- Даже после создания концепции перспективной архитектуры, её реальное внедрение будет отложено до момента, когда исчерапается весь запас масштабирования текущей актуальной архитектуры. Так как профит от масштабирования гарантированный и быстрый, а профит от перехода на новую архитектуру не гарантированный и не быстрый.
- Возрастает сложность доказательства «перспективности» архитектуры, так как актуальные архитектуры заоптимизированы до максимума и никакая новая разработка не покажет сопоставимых с ними результатов, даже если концептуально превосходит текущие решения. У её разработчиков просто не будет денег и времени на сопоставимые оптимизации.

Если доверять этим гипотезам, то можно очень чётко видеть реальный прогресс технологий нейронок.

Утрируя, когда условная OpenAI выпускает новую флагманскую модель, мы можем видеть:

- конкретные отличия в архитектуре от предыдущей модели;
- конкретные сроки достижения пика возможностей (масштабирования) предыдущим SOTA решением.
- конкретные сроки на разработку/доведение до ума/оптимизацию нового архитектурного решения.

То есть, мы можем видеть серию качественных скачков и время между ними. Опираясь на эти данные, в одной из будущих заметок я попробую оценить пределы прогресса текущих технологий ИИ.
