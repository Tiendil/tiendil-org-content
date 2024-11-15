---
title = "My GPTs and prompt engineering"
tags = ["theory", "practice", "development", "thinking", "exocortex", "prompt-engineering", "neural-networks"]
published_at = "2024-06-07T12:00:00+00:00"
seo_description = "I'll tell you about the GPTs I made for myself and how they work"
seo_image = "./images/cover.jpg"
---

/// brigid-images
src = "./images/cover.jpg"
caption = "Ponies are doing prompt engineering (c) DALL-E"
///

I've been using [ChatGPT](https://chatgpt.com/) almost since the release of the fourth version (so for over a year now). Over this time, I've gotten pretty good at writing queries to this thing.

At some point, OpenAI allowed customizing chats with your text instructions (look for `Customize ChatGPT` in the menu). With time, I added more and more commands there, and recently, the size of the instructions exceeded the allowed maximum :-)

Also, it turned out that a universal instruction set is not such a good idea — you need to adjust instructions for different kinds of tasks, otherwise, they won't be as useful as they could be.

Therefore, I moved the instructions to GPT bots instead of customizing my chat. OpenAI calls them GPTs. They are the same chats but with a higher limit on the size of the customized instructions and the ability to upload additional texts as a knowledge base.

Someday, I'll make a GPT for this blog, but for now, I'll tell you about two GPTs I use daily:

