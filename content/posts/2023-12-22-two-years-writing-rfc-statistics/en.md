
---
title = "Two years writing RFC — statistics"
tags = [ "thinking", "practice", "development", "reflection", "systems", "theory",]
published_at = "2024-04-15T12:00:00+00:00"
description = "Statistics for two years of practicing writing RFC in the team. With notes on the correlation of metrics with the dynamics of the team."
seo_image = "images/two-years-writing-rfc-statistics-rfc-count-per-year.png"
---

/// brigid-images
src = "images/two-years-writing-rfc-statistics-rfc-count-per-year.png"
alt = "The number of RFCs over two years"
///

Slightly more than two years ago, I became a Lead/Engineering Manager for Palta's payment team. I left the company at the end of 2023 for another [subbatical]{post:@choose-nearest-language:the-results-of-the-sabbatical-2019-2021}.

It is time to sum up. I will start with my favorite initiative.

From the first month, I promoted the idea of preceding major changes with text documents — [RFC](https://en.wikipedia.org/wiki/Request_for_Comments) — Request for Comments.

In this post, I will analyze two years of applying this practice to share the experience, summarize the results, and have convincing arguments for my next job.

<!-- more -->

## What is RFC, what do they look like, and why are they needed

The RFC concept is quite well known by engineers, but it is not precisely defined. Everyone understands it in their own way.

So, for beginning, I will briefly outline my vision, which is based on several postulates:

- People's comfort is more important than formalities.
- Most developers do not make Google, most companies are not the size of Google, etc. Most of us are not responsible for people's lives and health.
- It is more convenient to work in small teams.
- Therefore, we can work simpler.

### Request For Comments vs Request For Change

People interpret the abbreviation RFC differently:

- Request for Comments
- Request for Change

I prefer the first variant because it is broader and less demanding on developers.

When a developer writes a "request for change," he/she formally signs it "with their own blood," which is not always possible and can be uncomfortable. Preparing such a document takes more time, and the potential profit may not exceed the costs.

By requesting comments, an author can relax a little and allow themselves to make mistakes. Therefore, a developer can be more creative and prepare an RFC faster. Yes, something may be missed, but such errors can be caught during document discussions or even in later stages of development.

### Document structure

The most famous documents of this kind: [classical RFC](https://en.wikipedia.org/wiki/Request_for_Comments), [Python Enhancement Proposal](https://en.wikipedia.org/wiki/Python_(programming_language)#Development), and others — are very formal. It is understandable, more responsibility leads to more formalities. Writing internet standards or changing a programming language is no joke.

But we, although we are a payment team, are not responsible for the future of all humanity and do not have hundreds of stakeholders. Therefore, RFCs were initially introduced without a fixed structure. The main criterion was "the readers should understand the document".

We discussed several times the formalization of the RFC structure. We agreed that on our scale, the harm from tightening the screws would be greater than the benefit.

In fact, after some practice, the general structure was applied without explicit standardization. Teammates look at each other's documents and adopt the best practices, but there is no requirement to follow a specific form.

For example, I am a little obsessed with the formal structure, but I do not require this from others. Quick preparation of structured documents is a separate skill that not everyone has, and not everyone wants to develop it. We should not force people to learn such skills unless they absolutely need them.

### Examples of RFC topics

The topics of our RFC were limited to four themes: architecture, processes, analysis, and planning. Later in the post you will see a lot of plots with these themes, but for now, just a few real RFC titles to avoid being unfounded:

- The architecture of our fraud prevention system
- Synchronization of subscriptions changes
- Metrics
- Architecture vision
- Comments on OKRs for Q1/23
- Requirements for a project management tool
- Testing and test process
- Review & better classification of technical tasks
- Open questions about work processes

### Why RFC are helpful

In short, this is the practice of [thinking through writing](post:@choose-nearest-language:thinking-through-writing) at the team level. Read the text at the link if you want to dive deeper into the topic.

**Each activity should leave an artifact.** RFC is an artifact of the mental work that all developers do, but almost never save the results. This leads to loss of a lot of work over time — it fades from memory. RFCs save these results.

**By transferring thoughts into text, a person verifies their [mental models](post:@choose-nearest-language:life-and-work-with-models).** Even the fact of writing down thoughts improves understanding of the task, reveals errors, and so on.

**Cheap knowledge base.** Cheap because RFCs do not need to be kept up to date, like regular documentation. At the same time, they remain useful and relevant. This is the history of the project's development, that is very convenient when you have to deal with technological archeology.

**Knowledge exchange.** It is not always possible to quickly transfer developers between parts of the project so that they share knowledge in practice. This is expensive. Discussing RFCs allows team members to share basic knowledge about the project.

**Fast feedback.** The sooner you find a mistake, the cheaper it is to fix it. RFCs allow you to find problems before they are transferred to a code, which is very cheap.

**Simplifies onboarding.** A new employee can be sent to read the RFCs in order, and after that, they will more or less understand what is happening and what path the project has taken.

**Asynchronous discussions** (chats, forums, comments) are more effective than synchronous (meetings). I have not yet met a person who could immediately discuss complex things in real time. I can't do it either. Asynchronous communication not only improve discussions but also do not break the day of developers, which is very important — they stay in their flow.

## Introduction to collected statistics

In the following text there will be several parts with graphs. At the beginning of each part there will be an introduction: what is shown, what the graphs indicate, etc.

But first, a few notes on the data and the collection method:

- I am the initiator of the practice and I analyzed it myself. Some distortions are inevitable, take this into account.
- We keept the documentation in Notion. To get some data, I had to export the documents as HTML and parse them. The code was checked, but even the best make mistakes.
- For some documents, it was difficult to determine the author: was it a full collaboration or one person made the document template and the other filled it in. In this case, I tried to determine the main author from memory.
- I determined the topic of the RFC and the document status according to my expert opinion and memory. The history is only for two years, the documents are quite clear, everything has passed through me, so there should be no significant inaccuracies. But I could make a couple of typos in the table on which the graphs were built.
- The data is maximally anonymized. No names, nicknames, titles, etc. Only numbers and graphs. The project is alive, tied to money. I don't want to deal with unnecessary approvals
- The statistics were collected exactly for two calendar years. During this time, both the team and the project changed. This should be taken into account. Also, it is visible in the graphs.
- The core team grew from 3 to 7 people. At the end of the year, there are 19 people on the team's Slack channel, all of them can be considered stakeholders of the practice. Most of them participated in the discussion of at least one document.

## Statistics

### The dynamics of RFC preparation

- A total of 76 RFCs were prepared.
- The number of RFCs in the first year is twice as high as in the second. The first year was about laying the groundwork, the second was about tuning and implementing more business tasks.
- The dynamics of the number of RFCs per quarter shows how the development gained momentum, reached its peak in the third quarter of the first year, after which the number of major changes began to gradually decrease. I think they will remain at the level of 3 +/- 1 RFC per quarter.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-per-year.png"
alt = "The number of RFCs over two years."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter.png"
alt = "The number of RFCs per quarter."
///

### Author breakdown

- The statistics are anonymous. Names are replaced with letters. If you are from my team, write me a direct message, I will give you a decryption.
- You can guess that `A` is me — the author with the most of the RFCs. Firstly, I was the lead. Secondly, you can only introduce practices by your own example.
- It was pleasantly surprising that only a third of the RFCs are created by me. I thought it would be about a half.
- The breakdown of authors per year shows how the team had changed. New people came, someone left.
- Everyone wrote RFC. In most cases, the first RFC document is prepared during the probationary period. We try to provide an opportunity to do something significant during this period.
- On annual graphs, you can see that all team members participate in the RFC preparation approximately equally. With a correction for spikes, which are typical for a small sample: at one time we actively work on one part of the project with one team member as an expert, at another time — on another part with another team member as the leader of development.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-author.png"
alt = "The number of RFCs for each author."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-author.png"
alt = "The number of RFCs for each author per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-author-percents.png"
alt = "The share of RFCs for each author per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-author.png"
alt = "The number of RFCs for each author per quarter."
///

### Relevance of documents

We had not updated RFCs — they are history. Therefore, from a historical point of view, all of them are relevant.

But still, they can be divided by their reflection on the current state of the project (at the time I left).

I identified 4 states:

- `applied` — at least part of the RFC has been applied to the project in some form. It is now in the code or in the processes.
- `planned` — the RFC had been discussed by the team, approved, but not yet applied due to other planning priorities. Usually these are some major changes in the architecture that do not need to be done right now, but need to be prepared for.
- `applied & deprecated` — the changes were applied, but then completely removed. For example, they did not work, or the project concept changed.
- `not applied & deprecated` — discussed, but not approved. Or planned, but then the planes changed.

Observations:

- Most of the RFCs are applied and actual.
- Completely "useless" RFCs are about 13%. In my opinion, this is a good sign — we were discussing what we needed. And what we didn't need — we didn't discuss.
- The further into the past, the more `deprecated` RFCs. The closer to the present, the more `planned` RFCs. It looks logical.
- You can notice that Q3/22 was especially rich in unused RFCs. This correlates well with the changes in plans and the team that occurred in Q4/22.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-state.png"
alt = "The number of RFCs by relevance."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-state.png"
alt = "The number of RFCs by relevance per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-state-percents.png"
alt = "The share of RFCs by relevance per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-state.png"
alt = "The number of RFCs by relevance per quarter."
///

### RFCs by the share of research work

Most of RFCs require some research. But I was interested in dividing the documents by the effort spent on research:

- `no research` — just sat down and wrote a document from experience.
- `with research` — collected data, talked to people, did analysis and only then synthesized the result.

Notes:

- We didn't do much deep research, especially in 2022. There was more research in 2023.
- I connect this with the fact that in 2022 the team was small, we had to work hard, the processes had not yet been established, people had not yet used to each other. In 2023, we solved a lot of problems, improved work, and were able to spend more time on research.
- Most of the business planning is outside the team. I didn't like it, but that's how it was. Therefore, for example, we didn't choose services to integrate with. We digged where business said :-)

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-research.png"
alt = "The number of RFCs by research effort."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-research.png"
alt = "The number of RFCs by research effort per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-research-percents.png"
alt = "The share of RFCs by research effort per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-research.png"
alt = "The number of RFCs by research effort per quarter."
///

### Distribution by topics

As I mentioned, we had four topics for RFC: architecture, processes, analysis (of the current state of something), and planning. This list is not given from above, we did not discuss it — these are things that we considered necessary to write about.

RFC can cover several topics. For example, an analysis of project indicators, a proposal to change the architecture, and planning of implementation. Therefore, there are more than four segments on the charts.

What can be seen:

- About 80% of RFCs are devoted to architecture. No wonder — we are programmers.
- About 21% are about processes. When to merge, how to test, how to work with configs, how to create tasks, etc.
- About 15% are analysis. For example, after the first six months of development, I prepared the description of the project status, risks, dynamics, etc.
- About 8% are planning. What to do and why.
- In the second year, the number of RFCs about architecture are decreased, and the number of all other topics are increased. This is due to the growth and restructuring of the team, the establishment of the project.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-meta-thematics.png"
alt = "The number of RFCs by meta topics."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-thematics.png"
alt = "The number of RFCs by topics."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-thematics.png"
alt = "The number of RFCs by topics per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-thematics-percents.png"
alt = "The share of RFCs by topics per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-thematics.png"
alt = "The number of RFCs by topics per quarter."
///

### The number of questions per RFC

Notion allows comments in documents. Here is an analysis of the number of discussion threads per document. Each discussion can contain several comments. You can interpret it as a lower estimation of the amount of questions to an RFC.

Notes:

- Notion allows commenting on a part of the document (highlighted text). One highlight is considered one discussion — one question.
- Notion allows commenting on the entire document (a separate block in the header). The entire block is considered as one discussion/question, as it is impossible to automatically determine the number of questions in it.

Observations:

- A quarter of the documents are without discussions. This does not mean that they were not discussed. The discussion could have taken place during a call or in Slack. But there are also some simple clear documents that just need to be done and receive an "ok" from the team.
- The number of documents without discussions in 2023 is twice as low as in 2022 (15% vs 30%). With time, the team got involved into the practice.
- About 50% of RFCs have more than three discussions. About 25% have more than eight. Each discussion is a closed risk, a found error, a knowledge shared. Short feedback loops work.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-comment-threads.png"
alt = "The number of RFCs by comment threads."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comment-threads.png"
alt = "The number of RFCs by comment threads per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comment-threads-percents.png"
alt = "The share of RFCs by comment threads per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-comment-threads.png"
alt = "The number of RFCs by comment threads per quarter."
///

### The number of comments per RFC

A similar analysis, but this time we look at the number of comments in discussions. This is a more accurate metric of the activity of the team in the discussion of RFCs.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-comments.png"
alt = "The number of RFCs by comments number."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments.png"
alt = "The number of RFCs by comments number per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments-percents.png"
alt = "The share of RFCs by comments number per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-comments.png"
alt = "The number of RFCs by comments number per quarter."
///

### The number of comments per discussion

Observations:

- There are no long discussions in the comments. Either everything was clear, or we switched to a call or chat.
- In the second year, discussions became more specific. There were more discussions with comments, but fewer discussions with many comments. I think we partially learned how to discuss, partially the questions became more grounded: less philosophy and abstractions, more facts and practical questions.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-comments-per-discussion.png"
alt = "The number of RFCs by comments per discussion."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments-per-discussion.png"
alt = "The number of RFCs by comments per discussion per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-comments-percents-per-discussion.png"
alt = "The share of RFCs by comments per discussion per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-comments-per-discussion.png"
alt = "The number of RFCs by comments per discussion per quarter."
///

### The number of participants in discussions

The number of people who wrote at least one comment to the RFC. Excluding the author.

- The share of RFCs without discussion participants is slightly higher than the share without discussions. It is because the author sometimes theyself wrote a comment or a question to their text. This question may not be answered in Notion.
- Some RFCs are discussed by a subgroup of the team — only by interested people. In my opinion, this is normal. There is no need to distract everyone from work and waste people's time. In most cases, responsible/interested people come to the discussion themselves.
- More than half of the RFCs are discussed by three or more people. This is good. It means that several pairs of eyes verified the text and understod it enough to ask a question. Therefore, risks were reduced, knowledge is shared.
- Most of the RFCs are discussed inside the team, but sometimes we invite people from outside
- More people participated in the discussions in 2023. I believe this is due to the growth of the team and the establishment of the practice.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-participants.png"
alt = "The number of RFCs by discussions participants."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-participants.png"
alt = "The number of RFCs by discussions participants per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-year-participants-percents.png"
alt = "The share of RFCs by discussions participants per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-rfc-count-by-quarter-participants.png"
alt = "The number of RFCs by discussions participants per quarter."
///

### The participation of people in writing RFC in the breakdown by people

- By analogy with the first graphs, `A` is me.
- Most of the team members wrote nearly the same amount of RFCs, except me :-)

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-members-author-of-rfcs.png"
alt = "The number of RFCs per authors per year."

[[images]]
src = "images/two-years-writing-rfc-statistics-members-author-of-rfcs-percents.png"
alt = "The share of RFCs per authors per year."
///


### Participants in discussions in the breakdown by people

- By analogy with the first graphs, `A` is me.
- In the second year, there were less RFCs, but everyone was more involved in their discussion.
- You may notice that there are significant changes in the team and the project.

/// brigid-images
galery_class = "brigid-images-1-in-row"

[[images]]
src = "images/two-years-writing-rfc-statistics-members-participated-in-rfc.png"
alt = "The number of RFCs per discussions participants."

[[images]]
src = "images/two-years-writing-rfc-statistics-members-participated-in-rfc-percents.png"
alt = "The share of RFCs per discussions participants."
///

## Conclusions

The introduction of RFC was a big experiment for me. I knew that the practice would work for me personally and that, in theory, thinking through writing should work for everyone. But there was no certainty that the team would accept the practice and that the results would be positive.

In fact, it was a leap of faith for me.

In my opinion, the experiment was successful:

- The team accepted the practice: everyone wrote and discussed RFCs.
- Knowledge sharing is working.
- Fast feedback is working.
- Asynchronous discussions are working.

Unexpectedly, the statistics on RFCs well reflect the state of the team and the project, their dynamics. Next time I will try to make it a metric of the team's health.

But their is a question: how will the practice continue without me? Since I was the lead, I often initiated the writing of RFCs, in the spirit of "this question is too complex for an oral discussion, let's prepare an RFC". Therefore, it is not clear whether the team will write RFCs without my push. In a year, I will catch someone and ask how things are going. Or maybe I will ask for temporary access to the texts.
