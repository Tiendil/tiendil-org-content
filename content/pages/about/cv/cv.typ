/////////////////////////
// Visual Style Approach
/////////////////////////
// Direction:
// - A modern executive-tech CV built around a calm blue palette.
// - Minimalist and professional first, but more approachable than a plain corporate document.
// - Depth is subtle: rounded cards, layered surfaces, and restrained contrast instead of heavy decoration.
//
// Elements:
// - Page canvas: plain white, so the document feels clean and print-friendly.
// - Header panel: a restrained near-white surface with spacing and hierarchy doing more work than color.
// - Contact items: compact icon-led rows with calm spacing and muted supporting text.
// - Section headers: title text followed by a full-width accent rule instead of a filled banner.
// - Intro summary: a lightly tinted lead panel with a very soft outline.
// - Expertise cards: compact white blocks with subtle heading capsules and clear internal spacing.
// - Scope rows: labeled information rows with quiet tags on the left and clean values on the right.
// - Project entries: soft card-based timeline items with a lightly tinted metadata rail and minimal framing.
// - Technology and role tags: quiet neutral-blue chips for short terms to improve scanning without visual noise.
// - Supporting panels: education and achievements sit in simple white cards to keep the lower sections visually consistent.
// - Links: saturated blue for affordance, without aggressive contrast.
// - Footer: thin separators and muted text so it stays useful but unobtrusive.
//
// Semantic color system:
// - page background
// - section rule accent
// - primary card surface
// - tag surface
// - role tag surface
// - practice tag surface
// - expertise subheader surface
// - primary text
// - secondary text
// - link accent
// - footer rule
// - footer text

////////////
// Colors
////////////
#let color_page_background = rgb("#FFFFFF")
#let color_section_rule = rgb("#90A9C2")
#let color_surface_card = rgb("#FFFFFF")
#let color_surface_tag = rgb("#EEF3F8")
#let color_surface_role_tag = rgb("#EAF4EA")
#let color_surface_practice_tag = rgb("#FFF1D6")
#let color_surface_expertise_subheader = rgb("#E7F1FF")
#let color_text_primary = rgb("#1D2A38")
#let color_text_secondary = rgb("#46576B")
#let color_link = rgb("#1B5FB2")
#let color_footer_line = rgb("#D9E0E8")
#let color_footer_text = rgb("#7A8796")

///////////////
// Typography
///////////////
#let text_weight_medium = 600
#let text_weight_bold = 700

#let text_size_xs = 9pt
#let text_size_sm = 10pt
#let text_size_md = 11pt
#let text_size_lg = 12pt
#let text_size_xl = 13pt
#let text_size_2xl = 16pt
#let text_size_header_name = 28pt
#let text_size_header_role = 10pt

#let text_style_base = (
  font: "Liberation Sans",
  size: text_size_md,
  fill: color_text_primary,
)
#let text_style_link = (
  fill: color_link,
)
#let text_style_supporting = (
  ..text_style_base,
  size: text_size_sm,
  fill: color_text_secondary,
)
#let text_style_section_title = (
  ..text_style_base,
  size: text_size_2xl,
  weight: text_weight_bold,
)
#let text_style_subsection_title = (
  ..text_style_base,
  size: text_size_lg,
  weight: text_weight_bold,
)
#let text_style_header_name = (
  ..text_style_base,
  size: text_size_header_name,
  weight: text_weight_bold,
)
#let text_style_header_role = (
  ..text_style_supporting,
  size: text_size_header_role,
  weight: text_weight_medium,
)
#let text_style_footer = (
  ..text_style_base,
  size: text_size_xs,
  fill: color_footer_text,
)
#let text_style_chip = (
  ..text_style_base,
  size: text_size_sm,
  weight: text_weight_medium,
)
#let text_style_key = (
  ..text_style_base,
  size: text_size_sm,
  weight: text_weight_bold,
)
#let text_style_project_heading = (
  ..text_style_base,
  size: text_size_xl,
  weight: text_weight_bold,
)
#let text_style_project_meta = text_style_supporting
#let text_style_header_note = text_style_supporting
#let updated_on = datetime.today().display("[month repr:long] [day], [year]")

///////////
// Document
///////////
#set page(
  paper: "a4",
  margin: (top: 9mm, right: 11mm, bottom: 9mm, left: 11mm),
  fill: color_page_background,
)

#set text(..text_style_base)

#set smartquote(enabled: false)

#set par(
  justify: false,
  leading: 0.7em,
  spacing: 0.4em,
)

#set list(
  tight: true,
)