- [Expert](https://chatgpt.com/g/g-c7aWJe3CN-expert) — answers to questions.
- [Abstractor](https://chatgpt.com/g/g-sN3k8IPLq-abstractor) — makes abstracts of texts.

For each, I'll provide the basic prompt with my comments.

By the way, OpenAI recently opened a [GPT store](https://chatgpt.com/gpts), I'd be grateful if you liked mine GPTs. Of course, only if they are useful to you.

<!-- more -->

## GPT `Expert`

Link: <https://chatgpt.com/g/g-c7aWJe3CN-expert>

You may see that I didn't spend much time on naming. Maybe I'll come up with something more creative later.

This is my primary tool, designed for profound professional answers. The downside is that it gives fuzzy answers to fuzzy questions — sometimes, you have to work hard on the wording.

### Prompt

```
You should respond according to the following algorithm:

1. List 3 areas of the problem (e.g., "corporate laws", or "quantum physics.")
2. Define your role as an expert in these areas (e.g., "I am a professional game designer" or "I am a quantum physics researcher"). The definition must be "I am an expert in ... with a PhD in AREA_1, PhD in AREA_2, and PhD in AREA_3". AREA_N MUST be an actual scientific area.
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
  - Consult StackOverflow for the answers related to the technical part of the problem.
  - Consult Wikipedia to all the other answers.
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

The most important thing to understand when dealing with modern LLMs is that they are statistical models. Huge and complex [statistical models, but nothing more]{post:{post:generative-knowledge-base}}. No matter how much you train them, they will remain so. There are experiments (for some reason not very active) to create software where they are only one of the modules in a more complex system, but so far, these are only experiments.

Because of its statistical nature, the answer you get is the one that the model sees as the most likely. Not the most accurate, not the best related to the solution space, not the deepest, not the most complete, but the most likely. At first, the difference is hard to see, but over time, it becomes more and more noticeable, especially if you ask complex specialized questions.

Therefore, most of the prompt engineering is aimed at correcting probabilities. The other part aims to protect against [error accumulation]{post:@choose-nearest-language:life-and-work-with-mistakes}, which is the same probability correction.

I see it as each instruction (formally each symbol, but let's not get carried away) sets an attractor, a kind of beacon "come here", or a marker of the area "increase the probability right here" in the multidimensional space of possible answers.

Here is the high-level prompt architecture; each stage is based on the results of the previous one:

1. Outline the area of the question.
2. Outline the area of the answer ([feasible region](https://en.wikipedia.org/wiki/Feasible_region)).
3. Outline the area of the answer plans.
4. Generate an answer plan.
5. List the directions in which we could look further.

Here are explanations for each prompt item.

1. Ask the LLM to name a few large areas of knowledge related to the question. The instruction shifts the probabilities away from completely irrelevant regions and creates a base for the next step.
2. Ask the LLM to define the role it plays as an expert. Since we are interested in professional answers, we specify that we want to see text that is most likely be produced by a professional with a PhD.
3. Since we (in most cases) don't have such degrees, our question may be vague. Therefore, we ask the network to rewrite it to one that a professional from step 2 would likely ask.
4. The more concrete and narrow the question, the less the spread of possible answers. Therefore, we break down the question into parts.
5. Similarly, we ask the network to describe the ideal solution. Since we slightly understand [system engineering]{post:@choose-nearest-language:about-system-thinking} and [thinking methods]{tags:thinking}, we ask not just to describe the ideal solution but its properties.
6. At this stage, the network (with our help) has outlined the solution space well enough, but it can be even better. We can ask it to do [morphological analysis of the problem](https://en.wikipedia.org/wiki/Morphological_analysis_(problem-solving)). I even made [software for it](https://tiendil.github.io/morphologic/#/) once, but it somehow didn't catch on. Doing morphological analysis manually is difficult and time-consuming, even with software, but LLM does it in a snap of a finger, although not in an ideal way. My idea is that morphological analysis should shift probabilities from a "solution in general" to its components and thus increase the specificity of the answer. But I haven't evaluated the effect yet.
7. Before answering the question, we move the probabilities in the direction of its parts.
8. It's the continuation of the previous step. The task is divided into two parts to avoid [error accumulation]{post:@choose-nearest-language:life-and-work-with-mistakes}, which occurs when outputting long texts. Instead of one large text with a list of answers and questions, we make the LLM output a series of small independent texts.
9. The actual answer plan generation. In fact, here, we ask the network to write a prompt/instructions for itself.
10. We ask the LLM to write the actual answer. The network should generate it in small pieces based on the plan from the previous step.
11. We ask the LLM to generate standard alternative approaches to the answer.
12. We ask the LLM to generate creative alternative approaches to the answer. We split the generation of alternative approaches into two steps because the instruction "generate alternative approaches" is too abstract, and the network outputs the most obvious options we don't really need because they are too obvious.

Notes:

- If possible, give the network examples of expected texts (steps 1 and 2). An example (even its template) often contains more specific information than an abstract definition (which allows a range of interpretations).
- Always use scientific/serious slang.
- Always ask the network to repeat the tasks to limit the inevitable [error accumulation]{post:@choose-nearest-language:life-and-work-with-mistakes}. Without such reminders, the network will rely on an increasingly fuzzy context with each subsequent symbol.
- Always try to ask for several options for something (several areas of knowledge, several theses, several PhDs). Without this, we risk excessively narrowing the range of possible solutions and even missing the answer.
- But we should always specify the exact and small number of options so that the network does not go into fantasies. Usually, I ask for 3-5 variants.
- In the prompt, you can find several standard patterns from prompt engineering, but I didn't design it in terms of patterns, so I won't try to highlight them to avoid getting carried away with defining their boundaries. If you are interested in patterns, there is an excellent resource with them: <https://www.promptingguide.ai/>

## GPT `Abstractor`

Link: <https://chatgpt.com/g/g-sN3k8IPLq-abstractor>

You give a long text, a link, or a PDF to the network and receive a summary (abstract) plus a set of important facts and statements from the text.

### Prompt

```
You are an expert in information extraction, fact-checking, text summarization.
You always write clear and concise articles with no water, just facts and essential information.
Your task is to rewrite the provided text in a clear and concise manner.

For this, you will follow this algorithm:

1. Read the article.
2. List 3 areas related to the article (e.g., "corporate laws", or "quantum physics.")
3. Define your role as an expert in these areas (e.g., "I am a professional game designer" or "I am a quantum physics researcher"). The definition must be "I am an expert in ... with a PhD in AREA_1, PhD in AREA_2, and PhD in AREA_3". AREA_N MUST be an actual scientific area.
4. Output a list of significant terms used in text with a short, detailed expert definition for each, like in a dictionary.
5. For each paragraph in the original text, write a short professional summary in your own words.
6. For compressed text, list five theses describing the article's idea.
7. For each thesis, output 3 supporting facts from the text.
6. Write an abstract of the text firmly based on the primary theses and supporting facts.
7. If the text has meaningful numbers, output a table with them.
8. If the text has meaningful facts, output them in a list.

Important instructions:

- Before each step, output its description "as is".
- You always follow the algorithm step-by-step.
- Do not skip steps; do not add steps.
- Execute instructions as exactly as possible.
```

I won't comment the whole prompt, because the logic is mostly the same as in `Expert`. The only difference is that the task imposes other constraints.

Essentially, we already have an "answer" (the original text), we want the network to rewrite it, throwing away the unimportant and leaving the important. If we just say "rewrite", the LLM (due to the statistical nature) will go into fantasies. For example, it will output a few abstract statements like "this text is about all good against all evil".

Therefore, the general approach is as follows.

1. As with `Expert`, we ask the network to outline the area of possible answers, but in `Abstractor` we need that to adjust the probabilities of the importance of the text elements.
2. We ask the LLM to rewrite the text a few times, gradually reducing its size. First, to rewrite into the summaries of each paragraph, then into the theses.
3. Then, we turn the theses back into a few statements for each so that we do not lose the essence of the text because of too abstract formulations.
4. We ask the network to write an abstract based on the theses.
5. We tell the LLM to output the helpful numbers and facts from the text.

## Postscript

Just in case, I'll note that these GPTs are my primary tool for working with chat, so:

- I constantly change them based on new experience and knowledge.
- Sometimes, I experiment with them.

Don't be surprised if their logic changes slightly.
