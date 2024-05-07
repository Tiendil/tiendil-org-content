---
title = "Два примера overengineering из FastAPI"
tags = [ "backend", "python", "practice", "development",]
published_at = "2023-05-03T12:00:00+00:00"
seo_description = "Два примера «классических» архитектурных проблем из топовой библиотеки для веб-разработки на Python."
seo_image = "images/two-examples-of-overengineering-from-fastapi-cover.jpg"
---

/// brigid-images
src = "images/two-examples-of-overengineering-from-fastapi-cover.jpg"
caption = 'DALL-E: Vrubel painting: "demon of overengineering in software development"'
///

Решил по-хитрому использовать contextvars в FastAPI и с первого захода налетел на странные архитектурные решения, которые, откровенно говоря, ограничивают и мешают делать красиво :-(

<!-- more -->

### FastAPI без спросу запускает не асинхронные функции в потоках

>When you declare a path operation function with normal def instead of async def, it is run in an external threadpool that is then awaited, instead of being called directly (as it would block the server).
>
> ...
>
>he same applies for dependencies. If a dependency is a standard def function instead of async def, it is run in the external threadpool
>
>[https://fastapi.tiangolo.com/async/?h=thread#very-technical-details](https://fastapi.tiangolo.com/async/?h=thread#very-technical-details)

А в потоках много чего отличается, например, [Every thread will have a different top-level Context object](https://docs.python.org/3/library/contextvars.html#contextvars.Context).

Как правильно было бы сделать?

«Явное лучше неявного» — делаем декоратор, который навешивает на функцию свойство `._run_me_in_thread`. Когда оно `True` — запускаем в потоке. В остальных случаях не трогаем.

### FastAPI не соблюдает вложенность контекстов

> If you have dependencies with yield, the exit code will run after the middleware.
>
> [https://fastapi.tiangolo.com/tutorial/middleware/#middleware](https://fastapi.tiangolo.com/tutorial/middleware/#middleware)

То есть:

- Выполняется стартовая часть middleware.
- Выполняется стартовая часть dependency. На сколько я понимаю, после всех middleware, так как для dependency доступен объект request.
- тут обработчик запроса
- Выполняется конечная часть middleware.
- Выполняется конечная часть dependency.

Другими словами, если в middleware вы инициализируюете что-то (а потом деинициализируете), то код в dependency будет частично работать с проинициализированным объектом, а частично — нет.

Как правильно было бы сделать? Как угодно, но не так :-D это прямо ересь какая-то :-(((

Сделать вложенные обработчики. Как во всех остальных (вообще во всех?) веб фреймворках.

Не представляю в чём ценность такой пересекающейся логики.