#show link: set text(..text_style_link)

#let section(title) = [
  #v(0.55em)
  #grid(
    columns: (auto, 1fr),
    column-gutter: 9pt,
    align: (left, horizon),
    [#text(..text_style_section_title)[#title]],
    [#line(length: 100%, stroke: 1.25pt + color_section_rule)],
  )
  #v(0.25em)
]

#let expertise_columns = 2
#let project_meta_column_width = 22mm
#let key_value_key_column_width = 42mm

#let panel(
  fill: color_surface_card,
  stroke: none,
  inset: 10pt,
  radius: 10pt,
  body,
) = [
  #block(
    width: 100%,
    inset: inset,
    radius: radius,
    fill: fill,
    stroke: stroke,
  )[
    #body
  ]
]

#let chip(
  label,
  fill: color_surface_tag,
) = box(
  inset: (x: 7pt, y: 3pt),
  radius: 0pt,
  fill: fill,
  stroke: none,
)[
  #text(..text_style_chip)[#label]
]

#let chips(
  items,
  fill: color_surface_tag,
) = [
  #for item in items [
    #chip(item, fill: fill)
    #h(3pt)
  ]
]

#let key_value(key, value, key_width: key_value_key_column_width) = [
  #panel(fill: color_surface_card, inset: (x: 8pt, y: 4pt), radius: 9pt)[
    #grid(
      columns: (key_width, 1fr),
      column-gutter: 8pt,
      align: (left, horizon),
      [
        #text(..text_style_key)[#key]
      ],
      [#value],
    )
  ]
]

#let header_icon_badge(icon) = box(
  inset: 4pt,
  radius: 999pt,
  fill: color_surface_card,
  stroke: none,
)[
  #image(icon, width: 0.9em)
]

#let header_icon_value(icon, value) = [
  #grid(
    columns: (1.6em, 1fr),
    column-gutter: 0.5em,
    align: (left, horizon),
    header_icon_badge(icon),
    value,
  )
]

#let expertise_block(title, items) = [
  #panel(fill: color_surface_card, inset: 10pt, radius: 10pt)[
    #block(
      width: 100%,
      inset: (x: 8pt, y: 4pt),
      fill: color_surface_expertise_subheader,
    )[
      #text(..text_style_subsection_title)[#title]
    ]
    #v(0.35em)
    #for item in items [
      - #item
    ]
  ]
]

#let narrative_block(title, body) = [
  #panel(fill: color_surface_card, inset: (x: 8pt, y: 6pt), radius: 10pt)[
    #text(..text_style_subsection_title)[#title]
    #v(0.2em)
    #body
  ]
]

#let intro(body) = [
  #panel(
    fill: none,
    stroke: none,
    inset: (top: 14pt, right: 11pt, bottom: 11pt, left: 11pt),
    radius: 6pt,
  )[
    #body
  ]
]

#let section_intro(body) = [
  #panel(
    fill: none,
    stroke: none,
    inset: (top: 8pt, right: 11pt, bottom: 6pt, left: 11pt),
    radius: 6pt,
  )[
    #body
  ]
]

#let project_entry(
  years,
  title,
  technologies: (),
  company: none,
  roles: (),
  practices: (),
  description: none,
  facts: (),
) = [
  #panel(fill: color_surface_card, inset: 8pt, radius: 11pt)[
    #let has_description = description != none and description != ""
    #grid(
      columns: (project_meta_column_width, 1fr),
      column-gutter: 8pt,
      row-gutter: 0pt,
      align: (left, top),
      [
        #block(inset: (bottom: 5pt))[
          #text(..text_style_project_heading)[#years]
        ]
      ],
      [
        #block(inset: (bottom: 5pt))[
          #text(..text_style_project_heading)[#title]
        ]
      ],
      [
        #if company != none [
          #text(..text_style_project_meta)[#company]
        ]
      ],
      [
        #if roles.len() > 0 [
          #chips(roles, fill: color_surface_role_tag)
        ]
        #if roles.len() > 0 and (practices.len() > 0 or technologies.len() > 0) [
          #h(2pt)
        ]
        #if practices.len() > 0 [
          #chips(practices, fill: color_surface_practice_tag)
        ]
        #if practices.len() > 0 and technologies.len() > 0 [
          #h(2pt)
        ]
        #if technologies.len() > 0 [
          #chips(technologies)
        ]
      ],
    )
    #if has_description [
      #v(0.25em)
      #description
    ]
    #if facts.len() > 0 [
      #if has_description [
        #v(0.5em)
      ] else [
        #v(0.25em)
      ]
      #for fact in facts [
        - #fact
      ]
    ]
  ]
  #v(0.4em)
]

