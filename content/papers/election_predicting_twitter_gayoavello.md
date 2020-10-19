+++
title = "[Paper] A balanced survey on election prediction using Twitter data"
date = 2020-10-18
draft = false
categories = ["papers"]
tags = []
authors = ["Daniel Gayo-Avello"]
+++

Affectionately titled "I wanted to predict elections with Twitter and all I got was this lousy paper."
This survey paper chronicles various attempts to predict elections from Twitter, and finds that (surprise!) its predictive power has been greatly exaggerated.


<!--more-->

**Author**: Daniel Gayo-Avello

**Link**: [arXiv](https://arxiv.org/abs/1204.6441) 

## Background
"Using Twitter to predict X" is a popular research idea; this problem is both interesting and difficult. 
In 2012, however, the author of this paper found that:

> Many recent papers seem to only acknowledge those studies supporting the idea of Twitter predicting elections, instead of conducting a balanced literature review showing both sides of the matter. 

This paper fills that gap, finding "that the predictive power of Twitter regarding elections has been greatly exaggerated, and that hard research problems lie ahead."

I love a good pessimistic paper about social media. Let's dive in.


## What are the problems with election forecasting using Twitter?
So many! There are simply so many problems.

The main one (to me) is that **Twitter is not real life** (at least not here). I've [written about this before]({{< ref "posts/is_twitter_real_life.md" >}}), and said that Twitter is not representative of mainstream political opinion about, well, *anything*.

In the election prediction problem, this manifests itself in several ways:
 * The demographics of Twitter users are not representative of the demographics of any voting population.
 * The entire act of using Twitter creates selection bias in a dataset of tweets, retweets, follows, etc.
 * All tweets are assumed to be trustworthy. This paper was written in 2012; that's a much bigger problem today.

With all this said, there are ways that one could *hypothetically* still use data from Twitter to predict elections. Right?

Well, no.

The author finds other, more basic, "machine learning hygiene"-style issues:
 * Most of this isn't prediction at all; it's post-hoc analysis.
 * "Random chance" is not a valid baseline for comparison, since incumbency matters a lot in elections.
 * Sentiment analysis is applied naively without care for its details.
 * There is no clear baseline to test against (polls, popular vote, etc.)


## Past and future work
The remainder of the paper provides commentary on several papers in this space.
This isn't really fit for summarizing here, but it's a great (if old) introduction to the space.

At a minimum, future work will need to address:
 * accurate sentiment analysis (including humor and sarcasm detection)
 * better detection of propaganda, misinformation, and sockpuppets
 * distributions of Twitter demographics
 * self-selection and user participation


## Discussion
There are a lot of reasons that this problem sounds so attractive, I think, and they compound upon each other.
Consider:
 * Lots of people like to overestimate the impact of social media on the offline world
 * Twitter provides a large volume of real-time data 
 * Predicting elections is a sexy, high-profile problem
 * There are lots of convenient abstractions around Twitter data 

The last is most interesting to me. Twitter data cannot be taken at face value: people are sarcastic, the demographics of Twitter users aren't representative of any population, and some accounts aren't who they say they are.

But all of these can be ignored, and Twitter makes it exceptionally easy to do so. Just use the text of tweets and plug them into a sentiment analysis box (without stopping to think about how that works); just use all the users there (without wondering who they are).

This was a quick read, and I'm glad I stumbled across it (on Twitter, ironically enough!). Good stuff.
