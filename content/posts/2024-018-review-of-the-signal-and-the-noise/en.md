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

As usual, I expected a more theoretical approach, in the spirit of [Scale](post:@choose-nearest-language:scale), but the author chose a different path and presents his ideas through the analysis of practical cases: one case per chapter. Each chapter describes a significant task, such as weather forecasting, and provides several prisms for looking at building forecasts. This certainly makes the material more accessible, but personally, I would like more systematics and theory.

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

Nate separates the book into two parts:

- The first: diagnosing the problems of forecasting.
- The second: studying and applying Bayes' theorem.

But I wouldn't say that these topics are so clearly distinguished.

Also, in the introduction, the author gives a more detailed summary of the chapters, but I don't like it either. Not because it's bad (the author knows better), but because I came up with a better one :-D

As I mentioned, the book follows the structure: one chapter — one case — several prisms this case reflects well. In some chapters, it is difficult to distinguish prisms, plus, the idea itself came to me after reading, so I might forget/miss something. But here's how I see the structure of "The Signal and the Noise":

| Task / Case                                      | Topics / Prisms                                   |
|--------------------------------------------------|---------------------------------------------------|
| The financial crisis of 2008                     | causes and consequences of unsuccessful forecasts |
| Predicting election results                      | experts vs social surveys                         |
| Predicting baseball championships                | experts vs statistics                             |
| Weather forecast                                 | computer modeling, [accumulation of errors](post:@choose-nearest-language:life-and-work-with-mistakes)                                     |
| Predicting earthquakes                           | prediction vs forecast, [overfittings](https://en.wikipedia.org/wiki/Overfitting)      |
| Predicting economy                               | forecast errors, [correlation](https://en.wikipedia.org/wiki/Correlation) vs causation |
| Predicting epidemics                             | [extrapolation](https://en.wikipedia.org/wiki/Extrapolation), [simulation modeling](https://en.wikipedia.org/wiki/Simulation_modeling)                                                                                |
| Predicting sports results                        | [Bayesian theorem](https://en.wikipedia.org/wiki/Bayes%27_theorem), [Fisher statistics](https://en.wikipedia.org/wiki/Statistical_hypothesis_testing) vs [Bayesian](https://en.wikipedia.org/wiki/Bayesian_statistics)  |
| Chess                                            | [brute force](https://en.wikipedia.org/wiki/Brute-force_search), [heuristics](https://en.wikipedia.org/wiki/Heuristic)                                                          |
| Poker                                            | poker economics, role of luck, efficiency in the long run |
| Stock trading                                    | stock market as a forecast market, group forecasts        |
| Climate change                                   | when there are much more noise than signal                |
| Predicting terrorist attacks and rare events     | when there are too many signals, significance of signals  |

## Helpfull facts

A few facts, that instantly slightly improve your world model.

- Even when political experts claimed the impossibility of a certain event, it happened in about 15% of cases.
- Models that predicted USA elections without considering voter surveys (based on economic indicators, etc.) were less accurate than those that used survey results.
- In the 1990s, economists were able to predict only 2 out of 60 recessions.
- Basic economic indicators are often significantly revised (retrospectively, as new data becomes available), making them very inaccurate.
- In some economic forecasts, the probability of the 2008 economic crisis was estimated to be 200 times less than in the post-factum estimates.
- The accuracy of precipitation forecasts can be increased by 25% by manual post-processing by experts, and weather forecasts by 10%. This statistic does not change over time, i.e., it does not depend on the technologies used.
- Commercial meteorologists rarely say that the probability of rain is 50% — this may be a sign of uncertainty for consumers. Instead, they flip a coin and choose 40% or 60%.
- The anonymity of experts reduces the quality of their forecasts.
- The official position of the [USGS](https://en.wikipedia.org/wiki/United_States_Geological_Survey) on earthquakes: it is impossible to predict earthquakes, but it is possible to forecast them.
- If you cannot identify 1-2 bad players at the poker table during the game, it is better to refuse to play.

## Aggregated forecasts vs individual forecasts

- An aggregated forecast is always better than most individual forecasts, but not necessarily good.
- An aggregated forecast works well when individual forecasts are made independently and then combined. If there is a mechanism like a market, when people refine forecasts based on the previous aggregated forecast, the influence of group behavior is significantly enhanced, and the quality of the forecast decreases.
- An aggregated forecast is not always better than the best of the individual forecasts.

## About good forecasts

- Your forecasts can and should change over time.
- A distinctive feature of a good probabilistic forecast is that each of its probabilities can be realized in the long term.
- The probability of an event at X% says that over a long period of time / when checking a large number of similar situations, this event will occur in X% of cases. If this is not the case, the forecast was bad.
- It is useful to weigh qualitative information. For example, after an interview, the specific information received may not be as important as its sum: the number of red flags, the overall impression. [I follow this rule in my interviews]{post:@choose-nearest-language:how-to-fail-interview-with-me}.

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
