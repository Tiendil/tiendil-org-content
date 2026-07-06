---
title = "DepMesh — making file dependencies part of project architecture"
tags = ["practice", "development", "open-source", "neural-networks", "prompt-engineering", "large-language-models", "exocortex", "ai-agents", "coding-agents"]
published_at = "2026-06-06T12:00:00+00:00"
seo_description = "DepMesh provides agents with a universal interface for extracting dependencies between files."
seo_image = ""
---

Coding agents often need to answer practical questions before making changes, such as:

- Which tests should be read before modifying this file?
- Which specifications govern this module?
- Which modules import this code?
- Which artifacts are affected by this specification change?
- etc.

In other words, the agent must discover all dependencies between files and add them to the context to correctly complete the task.

To answer such questions, the agent must think, form a plan of action, execute it, and analyze the results. All of this consumes tokens, context, and time, without guaranteeing completeness and correctness of the result.

For example, the agent must decide how to search for each specific type of dependency. Sometimes, as in the case of import chains, the agent must read and parse the source code to understand which modules it imports, then generate paths to the corresponding files and read them — it is token-consuming and inefficient.

The result of such "agentic search" is not guaranteed, the agent may forget to grep by function name and lose an important dependency, or miss a niche spec because it decided it is not needed in this particular case.

Even more, for searching, the agent uses a bunch of tools, every one of which, by its very use, increases token consumption and eats up context. For the same task, the agent may choose different tools or call them with different parameters from time to time, which kills predictability and reproducibility of the result.

