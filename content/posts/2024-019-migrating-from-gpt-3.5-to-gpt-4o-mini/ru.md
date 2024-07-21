---
title = "Мигрируем с gpt-3.5 на gpt-4o-mini"
tags = ["practice", "development", "neural-networks", "feeds-fun", "prompt-engineering"]
published_at = "2024-07-22T12:00:00+00:00"
seo_description = "Заметки о том как я переводил feeds.fun с gpt-3.5 на gpt-4o-mini."
seo_image = "./cover_ru.jpg"
---

На днях [OpenAI выпустили gpt-4o-mini](https://openai.com/index/gpt-4o-mini-advancing-cost-efficient-intelligence/) — новую флагманскую модель для дешёвых запросов.

- Говорят работает «почти как» GPT-4o, а иногда даже круче GPT-4.
- Почти в 3 раза дешевле gpt-3.5.
- Размер контекста 128k токенов.

Конечно я сразу побежал переводить на эту модель свою [читалку новостей](https://feeds.fun).

Если кратко подвести итоги, то это крутая замена gpt-3.5: у меня получилось сходу (не меняя промпты) заменить двух агентов на одного и удешевить работу читалки раз в 5.

Но потом я полез тюнить промпт, чтобы сделать ещё круче, и начал сталкиваться с нюансами. О них расскажу далее.

## На сколько хороша gpt-4o-mini

Далее, если не указал иное, я буду сравнивать gpt-4o-mini с gpt-3.5.

В целом, модель однозначно лучше следует инструкциям.

Отлично следует общим инструкциям, которым не нужен контекст. Например, спецификациям формата ответа `Allowed tag format: \`@word\`, \`@word-word-...\`` или `Output as JSON`. У gpt-3.5 с этим были сильные проблемы, мне даже пришлось писать код для разбора кривого JSON.

Модель лучше следует алгоритму (`сделай 1, сделай 2, потом 3`, как в [моих GPT-шках]{post:my-gpts}), но не всегда его понимает — приходится дополнительно настраивать prompt (см. далее).

Но качество ответа всё ещё заметно хуже, чем у актуальной GPT-4o.

Особенно это заметно в виде размытия семантики промпта. Модель не забывает ранние инструкции (как это делают более слабые модели), но начинает менее точно их трактовать.

Для примера, есть промпт:

```
You are an expert on semantic analysis, text summarization, and information extraction with PhD in Linguistics.

1. Do bla-bla.
```

Модель даёт отличный ответ на него. Добавляю один шаг:

```
You are an expert on semantic analysis, text summarization, and information extraction with PhD in Linguistics.

1. Do bla-bla.
2. Do another bla-bla.
```

Модель следует алгоритму, но выдаёт менее чёткий, менее «профессиональный» результат. В случае тегов это может выражаться, например, в выдаче тега `prompts` вместо `prompt-engineering` для новости про промпты в ChatGPT.

Добавляю первую инструкцию в конец запроса:

```
You are an expert on semantic analysis, text summarization, and information extraction with PhD in Linguistics.

1. Do bla-bla.
2. Do another bla-bla.

You are an expert on semantic analysis, text summarization, and information extraction with PhD in Linguistics.
```

Модель восстанавливает качество ответа.

Возможно по той же причине, просить комплексных рассуждений или следования длинному алгоритму от gpt-4o-mini всё ещё нестоит. Чем больше запрос, тем заметнее каждое его слово размывает контекст и, тем самым, ухудшает результат.