/////////
// Header
/////////

#panel(
  fill: none,
  stroke: none,
  inset: (top: 2pt, right: 12pt, bottom: 0pt, left: 12pt),
  radius: 6pt,
)[
  #grid(
    columns: (1.05fr, 1.8fr, 1.05fr),
    column-gutter: 12pt,
    align: (left, horizon),
    [
      #stack(
        dir: ttb,
        spacing: 0pt,
        header_icon_value("icons/email.svg", "a.eletsky@gmail.com"),
        header_icon_value("icons/telephone.svg", "+49-1512-61-33-460"),
        header_icon_value("icons/telegram.svg", [#link("https://t.me/tiendil")[t.me/tiendil]]),
        header_icon_value("icons/location.svg", "Hamburg, Germany"),
      )
    ],
    [
      #align(center + top)[
        #stack(
          dir: ttb,
          spacing: 7pt,
          text(..text_style_header_name)[Aliaksei Yaletski],
          text(..text_style_header_role)[Founding~CTO~·~Engineering~Manager~·~Tech~Lead],
          text(..text_style_header_note)[Get the latest CV here: #link("https://tiendil.org/cv")[tiendil.org/cv]],
        )
      ]
    ],
    [
      #align(left + top)[
        #stack(
          dir: ttb,
          spacing: 0pt,
          header_icon_value("icons/blog.svg", [#link("https://tiendil.org")[tiendil.org]]),
          header_icon_value("icons/github.svg", [#link("https://github.com/tiendil")[github.com/tiendil]]),
          header_icon_value("icons/linkedin.svg", [#link("https://linkedin.com/in/tiendil")[linkedin.com/in/tiendil]]),
        )
      ]
    ],
  )
]

///////
// Body
///////

#intro[
  *Hands-on engineering leader* with two decades of experience. My work centers on building *high‑autonomy teams* with *strong engineering culture* and *product ownership*. I see team structure, processes, and architecture as parts of the product and evolve them together. My technical expertise ranges from deterministic game logic in C++ to cloud-based payment systems in Python, and from code analysis to AI-based systems.
]

#section[Hire Me When]

#grid(
  columns: expertise_columns,
  column-gutter: 4pt,
  row-gutter: 0pt,
  narrative_block(
    "You start a product from zero",
    [I'll bootstrap the team, architecture, and processes so we can validate hypotheses early and scale or pivot with less rework. I'll prototype where needed to inform design decisions.]
  ),

  narrative_block(
    "You need long-term product success",
    [I'll evolve the team, architecture, and processes in line with long-term goals and risks. I'll establish knowledge flow, quality automation, and high-frequency delivery required for sustained growth.],

  ),
)

#section[Work Style]

#grid(
  columns: expertise_columns,
  column-gutter: 4pt,
  row-gutter: 0pt,
  narrative_block(
    "As a manager",
    [
      I foster self-governed, self-regulated, remote-first teams with transparent decision-making and asynchronous workflows.
    ],
  ),
  narrative_block(
    "As a technical leader",
    [
      I stay directly involved in architecture and critical systems, and mentor through shared ownership, design work, and deep code review.
    ],
  ),
)

#section[Work]

