---
title = "My GPTs and prompt engineering"
tags = ["theory", "practice", "development", "thinking", "exocortex"]
published_at = "2024-07-06T12:00:00+00:00"
seo_description = "I'll tell you about the GPTs I made for myself and how they work"
seo_image = "./images/cover.jpg"
---

/// brigid-images
src = "./images/cover.jpg"
caption = "Ponies are doing prompt engineering."
///

I've been using [ChatGPT](https://chatgpt.com/) almost since the release of its fourth version (so for over a year now). Over this time, I've gotten pretty good at writing queries to this thing.

At some point, OpenAI allowed customizing chats with your own text instructions (look for `Customize ChatGPT` in the menu). With time I added more and more commands there, and recently the allowed limit was exhausted :-)

Also, it turned out that a universal set of instruction does not such a good idea — you need to adjust them for different kinds of tasks, which is inconvenient.

Therefore, I decided to move the instructions to GPT bots instead of customizing my chat. OpenAI calls them GPTs. They are essentially the same chats, but with a higher limit on size of the customize instructions and the ability to upload additional texts as a knowledge base.

Someday, I'll make a GPT for this blog, but for now, I'll tell you about two GPTs I use every day.

- [Expert](https://chatgpt.com/g/g-c7aWJe3CN-expert) — answers to questions.
- [Abstractor](https://chatgpt.com/g/g-sN3k8IPLq-abstractor) — makes abstracts of texts.

For each, I'll provide the basic prompt with my comments.

By the way, OpenAI recently opened a [GPT store](https://chatgpt.com/gpts), I'll be grateful if you like mine.

<!-- more -->

## GPT `Expert`

Link: https://chatgpt.com/g/g-c7aWJe3CN-expert

You may see that I didn't spend much time on naming. Maybe I'll come up with something more creative later.

This is my main tool, designed for deep clear answers. The downsides are that it gives fuzzy answers to fuzzy questions, because of it sometimes you have to really work on the wording.

### Prompt

```
You should respond according to the next algorithm:

1. List 3 areas of the problem (e.g., "corporate laws", or "quantum physics.")
2. Define your role as an expert in these areas (e.g., "I am a professional game designer" or "I am a quantum physics researcher"). The definition must be "I am an expert in ... with a PhD in AREA_1, PhD in AREA_2, and PhD in AREA_3". AREA_N MUST be a real scientific area.
3. Reformulate the problem according to your expertise.
4. Break down the problem into a list of statements.
5. Describe what the ideal solution would look like.
5.1. List requirements.
5.2. List restrictions.
6. Describe the area of solution in multidimensional solution space.
6.1. List the qualitative dimensions of the solution.
6.2. Suggest cardinally new qualitative dimensions of the solution.
6.3. For each dimension, list the possible coordinates.
7. List subquestions that need to be answered before solving the problem.
8. Give short answers to the subquestions.
9. Write a detailed plan for the answer.
10. Write the answer according to the plan.
11. List standard alternative approaches to answer.
12. List creative alternative approaches to answer.

Additional requirements:

- You always follow the algorithm step-by-step.
- Do not skip steps; do not add steps.
- Before each step, output its description "as is".
- Execute instructions as exactly as possible.
- Do not focus on the mainstream.
- Prioritize precision of answer over simplicity.
- Use concrete, precise wording.
- Output text only as an outliner.
- Visually highlight main sections.
- If the user continues asking questions from the same area, skip steps 1-2.
```

Самое важное, что надо понимать в случае общения с современными LLM, — это статистические модели. Очень большие и сложные статистические модели, но не более того. И сколько бы их не доучивали, они ими останутся. Есть эксперименты (почему-то не очень активные) по созданию обвеса для них, когда LLM является только одним из модулей в системе, но пока это только эксперименты.

Из статистической природы следует, что ответ вы получите тот, который видится модели наиболее вероятным. Не точным, не лучше всего относящимся к области решений, не самым глубоким, не полным, а именно вероятным. Поначалу разницу сложно увидеть, но со временем она всё больше бросается в глаза, особенно если вы задаёте сложные специализированные вопросы.

Поэтому большая часть promt engineering направлена на корректировку вероятностей. Остальная часть — на защиту от накопления ошибки, которая та же корректировка вероятностей.

Я это вижу так, что каждой инструкцией (формально каждым символом, но не будем загоняться) мы выставляем атрактор, этакий маячёк «сюда иди», или маркер области «увеличь вероятность вот тут».

Высокоуровневая архитектура промпта, каждый из этапов базируется на результатах предыдущих:

1. Очерчиваем область вопроса.
2. Очерчиваем область ответа ([пространство решений](https://ru.wikipedia.org/wiki/Область_допустимых_решений)).
3. Очерчиваем область планов ответа.
4. Генерируем ответ по плану.
5. Перечисляем направления, в которые ещё можно было бы посмотреть.

Пояснения к каждому пункту промпта.

1. Просим сеть напечатать несколько крупных областей знаний, которые относятся к вопросу. Это смещает вероятности от совсем левых областей и создаёт базу для следующего пункта.
2. Задаём роль, которую играет сеть, как эксперт. Поскольку нам интересны профессиональные глубокие ответы, мы указываем, что хотим видеть текст, который с большой вероятностью будет произведён профессионалом с научной степенью.
3. Поскольку у нас, скорее всего, степеней таких нет, то наш вопрос может быть задан неточно. Поэтому просим у сети переписать вопрос на тот, который вероятно сформулировал бы профи с ролью из пункта 2.
4. Чем более точно и узко сформулирован вопрос, тем меньше разброс вероятностей у ответа на него. Поэтому бьём вопрос на составные части.
5. Аналогично делаем для ответа/решения. Поскольку мы немного шарим в [системной инженерии]{post:choose-nearest-language:about-system-thinking} и [мышлении]{tags:thinking}, просим не просто описать идеальное решение, а конкретные его свойства.
6. На данном этапе сеть (с нашей помощью) хорошо очертила пространство решений, но можно ещё лучше. Мы можем попросить её сделать [морфологический анализ проблемы](https://ru.wikipedia.org/wiki/Морфологический_анализ_(изобретательство)). Я когда-то даже делал [софт для него](https://tiendil.github.io/morphologic/#/) но как-то не прижился прототип. Вручную морфологический анализ делать сложно и долго, даже в софте, а вот LLM делает его на раз-два, хотя и не идеальным образом. По моей задумке, морфологический аналаз должен смещать вероятности с «решения в целом», на его составные части и, тем самым, увеличивать конкретность ответа. Но мне пока сложно оценить эффект.
7. Прежде чем формулировать план ответа, мы смещаем вероятности в сторону его составных частей.
8. По сути, продолжение предыдущего пункта. Задача разбита на два этапа, чтобы избежать [накопления ошибки]{post:@choose-nearest-language:life-and-work-with-mistakes}, которое происходит при выводе длинных текстов. Вместо одного большого полотна со списком ответов и вопросов, мы заставляем сеть выводить серию маленьких независимых текстов.
9. Сама генерация плана. По сути, тут мы просим сеть написать промпт/инструкцию для самой себя.
10. Просим написать сам ответ, причём сеть будет его генерировать также малыми кусками по этапам из предыдущего пункта.
11. Просим сгенерировать стандартные альтернативные подходы к ответу.
12. Просим сгенерировать креативные альтернативные подходы к ответу.

Примечания:

- По возможности даём сети примеры текстов (пункты 1 и 2). Конкретный пример (даже его шаблон) часто содержит больше конкретной информации, чем абстрактная формулировка (которая позволяет спектр трактовок).
- Всегда используем научный/серьёзный сленг.
- Всегда просим сеть повторять задачи, чтобы ограничить неизбежное [накопление ошибки]{post:@choose-nearest-language:life-and-work-with-mistakes}. Без этого при выборе каждого следующего символа сеть будет опираться на всё более нечёткий контекст.
- Всегда стараемся просить несколько вариантов чего-то (несколько областей знаний, несколько тезисов, несколько PhD). Без этого вы рискуете чрезмерно сузить область вероятных решений и вообще промазать по ответу.
- Но всегда указываем точное и небольшое количество, чтобы сеть не уходила в фантазии. Обычно, я прошу 3-5 вариантов.
- В промте можно найти несколько стандартных паттерном из prompt engineering, но я проектировал его не в терминах паттернов, поэтому не буду пытаться их вычленить, дабы не заморачиваться с определнием их границ. Если вам интересны паттерны, есть отличный ресурс с ними: https://www.promptingguide.ai/

## GPT `Abstractor`

Ссылка: https://chatgpt.com/g/g-sN3k8IPLq-abstractor

Даёте нейронке длинный текст, ссылку, pdf-ку, получаете в ответ краткое содержание (abstract) плюс набор важных фактов и утверждений.

### Prompt

```
You are an expert in information extraction, fact-checking, text summarization.
You always write clear and concise articles with no water, just facts and essential information.
Your task is to rewrite the provided text in a clear and concise manner.

For this, you will follow this algorithm:

1. Read the article.
2. List 3 areas related to the article (e.g., "corporate laws", or "quantum physics.")
3. Define your role as an expert in these areas (e.g., "I am a professional game designer" or "I am a quantum physics researcher"). The definition must be "I am an expert in ... with a PhD in AREA_1, PhD in AREA_2, and PhD in AREA_3". AREA_N MUST be a real scientific area.
4. Output a list of major terms used in text with a short, detailed expert definition for each, like in a dictionary.
5. For each paragraph in the original text, write a short professional summary in your own words.
6. For compressed text, list five theses that describe the idea of the article.
7. For each thesis, output 3 supporting facts from the text.
6. Write an abstract of the text strongly based on the main thesis and supporting facts.
7. If the text has meaningful numbers, output a table with them.
8. If the text has meaningful facts, output them in a list.

Important instructions:

- Before each step, output its description "as is".
- You always follow the algorithm step-by-step.
- Do not skip steps; do not add steps.
- Execute instructions as exactly as possible.
```

Полностью комментировать промпт не буду, так как логика та же, что у `Expert`, только решаемая задача налагает другие ограничения.

По сути, у нас уже есть «ответ» (исходный текст), нам надо заставить сеть переписать его, выкинув неважное и оставив важное. Если мы просто скажем «перепиши», она (из-за той же статистической природы) уйдёт в фантазии. Например, оставит несколько чрезмерно абстрактных утверждений в духе «текст за всё хорошее против всего плохого».

Поэтому общий подход такой.

1. Также корректируем область вероятных ответов но уже за тем, чтобы сеть точнее определяла вероятность важности/неважности элементов текста.
2. Указываем сети переписывать текст несколько раз, постепенно уменьшая его размер. Сначала до саммари каждого параграфа, потом до тезисов.
3. Тезисы обратно разворачиваем в несколько утверждений, чтобы случайно не потерять суть текста за абстрактными формулировками.
4. По итоговым тезисам пишем абстракт — краткое содержание.
5. Выводим таблички с фактами и утверждениями, чтобы добавить полезной информации.

## Постскриптум

На всякий случай отмечу, что эти GPT-шки — мой основной инструмент работы с чатом, поэтому:

- Я их постоянно меняю на основе полученного опыта.
- Иногда я с ними экспериментирую.

Не удивляйтесь, если их логика будет слегка меняться.
