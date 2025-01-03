---
title = "Реализация Generative Adversarial Network"
tags = [ "jupyter-notebooks", "open-source", "python", "neural-networks", "education", "practice", "tutorial", "dive-into-deep-learning"]
series = "dive-into-deep-learning"
published_at = "2021-08-23T12:00:00+00:00"
seo_description = "Реализация GAN на наборе данных Fashion MNIST."
seo_image = ""
---

Мои заметки о погружении в глубокое обучение:

/// brigid-series
tag = "dive-into-deep-learning"
///

В завершение разбирательства с Deep Learning решил посмотреть что-нибудь более интересное и ориентированное на генерацию контента — реализовать [GAN](https://en.wikipedia.org/wiki/Generative_adversarial_network).

По правде говоря, большую часть времени с GAN (и [Autoencoder](https://en.wikipedia.org/wiki/Autoencoder)) я экспериментировал на спрайтах карты Сказки. Ожидаемо, на таком мизере обучающих данных ничего интересного не получилось. Хотя польза и была. Поэтому для поста я подготовил отдельный notebook с более наглядными результатами — генерацией обуви по набору данных [Fashion MNIST](https://github.com/zalandoresearch/fashion-mnist).

[Ноутбук с реализацией GAN](https://github.com/Tiendil/public-jupyter-notebooks/blob/develop/gan-fashion-mnist/notebook.ipynb) и комментариями.

Про архитектуру GAN лучше почитать в вики, интернетах или моём ноутбуке.

Краткая суть:

- Тренируются две сети: generator & discriminator.
- Генератор учится создавать картинки из шума.
- Дискриминатор учится отличать поддельные картинки от настоящих.
- Ошибка дискриминатора определяется качеством предсказания фейковости изображения.
- Ошибка генератора определяется качеством обмана дискриминатора.

Если правильно подобрать топологии сетей и параметры обучения, то в итоге генератор научается создавать картинки неотличимые от оригинальных. ??????. Profit.
