---
title = "Top LLM frameworks may not be as reliable as you think"
tags = ["practice", "development", "open-source", "python", "neural-networks", "backend"]
published_at = "2024-09-19T12:00:00+00:00"
seo_description = "The quality of code in top LLM frameworks may be worse than you expect from top frameworks."
seo_image = ""
---

Nearly a month ago, I decided to add Gemini support to [Feeds Fun](https://feeds.fun/) and did some research on top LLM frameworks — I didn't want to write my own bicycle.

As a result, I found an embarrassing bug (in my opinion, of course) in the integration with Gemini in [LLamaIndex](https://github.com/run-llama/llama_index). Judging by the code, it is also present in [Haystack](https://github.com/deepset-ai/haystack-core-integrations) and in the plugin for [LangChain](https://github.com/langchain-ai/langchain-google). And the root of the problem is in the Google SDK for Python.

When initializing a new client for Gemini, the framework code overwrites/replaces API keys in all clients created before. Because the API key, by default, is stored in a [singleton](https://en.wikipedia.org/wiki/Singleton_pattern).

It is death-like, if you have a multi-tenant application, and unnoticeable in all other cases. Multi-tenant means that your application works with multiple users.

For example, in my case, in Feeds Fun, a user can enter their API key to improve the quality of the service. Imagine what a funny situation could happen: **a user entered an API key to process their news but spent tokens (paid for) for all service users**.

I reported this bug only in LLamaIndex as a security issue, and there has been no reaction for 3 weeks. I'm too lazy to reproduce and report for Haystack and LangChain. So **this is your chance to report a bug to a top repository**. All the info will be below, reproducing is not difficult.

This error is notable for many reasons:

1. The assessment of the criticality of the error depends a lot on taste, experience, and context. For me, in the projects I worked on, this is a critical security issue. However, it seems that this is not critical at all for most current projects that use LLMs. Which leads to some thoughts about mainstream near-LLM development.
2. This is a good indicator of a low level of code quality control: code reviews, tests, all processes. After all, this is an integration with one of the major API providers. The problem could have been found in many different ways, but none worked.
3. This is a good illustration of the vicious approach to development: "copy-paste from a tutorial and push to prod". To make such a mistake, you had to ignore both the basic architecture of your project and the logic of calling the code you are copying.

Ultimately, I gave up on these frameworks and implemented my own client over HTTP API.

My conclusion from this mess is: you can't trust the code under the hood of modern LLM frameworks. You need to double-check and proofread it. Just because they state that they are "production-ready" doesn't mean they are really production-ready.

Let me tell you more about the bug.

<!-- more -->

## Reproducing the error in LlamaIndex

- Create the first client with the key `A`.
- Create the second client with the key `B`.
- Use the first client, see that the key `B` is used instead of the key `A`.

```
from llama_index.llms.gemini import Gemini

llm_1 = Gemini(model="models/gemini-1.5-flash", api_key="correct api key")

resp = llm_1.complete("Write a poem about a magic backpack")

# here everything is ok
print(resp)

llm_2 = Gemini(model="models/gemini-1.5-flash", api_key="another key, wrong by purpose")

# Let's run llm_1 again
# We'll see an error instead of a correct answer because the key was redefined
resp = llm_1.complete("Write a poem about a magic backpack")

# google.api_core.exceptions.InvalidArgument: 400 API key not valid. Please pass a valid API key. [reason: "API_KEY_INVALID"
# domain: "googleapis.com"
# metadata {
#   key: "service"
#   value: "generativelanguage.googleapis.com"
# }
# ]
```

## The root of the problem

The author(s) copied the tutorial code on using the Gemini Python SDK without adapting it to the specifics of their project.

Here is the corresponding [code snippet from LlamaIndex](https://github.com/run-llama/llama_index/blob/6552a926bdf430e86266059091e28495dbd92a43/llama-index-integrations/llms/llama-index-llms-gemini/llama_index/llms/gemini/base.py#L120-L135)

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

By words:

- In **the constructor of the (kind of) client instance**.
- We import the Google client lib.
- **We call the global initialization method** of the client — set the default API key for all API calls.

I want to emphasize that `genai.configure(...)`, by the logic of the call (we call a singleton entity from the base module of the library), cannot have any logic other than overwriting global settings.

Here is the code with potential bugs in other projects:

- [Haystack](https://github.com/deepset-ai/haystack-core-integrations/blob/main/integrations/google_ai/src/haystack_integrations/components/generators/google_ai/gemini.py#L93)
- [Lang Chain](https://github.com/langchain-ai/langchain-google/blob/6dfdf9b57aa1f99d9c598a97e5729adb278883cf/libs/genai/langchain_google_genai/llms.py#L224)

The logic is the same.

## How can developers protect themselves from such bugs?

- Read the documentation before copy-pasting.
- Read the copied code before pasting.
- Understand the architecture of your project before copy-pasting.
- Visualize the final logic of the code in your head before... you got it.
- Write tests that check the initialization of clients. Credential bugs are a classic security issue.
- Senior developers should catch such things subconsciously during code review.
- If this is done by purpose, throw an exception when trying to create a second client — protect users of your library.
- If this is done by purpose, write about nuances in bold red text in the documentation — notify users of your library.

## Could the integration have been implemented correctly?

Yes and no.

[The official Google library](https://github.com/google-gemini/generative-ai-python) does not allow you to pass an API key (or a client initialized with an API key) to the place where the server API is called.

Because [the developers are not sure how necessary this feature is](https://github.com/google-gemini/generative-ai-python/issues/136) In the discussion, I left a long comment, I hope it will convince the developers when they pay attention to this task next time.

The library's user can pass an API key by using some bad code practices (through private interfaces of objects), but it is impossible to do this through the public API.

There are some "correct" ways to implement the integration:

1. State "we will not integrate with Gemini" until they resolve the limitations of their client.
2. Implement your own client using the HTTP API.
3. Use hacks to push the key where it is needed. Of course, in pair with covering them with tests so that the code does not break when the SDK is updated.
4. Implement as is, but explicitly declare that the client to the Gemini API is a singleton. For example, throw an exception when a user tries to create a second client.

As we can see, there are options, but they are time-consuming and more complex.

## Why does such a bug appear in the code at all?

I have a hypothesis.

From the outside, a programmer's work may seem the same everywhere: a person sits and types something on the keyboard. But in reality, it differs greatly from area to area.

Making computer games is not the same as programming hardware for warehouses. Writing a backend for a modern web is not the same as making corporate software or the frontend for the web.

There are different requirements, nuances, and restrictions everywhere, even different development dynamics — somewhere the code may be thrown away after a month, somewhere it should work for decades Somewhere there is no such concept as multi-tenant, somewhere it is implied by default.

When changing the work area, even an experienced developer will not be able to produce high-quality code immediately. Even if they notice that the area has changed. And many are not realizing this for quite a long time.

So, my hypothesis is that many LLM middleware developers have recently changed their area of activity. From something scientific like data science and training neural networks to something more engineering, like developing long-playing web services or middleware for them.

As a result, not all of them understand the dynamics and problems of the area where they suddenly found themselves.

Oversimplifying: when your resulting artifact is a Jupyter notebook, you don't think about how many API keys or client instances will be in your code, how many connections to third-party services you use, and so on. But when you develop a library for the backend, you should keep all this in mind and, importantly, not make assumptions about how potential users will use your artifact.

On the example of the described bug, I see two confirmations of this hypothesis:

- Potentially similar problems in different top frameworks.
- Potentially similar problems in different top client libs. A couple of years ago, there was a similar problem with API keys in the OpenAI client library, but it has already been fixed.
