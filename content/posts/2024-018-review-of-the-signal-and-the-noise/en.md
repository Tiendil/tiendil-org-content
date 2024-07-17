---
title = "Review of the book \"The Signal and the Noise\""
tags = ["books", "thinking", "theory", "practice", "interesting"]
published_at = "2024-07-16T12:00:00+00:00"
seo_description = "Review of the book \"The Signal and the Noise\". A good overview of forecasting approaches using specific significant cases as examples."
seo_image = "./cover_en.jpg"
---

/// brigid-images
src = "./cover_en.jpg"
alt = "The cover of the book \"The Signal and the Noise\"."
///

[Nate Silver](https://en.wikipedia.org/wiki/Nate_Silver)  — the author of "The Signal and the Noise" — is widely known for his successful forecasts, such as the US elections. It is not surprising that the book became a bestseller.

As you might guess, the book is about forecasts. More precisely, it is about approaches to forecasting, complexities, errors, misconceptions, and so on.

As usual, I expected a more theoretical approach, in the spirit of [Scale](post:@choose-nearest-language:scale), but the author chose a different path and presents his ideas through the analysis of practical cases: one case per chapter. Each chapter describes a significant task, such as weather forecasting, and provides several prisms for looking at building predictions. This certainly makes the material more accessible, but personally, I would like more systematics and theory.

Because of the case studies approach, it is difficult to make a brief summary of the book. It is possible, it would even be interesting to try, but the amount of work is too large — the author did not has the goal to provide a coherent system or a short set of basic theses.

Therefore, I will give a review of the book as a whole, an approximate list of prisms, and a set of cool facts.

<!-- more -->

## Impressions of the book

The book contains an interesting, consistent presentation of the author's experience in forecasting, his thoughts, and beliefs.

The wide coverage of the topic is the strong point of the book. For each aspect of forecasting, Nate chooses a suitable real-life example that reflects the problem best.

The author believes that forecasting is not the experts-only job, but a daily activity for everyone. Therefore, everyone should be able to make good-enough forecasts.

Much of what is presented in the book resonates with my posts on [models](post:@choose-nearest-language:life-and-work-with-models) and [mistakes](post:@choose-nearest-language:life-and-work-with-mistakes). Therefore, I cannot but recommend "The Signal and the Noise" :-)

Nate is a consistent Bayesian and gives a good description of the Bayesian view of probability in simple words. I rarely met an accessible presentation of Bayesian decision-making, so this is a definite plus for the book.

One of the minuses I would highlight is the strange positioning of the book — it is somewhere between scientific and popular science spheres. It is not clear what level of knowledge the author expects from the reader. The general style of presentation does not require deep knowledge, but sometimes Nate introduces specific terms (model, feedback, etc.) too easily, without explanation. This can slightly complicate the perception of the book for beginners.

Also, note that the author holds his own concrete point of view on many questions. I usually agree with him, but it is still a biased presentation. The book rather reflects the author's views and experience than gives an independent objective picture.

"Signal and Noise" will be interesting to you if:

- you want to expand your horizons in forecasting and related areas;
- you want to ground the theory in your head, correlate it with real situations.

If you want to improve your theory, the book may not be suitable for you, but:

- firstly, the book will be a good starting point for searching;
- secondly, I'm not sure there are alternatives with better theory :-)

## Structure of the book

Нейт делит книгу на две части:

- Первая: диагностика проблем предсказания.
- Вторая: изучение и применение теоремы Байеса.

Но я бы не сказал, что эти темы так уж явно выделяются.

Также, во введение автор даёт более детальное резюме главам, но мне оно тоже не нравится. Не потому, что плохое (автору виднее), а потому, что я придумал лучше :-D

Как я упоминал, книга следует структуре: одна глава — один кейс — несколько призм, которые хорошо отображает этот кейс. Не во всех главах легко выделить призмы, плюс, сама идея пришла ко мне после прочтения, поэтому что-то мог забыть. Но вот как я вижу структуру «Сигнала и Шума»:

