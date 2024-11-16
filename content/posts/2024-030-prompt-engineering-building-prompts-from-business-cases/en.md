---
title = "Prompt engineering: building prompts from business cases"
tags = ["theory", "practice", "neural-networks", "development", "feeds-fun", "prompt-engineering", "interesting"]
published_at = "2024-11-17T12:00:00+00:00"
seo_description = "Sharing an approach to building prompts that helped me significantly improve tag generation results in feeds.fun"
seo_image = ""
---

How you know, one of the features of my [news reader](https://feeds.fun/) is automatic tags generation using LLMs. That's why I periodically do [prompt engineering]{tags:prompt-engineering} — I want tags to be better and monthly checks to be lower.

So, I fine-tuned the prompts to the point where everything seems to work, but there's still this nagging feeling that something's off: correct tags are determined well, but in addition to them, 100500 useless ones are created, and sometimes even completely wrong ones.

There are a few options in such cases:

1. Collect training data and fine-tune the model to generate only correct tags.
2. Build a chain of actors, where one will create tags, and the other will filter out the unnecessary ones.
3. Try to radically rework the prompt.

Options 1 and 2 were out of the question due to lack of time and money. Also, my current strategy is to rely exclusively on ready-made AI solutions since keeping up with the industry alone is impossible. So, I had no choice but to go with the third option.

Progress was slow, but after a recent post about [generative knowledge bases]{post:ai-notes-2024-generative-knowledge-base}, something clicked in my head, The problem turned inside out, and over the course of the morning, I drafted a new prompt that’s been performing significantly better so far.

So, lets speak about what was the problem with the old prompt and how the new one fixed it.

## Старый промпт и его проблемы

Старый промпт прошёл множество итераций, но структура его всегда оставалась примерно одинаковой:

1. Назначение роли: ты тот-то и тот-то.
2. Постановка задачи: для предоставленного текста ты определяешь теги.
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

И вот что бы я ни делал:

- Менял роли.
- Реформулировал задачу.
- Менял категории и количество тегов.
- Менял напоминалки и мотивацию.
- Добавлял уточнения и ограничения.
- Разбивал алгоритм на шаги, группировал эти шаги обратно.

как бы ни следовал [своим же советам]{post:my-gpts}, не шло дело:

- Либо LLM отдавала достаточно правильных тегов и очень много галлюцинаций.
- Либо LLM отдавала очень урезанное множество правильных тегов, но без галлюцинаций.

Оба варианта плохо влияют на правила оценки новостей. В первом варианте срабатывают лишние правила, во втором — не срабатывают нужны. Итог один и тот же — плохая сортировка новостей, хуже опыт пользователя.

А вот средний вариант: сильное множество правильных тегов и немного галлюцинаций — совсем не получался.

Даже причина была примерно понятна: есть миллион способов описать текст тегами и нейросеть, как [вероятнастная база знаний]{post:ai-notes-2024-generative-knowledge-base}, вероятностно по этому миллиону способов и путешествовала. Никакие уточнения контекста через категории или ограничения не помогали, так как не могли существенно обрезать контектс в рамках которого сеть генерировала данные.

Надо было искать радикально другой путь, можно сказать, делать [pivot](https://en.wikipedia.org/wiki/Lean_startup#Pivot) в подходе к промптам.

Как раз в где-то в этом месяце я встретил новость про использование LLM в психологии, дескать LLN хорошо эмулируют людей и теперь можно ставить психологические эксперименты меньше беспокоясь об этике.

И тут у меня в голове щёлкнуло:

- Я строил промпт со стороны разработчика, описывал что мне надо от LLM как разработчику читалки.
- Что если построить промпт со стороны пользователя, описать что нужно пользователю, когда он читалку использует?

## Новый промпт

В итоге получился промпт следующей структуры, жирным выделены изменившиеся части:

1. Назначение роли: ты тот-то и тот-то.
2. **Постановка задачи: ты анализируюешь текст по алгоритму.**
3. **Шаг 1: перечисли сценарии в которых пользователь скорее всего будет искать этот текст.**
4. **Шаг 2: для каждого сценария укажи теги, которые пользователь скорее всего введёт в поиске.**
5. Вот формат тегов.
6. Вот тебе напоминалка и мотивация.

/// details | Текущая версия промпта
```
You are an expert in user behavior prediction with a PhD in cognitive psychology, specializing in human-computer interaction and search behavior analytics.
Your task is to analyze the given text by following these steps:

**STEP 1**: **List 20 scenarios in which a user is likely to search for this text.**

*Output format:*

1. **<Scenario 1 Name>**: Description 1
2. **<Scenario 2 Name>**: Description 2
...
20. **<Scenario 20 Name>**: Description 20

---

**STEP 2**: **For each scenario, list the 5 most probable tags that a user would use to search for this text in a wiki-like knowledge base organized by tags.**

*Output format:*

- **<Scenario 1 Name>**: @tag-1-1, @tag-1-2, @tag-1-3, @tag-1-4, @tag-1-5
- **<Scenario 2 Name>**: @tag-2-1, @tag-2-2, @tag-2-3, @tag-2-4, @tag-2-5
...
- **<Scenario 20 Name>**: @tag-20-1, @tag-20-2, @tag-20-3, @tag-20-4, @tag-20-5

---

**All tags must adhere to the following "Tag Formatting Rules":**

- **Allowed formats**: `@word`, `@word-word-...`, `@word-number-...`
- **Language**: All tags must be in English.
- **Case**: All tags must be in lowercase.
- **Pluralization**: Use the plural form if appropriate. Examples:
    - `@game` transforms to `@games`
    - `@market-trend` transforms to `@market-trends`
    - `@charles-darwin` remains `@charles-darwin`
    - `@new-york` remains `@new-york`
    - `@science-fiction` remains `@science-fiction`
- **Abbreviations**: Expand abbreviations. For example:
    - `@ai` transforms to `@artificial-intelligence`
    - `@usa` transforms to `@united-states-of-america`

---

**Important Notes:**

- The quality of your answer is critical.
- Each tag must be unique across all scenarios.
- All tags must strictly follow the **Tag Formatting Rules**.
- You will receive $10 for each correct tag.
```
///

И оно почти сразу заработало!

И понятно почему:

- Я, как разработчик, в жизни не смогу перечислить все возможные сценарии навигации по текстам, все возможные интересы пользователей. Тем более в одном промпте. Поэтому и не удавалось ограничить контекст поиска.
- Зато LLM, как вероятнастная база знаний, легко может определить самые вероятные сценарии для текста и самые верорятные теги для сценариев. Получается как раз поэтапное сужение и уточнение контекста, о котором я говорил в своём [уроке]{post:my-gpts}.

Что круто, новый промпт идёт от бизнес кейсов. **Мы на уровне кода в явном виде закладываем модель пользователя**, вместо того, чтобы по-классике вариаться в собственном инженерном соку с оторванными от реальности и здравого смысла представлениями.

Мне кажется это прямо крутой паттерн для проектирования промптов и софта в целом, сильно выворачивает мозг, по крайней мере мой :-)
