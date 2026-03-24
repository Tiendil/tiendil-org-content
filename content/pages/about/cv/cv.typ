////////////
// Constants
////////////
#let color_link = rgb("#0000EE")
#let color_footer_line = rgb("#CFD7E2")
#let color_footer_text = rgb("#566171")

#let text_style_base = (
  font: "Liberation Serif",
  size: 11.2pt,
)
#let text_style_link = (
  ..text_style_base,
  fill: color_link,
)
#let text_style_section_title = (
  ..text_style_base,
  size: 16.5pt,
  weight: 400,
)
#let text_style_header_name = (
  ..text_style_base,
  size: 22pt,
  weight: 400,
)
#let text_style_footer = (
  ..text_style_base,
  size: 7.8pt,
  fill: color_footer_text,
)
#let updated_on = datetime.today().display("[month repr:long] [day], [year]")

///////////
// Document
///////////
#set page(
  paper: "a4",
  margin: (top: 10mm, right: 12mm, bottom: 10mm, left: 12mm),
)

#set text(..text_style_base)

#set smartquote(enabled: false)

#set par(
  justify: false,
  leading: 0.7em,
  spacing: 0.48em,
)

#set list(
  tight: true,
)

#show link: set text(..text_style_link)

#let section(title) = [
  #v(0.35em)
  #text(..text_style_section_title)[#title]
  #v(0.2em)
]

#let key_value(key, value) = [
  #block(width: 100%)[*#key:* #value]
]

#let icon_value(icon, value) = [
  #grid(
    columns: (0.8em, 1fr),
    column-gutter: 0.25em,
    align: (left, horizon),
    image(icon, width: 0.8em),
    value,
  )
]

#let project_entry(
  years,
  title,
  technologies: (),
  company: none,
  roles: (),
  description: none,
  facts: (),
) = [
  #block[
    #grid(
      columns: (19%, 81%),
      column-gutter: 8pt,
      [
        *#years*
        #linebreak()
        #if company != none [
          #company
          #linebreak()
        ]
        #for role in roles [
          #role
          #linebreak()
        ]
      ],
      [
        *#title*
        #linebreak()
        #if description != none [
          #description
          #linebreak()
        ]
        *Technologies:* #technologies.join(", ")
        #if facts.len() > 0 [
          #for fact in facts [
            - #fact
          ]
        ]
      ],
    )
  ]
  #v(0.45em)
]

/////////
// Header
/////////