The common practice to improve the situation is to integrate [LSP](https://microsoft.github.io/language-server-protocol/) or something similar as an agent tool, or to deploy one of the million [RAG systems](https://en.wikipedia.org/wiki/Retrieval-augmented_generation). This helps, but does not solve all problems. For example, it does not guarantee completeness, conciseness, and determinism of the result.

Meanwhile, since ancient times we have had a huge pool of utilities and libraries for file searching and source code analysis that can do the same work quickly and efficiently, without any LLM. Each of them works much better than a [probabilistic model]{post:ai-notes-2024-generative-knowledge-base} in its specific area.

It would be great, I thought, to have a single abstraction over all these tools that provides the agent with a universal interface for extracting all dependencies between files (that were configured) and does not require it to think about what and how to search.

So, it could be used, for example, like this:

```bash
> depmesh dependencies -r governed_by -r tested_by ./depmesh/cli/application.py

## governed_by

Specifications that apply to the artifact.

- @/specs/architecture/entities.md
- @/specs/architecture/errors.md
- @/specs/architecture/modules_layout.md
- @/specs/architecture/naming.md
- @/specs/architecture/static_analysis.md
- @/specs/architecture/tests.md
- @/specs/behavior/cli.md
- @/specs/behavior/file_paths.md

## tested_by

Tests that verify the artifact.

- @/depmesh/cli/tests/test_application.py
```

As the result, [DepMesh](https://github.com/Tiendil/depmesh) was born.

<!-- more -->

## Как работает DepMesh

DepMesh — это CLI утилита с конфигурационным файлом `depmesh.toml` в корне вашего проекта.

В конфиге вы указываете две вещи:

1. Типы зависимостей между файлами.
2. Правила поиска связанных файлов.

Простейший конфиг может выглядеть так:

```toml
version = 1

[[relations]]
id = "tested_by"
description = "Tests that verify the artifact."

[[rules]]
relation = "tested_by"
input = { type = "glob", pattern = "./src/{**package_path}/{*module}.py" }
output = { type = "files", pattern = "./src/{package_path}/tests/test_{module}.py" }
```

В нём мы определяем один тип зависимости `tested_by` и правило «Каждый исходный файл `.../module.py`  связан отношением `tested_by` с файлом `.../tests/test_module.py`».

Каждое правило определяется через три параметра:

- `relation` — тип зависимости, который мы определяем.
- `input` — условие, которое определяет можем ли мы применить правило к переданному файлу.
- `output` — генератор файлов, которые связаны с входным файлом через указанную зависимость.

Кроме glob-паттернов из примера выше, DepMesh поддерживает вызов сторонних утилит, поэтому вы можете анализировать файлы как душе угодно: использовать линтеры, LSP-серверы, парсить исходники регулярными выражениями, ходить в базу данных, вызывать HTTP API и так далее. И всё это без необходимости тратить токены и загрязнять контекст агента.

Синтаксис правил довольно мощный и гибкий, например, в одном правиле можно задавать несколько шаблонов файлов и объединять несколько генераторов.

Подробную документацию по работе с утилитой и её настройке можно найти в [depmesh/README.md](https://github.com/Tiendil/depmesh/tree/main).

/// note | DepMesh не осуществляет вывод обратных связей

Для зависимости вида `file --tested_by--> test_file` DepMesh не сможет автоматически найти обратную зависимость `test_file --tests--> file`.

Это осознанное решение, так как из-за асимметрии в том, как мы организуем информацию, поиск прямой и обратной зависимости может занимать на порядок разное время и ресурсы. Например, прямая зависимость `imports` может быть обработана очень быстро (надо лишь прочитать один файл и проанализировать его импорты), а обратная зависимость `imported_by` может потребовать обхода всего проекта.

Поэтому решение о поддерживаемых отношениях полностью отдаётся пользователю.

Со временем я улучшу этот аспект, но пока будем следовать принципу «явное лучше неявного» и определять все зависимости явно в конфиге.

///

## Как я использую DepMesh

Примеры реальных конфигов можно найти в репозитории самой утилиты  [depmesh/depmesh.toml](https://github.com/Tiendil/depmesh/blob/main/depmesh.toml), или в репозитории моей читалки новостей [feeds.fun/depmesh.toml](https://github.com/Tiendil/feeds.fun/blob/main/depmesh.toml).

### Типы зависимостей

Мои типичные отношения между файлами:

- `tested_by` — тесты, которые проверяют исходник.
- `tests` — исходники, которые проверяются тестами.
- `imports`/`uses` — исходники, которые импортируются/используются данным исходником.
- `imported_by`/`used_by` — исходники, которые импортируют/используют данный исходник.
- `governed_by` — спецификации, которые относятся к файлу.
- `governs` — файлы, которыми управляют спецификации.
- `terms_defined_by` — словари, которые содержат определения терминов, используемых в файле.
- `defines_terms_for` — файлы, для которых словарь содержит определения терминов.
- `indexed_by` — индексные файлы (индекс — отдельный тип спецификации), которые содержат ссылки на данный файл.
- `indexes` — файлы, которые находятся в данном индексе.

/// note | Зависимости можно определять между любыми файлами

DepMesh «слеп» к типу и содержимому файлов, их семантика остаётся на вашей совести.

У меня есть спецификации, которые `govern` другие спецификации. Для примера, вот мета спека [meta/general.md](https://github.com/Tiendil/depmesh/blob/main/specs/meta/general.md) и часть конфигов для неё:

```toml
# Every specification document is governed by the general specification rules.
# Note: general.md governs itself too.
[[rules]]
relation = "governed_by"
input = { type = "glob", pattern = "./specs/**/*.md" }
output = { type = "list", artifacts = ["./specs/meta/general.md"] }

# The general specification rules govern every specification document.
# Note: general.md governs itself too.
[[rules]]
relation = "governs"
input = { type = "one_of", artifacts = ["./specs/meta/general.md"] }
output = { type = "files", pattern = "./specs/**/*.md" }
```
///

### Определение зависимостей

Я стараюсь определять зависимости на уровне файловых путей — стандартные имена, стандартные пути, как в случае с тестами: `./src/module.py` всегда имеет парный `./src/tests/test_module.py`. Начал это делать задолго до взлёта ИИ — это удобно для человека, а glob-паттерны работают очень быстро. Например, вот агентская спека по лэйауту модулей бэкенда Feeds Fun [./specs/backend_architecture/modules_layout.md](https://github.com/Tiendil/feeds.fun/blob/main/specs/backend_architecture/modules_layout.md)

Но с импортами, конечно, такая фишка не прокатывает.

Для Python я использую [tach](https://github.com/tach-org/tach) — линтер зависимостей между модулями. Кроме того, что он может их возвращать в удобном для скриптов виде, он, собственно, линтер. Вы можете описать правила импортов в проекте и он будет проверять их соблюдение — очень удобно.

Для Rust я использую навайбкодженную обёртку вокруг `cargo modules dependencies`. К сожалению, устоявшихся утилит для анализа зависимостей в Rust нет (что странно). Если хотите сделать вклад в сообщество — это отличная возможность — концептуальной сложности нет, нужно просто потратить время.

## Профит

- Агент не думает где не должен. Значит тратит меньше токенов, не забивает контекст и работает быстрее.
- Агент не пропускает зависимости, значит меньше ошибается и ведёт себя предсказуемее.
- Вы можете использовать DepMesh как базовый компонент более сложной автоматизации, так как универсальный интерфейс к зависимостям нужен не только агентам.

В контексте последнего пункта, я сейчас экспериментирую с системой, которая автоматически контролирует синхронизированность всех файлов проекта друг с другом, используя DepMesh для поиска зависимостей и Donna для исправления рассинхронизации.
