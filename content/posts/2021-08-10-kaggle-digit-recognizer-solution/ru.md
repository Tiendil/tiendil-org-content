---
title = "Kaggle: Digit Recognizer (MNIST) точность 0.99585"
tags = [ "jupyter-notebooks", "open-source", "python", "neural-networks", "education", "practice",]
published_at = "2021-08-10T12:00:00+00:00"
description = "Пример решения задачи распознавания рукописных цифр из набора MNIST на Kaggle."
seo_image = "images/kaggle-digit-recognizer-solution-cover.png"
---

/// brigid-images
src = "images/kaggle-digit-recognizer-solution-cover.png"
caption = "Примеры цифр из набора MNIST."
///

Продолжаю путешествие по занимательным землям Deep Learning.

В прошлый раз я учился [заводить deep learning на локальной машине]{post:you-cant-just-take-and-run-dl} и делал совсем детскую, искусственную и неспецифическую для DL задачу.

В этот раз решил попробовать что-то более диплёрничное — научиться решать задачи на [Kaggle](https://www.kaggle.com/). Есть предположение, что Kaggle — самый простой и интересный способ учить DL.

На этом сервисе есть задачи для новичков, одну такую — [Digit Recognizer](https://www.kaggle.com/c/digit-recognizer) — я выбрал для тренировки. Соревнование по распознаванию рукописных цифр из набора [MNIST](https://en.wikipedia.org/wiki/MNIST_database). Этот набор должны были встречать даже люди далёкие от ML.

[Notebook](https://github.com/Tiendil/public-jupyter-notebooks/blob/main/kaggle-digit-recognizer/notebook.ipynb) с решением и комментариями опубликован на github.

На момент отправки решение занимало 467 место из ~7000. На мой взгляд неплохой результат, учитывая, что первые мест 150 занимают читерские решения. MNIST — общедоступный набор данных, их можно скачать вне kaggle и залить в качестве решения готовые ответы, или переобучить сеть на полном наборе.

<!-- more -->

Разместил notebook не на Kaggle, так как результаты из рейтингов учебных соревнований трутся через несколько месяцев, а отдельных notebooks для MNIST там и без моего хватает, есть и лучше.

Ссылки на Google Colab тоже не будет, так как их окружение сильно отличается от моего — отстаёт по версиям, надо обновлять много пакетов. Со временем различия будут только копиться, что сведёт полезность такой ссылки к нулю.

После нескольких запусков решения на Colab у меня сложилось впечатление, что он тормознее моей видеокарты (GeForce GTX 1070) раза в 3. Это справедливо по крайней мере для части машин облака — пользователь Colab не может выбирать конкретное железо —, запускает на том, что дают.

Скорость обучения на TPU посмотреть не удалось: tensorflow бросал ошибки, а переписывать пайплайн, в надежде их обойти, не хотелось.

В целом, Deep Learning выглядит весёлым, интересным занятием. Ещё ближе к исследовательской работе, чем обычное программирование. Однако в этом кроется проблема: много неизвестных переменных, которые слабо поддаются логическому выводу или ограничению. Больше, чем в обычном программировании.

Множество нюансов и неизвестных переменных затрудняет усложнение углубление архитектуры сети, особенно для новичка. Дело выглядит более сложным чем, например, развитие программы в обычном программировании. Инкрементальная организация разработки помогает, но не всегда.