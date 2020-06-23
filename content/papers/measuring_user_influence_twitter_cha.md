+++
title = "[Paper] Measuring User Influence on Twitter: The Million Follower Fallacy"
date = 2020-06-22
draft = false
categories = ["papers"]
authors = ["Meeyoung Cha", "Hamed Haddadi", "Fabrício Benevenu Benevenuto", "Krishna P. Gummadi"]
+++

This 2010 paper recently won the [ICWSM Test of Time award](https://twitter.com/icwsm/status/1272747094554574848), so I gave it a look. One of the earliest papers studying Twitter, key findings include that followers are *not* a measure of engagement (but retweets and mentions are), and that influential users are influential about diverse and unrelated topics.

<!--more-->

**Authors**: Meeyoung Cha, Hamed Haddadi, Fabrício Benevenu Benevenuto, Krishna P. Gummadi

**Link**: [PDF](https://homepages.dcc.ufmg.br/~fabricio/download/icwsm2010_cha.pdf)

## Background
This paper studies *influence* on Twitter, which is measured here through indegree (the number of people who follow a user), retweets, and mentions. The authors studied [a dataset](http://twitter.mpi-sws.org/) of 2 billion follow links among 54 million users who produced 1.7 billion tweets:
 * they looked for all user IDs between 0 and 80 million, finding 55M accounts
 * those were connected to each other by 2B social links
 * they scraped all the tweets ever posted by every user since the start of Twitter, which was 1.7B
 * the user network has a single large connected component with 94.8% of users, so they kept that and ignored the others
 * they ignored private accounts and accounts with < 10 tweets, leaving 6M users

What simpler times, when you could just get ... all the tweets! The paper studied how these 6M active users interacted with the entire set of 55M.


## Measures of influence
The most followed users were news sources (CNN, NYT), politicians (Obama), athletes (Shaq), celebrities (Ashton Kutcher, Britney Spears ... oh yeah, 2010). The most retweeted users were aggregators (Mashable, TwitterTips, etc.), businessmen, and news. The most mentioned users were primarily celebrities. None of this is shocking, but it's good to know that 2010 was similar to today.

The table below shows two things at play: 
 * among all users, these measures of influence are all correlated, but this is mostly driven by the least connected users having zero retweets, mentions, or followers
 * among just the top 10% or 1% of users (by indegree), only retweets and mentions are highly correlated.

Correlation           | All   | Top 10% | Top 1%
----------------------|-------|---------|-------
indegree vs. retweets | 0.549 | 0.122   | 0.109
indegree vs. mentions | 0.638 | 0.286   | 0.309
retweets vs. mentions | 0.580 | 0.638   | 0.605

*Table 1 from the paper: Spearman's rank correlation coefficients*


## How does influence hold across different topics?
The authors picked three topics that were popular in 2009: the Iranian presidential election, swine flu, and Michael Jackson's death. They used keywords to identify the tweets about these during 60-day windows. 2% of users (13K) discussed all three topics; these users had an average of 2000 followers and, together, reached 16 million people.

They found a power law relationship between users' influence and the number of retweets and mentions that they got. (I don't fully understand this---how did they measure what they call "user ranks" if not exactly by those two metrics?)

These influential users also show their influence across diverse topics:

Topics                        | RT 10% | RT 1% | Mentions 10% | Mentions 1% |
------------------------------|--------|-------|--------------|-------------|
Iran vs. Swine Flu            | 0.54   | 0.62  | 0.59         | 0.68        |
Iran vs. Michael Jackson      | 0.48   | 0.54  | 0.59         | 0.63        |
Swine Flu vs. Michael Jackson | 0.55   | 0.50  | 0.80         | 0.68        |

*Table 3 from the paper: correlations over topics*

This leads to two interesting findings:

> First, most influential users hold significant influence over a variety of topics. This means that local opinion leaders and highly popular figures could indeed be used to spread information outside their area of expertise. In fact, new advertisement campaigns have recently been launched that insert advertisement links into a popular person’s tweet (Fiorillo 2009).

and:

> Second, the power-law trend in the difference among influence of individuals indicates that it is substantially more effective to target the top influentials than to employ a massive number of non-popular users in order to kick start a viral campaign.

This seems obvious now, but one of the reasons this paper received the Test of Time award is precisely because it was responsible for ideas that we take for granted today. Anyone on Twitter today could tell you that a handful of accounts control a great deal of the discourse; I don't know if this was as clear in 2010.

The rest of the paper looks into the temporal evolution of these metrics, which is interesting but less clear. I choose not to summarize it here, but encourage folks to check it out.


## Thoughts
This is one of those papers that makes me realize that the things I've been wondering about---and seen being debated---are topics that researchers have been studying for a long time. The idea of "influentials" (a minority of users good at persuading others) comes from 1962 communication theory. This research is from 10 years ago---an eternity in Twitter-time---and yet, it persists today.

The "million follower fallacy" in the title refers to the finding that followers alone are not a great measure of influence on Twitter. Retweets and mentions, meanwhile, show how much people are talking about you or to you. 

I really enjoyed reading this early-Twitter research. Imagine being able to just get *all* of the users and *all* of the tweets! As social media grows, this kind of work is only possible by the largest industry labs, which is probably a bad thing.

Nonetheless, this was a good and light read. I will be diving more into the ICWSM papers (but from 2020 this time!) in the coming days.