| Задача / Кейс                                    | Темы / Призмы                                 |
|--------------------------------------------------|-----------------------------------------------|
| Финансовый кризис 2008                           | причины и следствия неудачных прогнозов       |
| Предсказание результатов выборов                 | эксперты vs опросы общественного мнения       |
| Предсказание результатов бейсбольных чемпионатов | эксперты vs статистика                        |
| Прогноз погоды                                   | компьютерное моделирование, [накопление ошибки]{post:life-and-work-with-mistakes}         |
| Предсказание землетрясений                       | предсказание vs прогноз, [переобучение](https://ru.wikipedia.org/wiki/Переобучение)       |
| Предсказание экономики                           | погрешность прогнозов, [корреляция](https://ru.wikipedia.org/wiki/Корреляция) vs казуация |
| Предсказание эпидемий                            | [экстраполяция](https://ru.wikipedia.org/wiki/Экстраполяция), [имитационное моделирование](https://ru.wikipedia.org/wiki/Имитационное_моделирование)  |
| Ставки на спорт ~~1x bet~~                       | [теорема Байеса](https://ru.wikipedia.org/wiki/Теорема_Байеса), [Фишеровская статистика](https://ru.wikipedia.org/wiki/Проверка_статистических_гипотез) vs [Байесовская](https://ru.wikipedia.org/wiki/Байесианство) |
| Шахматы                                          | [перебор вариантов](https://ru.wikipedia.org/wiki/Полный_перебор), [эвристики](https://ru.wikipedia.org/wiki/Эвристика) |
| Покер                                            | экономика покера, роль удачи, результативность в долгосрочной перспективе |
| Торговля на бирже                                | биржа как рынок прогнозов, групповые прогнозы                             |
| Изменение климата                                | когда шума больше, чем сигнала                                            |
| Предсказание терактов и редких событий           | когда сигналов слишком много, значимость сигналов                         |

## Полезные факты

Несколько утверждений, которые сразу немного подправят вашу картину мира.

- Даже когда эксперты-политологи заявляли о полной невозможности определённого события, примерно в 15% случаев оно происходило.
- Модели, предсказывавшие американские выборы без учёта опросов избирателей (на основе экономических показателей, etc.) ошибались значительно чаще/сильнее, чем те, которые использовали результаты опросов.
- В 90-ых экономисты смогли предсказать только 2 из 60 рецессий.
- Базовые экономические показатели часто существенно пересматриваются (ретроспективно, по мере поступления новых данных), что делает их очень неточными.
- В некоторых экономических прогнозах вероятность экономического кризиса 2008 года была оценена в 200 раз меньше оценок пост-фактум.
- Ручная постобработка экспертами способна увеличить точность компьютерных прогнозов осадков на 25%, а прогнозов погоды на 10%. Эта статистика не меняется со временем, то есть не зависит от используемых технологий.
- Коммерческие синоптики редко говорят, что вероятность дождя равна 50% — это может быть свидетельством неуверенности для потребителей. Вместо этого подбрасывают монетку и выбирают 40% или 60%.
- Анонимность экспертов уменьшает качество их прогнозов.
- Официальная позиция [USGS](https://en.wikipedia.org/wiki/United_States_Geological_Survey) по землетрясениям: невозможно предсказать, но можно спрогнозировать.
- Если в процессе игры в покер вы не можете выявить 1-2 плохих игроков за столом, то лучше отказаться от игры.

## Аггрегирующие прогнозы vs индивидальные

- Агрегирующий прогноз всегда лучше большинства индивидуальных, но не обязательно будет хорошим.
- Агрегирующий прогноз хорошо работает когда индивидуальные прогнозы сначала делаются независимо, а потом объединяются. Если работает механизм а-ля рынок, когда люди уточняют прогнозы, на основе предыдущего агрегированного прогноза, то значительно усиливается влияние группового поведения и качество падает.
- Агрегирующий прогноз не всегда лучше лучшего из индвивидуальных.

## Про хорошие прогнозы

- Ваши прогнозы могут и должны меняться со временем.
- Отличительная черта хорошего веростностного прогноза в том, что каждая из его вероятностей может реализоваться в долгосрочной перспективе.
- Вероятность события в Х% говорит, что на большом интервале времени / при проверки большого количества аналогичных ситуаций это событие будет случаться в X% случаев. Если это не выполняется — прогноз был плох.
- Полезно взвешивать качественную информацию. Например, после собеса может быть не так важна конкретная полученная информация, сколько её сумма: количество красных флагов, общее впечатление. [Следую этому правилу на своих собесах]{post:how-to-fail-interview-with-me}.

## Немного про торговлю на бирже

- Сейчас торговля устроена так, что менеджеры и трейдеры заинтересованы только в краткосрочном планировании (90 дней). Им важно, что прямо сейчас делают конкурены, и чтобы их не уволили клиенты за ошибки в этом промежутке.
- Трейдеры склонны принимать решения, которые приведут к потери денег их фирмами, если это позволит им «слиться с толпой» и, тем самым, уменьшит шансы стать козлом отпущения.
- Рынок может продолжать оставаться нерациональным дольше, чем вы — платёжеспособным.

## Оценка качества прогнозов

Качество прогнозов можно оценивать по-разному. Метрикой качества могут быть:

- качество/правильность — на сколько прогноз выполнился;
- последовательность/честность — был ли прогноз лучшим из возможных, использовал ли он все данные;
- экономическая ценность — удалось ли использовать прогноз для экономической выгоды.

Варианты могут противоречить друг другу. Например, очень точный прогноз может быть сделан на основе плохих данных или не принести выгоду, потому что предсказал всё, кроме того единственного, что надо было.

## Забавные факты

- В [одном из первых печатных изданий библии](https://ru.wikipedia.org/wiki/Злая_Библия) была опечатка в заповеди: вместо «не прелюбодействуй» напечатали «прелюбодействуй».
- Оказывается, бейсбольные игры проходят на нестандартных аренах — каждый стадион уникален по своим параметрам. Видимо по той же причине, по которой в США не переходят на [СИ](https://ru.wikipedia.org/wiki/Международная_система_единиц).
- В 00-х в Сан-Франциско росла заболеваемость половыми заболеваниями, но не СПИД-ом. Это ставило всех в тупик, так как он раньше очень хорошо коррелировал с ними. Оказалось, изменилось поведение людей: они начали выбирать партнёров с тем же СПИД статусом, что разрушило предыдущие модели распространения СПИДа.
- Из-за доверительного интервала в 95% в статистическом тесте, исследователи значительно чаще сообщают о результатах, которые попадают в интервал 95.1% чем в 94.9%
- Инвестиции членов Конкресса США дают прибыль на 5-10% в год выше среднего. Гипотетически, из-за инстайдерской информации, которая попадает к ним при лоббировании интересов компаний.
