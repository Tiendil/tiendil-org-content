---
title = "Donna готова к использованию"
tags = ["practice", "development", "open-source", "neural-networks", "prompt-engineering", "large-language-models", "exocortex", "ai-agents", "coding-agents"]
published_at = "2026-05-28T12:00:00+00:00"
seo_description = "Я закончил прототипирование Donna. Теперь утилита отлажена, имеет чёткую специализацию и, в целом, готова к использованию."
seo_image = "cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "Как работает Donna."
///

В феврале я выпустил [Donna](https://github.com/Tiendil/donna)([оригинальный пост]{post:donna-introduction}) — CLI утилиту для выполнения сценариев агентами и представления этих сценариев в виде файлов Markdown.

Поскольку я разрабатывал её одновременно разбираясь [как работать с агентами]{post:notes-on-coding-agents}, у меня получился переусложнённый, универсальный монстр. Donna имела много полезных функций, но совместно они слишком сильно ограничивали среду разработчика и требовали слишком много времени на изучение.

Поэтому, получив некоторый опыт, я решил следовать [философии Unixъ(
So, after I gained some experience, I decided to follow the [Unix philosophy](https://ru.wikipedia.org/wiki/Философия_Unix) и отрефакторить монолит в набор меньших утилит, каждая с отдельной чёткой зоной ответственности. Новая Donna — это первая из них (вторая — это [depmesh](https://github.com/Tiendil/depmesh) — я расскажу о ней в отдельном посте).

Новая Donna существует, чтобы решать проблемы агентов с контролем потока упавления при длительной работе. Логика следующая:

- Большинство работы разработчиков ПО на мета-уровне является повторяющейся активностью: «запусти этот инструмент, сделай что-то с результатом, запусти другой инструмент» или «реализуй функцию A, реализуй тесты для функции A, реализуй функцию B, …».
- Некоторые части этой работы требуют глубокого рассуждения, другие — нет.
- Агенты ~~почти~~ хороши в рассуждении, но не очень хороши в том, чтобы держать весь процесс в голове, помнить, что они уже сделали, что им нужно сделать и в каком порядке, etc.
- Поэтому логично отделить рассуждение от контроля потока управления — пусть агенты сосредоточатся на том, в чем они хороши, а контроль потока можно отдать традиционным инструментам автоматизации.

Donna как раз исполняет определённые заранее сценарии как детерминированные конечные автоматы, поэтому агент может сосредоточиться на рассуждении, генерации кода и другой агентной работе.

<!-- more -->

## Как Donna работает

Вы описываете сценарий в Markdown файле. Агент просит Donna провести его через сценарий; Donna поддерживает состояние выполнения, выбирает следующую операцию и говорит агенту, что делать или что сообщать дальше.

Сценарии могут запускать дочерние сценарии, генерироваться на лету или изменяться во время выполнения. Например, у вас может быть сценарий, который проводит агента через процесс планирования, и на последнем шаге агент может сгенерировать новый сценарий с подробным планом работы, после чего сразу же его запустить.

Как бонус, **Donna экономит токены**, потому что агенту не нужно рассуждать о контроле потока управления или о том, как запускать конкретные команды CLI и другие инструменты автоматизации.

## Пример

Вот игрушечный пример сценария, который получает текущее время, спрашивает агента, не пора ли пить чай, и разветвляется в зависимости от ответа агента.

Абстрактная схема сценария выглядит так:

```
[Get Current Time]
          |
          v
   [Ask About Tea]
          |
     +----+----+
     |         |
    yes        no
     |         |
     v         |
  [Turn On     |
   Kettle]     |
     |         |
     +----+----+
          |
          v
       [Finish]

```

И вот исходник этого сценария:

```markdown
# Is it time to drink tea?

This workflow checks the current time, asks the agent whether it is tea time,
and branches on the answer.

## Get Current Time

```toml donna
id = "get_current_time"
kind = "donna.lib.run_script"
save_stdout_to = "current_time"
goto_on_success = "ask_about_tea"
goto_on_failure = "finish"
```

```bash donna script
#!/usr/bin/env bash
date +%H:%M
```

## Ask About Tea

```toml donna
id = "ask_about_tea"
kind = "donna.lib.request_action"
```

The current time is:

```text
{{ donna.lib.task_variable("current_time") }}
```

Is it time to drink tea?

1. If yes, `{{ donna.lib.goto("turn_on_kettle") }}`.
2. If no, `{{ donna.lib.goto("finish") }}`.

## Turn On Kettle

```toml donna
id = "turn_on_kettle"
kind = "donna.lib.request_action"
```

Turn on the kettle, then `{{ donna.lib.goto("finish") }}`.

## Finish

```toml donna
id = "finish"
kind = "donna.lib.finish"
```

The workflow is complete. You are a good butler.
```

Сценарий взят из [README.md](https://github.com/Tiendil/donna) проекта, по ссылке вы можете найти подробное объяснение, как он работает.

## Реальное использование

**Мой основной вариант использования Donna** — это создание сценариев «полировки» кода, например, как этот: [polish.donna.md](https://github.com/Tiendil/donna/blob/main/workflows/polish.donna.md).

Такой сценарий форматирует код, запускает тесты, линтеры, проверяет орфографию и так далее, а если он находит какие-то проблемы, то просит агента их исправить. Сценарий работает пока все проблемы не будут исправлены. выполняя проверки в фиксированном порядке после каждого изменения.

Мой агент проинструктирован запускать полировку кода как последний шаг выполнения задачи и после каждого значительного этапа работы, когда проект должен быть в согласованном состоянии.

Подобный подход избавляет меня от большого количества ручной работы и сокращает время на код ревью, особенно после того как я добавил [tach](https://github.com/tach-org/tach/) в свои проекты для контроля зависимостей кода.

**The second use case** is asking agents to generate workflows for themselves when they need to do something complex. For example, when I want to ensure that a complex refactoring is done in the correct sequence, or that every file is processed in the same way.

**My wife resently started using Donna for translating some chines novels** for personal use. I helped her generate nearly 5 workflows; she iteratively tuned them to achieve expected behavior and quality, and now they are translating something in the background. No coding was required.

## Looking for early adopters

I use Donna every day and think it could bring a lot of value to others. So, if you are interested, try it out, and let me know what you think. I'm always ready to help you with it, and your feedback is very important to me.

Don't worry about support or long-term maintenance — I use Donna in all my projects every day, so I will maintain it in any case. And I'm fast at introducing new features and fixing bugs on demand.
