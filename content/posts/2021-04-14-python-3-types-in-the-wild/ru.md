---
title = "Python 3 Types in the Wild"
tags = [ "python", "practice", "development", "theory",]
published_at = "2021-04-14T12:00:00+00:00"
description = "Вышла статья с исследованием состояния статической типизации в Python. Я её наискосок просмотрел и делюсь с вами своим ценным мнением."
seo_image = ""
---

Вышла [статья с исследованием состояния статической типизации в Python](https://www.cs.rpi.edu/~milanova/docs/dls2020.pdf). Я её наискосок просмотрел, всё примерно так, как я и рассказывал в эссе:

- [О модной типизации в Python]{post:trendy-typing-in-python}
- [Типы в Python не радуют]{post:python-types-are-not-great}

Далее несколько интересных цитат.

<!-- more -->

<table><tbody><tr><td></td><td class="has-text-align-center" data-align="center">false positives</td><td class="has-text-align-center" data-align="center">true positives<br>likely runtime<br>errors</td><td class="has-text-align-center" data-align="center">true positives<br>incorrect<br>annotations</td></tr><tr><td>MyPy</td><td class="has-text-align-center" data-align="center">52 (49%)</td><td class="has-text-align-center" data-align="center">29 (28%)</td><td class="has-text-align-center" data-align="center">24 (23%)</td></tr><tr><td>PyType</td><td class="has-text-align-center" data-align="center">34 (44%)</td><td class="has-text-align-center" data-align="center">32 (42%)</td><td class="has-text-align-center" data-align="center">11 (14%)</td></tr></tbody></table>

Summary of hand-examined error reports.

> Surprisingly, when developers use static types, the code rarely type-checks with either of the tools.

> The results of the comparison support our argument from Sect. 2 that **MyPy and PyType are essentially two different type systems.**

> The picture is mixed. On the one hand, types can already help catch many bugs, such as in the use of Optional types that may be None and in function return type annotations. On the other hand, type checking tools frequently disagree with user annotations and with each other. Most open-source projects do not yet use Python 3 types, and of those that do, few type-check.
