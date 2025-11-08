---
title = "Want a cool open source project in your portfolio?"
tags = [ "practice", "development", "open-source", "backend" ]
published_at = "2025-11-07T12:00:00+00:00"
seo_description = "If you want a great open source project in your portfolio, build an auth proxy that \"just works\"."
seo_image = "./cover.jpg"
---

/// brigid-images
src = "./cover.jpg"
caption = "A plea to the universe for a humane auth proxy (c) ChatGPT & Hieronymus Bosch."
///

As a mid-journey summary of my struggles with OAuth2/OIDC, I can say this: I haven't seen such amount of abstraction leaks and half-baked implementations, as in modern open-source authentication proxies, for a very long time — if ever.

Sure, it's great that such proxies exist at all and that there's something to choose from. It's also clear that they were made by enterprise developers to cover their very specific enterprise pains — most likely as side projects alongside their main products. But still… damn.

If you ever wanted a cool open source project to show off in your portfolio, grab Rust or Go and build a small auth proxy with OIDC and OAuth2 support that simply works. Something not aimed at corporations with Kubernetes clusters, but at small companies and indie developers who need to quickly plug a functionality gap without touching their app code. The situation where you have to modify backend code just to make the proxy work is pure madness.

People will bow to you :-) Especially now, when OAuth2 has suddenly become even more essential, since it's required by the Model Context Protocol.

<!-- more -->

Here's what such a marvel should do:

- Support OIDC with all its redirects.
- Support OAuth2 for APIs.
- Create sessions, store them in Redis or a database, pass the ID in a cookie.
- Configure session and cookie properties.
- Support three types of URL paths: require auth, don't require auth, and accept auth optionally.
- Pass user parameters (received from the Identity Provider) in request headers to the backend.
- Do not force developers into a specific usage pattern.

So I tried out four different proxies:

- The first one can't store sessions in a database, so it encrypts all the info and stores it into cookies.
- The second one can't properly handle all OIDC redirects — you can't route users between login and registration forms in Keycloak.
- The third one doesn't support optional authentication.
- The fourth one requires a dedicated devops department just to deploy and maintain it.

And all of them are overloaded with tons of extra features that, in my view, are absolutely optional for anyone without a devops team at hand.