#grid(
  columns: (0.88fr, 2.22fr, 0.9fr),
  column-gutter: 10pt,
  [
    #stack(
      dir: ttb,
      spacing: 6pt,
      icon_value("icons/email.svg", "a.eletsky@gmail.com"),
      icon_value("icons/telephone.svg", "+49-1512-61-33-460"),
      icon_value("icons/blog.svg", [#link("https://tiendil.org")[tiendil.org]]),
    )
  ],
  [
    #align(center)[
      #stack(
        dir: ttb,
        spacing: 6pt,
        text(..text_style_header_name)[Aliaksei Yaletski],
        [CTO | Board Advisor | Eng. Manager | R&D Lead],
        [CV Link: #link("https://tiendil.org/en/cv")[tiendil.org/en/cv]],
      )
    ]
  ],
  [
    #align(left)[
      #stack(
        dir: ttb,
        spacing: 6pt,
        icon_value("icons/github.svg", [#link("https://github.com/tiendil")[github.com/tiendil]]),
        icon_value("icons/linkedin.svg", [#link("https://linkedin.com/in/tiendil")[linkedin.com/in/tiendil]]),
        icon_value("icons/telegram.svg", [#link("https://t.me/tiendil")[t.me/tiendil]]),
      )
    ]
  ],
)

///////
// Body
///////

#section[Summary]

- Seventeen years in software development, 13 in gamedev, 9 in top gamedev companies.
- Specialize in solving atypical tasks, bringing order, backend development.
- Fast learner. Not tied to specific technologies. Could easily switch to the most suitable for a project.
- I am familiar with most roles and always play several, selecting them based on the project's needs.
- I actively develop experimental pet projects, see GitHub.
- Write essays about books, technologies, and thinking techniques in the #link("https://tiendil.org/en")[blog].
- Interest in systems engineering, AI, code analysis, procedural content generation, game design.

#section[Skills]

#key_value("Programming languages", "Python, JavaScript, TypeScript, C++, C")
#key_value("Clouds", "AWS")
#key_value("Databases and similar soft", "PostgreSQL, MySQL, Redis, Graphite, Prometheus, BigQuery, RabbitMQ")
#key_value("Libraries, frameworks", "FastAPI, Django, Twisted, AIOHTTP, jQuery, Vue.js, Ansible")
#key_value("Infrastructure", "Linux, Docker, Git, Jira, Confluence, GitHub, GitLab")
#key_value("Other", "algorithmic base, business analysis, technical writing, devops")
#key_value("Languages", "English, Russian")

#section[Code examples]

#key_value("Feeds Fun", [#link("https://github.com/Tiendil/feeds.fun")[github.com/Tiendil/feeds.fun]])
A news aggregation service with tags and ChatGPT.
#key_value("Smart Imports", [#link("https://github.com/tiendil/smart-imports")[github.com/tiendil/smart-imports]])
Automatically discovers & imports entities used in the currently imported Python module.

#section[Work]

#project_entry(
  "2024-…",
  "Self-employed / sabbatical",
  description: "Formalize experience, learn, prototype, work on hobby projects.",
  technologies: ("Python", "TypeScript", "LLM", "gamedev"),
  facts: ("A detailed report will appear after the vacation is over",),
)

#project_entry(
  "2022-2023",
  "Vertical payment solution for child startups",
  company: link("https://palta.com/")[Palta],
  roles: ("Engineering Manager", "Tech Lead"),
  description: "Accepting payments from a multitude of payment services, subscriptions, management of purchased entities, unified analytics, discounts, admin panels, SDKs, smart payment processing: disputes, refunds, fallbacks, error recovery, etc.",
  technologies: ("AWS", "Lambdas", "Python", "FastAPI", "PostgreSQL", "Redis", "Docker"),
  facts: (
    "Led the project's development from an empty repository to successful passage of the holiday season in production with all features.",
    "Helped the core team grow from 3 to 7 people.",
    "Mentored colleagues and transferred my responsibilities as they became ready.",
    [Laid and maintained the architecture, processes (for example, #link("https://tiendil.org/en/posts/two-years-writing-rfc-statistics")[writing RFCs]), which allowed us to move forward without stops.],
    "Achieved excellent service quality with only one QA specialist.",
    [Found bugs in top Python libraries, including #link("https://openai.com/blog/march-20-chatgpt-outage")[a bug that broke OpenAI], but did not break us.],
    "Super resilient architecture allowed tracking of all payment processing steps, recovering processing from any step when problems arose.",
    "Successfully combined coding with managerial duties throughout the work period.",
  ),
)

#pagebreak()

#project_entry(
  "2019-2021",
  "Self-employed / sabbatical",
  description: "Knowledge formalization. Studied, prototyped, worked on hobby projects.",
  technologies: ("Python", "Julia", "web development", "gamedev", "deep learning"),
  facts: (
    [You can find the full report in the blog: #link("https://tiendil.org/ru/posts/the-results-of-the-sabbatical-2019-2021")[tiendil.org/ru/posts/the-results-of-the-sabbatical-2019-2021] (Russian).],
    "Publish more than 100 essays about technologies, game design, thinking. Total size greater than first Harry Potter novel.",
  ),
)

#project_entry(
  "2017-2019",
  [Mobile game #link("https://play.google.com/store/apps/details?id=com.melesta.coffeeshop")[My Cafe]. More than 50M installs in Google Play as of September 2021.],
  company: link("https://melsoft-games.com/")[Melsoft Games],
  roles: ("Tech Lead",),
  description: "Was responsible for the code and architecture of services. Adapted old code for the growing load. Was consulting colleagues on architecture and algorithm design questions.",
  technologies: ("Linux (Ubuntu)", "Python", "Twisted", "Django", "PostgreSQL", "Redis", "Graphite", "Prometheus", "Grafana", "Ansible", "Docker"),
  facts: (
    "In 2019 servers were holding 1.5M RPM.",
    "Developed scalable profiles sharding, which by an order of magnitude reduced the load on the database.",
    "Stabilized server-side payments logic.",
    "ASAP developed the GDPR law support service.",
    "Adapted server-side logic to China requirements.",
    "Introduced the practice of writing unit tests.",
    "Together with the analyst, we set up the marketing campaigns system and developed the A/B tests system.",
    "QAs were grateful for the quality of my comments on the tasks.",
  ),
)

#project_entry(
  "2015-2017",
  "Mobile game Toy Defense 1, 2, 3",
  company: link("https://melsoft-games.com/")[Melsoft Games],
  roles: ("Team/Tech Lead",),
  description: "Was responsible for all server-side of product. Was consulting colleagues on infrastructure, architecture, and algorithms questions.",
  technologies: ("Linux (Ubuntu)", "Python", "Twisted", "Django", "MySQL", "Redis", "Fabric", "Graphite", "Grafana"),
  facts: (
    "Returned server in a state suited to operation.",
    "Developed the payment service, which was also integrated into another product.",
    "Implemented automated testing, provisioning, deployment, continuous delivery.",
    "Actualized technologies, implemented metrics collection, switched the project to git & git-flow.",
    "Together with the analyst, we developed statistics collections and the marketing campaigns system.",
    "Prepared the project for decommissioning.",
  ),
)

#project_entry(
  "2012-2015",
  "Text-based MMO \"The Tale\"",
  company: link("https://the-tale.org")[The Tale],
  roles: ("Co-Founder", "Product Manager", "Developer", "Game Designer", "Community Manager"),
  description: "Assembled a team. Developed own product from scratch. Went all the way from prototyping to release and maintenance.",
  technologies: ("Linux (Ubuntu)", "Python", "JavaScript", "PostgreSQL", "Redis", "RabbitMQ", "Django", "jQuery"),
  facts: (
    [Developed advanced procedural generation of #link("https://github.com/the-tale/utg")[Russian text] (probably, best), quests, world map.],
    "Implemented quality control through full automatic testing.",
    "Organized a team of volunteers who helped in the development and support of the game.",
    [Project is open source: #link("https://github.com/the-tale")[github.com/the-tale]],
    [Game statistics are open too: #link("https://the-tale.org/statistics")[the-tale.org/statistics]],
  ),
)

#pagebreak()

#project_entry(
  "2010-2012",
  [Web portal #link("https://worldoftanks.com/")[World of Tanks], meta-game "Clan Wars"],
  company: link("https://wargaming.com/")[Wargaming],
  roles: ("Senior Developer",),
  description: "With the team, completely switched the technology stack and developed the portal for one of the most successful online games: registration, players & clans profiles, clans management, statistics, ratings, tournaments, the meta-game for clans, news, i18n, etc.",
  technologies: ("Linux (CentOS)", "Python", "JavaScript", "PostgreSQL", "Memcached", "RabbitMQ", "Django", "jQuery"),
  facts: (
    "Switched from client-side C++ to web development on Python in 2 months.",
    "Implemented players & clans profiles, clans management, ratings, etc.",
    "Together with the colleague, we designed and implemented GUI for \"Clan Wars\".",
    "Designed requirements for captcha and passwords quality checks and implemented them.",
    "In 2012 was responsible for the code of the entire portal.",
  ),
)

#project_entry(
  "2009-2010",
  [Real-time strategy game #link("https://en.wikipedia.org/wiki/Order_of_War")[Order of War]],
  company: link("https://wargaming.com/")[Wargaming],
  roles: ("Middle Developer",),
  description: "Optimized code, developed game logic, GUI.",
  technologies: ("Windows", "C++", "internal game engine"),
  facts: (
    "During the trial period, accelerated the processing cycle of commands for changing the state of the graphics subsystem by two times.",
    "Developed a friendly and stable GUI for managing unit formations. The game was released on CDs, and stability was essential.",
  ),
)

#project_entry(
  "2008-2009",
  "Automated migration of Linux systems from physical machines to VMs.",
  company: link("https://www.itransition.com/")[Itransition],
  roles: ("Middle Developer",),
  description: "Implemented automatic configuration of the virtual hardware according to the specs of the physical hardware.",
  technologies: ("Linux", "Perl", "C", "Xen", "VMWare"),
  facts: ("Introduced the test automation practices.",),
)

#project_entry(
  "2007-2008",
  "GUI of VoIP telephone",
  company: link("https://www.itransition.com/")[Itransition],
  roles: ("Junior Developer",),
  technologies: ("Windows", "C++", "wxWidgets"),
)

#section[Education]

*2004-2009 --- Specialist (equivalent to an MSc), Systems Engineering* \
Belarusian State University of Informatics and Radioelectronics \
Department of Artificial Intelligence, Faculty of Information Technologies and Control

#section[Achievements]

- #link("https://archiveprogram.github.com/")[Arctic Code Vault Contributor] on Github.
- Second diploma (3rd place) in the ¼ final of ACM Western Subregion 2006.

/////////
// Footer
/////////

#v(0.35em)
#line(length: 100%, stroke: 0.5pt + color_footer_line)
#align(left)[#text(..text_style_footer)[Updated on #updated_on]]
