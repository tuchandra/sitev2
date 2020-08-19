+++
title = "[Paper] Auditing News Curation Systems: A Case Study Examining Algorithmic and Editorial Logic in Apple News"
date = 2020-08-20
draft = false
categories = ["papers"]
tags = ["icwsm2020"]
authors = ["Jack Bandy", "Nicholas Diakopoulos"]
+++

Apple News is used by 85 million users daily, but what is it actually showing you? From what publishers do the stories come? How often are they updated? This ICWSM 2020 paper motivates and applies an algorithmic audit of the Apple News curation system.


<!--more-->

**Authors**: Jack Bandy & Nicholas Diakopoulos (Northwestern)

**Link**: [ICWSM Proceedings](https://aaai.org/ojs/index.php/ICWSM/article/view/7277) (open access), 

I found this paper from browsing the ICWSM Proceedings. But it also caught my eye because the PI, Prof. Diakopoulos, is the PhD adviser for one of my [friends](https://nhagar.github.io/). I've been looking forward to reading this for a while!


## Background
One of the major powers that technology companies have is control over access to information. Facebook and Twitter exercise (high-level, algorithmic) control over what appears on your timeline, [possibly promoting misinformation](https://secure.avaaz.org/campaign/en/facebook_threat_health/) in the process. Apple News is another such gatekeeper, which is what this paper studies.

> This work presents an audit study of Apple News as a sociotechnical news curation system that exercises gatekeeping power in the media. 
> We examine the mechanisms behind Apple News as well as the content presented in the app, outlining the social, political, and economic implications of both aspects. 

This paper studies the algorithmically curated *Trending Stories* and human curated *Top Stories*. It presents (emphasis mine):

> (1) a **conceptual framework for auditing content aggregators**,
>
> (2) an application of that framework to the Apple News application, with **tools and techniques for synchronizing crowdsourced data collection** and using app simulation to get around a lack of APIs, and
>
> (3) results and analysis from our audit, which both **corroborate and nuance the current understanding of how Apple News curates information.**

Algorithmically auditing a company who is famous for keeping secrets? Sounds great.


## What are algorithmic audits, anyway?
Algorithms are contributing to, if not outright replacing, human decisions in many fields. An *algorithmic audit* is just an audit of an algorithm. These are usually for the purpose of studying and/or exposing discrimination, but they can also be useful to introspect opaque algorithms.

Most relevant to this paper are audits of Google News and Apple News. While once suspected to have a conservative bias, Google News is now under scrutiny for the effects of personalization and source concentration (five news outlets accounted for half of the recommended stories). A study of Apple News found similar source concentration effects.

As mentioned above, Apple News includes both the algorithmically curated *Trending Stories* and the human curated *Top Stories*. These were chosen to make use of algorithmic advancements while avoiding exclusively content that is good at "engagement," which is likely to be lower quality.


## Building an audit framework
> We hope to characterize some of the ways Apple News is mediating human attention in today's news ecosystem.

One of the complications with auditing Apple News is that, despite Trending Stories being algorithmically curated, it's still not a purely technical system. In fact, nothing is: one of my favorite quotes from [*Weapons of Math Destruction*]({{< ref "books/weapons_math_destruction.md" >}}) is "algorithms are opinions encoded in math," and it holds true here.

The authors develop three areas to audit:
 * **mechanism**: how often is content updated? to what extent is it adapted across users (personalized, localized, uniform)?
 * **content**: what sources and topics are displayed?
 * **consumption**: how does the appearance of content affect the attention given to the story?


## Audit methods
The authors performed crowdsourced auditing with Amazon Mechanical Turk. They had users wait until the time was a round hour (1:00, 2:00, etc.) and take a screenshot of the Trending Stories section.

They also performed sock puppet auditing through Appium, which "allows automatic control of the iPhone simulator on macOS" (e.g., to automatically open and close applications, scroll through apps, click buttons). They built Python programs to collect Trending Stories from Apple News and scrape the URLs to them.


## Experiments
**(1a) Measuring platform-wide and user-specific update frequency.** This found that the average time between both platform-wide updates was 20 minutes (and at most 61). They tested this by continually looking for new content and seeing how often it changed. The user-specific update frequencies were identical.

**(2) Localization of trending stories.** Using Appium, the authors simulated their location to each of 50 state capitals (while also having a control at the Apple HQ). They collected the headlines at each time and place. They found no variation in Trending Stories that could be attributed to location.

**(3) Measuring user-based adaptation.** To what extent does personalization affect the Trending Stories? This is challenging to measure in the general case because:
 * quantifying the difference between ranked lists is challenging
 * the position of stories matters; stories #1 and #2 are shown on iOS home screens, and the app contains #1 - #4 on small iOS devices (without scrolling) but #1 - #6 on larger ones. 

Nonetheless, they compared headlines in 83 user screenshots (from MTurk) to headlines from non-personalized, simulated screenshots. The average overlap coefficient between the set of experimental headlines and set of control headlines was 0.97, "indicating that the vast majority of screenshots contained the same headlines as the control." 

Of the 83, 74 screenshots showed headlines that were all present in the control, and of the 9 that didn't, those headlines appeared in the previous set of Trending Stories. So personalization wasn't really at play here.

**(4) Extended data collection.** In the last experiment, informed by the first three, they collected more data. At different timepoints over two months, a simulated (Appium) user copied the URLs of every story visible in the Top Stories and Trending Stories. A Python script got the story domains (e.g., `cnn.com`) and the headlines.

They found *high source concentration* in both Trending Stories and Top Stories. I combined two figures from the paper to make this table:

| Trending Stories Source | % of Trending Stories | Top Stories Source | % of Top Stories |
|-------------------------|---|--------------------|---|
| CNN | 16.1% | Washington Post | 9.8% |
| Fox News | 15.9% | CNN | 7.9% |
| People | 13.3% | NBC News | 6.0% |
| BuzzFeed | 8.1% | NY Times | 5.8% |
| Politico | 6.2% | WSJ | 5.3% |

*Table: An abridged combination of Figures 3 and 4 in the paper, showing relative distributions of the sources of articles in Trending Stories and Top Stories*

The Trending Stories churned fairly consistently throughout the day (roughly 5% each hour), while the Top Stories were updated more punctually in the morning, afternoon, and night.

Finally, they studied n-grams within the headlines of Trending Stories and Top Stories. "The Trending Stories section tended to feature more news that might be considered surprising, shocking, or sensational ... on the other hand, the salient terms found in Top Stories featured more substantive policy issues ... and international politicians and events."


## My thoughts
I love algorithmic auditing work. I think that this is one of the most important developing fields in the HCI literature. As the prevalence of opaque algorithms that gatekeep content increase, the methods to introspect and study those algorithms will become more important as well. 

The authors discussed the different audit methods they used:
 * crowdsourcing was helpful to parallelize data collection, since they could only ever run two Appium instances at once. This also helped assess the degree of personalization in practice.
 * sock-puppet auditing helped to test variables in isolation, e.g., by allowing the researchers to take screenshots with same-second precision.
 * scraping was helpful for extended data collection. "We suggest scraping whenever researchers seek continuous data or to monitor over time."

I think that there's opportunity for regulation here. Facebook provides a [variety of datasets](https://research.fb.com/data/) to academics, and I think it'd be reasonable to require platforms with some large number of users to release similar (appropriately aggregated, and/or differentially private) information. Being able to answer questions like "which publishers are shown most often?" or "how often does the news you see update?" shouldn't require two months of scraping.

In closing, I liked this paper. I think the methods were pretty *simple* but still *novel*, in that auditing Apple News in this way had simply never been done before. As questions of tech companies gatekeeping content continue to surface, it is important that more work like this emerge.