#project_entry(
  "2024-2026",
  "Professional sabbatical",
  description: "",
  practices: ("R&D", "Technical Writing"),
  // "FastAPI", "Vue" removed to save a line
  technologies: ("Python", "TypeScript", "Rust", "PostgreSQL", "LLMs"),
  facts: (
    [Created #link("https://feeds.fun/")[Feeds Fun] — a news reader with LLM-based tagging and rule-based ranking (#link("https://github.com/Tiendil/feeds.fun")[repo]).],
    [Completed the #link("https://www.linkedin.com/company/madcrusaderacademy/about/")[World Builders] program for entertainment IP developers; published #link("https://tiendil.org/en/tags/world-builders-2023")[a series of essays].],
    [Refined my management approach through reflection and literature; published #link("https://tiendil.org/en/tags/vantage-on-management")[essays on management].],
    [#link("https://tiendil.org/en/posts/notes-on-coding-agents")[Explored AI coding agents]#text[;] built coding-agent harness tooling: #link("https://github.com/Tiendil/donna")[Donna], #link("https://github.com/Tiendil/depmesh")[DepMesh].],
    [#link("https://tiendil.org/en/posts/rust-the-language-things-get-rewritten-in")[Explored Rust] with an emphasis on game-logic programming and system reliability.],
  ),
)

#project_entry(
  "2022-2023",
  "Multi-provider payments platform for Palta portfolio startups",
  company: link("https://palta.com/")[Palta],
  description: [*Led the design and delivery of a payments platform from concept to production*, covering subscriptions, entitlement management, discounting, unified analytics, admin tooling, SDKs, and resilient payment flows with support for disputes, refunds, provider fallback, and failure recovery.],
  roles: ("Engineering Manager", "Tech Lead"),
  practices: ("Engineering Processes", "Hiring", "Onboarding", "Mentoring"),
  // "React" removed to save a line
  technologies: ("AWS", "Python", "TypeScript", "PostgreSQL", "Redis", "FastAPI"),
  facts: (
    "The solution has been successfully integrated into 3 portfolio companies.",
    "Built and led a remote-first core team of 7 engineers.",
    "Hired, onboarded, mentored, and gradually transferred system ownership to new team members.",
    "Led development from concept to production, ensuring stable operations during the holiday season.",
    [Established #link("https://tiendil.org/en/posts/two-years-writing-rfc-statistics")[an RFC-driven approach for evolving architecture and engineering processes].],
    "Designed resilient payment flows with idempotency, safe retries, provider fallback, and state recovery.",
    "Established a delivery process with multiple releases per week and on-demand feature shipping.",
    [Identified concurrency bugs in major Python libraries (#link("https://github.com/redis/redis-py/issues/2540")[redis-py], #link("https://github.com/psycopg/psycopg/issues/509")[psycopg]), including #link("https://openai.com/blog/march-20-chatgpt-outage")[one that caused an OpenAI outage], and prevented them from affecting our systems.],
  ),
)

#project_entry(
  "2019-2021",
  "Professional sabbatical",
  description: [Read #link("https://tiendil.org/ru/posts/the-results-of-the-sabbatical-2019-2021")[the full report] on my blog.],
  practices: ("Technical Writing", "Game Design"),
  technologies: ("Python", "Julia", "Deep Neural Networks"),
  facts: (
    "Strengthened expertise in advanced backend architecture, code analysis, and quality control.",
    "Refined my game-design approach through reflection on practical experience and literature.",
    "Explored the Julia programming language.",
    "Refreshed mathematical analysis and deep neural network fundamentals.",
    "Published 100+ essays on technology, gamedev, and thinking — longer than the first Harry Potter novel.",
  ),
)

#project_entry(
  "2017-2019",
  [Mobile game #link("https://play.google.com/store/apps/details?id=com.melesta.coffeeshop")[My Cafe] — 50M+ installs as of September 2021],
  company: link("https://melsoft-games.com/")[Melsoft Games],
  description: [*Owned backend architecture and core service development*, modernized legacy systems for scale and stability, served as a key technical advisor on architecture and algorithm design.],
  roles: ("Tech Lead",),
  technologies: ("Linux", "Python", "PostgreSQL", "Redis", "Twisted", "Django", "Graphite", "Prometheus", "Grafana", "Ansible"),
  facts: (
    "Optimized game backend to handle 1.5M RPM (25k RPS) with stable latency and low error rates.",
    "Stabilized server-side payment-processing and analytics logic, reducing payment-related errors to zero.",
    "Implemented scalable profile sharding, reducing database load by an order of magnitude.",
    "Developed support for GDPR on short notice.",
    "Adapted server-side logic for Chinese requirements.",
    "Introduced the practice of writing automated tests.",
    "Together with an analyst, developed a marketing campaign system and an A/B testing system.",
  ),
)

#project_entry(
  "2015-2017",
  "Mobile games Toy Defense 1, 2, and 3",
  company: link("https://melsoft-games.com/")[Melsoft Games],
  roles: ("Tech Lead",),
  practices: ("Hiring", "Onboarding", "Mentoring"),
  description: [*Fully owned the unified backend of 3 games.* As an expert, consulted colleagues on infrastructure, architecture, and algorithmic questions.],
  technologies: ("Linux", "Python", "MySQL", "Redis", "Twisted", "Django", "Fabric", "Graphite", "Grafana"),
  facts: (
    "Resurrected the legacy game backend to an operational state.",
    "Developed a payment service, which was also reused by the neighboring team.",
    "Introduced practices for automated testing, CI/CD, and metrics collection.",
    "Migrated the project from SVN to Git.",
    "Together with an analyst, developed game metrics collection and marketing campaign systems.",
  ),
)

#project_entry(
  "2012-2015",
  "Browser text-based MMO game \"The Tale\"",
  company: link("https://the-tale.org")[The Tale],
  description: [*Developed my own product from scratch*, from prototyping through release, operation, and shutdown. Played all roles, from backend and frontend development to game design, community management, and marketing.],
  roles: ("Founder",),
  practices: ("Engineering Processes", "Team Formation", "R&D", "Game Design", "Marketing", "Monetization", "Community Management", "Volunteer Coordination"),
  // "jQuery" remove to save a line
  technologies: ("Linux", "Python", "JavaScript", "PostgreSQL", "Redis", "RabbitMQ", "Django"),
  facts: (
    "With only a Russian localization, the game reached 90k+ trial players, 30k+ registered players, 2k+ paying players; with up to 5k MAU and 2k DAU at peak.",
    "Assembled a core team and organized volunteers who helped in the development of the game.",
    "Implemented automated quality control, which allowed development without dedicated QA.",
    [Developed advanced procedural generation of #link("https://github.com/the-tale/utg")[Russian text], #link("https://tiendil.org/en/posts/automatic-quests-generator")[quests], and the world map.],
    [Open-sourced #link("https://github.com/the-tale")[the code] and #link("https://tiendil.org/ru/posts/the-tale-lore-cc-by")[the game lore].]
  ),
)

#pagebreak()

#project_entry(
  "2010-2012",
  [Web portal #link("https://worldoftanks.com/")[World of Tanks], meta-game "Clan Wars"],
  company: link("https://wargaming.com/")[Wargaming],
  description: [*Owned the code of the whole web portal*: registration, player & clan profiles, clan management, player statistics, ratings, tournaments, the meta-game for clans, news, i18n, etc.],
  roles: ("Senior Developer",),
  practices: ("Mentoring",),
  technologies: ("Linux", "Python", "JavaScript", "PostgreSQL", "Memcached", "RabbitMQ", "Django", "jQuery"),
  facts: (
    "Together with the team, completely switched the technology stack from client-side C++ to a Python backend and developed the portal for one of the most successful online games.",
    "In 2 years, grew ownership from several subsystems to the entire portal.",
    "Together with a colleague, designed and implemented the GUI for a web-based clan meta-game.",
    "Designed requirements for CAPTCHA and password quality checks and implemented them.",
  ),
)

#project_entry(
  "2009-2010",
  [Real-time strategy game #link("https://en.wikipedia.org/wiki/Order_of_War")[Order of War]],
  company: link("https://wargaming.com/")[Wargaming],
  description: [*Optimized code and developed game logic*, including critical GUI elements.],
  roles: ("Middle Developer",),
  technologies: ("Windows", "C++", "internal game engine"),
  facts: (
    "During probation, doubled command-queue throughput between the game logic and graphics engine.",
    "Designed and implemented core unit-formation UI, central to gameplay and UX.",
  ),
)

#project_entry(
  "2008-2009",
  "Automated migration of Linux systems from physical machines to VMs",
  company: link("https://www.itransition.com/")[Itransition],
  description: [*Implemented automatic virtual-hardware configuration* according to physical-machine specs.],
  roles: ("Middle Developer",),
  technologies: ("Linux", "Perl", "C", "Xen", "VMware"),
  facts: ("Introduced practices of automated testing.",),
)

#project_entry(
  "2007-2008",
  "GUI for VoIP telephone",
  company: link("https://www.itransition.com/")[Itransition],
  roles: ("Junior Developer",),
  technologies: ("Windows", "C++", "wxWidgets"),
)

#section[Education]

#panel[
  *2004-2009 --- Specialist (equivalent to an MSc), Systems Engineering* \
  Belarusian State University of Informatics and Radioelectronics \
  Department of Artificial Intelligence, Faculty of Information Technologies and Control
]

#section[Languages]

#key_value("Russian", "native", key_width: 40pt)
#key_value("English", "fluent", key_width: 40pt)

#section[Code examples]

#key_value([#link("https://github.com/Tiendil/feeds.fun")[tiendil/feeds.fun]], "News reader with LLM-based tagging and rule-based ranking.")

#section[Interesting Facts]

#panel[
  - All em dashes in this CV are human-made.
  - Won a second diploma (3rd place) in the quarter-final of ACM ICPC Western Subregion 2006.
  - I regularly publish #link("https://tiendil.org")[long-form essays] about complex topics I have studied and questions where I have a strong opinion.
]

/////////
// Footer
/////////

#v(0.35em)
#line(length: 100%, stroke: 0.5pt + color_footer_line)
#align(left)[#text(..text_style_footer)[Updated on #updated_on]]
