---
title = "Ory's sketchy authentication architecture"
tags = [ "practice", "development", "open-source", "backend"]
published_at = "2025-11-06T12:00:00+00:00"
seo_description = "Let me vent about Ory's sketchy authentication architecture that demands multiple services and extra round-trips just to add a single header."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "Tiendil trying to understand how Ory works (c) ChatGPT & Hieronymus Bosch."
///

I'm going to vent here — either that or shout into the void.

I've been diving into authentication a bit deeper than I wanted, and ran into the fact that what's borderline considered best practice now is having your auth proxy call out to external services to enrich the request with extra data for the backend.

For example, if you have an API that's available to both authenticated and anonymous users, [Ory](https://www.ory.com/) Oathkeeper (an auth proxy) can't add a header with the user ID: either you lock the API to authenticated users only, or you don't add the header.

The recommended "solution" is to create your own microservice (!): the proxy calls the microservice (for every request!), the microservice calls Ory Kratos (!) — the session store (among other things) — fetches the session, and returns a info for the proxy. In other words, to add **one** header, you chain two internal requests on every API call (or three, in theory Kratos can hit a database or cache).

That's absurd.

<!-- more -->

And Ory is a top-grade solution; it is used even by OpenAI.

To roll out an auth* stack on Ory (simplified), you need to:

- run Ory Kratos — sessions and sign-in/sign-up flows;
- run Ory Hydra — handles OAuth2, OIDC, etc;
- run Ory Oathkeeper — the actual proxy;
- build your own GUI (graphical user interface) that talks to Kratos;
- build your own backend service (and sometimes a GUI for it) required by Hydra;
- and in my case, add yet another microservice to set a single header. SINGLE HEADER!

All that just to have registration, login, and some unified access with the option to tune it deeply for B2B.

And this still doesn't include edge concerns like rate-limit/quotas tracking, a reverse proxy, HTTPS certificate management, and the rest.

Meanwhile, alternative setups usually rely on only two components: an identity provider and an auth proxy. The boundary logic can be split in different ways, but you're not multiplying entities.

At least I assembled a working stack with [Keycloak](https://www.keycloak.org/) + [Apache APISIX](https://apisix.apache.org/) and it works. But I decided, to my horror, to see how the "serious" people do it. And now I wish I could unsee it.

IdP + auth proxy, if you think it through, is a great, convenient concept — one should never reinvent security components — this pair solves the problem. But that's **two** entities, not **five**! Have you ever tried to configure, debug, and maintain long-term five tightly coupled services with non-trivial logic? Don't.

Humanity took a wrong turn somewhere.

P.S. There's of course a chance I missed something in Ory's docs about that header-setting service — but that's basically the smallest problem you have to solve in this setup :)
