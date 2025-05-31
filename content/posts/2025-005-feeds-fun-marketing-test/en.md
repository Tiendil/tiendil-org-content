---
title = "Feeds Fun: marketing test — or how I blew 650 euros."
tags = [ "practice", "development", "monetization", "business", "feeds-fun"]
published_at = "2025-05-31T12:00:00+00:00"
seo_description = "I ran a marketing test for Feeds Fun. Here are the results and conclusions."
seo_image = "cover.jpg"
---

<!-- This is a ongoing translation from Russian to English -->

/// brigid-images
src = "cover.jpg"
alt = "One of the images I used in the test advertisement for Feeds Fun on Reddit."
///

Since [Feeds Fun](https://feeds.fun) has been in production for a long time and provides some value to users, I decided to run a test advertisement campaign to understand the viability of monetizing the project in its current state.

/// note | Reminder
[Feeds Fun](https://feeds.fun) is a news reader that automatically assigns tags to each news item using LLM. Users can create rules that evaluate news based on tags. For example, `nasa + fake-news -> -50`. This allows for filtering and sorting news, enabling you to read only the most relevant ones.

The project is open-sourced: [github.com/Tiendil/feeds.fun](https://github.com/Tiendil/feeds.fun).
///

It turns out that one does not simply launch advertisements on modern platforms: one needs to implement GDPR support, a user agreement, a privacy policy, cookie consent, event/metric tracking, improve the GUI, create an acceptable landing page, and so on. The work spanned almost half a year (in the background, of course, not full-time), but in the end, I implemented everything, designed the experiment, and am now ready to share the results with you.

<!-- more -->

## Goals of the experiment

The primary goal is to assess how realistic it is to achieve positive unit economics with paid traffic in the current state of the project.

The secondary goal is to test a number of hypotheses about potential users that guided me during development.

### Questions I wanted to answer

1. How will the metrics of paid traffic look without tuning:
    1. How much can one registration cost?
    2. How much can one click cost?
    3. How much can it cost to attract one subscriber / one purchase?
2. How interested is each target group in Feeds Fun? See groups below.
    1. Which group will convert better into registrations?
    2. What will the funnels look like for each group?
    3. Which group will show the best retention?
3. Do the public news collections help pushing visitors towards registration?
4. How to position Feeds Fun? What message to focus on? See below for positioning.

/// note | Public collections
Currently, there are two public news collections that are always tagged:

- [Scientific Papers](https://feeds.fun/show/scientific-papers) — all the latest papers from arXiv.
- [Entrepreneurship & Startups](https://feeds.fun/show/entrepreneurship) — all the latest news from subreddits about business and some other channels.

The hypothesis was that public collections would help users in understanding what Feeds Fun is without registration, thus nudging them towards registration when users see the benefits.
///

## Strip down the questions by dimensions

I was able to break down the original questions into features along three dimensions:

- groups of users;
- message;
- focus of the tool.

This allowed me to make the experiment more structured and understandable; it created a measurement lattice through which one can look not only at the results of specific ads/groups but also at supergroups. For example, to observe user behavior independently of the ads message, or user behavior on a specific message independently of the group.

### Groups of users

I always intended Feeds Fun to be a tool for professionals, because regular users, if they want to manage their news feed, do not need such deep and detailed control. Plus, I needed exactly such a tool, which eventually turned out.

But targeting professionals in a broad sense is not very convenient. Therefore, I always has in mind two groups that should be particularly interested in Feeds Fun: scientists and entrepreneurs.

For the purpose of the experiment, I added a third group — news readers. It would be strange not to check their behavior for a product that is designed for news consumption.

As a result, I ended up with three groups:

- Scientists — people who work in science or follow scientific news.
- Entrepreneurs — people who are engaged in business, startups, or follow business news.
- News readers — people who simply read a lot of news.

### Message

In addition to user groups, I wanted to clarify how to convey to people the value of Feeds Fun — what to emphasize in advertising and in communication with users.

After some reasoning, I identified three groups of focal messages, each with two messages:

- Functionality:
    - news with tags;
    - scoring news by tags/rules;
- Value:
    - saving time on reading news;
    - reading only the most important/interesting news;
- Emotions:
    - being smarter: reading news in a smart way;
    - control: understanding why you read these news and not others.

### Focus of the tool

I did not plan to add this dimension initially, but the first run of the experiment showed too poor results, and I had to figure out what went wrong.

I hypothesized that the reader was positioned too abstractly and tried replacing parts of the text messages from "News reader" to "RSS reader".

The second run showed significantly better results, so an additional dimension appeared in the experiment:

- Feeds Fun is a news reader/
- Feeds Fun is an RSS reader/
- Feeds Fun is a collection of tagged news/

You can notice that question 3 from the goals of the experiment neatly fits into this dimension.

## Experiment design

### Restrictions

I had two main restrictions for the experiment.

Firstly, I am not a marketer, designer, or copywriter, so I would not be able to create really cool professional advertising artifacts anyway. Therefore, I tried to keep them simple and straightforward.

Secondly, the budget. Running ads is expensive. Especially if you want to get reliable results. After a quick estimate, I planned to spend about 500 EUR. Because of the restart of the experiment in the middle, I ended up spending 650 EUR.

### Target platform

I chose Reddit as the platform for the campaign because:

- I used it before when conducting [a survey of player preferences in strategy games](post:making-a-fictional-universe-quantity-survey-cleaning).
- Reddit has very straightforward and clear targeting — you can select specific subreddits that match the target user groups.
- I am active on Reddit and see a positive reaction to Feeds Fun posts, so I felt that Reddit is a suitable platform.
- I generally have no clear vision of the modern advertising landscape, so I have no criterias for rejecting Reddit in favor of other platforms.

### Targeting

For each group of users, I selected 1-2 most popular thematic subreddits:

- Scientists: [r/Science](https://www.reddit.com/r/science/)
- Entrepreneurs: [r/Entrepreneur](https://www.reddit.com/r/entrepreneur/) & [r/Startups](https://www.reddit.com/r/startups/)
- News readers: [r/worldnews](https://www.reddit.com/r/worldnews) ([r/news](https://www.reddit.com/r/news/) was not suitable because it has a noticeable bias towards US local news).

Devices: only Desktop, as the reader interface is designed specifically for it.

Geography: any. Ideally, I should have made several hypotheses about the users' locations, but the budget does not allow it, and organic traffic comes from all over the world. Therefore, I decided not to restrict the audience by this criterion for now and left it for the next time.

### Advertisement design

I chose the option of ads with an image and text, as the simplest for me. I assume that a well-crafted animation of the reader's work could yield better results, but the likelihood that I could create it at a decent quality is quite low.

For each group of users, I created a screenshot of the Feeds Fun interface with relevant news. You can find an example in the cover image of this post.

Initially I planned to create `3 groups * 6 messages = 18` variants of captions for the ads, but it turned out that 6 were enough, as they were not specific to the user group.

Here are the captions for the first run:

- News reader with smart tags — try Feeds Fun
- Rank news with your own rules and read the best first — try Feeds Fun
- Save news-reading time by filtering out the noise — try Feeds Fun
- Read relevant news — skip the noise — try Feeds Fun
- Read news smarter — create rules to focus on the stories that count — try Feeds Fun
- Control your news: smart tags + scoring rules = zero noise. Try Feeds Fun

And here are the captions for the second one:

- RSS reader with smart tags — try Feeds Fun
- Rank RSS news with your own rules and read the best first — try Feeds Fun
- Save RSS-reading time by filtering out the noise — try Feeds Fun
- Read relevant RSS news — skip the noise — try Feeds Fun
- Read RSS news smarter — create rules to focus on the stories that count — try Feeds Fun
- Control your RSS news: smart tags + scoring rules = zero noise. Try Feeds Fun

Also, there was a test run to get a baseline, with the text: "Personalized news reader – follow the topics you care about".

Plus, I added two more ads for the second run, which were about public collections (with links to the collection pages instead of the main page):

- Tagged arXiv papers — follow relevant research with Feeds Fun
- Tagged Reddit business posts — follow relevant news with Feeds Fun

### Funnel

The funnel was as follows:

- Reddit: showing the ad.
- Reddit: click on the ad.
- Feeds Fun: registration.
- Feeds Fun: user subscribed to a feed (either their own or from a collection).
- Feeds Fun: user used tag filters.
- Feeds Fun: user created a news scoring rule.
- Feeds Fun: user entered an API key for OpenAI or Gemini.

The enter-api-key step I see as an approximate equivalent of payment/subscription to the service, as it is a rather complex step and may involve costs for the user (Gemini has a free tier, while OpenAI only has paid ones).

I also looked at the user path on the site from the visit to authentication in Feeds Fun to understand how collections influence registration.

## Experiment plan

The budget was set at 5 EUR/day per ad.

The initial plan as follows:

- Test run for a couple of days with one neutral ad to get a baseline.
- First run for a week with 18 ads.
- Analysis of the results.
- Second run for a week with ads about collections, optimized based on the analysis results.
- The final analysis.

The execution was a bit different:

- Test run for a couple of days with one neutral ad to get a baseline.
- The first run was stopped on the 4th day due to very poor results.
- The next week (to run on the same days) I made a second run with optimized ads and ads about collections.
- The second run was stopped after the same time as the first one to ensure comparable sample sizes.
- Analysis — you are reading it now.

## Results

The raw and aggregated data can be found in the [spreadsheet](https://docs.google.com/spreadsheets/d/1WeclS5GYIz_JhfYW7WyWp3byo5nexE6cJCZcxLdDj_0/edit?usp=sharing).

“Apples-and-oranges average:

- Spent: 605 EUR (without the baseline run);
- Impressions: 631277;
- Clicks: 6089;
- CPC: 0.10 EUR;
- Registrations: 18;
- The cost per registration: 33.61 EUR <- the most devastating result my career :-D
- Users, who created rules: 2;
- Users, who added an API key: 0.

## Notes & insights

There are too few data points for a reliable picture of the middle (and especially the last steps) of the funnel, so it is difficult to draw conclusions. More precisely, conclusions are pessimistic.

**The answer to the primary experiment question:** it is not possible to immediately launch monetization based on purchased traffic, significant improvements are required in various areas.

**The organic traffic is larger and shows better results than the purchased one.** Just before launching the experiment, I created Docker containers for Feeds Fun and [posted a news on Reddit](https://www.reddit.com/r/selfhosted/comments/1kqe865/feeds_fun_opensource_news_reader_releases/) — that single post brought more users (judging by the timing) than the entire experiment. At the same time, these users showed better results in the funnel than those from the experiment.

**Hypotheses**:

- Content marketing can be more effective than paid advertising, as the product is too specialized.
- Software developers can be more interested in Feeds Fun than scientists and entrepreneurs.

### Target groups

Group |CTR | CPC | Cost per registration
--- | --- | --- | ---
Scientists | 0.38% | 0.21 eur | 40 eur
Entrepreneurs | 0.49% | 0.26 eur | 24 eur
News readers | 1.93% | 0.05 eur | 41 eur

Unexpectedly for me, scientists showed the worst interest (minimum CTR). Considering that my acquaintances from science (even my wife!) use the reader, it may be due to the presentation issues, or the wrong choice of subreddit.

At the same time, the conversion of news readers into registrations is hurendously low. As far as I understand, a CTR of 2% is (very?) good for Reddit. It is strange that the conversion to registration is so low. This may indicate a mismatch between expectations from ads and the landing page, or some strong barriers during registration.

**Hypotheses**:

- Feeds Fun provide less value to people interested in science (subscribers of r/Science), but it may be still valuable for professional scientists (subscribers of very specialized subreddits).
- The value of Feeds Fun for scientists needs to be communicated in a separate, specific way.
- The landing page maynot be clear enough for casuall users.
- The GUI looks not "professional" enough and may scare away part of the users.
- The registration process may be confusing for casual users.

### Focus of the tool

The ads with mentioning RSS showed significantly better results in terms of CTR, CPC, and registrations compared to the ads that only mentioned news. The only metric that dropped was CTR for news readers (for "news" it is higher than for "RSS"). This could be a statistical deviation or a sign of more casuall users in the selected group (they may not know what RSS is).

The collections were a total non-starter: the metrics are weak, and users aren’t clicking through to the collection pages from the homepage.

**Hypotheses**:

- The more technical and specific the positioning of the tool, the better the results among professionals.
- The collections does not look useful for unregistered users, or do not demonstrate their usefulness properly.

### Messages

If we look at registrations.

The best results are shown by ads with a focus on relevance:

- Read relevant RSS news — skip the noise — try Feeds Fun

The second and third places are shared by tags and rules (rules are slightly better):

- Rank RSS news with your own rules and read the best first — try Feeds Fun
- RSS reader with smart tags — try Feeds Fun

The other messages worked significantly worse.

**Hypotheses**:

- Utilitarian properties (relevance, tags, rules) are more understandable and valuable to users.

### The best target group

The best registration cost is 12.5 EUR for the ad with the mention of RSS and relevance.

If we look deeper, the best result is shown by this ad shown to scientists ~ 8 EUR per registration, but I'm not ready to draw conclusions based on such a small sample size. And it is interestingly contradicts to the previous conclusion about scientists.

### The last steps of the funnel

There are no data to make conclusions about the last steps of the funnel, as there were too few users who reached the step of creating rules and literally no one entered an API key.

In comparison, there are some data for the organic traffic:

- There is a significant drop in conversion between the step of adding a feed (either their own or from a collection) and the step of using tag filters.
- The conversion from the registration step to the step of adding a feed is 80%. If we break it down by feed types, users add collection feeds in more than 50% of cases. This means that collections are useful, but (so far) only after registration.
- The API key is entered by 5% of registered users. In my opinion, this is a good indicator of the value Feeds Fun brings, we just need to figure out to whom.

**Hypotheses**:

- If we improve the UX between adding a feed and using tag filters, the last steps of the funnel will significantly improve.
- If we improve the onboarding/tutorial, the last steps of the funnel will significantly improve.

## General conclusions

I significantly clarified my understanding of how people perceive Feeds Fun, what is important and necessary for them. I'll "meditate" on this for a while.

I will not be able to run monetization on purchased traffic in a reasonable time with just working hands, as it requires a lot of time for improvements and a lot of money for experiments.

It looks like I have two approaches for monetization.

Option 1: focus on organic traffic and content marketing, grow the project's community until it reaches a critical mass of users and traffic, then turn on the switch.

Option 2: look for investors with expertise in the business side, money for the team and marketing.

## Action points

What exectly I will do from this list, I will decide later. There is not enough time for everything, so I need to choose wisely.

- Prepare a content marketing plan for the summer and try to assess the impact of this practice on the growth of organic traffic its prooerties.
- Prepare a SEO plan for the summer and try to assess the impact of this practice on the growth of organic traffic and its properties.
- Improve the registration interface, it is really inplemented in a non-standard way and may be confusing. Although I believe it is ideologically correct :-)
- Run a planning session on the following questions:
    - How to focus Feeds Fun functionality on news relevance?
    - How to better communicate the value of Feeds Fun in terms of news relevance?
- Freeze the development of collections, but do not delete them, as they positively influence the funnel after registration.
- Run a serie of interviews:
    - With scientists to understand "what is wrong?".
    - With casual users to assess the clarity of the landing page.
    - With any users to evaluate the clarity/accessibility of the onboarding/tutorial interface.
- Make a site redesign by a professional designer.
- Build a rough economic model based for paid traffic to estimate the order of improvements needed in advertising metrics.
- Build a prototype of a presentation for investors to look at the project from the outside.

## Notes for future experiments

- Check fewer hypotheses at once, to get more reliable results.
- Validate the group "software developers".
- Validate the group "professional scientists".
- Experiment with different landing pages.
- Experiment with different geographies of users.
- Concentrate on the messages about news relevance.
- Think about more precise and specific wording of the texts.
- If possible, experiment more with messages mentioning tags and rules.
- Experiment with ads on other platforms: Google Ads, Facebook, etc.
- Experiment with different ad formats.
