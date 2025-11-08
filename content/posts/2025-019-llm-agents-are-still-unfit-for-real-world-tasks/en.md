---
title = "LLM agents are still unfit for real-world tasks"
tags = [ "practice", "development", "backend", "neural-networks", "scientific-papers"]
published_at = "2025-11-08T12:00:00+00:00"
seo_description = "Once again, I tried LLM agents on real, routine programming tasks — once again, they didn't help."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "AI agents show their work to a programmer (c) ChatGPT & Hieronymus Bosch."
///

This week, I tested LLMs on real tasks from my day-to-day programming. Again.

<!-- more -->

**First task** — converting configs of authentication proxies. I manually wrote configs for [Apache APISIX](https://apisix.apache.org/) and wanted ChatGPT to quickly produce configs with exactly the same logic for [Pomerium](https://www.pomerium.com/) and [OAuth2-Proxy](https://oauth2-proxy.github.io/oauth2-proxy/).

In my view, this task is as perfect for automation as it can be, it's hard to imagine a better fit:

- Conceptually simple — nothing to invent; all the necessary logic is fully specified.
- Lots of monotonous work with information — hard for a human, easy for a machine: you have to read through a lot of (not complex, but complicated) information to write the new configs correctly.
- Essentially, a translation from one technical language to another.

The result — a failure — the final configs in both cases managed to be, **simultaneously**:

- Non-functional (the proxies wouldn't start at all).
- Full of deprecated or incorrect directives.
- Misaligned with the logic described in the original configs.

**Second task** — prepare a frontend app template for [Vue 3](https://vuejs.org/): create an app, install [Tailwind CSS](https://tailwindcss.com/), add one specific library — [Dockview](https://dockview.dev/) — build a couple of test components. This time I used Copilot Agents. I just wanted to save time, plus this is a lowest-priority project I dream of doing in a vibe-coding style, when it becomes possible :-)

Result — another failure — the packages were installed, but I wouldn't call them properly configured; the required GUI simply didn't render. Copilot did, however, produce a pretty README with a screenshot of an empty page and, amusingly, tried to convince me that although the screenshot is blank, everything actually works — the correct screenshots just got lost somewhere in the tmp directories.

Both are straight-up routine tasks — work for a patient mid-level dev, maybe even for a junior — you don't need to be a genius to get them done.

By the way, a study just came out showing that [LLM agents are basically ineffective — they manage to complete about 2.5% of real-world economic tasks](https://arxiv.org/abs/2510.26787).

I have a hypothesis about where all this vibe-coding hype comes from:

- The people building LLMs are researchers — they have little production experience.
- The people building LLM benchmarks are researchers, too.
- For researchers, a programmer's job is to hack a cool in-memory sort algorithm or a clever tree traversal logic to save two CPU cycles per hour.
- As a result, LLMs are tuned in the wrong directions and optimized for the wrong metrics.
- Then it all passes through our beloved ~~industry leaders~~ startup folks, who partly don't realize automation existed before AI (so they credit new tools for old wins) and partly just lie openly (because the money must flow).

All this creates such a polluted information space that the actual state of affairs becomes indistinguishable.

And this isn't the first time in recent decades: blockchain was drowning in hype the same way; the world didn't turn upside down, but we did get "one more useful technology". Before blockchain, there were smaller hype waves like NoSQL, nanotubes (I even saw a site offering to ship them by the truckload!), and even Ajax (a.k.a. Web 2.0) went through that phase.
