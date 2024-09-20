---
title = "Top LLM frameworks may not be as reliable as you think"
tags = ["practice", "development", "open-source", "python", "neural-networks", "backend"]
published_at = "2024-09-19T12:00:00+00:00"
seo_description = "The quality of code in top LLM frameworks may be worse than you expect from top frameworks."
seo_image = ""
---

Nearly a month ago, I decided to add Gemini support to [Feeds Fun](https://feeds.fun/) and did some research on top LLM frameworks — I didn't want to write my own bicycle.

As a result, I found a shameful bug (in my opinion, of course) in the integration with Gemini in [LLamaIndex](https://github.com/run-llama/llama_index). Judging by the code, it is also present in [Haystack](https://github.com/deepset-ai/haystack-core-integrations) and in the plugin for [LangChain](https://github.com/langchain-ai/langchain-google). And the root of the problem is in the Google SDK for Python.

When initializing a new client for Gemini, the framework code overwrites / replaces API keys in all clients created before. Because the API key, by default, is stored in a [singleton](https://en.wikipedia.org/wiki/Singleton_pattern).

Death-like, if you have a multi-tenant application, and unnoticeable in all other cases. Multi-tenant means that your application works with multiple users.

For example, in my case, in Feeds Fun, a user can enter their API key to improve the quality of the service. Imagine what a funny situation could happen: **a user entered an API key to process their news, but spent tokens (pay) for all users of the service**.

I reported this bug only in LLamaIndex as a security issue, and there has been no reaction for 3 weeks, and I'm too lazy to reproduce and report it in Haystack and LangChain. So **this is your chance to report a bug to a top repository**, all the info will be below, reproducing is not difficult.

This error is notable for many reasons:

1. The assessment of the criticality of the error depends a lot on taste, experience, and context. For me, in the projects I worked on, this is a critical security issue. But it seems that for most current projects that use LLM, this is not critical at all. Which leads to some thoughts about mainstream near-LLM development.
2. This is a good indicator of a low level of code quality control: code reviews, tests, all processes. After all, this is an integration with one of the major API providers. The problem could have been found in many different ways, but none of them worked.
3. This is a good illustration of the vicious approach to development: "copy-paste from a tutorial and push to prod". To leave this error unnoticed, you had to ignore both the basic architecture of your project and the logic of calling the code you are copying.

In the end, I gave up on these frameworks and implemented my own client over HTTP API.

My conclusion from this mess is: you can't trust the code under the hood of modern LLM frameworks. You need to double-check, proofread. Just because they state that they are "production-ready" doesn't mean they are really production-ready.

Let me tell you more about the bug.

<!-- more -->

## Воспроизводим ошибку в LlamaIndex

- Создаём первый клиент с ключом `A`.
- Создаём второй клиент с ключом `B`.
- Пробуем использовать первый клиент, видим, что используется ключ `B`, а не ключ `A`.

```
from llama_index.llms.gemini import Gemini

llm_1 = Gemini(model="models/gemini-1.5-flash", api_key="correct api key")

resp = llm_1.complete("Write a poem about a magic backpack")

# here everything is ok
print(resp)

llm_2 = Gemini(model="models/gemini-1.5-flash", api_key="another key, wrong by purpose")

# Let's run llm_1 again
# We'll see an error instead of correct answer, because the key was redifined
resp = llm_1.complete("Write a poem about a magic backpack")

# google.api_core.exceptions.InvalidArgument: 400 API key not valid. Please pass a valid API key. [reason: "API_KEY_INVALID"
# domain: "googleapis.com"
# metadata {
#   key: "service"
#   value: "generativelanguage.googleapis.com"
# }
# ]
```

## Корень проблемы

Автор(ы) скопировал(и) код туториала по использованию Gemini python SDK.

Вот соответствующий [кусок кода из LlamaIndex](https://github.com/run-llama/llama_index/blob/6552a926bdf430e86266059091e28495dbd92a43/llama-index-integrations/llms/llama-index-llms-gemini/llama_index/llms/gemini/base.py#L120-L135)

```

class Gemini(CustomLLM):
...
       try:
            import google.generativeai as genai
        except ImportError:
...
        config_params: Dict[str, Any] = {
            "api_key": api_key or os.getenv("GOOGLE_API_KEY"),
        }

...
        genai.configure(**config_params)
```

Словами:

- В **конструкторе экземпляра условного клиента**.
- Импортируем библиотеку от Google.
- **Вызываем метод глобальной инициализации** клиентского SDK — устанавлием значение API ключа по-умолчанию.

Отдельно обращу внимание, что `genai.configure(...)` по самой логике вызова (вызываем функцию из базового модуля библиотеки) не может иметь никакой другой логики, кроме перетирания глобальных настроек.

Чтобы вы долго не искали, вот аналогичные куски кода в других проектах:

- [Haystack](https://github.com/deepset-ai/haystack-core-integrations/blob/main/integrations/google_ai/src/haystack_integrations/components/generators/google_ai/gemini.py#L93)
- [Lang Chain](https://github.com/langchain-ai/langchain-google/blob/6dfdf9b57aa1f99d9c598a97e5729adb278883cf/libs/genai/langchain_google_genai/llms.py#L224)

Логика одна и та же.

## Как можно защититься от такого косяка?

- Читать документацию, прежде чем копипастить.
- Читать чужой код, прежде чем копипастить.
- Разбирать архитектуру своего проекта, прежде чем в него копипастить.
- Визуализировать итоговую логику кода в голове, прежде чем… ну вы поняли.
- Писать тесты, проверяющие инициализацию клиентов. Косяки с кредами — это классика ошибок безопасности.
- Senior разработчик должен ловить такое на код ревью на подсознательном уровне.
- Если это сделано осознанно, вызывать исключение при попытке создания второго клиента.
- Если это сделано осознанно, писать о нюансах жирным красным текстом в документации.

## Можно ли было избежать ошибки?

И да и нет.

[Официальная библиотека гугла](https://github.com/google-gemini/generative-ai-python) не даёт возможности прокинуть клиент или API ключ до места обращения к серверному API.

Потому что [разработчики не уверены на сколько это нужная фича](https://github.com/google-gemini/generative-ai-python/issues/136) В обсуждении я оставил большой комментарий, надеюсь он убедит разработчиков, когда они следующий раз обратят внимание на эту задачу.

Прокинуть ключ можно с помощью некоторых плохих практик через приватные интерфейсы объектов. А вот публичным API сделать это не получится.

Сделать «правильно» можно было многими способами:

1. Сказать «мы не будем делать интеграцию с Gemini», пока они не решат ограничения своего оклиента.
2. Реализовать собственный клиент, используя HTTP API.
3. Использовать хаки, чтобы таки проталкивать ключ, куда надо. Обложить тестами, конечно, чтобы код не сломался при обновлении SDK.
4. Реализовать как есть, но явно дикларировать что клиент к Gemini API — singleton. Например, вызывать исключение при попытке создания второго клиента.

Как видим, варианты есть, но более затратные по времени и более сложные.

## Почему такие ошибки проникают в код

У меня есть гипотеза.

Со стороны может показаться, что работа программиста везде одинакова: человек сидит и что-то вбивает на клавиатуре. Но на самом деле она сильно отличается от области к области.

Делать компьютерные игры — не то же самое, что программировать железо для складков. Писать бэкенд для современного веба — не то же самое, что делать
корпоративный софт или, тот же фронтенд для веба.

Везде разные требования, разные нюансы и ограничения, даже разная динамика разработки — где-то код принято выкидывать через месяц, а где-то он должен работать десятки лет. Где-то в принципе нет такого явления multi-tenant, где-то оно подразумевается по-умолчанию.

Меняя область деятельности, даже опытный разработчик не сможет сходу выдавать высококачественный код. Даже если заметит, что область поменялась. А многие не осознают этого довольно долго.

Так вот, моя гипотеза состоит в том, что многие разработчики LLM middleware сменили область деятельности. С чего-то научного вроде data science и тренировки нейронок на что-то более инженерное, вроде разработки долгоиграющих сервисов под веб.

Как следствие, ещё не все из них понимают динамику и проблемы области, в которой неожиданно оказались.

Утрируя: когда основой твой результирующий артефакт — это Jypyter notebook, ты не задумываешься о том, сколько ключей API или экземпляров клиента будет в твоём коде, сколько соединений к сторонним сервисам ты используешь и так далее. Но когда ты разрабатываешь библиотеку для бэка, то уже должен держать всё это в голове и, что важно, не додумывать за возможных пользователей твоего артефакта.

На примере описанного бага, я вижу два подтверждения этой гипотезы:

- Потенциально однотипные проблемы в разных топовых фреймворках.
- Потенциально однотипные проблемы в разных топовых SDK. Пару лет назад была схожая проблема API ключей в OpenAI SDK, но всё исправили намного быстрее.
