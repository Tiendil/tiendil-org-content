---
title = "Review of the book \"The Signal and the Noise\""
tags = ["books", "thinking", "theory", "practice", "interesting", "popular-science-books"]
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

As usual, I expected a more theoretical approach, in the spirit of [Scale]{post:@choose-nearest-language:scale}, but the author chose a different path and presented his ideas through the analysis of practical cases: one case per chapter. Each chapter describes a significant task, such as weather forecasting, and provides several prisms for looking at building forecasts. This certainly makes the material more accessible, but personally, I would like more systematics and theory.

Because of the case studies approach, it isn't easy to make a brief summary of the book. It is possible, and it would even be interesting to try, but the amount of work is too large — the author did not intend to provide a coherent system or a short set of basic theses.

Therefore, I will review the book as a whole, provide an approximate list of prisms, and list some cool facts.

<!-- more -->

## Impressions of the book

The book contains an interesting, consistent presentation of the author's experience in forecasting, his thoughts, and beliefs.

The comprehensive coverage of the topic is the strong point of the book. For each aspect of forecasting, Nate chooses a suitable real-life example that best reflects the problem.

The author believes forecasting is not an experts-only job but a daily activity for everyone. Therefore, everyone should be able to make good-enough forecasts.

Much of what is presented in the book resonates with my posts on [models]{post:@choose-nearest-language:life-and-work-with-models} and [mistakes]{post:@choose-nearest-language:life-and-work-with-mistakes}. Therefore, I cannot but recommend "The Signal and the Noise" :-)

Nate is a consistent Bayesian and describes the Bayesian view of probability in simple words. I rarely met an accessible presentation of Bayesian decision-making, so this is a definite plus for the book.

One of the minuses I would highlight is the strange positioning of the book — it is somewhere between the scientific and the popular science spheres. It is unclear what level of knowledge the author expects from the reader. The general presentation style does not require deep knowledge, but sometimes Nate introduces specific terms (model, feedback, etc.) too easily, without explanation. This can slightly complicate the perception of the book for beginners.

Also, note that the author holds his own concrete point of view on many questions. I usually agree with him, but it is still a biased presentation. The book reflects the author's views and experience rather than giving an independent, objective picture.

"Signal and Noise" will be interesting to you if:

- you want to expand your horizons in forecasting and related areas;
- you want to ground the theory in your head and correlate it with real situations.

If you want to improve your theory, the book may not be suitable for you, but:

- firstly, the book will be a good starting point for searching;
- secondly, I'm not sure there are alternatives with better theory :-)

## Structure of the book

Nate separates the book into two parts:

- The first: diagnosing the problems of forecasting.
- The second: studying and applying Bayes' theorem.

But I wouldn't say that these topics are so clearly distinguished.

Also, the author gives a more detailed summary of the chapters in the introduction, but I came up with a better one :-D

As I mentioned, the book follows the structure: one chapter — one case — several prisms this case demonstrates well. In some chapters, it isn't easy to distinguish prisms; plus, the idea itself came to me after reading — I might forget/miss something. But here's how I see the structure of "The Signal and the Noise":

