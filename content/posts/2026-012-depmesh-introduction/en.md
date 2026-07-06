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

As a result, [DepMesh](https://github.com/Tiendil/depmesh) was born.

<!-- more -->

## How DepMesh works

DepMesh is a CLI tool with a configuration file (`depmesh.toml`) in the root of your project.

In the config, you specify two things:

1. Kinds of relationships between files.
2. Rules for searching related files.

The simplest config can look like this:

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

In it, we define one type of dependency `tested_by` and a rule "Every source file `.../module.py` is connected by the `tested_by` relationship to the file `.../tests/test_module.py`".

Each rule is defined by three parameters:

 - `relation` — the type of relationship we are defining.
- `input` — a condition that determines whether we can apply the rule to the given file.
- `output` — a generator of file paths that are related to the input file through the specified relationship.

Besides the glob patterns from the example above, DepMesh supports calling third-party utilities, so you can analyze files however you want: use linters, LSP servers, parse source code with regular expressions, query a database, call an HTTP API, and so on. And all this without spending tokens or polluting the agent's context.

The syntax of the rules is quite powerful and flexible; for example, in one rule you can specify multiple file patterns and combine several generators.

You can find detailed documentation on how to work with the utility and its configuration in [depmesh/README.md](https://github.com/Tiendil/depmesh/tree/main).

/// note | DepMesh does not infer reverse relationships

For a dependency like `file --tested_by--> test_file`, DepMesh cannot automatically infer the reverse dependency `test_file --tests--> file`.

This is a conscious decision, as the asymmetry in how we organize information means searching for direct and reverse dependencies can take orders of magnitude more time and resources. For example, the direct dependency `imports` can be processed very quickly (you just need to read one file and analyze its imports), while the reverse dependency `imported_by` may require traversing the entire project.

That's why the decision on which relationships to support is entirely up to the user.

With time I'll improve this aspect, but for now we will follow the principle of "explicit is better than implicit" and define all dependencies explicitly in the config.

///

## How I use DepMesh

You can find examples of real configs in the tool's own repository [depmesh/depmesh.toml](https://github.com/Tiendil/depmesh/blob/main/depmesh.toml), as well as in the repository of my news reader [feeds.fun/depmesh.toml](https://github.com/Tiendil/feeds.fun/blob/main/depmesh.toml).

### Kinds of relationships

In my projects, I define the following relationships:

- `tested_by` — tests that verify the artifact.
- `tests` — artifacts that are verified by the tests.
- `imports`/`uses` — source files that are imported/used by this source file.
- `imported_by`/`used_by` — source files that import/use this source file.
- `governed_by` — specifications that govern the artifact.
- `governs` — artifacts that are governed by this specification.
- `terms_defined_by` — dictionaries that contain definitions of terms used in the file.
- `defines_terms_for` — files for which the dictionary contains definitions of terms.
- `indexed_by` — index files (index is a particular type of specification) that contain references to this file.
- `indexes` — files that are contained in this index.

/// note | You can define relationships between any files

DepMesh is "blind" to the type and content of files — their semantics are up to you.

As an example, I have specifications that `govern` other specifications: [meta/general.md](https://github.com/Tiendil/depmesh/blob/main/specs/meta/general.md) and here are some configs for it:

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

### Discovering relationships

I strive to define relationships at the file path level — standard names, standard paths, as in the case of tests: `./src/module.py` always has a paired `./src/tests/test_module.py`. I started doing this long before the rise of AI — it's convenient for humans; also, glob patterns work very quickly. For example, here is the agent spec for the layout of the Feeds Fun backend modules [./specs/backend_architecture/modules_layout.md](https://github.com/Tiendil/feeds.fun/blob/main/specs/backend_architecture/modules_layout.md).

However, with imports, of course, this trick does not work.

For Python, I use [tach](https://github.com/tach-org/tach) — a linter for dependencies between modules. Besides being able to return them in a convenient for scripts format, it is actually a linter. You can describe the import rules in the project, and it will check their compliance — very convenient.

For Rust, I use a custom wrapper around `cargo modules dependencies`. Unfortunately, there are no established utilities for dependency analysis in Rust (which is strange). If you want to contribute to the community — this is a great opportunity — there is no conceptual complexity, you just need to spend some time.

## Profit

- The agent does not need to think where it should not. This means it spends fewer tokens, does not pollute the context, and works faster.
- The agent does not miss dependencies, which means it makes fewer mistakes and behaves more predictably.
- You can use DepMesh as a base component for more complex automation, as a universal interface to dependencies is needed not only by agents.

In the context of the last point, I am currently experimenting with a system that automatically controls the synchronization of all project files with each other, using [DepMesh](https://github.com/Tiendil/depmesh) to identify dependencies and [Donna](https://github.com/Tiendil/donna) to resolve desynchronization.
