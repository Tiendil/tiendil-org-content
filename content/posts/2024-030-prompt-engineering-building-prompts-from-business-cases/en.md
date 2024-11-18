---
title = "Prompt engineering: building prompts from business cases"
tags = ["theory", "practice", "neural-networks", "development", "feeds-fun", "prompt-engineering", "interesting"]
published_at = "2024-11-17T12:00:00+00:00"
seo_description = "Sharing an approach to building prompts that helped me significantly improve tag generation results in feeds.fun"
seo_image = ""
---

As you know, one of the features of my [news reader](https://feeds.fun/) is automatic tag generation using LLMs. That's why I periodically do [prompt engineering]{tags:prompt-engineering} — I want tags to be better and monthly bills to be lower.

So, I fine-tuned the prompts to the point where everything seems to work, but there's still this nagging feeling that something's off: correct tags are determined well, but in addition to them, many useless ones are created, and sometimes even completely wrong ones.

There are a few options in such cases:

1. Collect training data and fine-tune the model to generate only correct tags.
2. Build a chain of actors, where one will create tags, and the other will filter out the unnecessary ones.
3. Try to radically rework the prompt.

Options 1 and 2 were out of the question due to lack of time and money. Also, my current strategy is to rely exclusively on ready-made AI solutions since keeping up with the industry alone is impossible. So, I had no choice but to go with the third option.

Progress was slow, but after a recent post about [generative knowledge bases]{post:ai-notes-2024-generative-knowledge-base}, something clicked in my head, the problem turned inside out, and over the course of the morning, I drafted a new prompt that’s been performing significantly better so far.

So, let's look at the problem with the old prompt and how the new one fixed it.

<!-- more -->

## The old prompt and its problems

The old prompt went through many iterations, but its structure always remained roughly the same:

1. Assigning a role: you are such-and-such.
2. Defining the task: for the provided text, you determine the tags.
3. Here's a list of tag categories.
4. For each category, output N tags.
5. Here's the tag format.
6. Here's a reminder and motivation.

/// details | The old version of the prompt

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
- Or the LLM provided a very limited set of correct tags without hallucinations.

Both options negatively affected the news sorting rules. In the first case, unnecessary rules were triggered, while in the second, the necessary ones weren’t. The result was the same — reduced quality of news sorting => worse user experience.

The middle ground — a robust set of accurate tags with minimum hallucinations — turned out to be completely unattainable.

Even the cause was roughly clear: there are millions of ways to describe text with tags, and the neural network, as a [generative knowledge base]{post:ai-notes-2024-generative-knowledge-base}, probabilistically traveled whole of them. No context clarifications through categories or constraints helped, as they couldn’t significantly cut the context within which the network generated data.

It was necessary to look for a radically different path. You could say, to [pivot](https://en.wikipedia.org/wiki/Lean_startup#Pivot) in the approach to prompts.

Right around this month, I came across news about using LLMs in psychology. It said that it is possible to emulate people's behavior well enough for psychological experiments to be conducted with fewer ethical concerns.

And then it clicked in my head:

- I built the prompt from the developer's point of view, describing what I needed from LLM as a developer of the reader.
- What if I built the prompt from the user's point of view, describing what the user needs when using the reader?

## The new prompt

I came up with a prompt of the following structure. The changed parts are highlighted in bold:

- Assigning a role: You are such-and-such.
- **Defining the task: You analyze the text according to the algorithm.**
- **Step 1: List the scenarios in which the user is most likely to search for this text.**
- **Step 2: For each scenario, provide the tags the user is most likely to enter in their search.**
- Here is the tag format.
- Here is a reminder and motivation.

/// details | The current version of the prompt
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

And it almost immediately showed better results!

It's clear why:

- As a developer, I could never list all possible scenarios for navigating texts or account for every user's interests. Especially not in a single prompt. That’s why I couldn’t manage to narrow down the search context in the original prompt.
- However, as a probabilistic knowledge base, an LLM can easily identify the most likely scenarios for a text and the most likely tags for those scenarios. Thus, narrowing and refining the context step by step, as I mentioned in my [tutorial]{post:my-gpts}.

What's remarkable is that the new prompt comes from business cases. **We explicitly embed a user model at the code level**, instead of the classic approach of spinning in our own engineering bubble with ideas detached from reality and common sense.

I think this is a cool pattern for designing prompts and software in general. It really flips the mindset — at least, it does for me! :-)
