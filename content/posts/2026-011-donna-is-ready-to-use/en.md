---
title = "Donna is ready to use"
tags = ["practice", "development", "open-source", "neural-networks", "prompt-engineering", "large-language-models", "exocortex", "ai-agents", "coding-agents"]
published_at = "2026-05-28T12:00:00+00:00"
seo_description = "I finished the prototyping phase of Donna development. Now it is polished, have single responsibility and, generally, suitable for use."
seo_image = ""
---

In the February I released [Donna](https://github.com/Tiendil/donna) ([the original post]{post:donna-introduction}) — a CLI tool to represent agent workflows as state machines and describe them in Markdown files.

Since I were developing it simultaneously with learning [how to work with agents]{post:notes-on-coding-agents}, Donna came out as a bit of overcomplicated versatile monster. It had a lot of features, all of them were useful, but, in total, they restricted developer's envelopment too much and required too much time to learn.

So, after I got some experience, I decided to follow [Unix philosophy](https://en.wikipedia.org/wiki/Unix_philosophy) and refactor single monolithic tool into a set of smaller tools with single responsibility. Donna is the first one of them (and the second is [depmesh](https://github.com/Tiendil/depmesh) — I'll tell about it later.

The
