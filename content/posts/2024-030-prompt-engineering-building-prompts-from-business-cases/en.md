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

## The old prompt and its problems

The old prompt went through many iterations, but its structure always remained roughly the same:

1. Assigning a role: you are this and that.
2. Setting the task: for the provided text, you determine the tags.
3. Here's a list of tag categories.
4. For each category, output N tags.
5. Here's the tag format.
6. Here's a reminder and motivation.

/// details | The latest version of the prompt

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


And no matter what I do:

- Changed roles.
- Reframed the task.
- Adjusted categories and the number of tags.
- Tweaked reminders and motivation.
- Added clarifications and constraints.
- Broke the algorithm into steps, then regrouped those steps back together.

No matter how closely I followed [my own advice]{post:my-gpts}, things just wouldn’t move forward:

- Either the LLM provided enough correct tags and a lot of hallucinations.
- Or the LLM provided a very limited set of correct tags, but without hallucinations.

Both options negatively affected the news sorting rules. In the first case, unnecessary rules were triggered, in the second — the necessary ones didn’t. The result was the same — reduced quality of news sorting => worse user experience.

The middle ground — a strong set of accurate tags with minimum hallucinations — just wouldn’t come together.

Event the cause was roughly clear: there are a million ways to describe text with tags, and the neural network, as a [generative knowledge base]{post:ai-notes-2024-generative-knowledge-base}, probabilistically traveled whole of them. No context clarifications through categories or constraints helped, as they couldn’t significantly cut the context within which the network generated data.

It was necessary to look for a radically different path, you could say, to [pivot]{https://en.wikipedia.org/wiki/Lean_startup#Pivot} in the approach to prompts.

Right around this month, I came across some news about using LLMs in psychology. It said it is possible to emulate people's behavior well enough that psychological experiments can be conducted with fewer ethical concerns.

And then it clicked in my head:

- I built the prompt from the developer's point of view, describing what I needed from LLM as a developer of the reader.
- What if I built the prompt from the user's point of view, describing what the user needs when using the reader?

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