| Task / Case                                      | Topics / Prisms                                   |
|--------------------------------------------------|---------------------------------------------------|
| The financial crisis of 2008                     | causes and consequences of unsuccessful forecasts |
| Predicting election results                      | experts vs social surveys                         |
| Predicting baseball championships                | experts vs statistics                             |
| Weather forecast                                 | computer modeling, [accumulation of errors]{post:@choose-nearest-language:life-and-work-with-mistakes}                                     |
| Predicting earthquakes                           | prediction vs forecast, [overfittings](https://en.wikipedia.org/wiki/Overfitting)      |
| Predicting economy                               | forecast errors, [correlation](https://en.wikipedia.org/wiki/Correlation) vs causation |
| Predicting epidemics                             | [extrapolation](https://en.wikipedia.org/wiki/Extrapolation), [simulation modeling](https://en.wikipedia.org/wiki/Simulation_modeling)                                                                                |
| Predicting sports results                        | [Bayesian theorem](https://en.wikipedia.org/wiki/Bayes%27_theorem), [Fisher statistics](https://en.wikipedia.org/wiki/Statistical_hypothesis_testing) vs [Bayesian](https://en.wikipedia.org/wiki/Bayesian_statistics)  |
| Chess                                            | [brute force](https://en.wikipedia.org/wiki/Brute-force_search), [heuristics](https://en.wikipedia.org/wiki/Heuristic)                                                              |
| Poker                                            | poker economics, the role of luck, efficiency in the long run |
| Stock trading                                    | stock market as a forecast market, group forecasts            |
| Climate change                                   | when there is much more noise than signal                     |
| Predicting terrorist attacks and rare events     | when there are too many signals, the significance of signals  |

## Helpful facts

Here are a few facts that instantly slightly improve your world model.

- Even when political experts claimed a particular event was impossible, this happened in about 15% of cases.
- Models that predicted USA elections without considering voter surveys (based on economic indicators, etc.) were less accurate than those that used survey results.
- In the 1990s, economists could predict only 2 out of 60 recessions.
- Basic economic indicators are often significantly revised (retrospectively, as new data becomes available), making them very inaccurate.
- In some economic forecasts, the probability of the 2008 economic crisis was estimated to be 200 times less than in the post-factum estimates.
- The accuracy of precipitation forecasts can be increased by 25% by manual post-processing by experts, and weather forecasts by 10%. This statistic does not change over time, i.e., it does not depend on the technologies used.
- Commercial meteorologists rarely say that the probability of rain is 50% — this may be a sign of uncertainty for consumers. Instead, they flip a coin and choose 40% or 60%.
- The anonymity of experts reduces the quality of their forecasts.
- The official position of the [USGS](https://en.wikipedia.org/wiki/United_States_Geological_Survey) on earthquakes is that they are impossible to predict, but they can be forecast.
- If you cannot identify 1-2 bad players at the poker table during the game, it is better to refuse to play.

## Aggregated forecasts vs individual forecasts

- An aggregated forecast is always better than most individual forecasts but not necessarily good.
- An aggregated forecast works well when individual forecasts are made independently and then combined. In case there is a mechanism like a market when people refine individual forecasts based on the previous aggregated forecast, the influence of group behavior is significantly enhanced, and the quality of the aggregated forecast decreases.
- An aggregated forecast is not always better than the best of the individual forecasts.

## About good forecasts

- Your forecasts can and should change over time.
- A distinctive feature of a good probabilistic forecast is that each probability can be realized in the long term.
- The probability of an event at X% says that over a long period / when checking a large number of similar situations, this event will occur in X% of cases. If this is not the case, the forecast was bad.
- It is useful to weigh qualitative information. For example, after an interview, the specific information received may not be as significant as its sum: the number of red flags, the overall impression. [I follow this rule in my interviews]{post:@choose-nearest-language:how-to-fail-interview-with-me}.

## A little about trading on the stock exchange

- Stock trading in our days is organized in a way that managers and traders are only interested in short-term planning (90 days). For them it is important only what competitors are doing right now, and to be not fired by clients for mistakes in this period.
- Traders are inclined to make decisions that will lead to the loss of money by their firms if it allows them to "merge with the crowd" and, thereby, reduce the chances of becoming a scapegoat.
- The stock market can remain irrational longer than you can stay solvent.

## Quality of forecasts

The quality of forecasts can be evaluated in different ways. The metrics of quality can be:

- accuracy/correctness — how the forecast corresponds to reality;
- consistency/honesty — was the forecast the best possible, did it use all the data;
- economic value — was the forecast used for economic benefit.

These variants can contradict each other. For example, a very accurate forecast can be made based on bad data or not bring benefits because it predicted everything except what was required.

## Fun facts

- In [one of the first printed editions of the Bible](https://en.wikipedia.org/wiki/Wicked_Bible), there was a typo in the commandment: instead of "do not commit adultery," they printed "commit adultery."
- Baseball games are held in non-standard arenas — each stadium is unique in its size. Apparently, for the same reason why the US has not switched to the [SI](https://en.wikipedia.org/wiki/International_System_of_Units).
- In the 2000s, in San Francisco, there was an increase in sexually transmitted diseases, but not AIDS. This put everyone in a stupor, as it used to correlate very well with them. It turned out that people had changed their behavior: they started choosing partners with the same AIDS status, which disturbed the previous models of AIDS spread.
- Due to the 95% confidence interval in a statistical test, researchers are significantly more likely to report results within the 95.1% interval than the 94.9% interval.
- Investments by US Congress members yield 5-10% more profit per year than average. Hypothetically, due to insider information that comes to them while lobbying for corporate interests.
