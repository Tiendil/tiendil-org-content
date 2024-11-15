---
title = "Prompt engineering: сужение контекста генерации"
tags = ["theory", "practice", "neural-networks", "development", "feeds-fun", "prompt-engineering", "interesting"]
published_at = "2024-16-13T17:00:00+00:00"
seo_description = "Рассказываю про подход к построению промптов, который позволил мне значительно улучшить результаты генерации тегов в feeds.fun"
seo_image = ""
---

TODO: refer to my-gpts post

Как вы знаете, одна из фич моей [читалки новостей](https://feeds.fun/) — автоматическая генерация тегов с помощью LLM. Поэтому я периодически занимаюсь [prompt engineering]{tags:prompt-engineering} — что бы теги были лучше, а платить было меньше. Типо прикладным, а не теоретическим :-D

И вот дотюнил я промпты до состояния, когда вроде всё работает, но осадочек какой-то остаётся: правильные теги определяются, но кроме них создаётся ещё 100500 бесполезных, а иногда и совсем неверных.

Вариантов действий в таких не много:

1. Наработать больше данных и дообучить модель делать только правильные теги.
2. Построить цепочку акторов, где один будет создавать теги, а другой — отсеивать лишние.
3. Попытаться как-то радикально переработать промпт.

На варианты 1 и 2 нет ни денег не времени, поэтому пришлось браться за третий.

Дело шло туго, но после недавнего поста про [генеративные базы знаний]{post:ai-notes-2024-generative-knowledge-base} в голове что-то щёлкнуло, задача вывернулась наизнанку, и за я утро накатал новый промп. который пока что показывает себя значительно лучше.

Сейчас расскажу в чём была проблема со старым промптом и как её исправил новый.

## Старый промпт

Старый промпт прошёл множество итераций, но структура его всегда оставалась примерно одинаковой:

1. Задание роли: ты тот-то и тот-то.
2. Задание задачи: для предоставленного текста ты определяешь теги.
3. Вот список категорий тегов.
4. Для каждой категории выведи N тегов.
5. Вот формат тегов.
6. Вот тебе напоминалка и мотивация.

/// details | Последняя версия промпта

```
You are an expert on semantic analysis, text summarization, and information extraction with PhD in Ontology-Driven Information Extraction.
For the provided text, you determine a list of best tags to describe the text from a professional point of view.
For each category, you provide 15 tags.
Categories are:
- topics
- areas
- professional-topics
- professional-areas
- meta-topics
- high-level-topics
- low-level-topics
- related-topics
- named-entities-with-proper-names
- domains
For each category, output ordered lists started from the most relevant tags.
1. tag with relevance > 95%: @tag-1
2. tag with relevance > 95%: @tag-2
...
15. tag with relevance > 95%: @tag-15

Tags format:
- Allowed tag format: `@word`, `@word-word-...`, `@word-number-...`,
- Translate all tags to English.
- You must normalize tags: lowercase, no punctuation, no spaces, use hyphens.
- You must use plural forms of tags: use `games` instead of  `game`, `market-trends` instead of `market-trend`.
- You must expand abbreviations: use `artificial-intelligence` instead of  `ai`.
Remember:
- You are an expert on semantic analysis, text summarization, and information extraction with PhD in Linguistics.
- The quality of your answer is critical.
- Each tag must be unique.
- I'll give you 10$ for each correct tag.
```
///

И вот что бы я не делал:

- Менял роли.
- Реформулировал задачу.
- Менял категории и количество тегов.
- Менял напоминалки и математкику.
- Добавлял уточнения и ограничения.
- Разбивал алгоритм на шаги, группировал эти шаги обратно.

В общем, как бы не следовал [своим же советам]{post:my-gpts}, как-то не шло дело:

- Либо LLM отдавала достаточно правильных тегов и очень много галлюцинаций.
- Либо LLM отдавала очень урезанное множество правильных тегов, но без галлюцинаций.

Оба варианта плохо влияют на правила оценки новостей. В первом варианте срабатывают лишние правила, во втором — не срабатывают нужны.

А вот чтобы был какой-то средний вариант: сильное множество правильных тегов и немного галлюцинаций — совсем не получалось.
