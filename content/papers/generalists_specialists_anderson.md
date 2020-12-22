---
title: 'Generalists and Specialists: Using Community Embeddings to Quantify Activity Diversity in Online Platforms'
authors:
 - Isaac Walker
 - Ashton Anderson
date: 2020-12-22
draft: false
categories:
 - papers
tags:
 - reading club
 - www
---

Users on online platforms might contribute to a few communities often or many communities infrequently. Can we quantify this dynamic, or quantify how similar communities are? This paper, from WWW 2019, attempts to do this through community embeddings.

<!--more-->

**Authors**: Isaac Waller and Ashton Anderson (from University of Toronto)

**Links**: [PDF](http://www.cs.toronto.edu/~ashton/pubs/actdiv-www2019.pdf), published at WWW 2019

## Background and motivation
One characteristic of user behavior on online platforms is the tradeoff between breadth and depth. Someone can concentrate on a narrow range of activities, or engage broadly but not as deeply. 

> There exists a continuum of possibilities between extreme specialists on one side and extreme generalists on the other, and in general users will be somewhere in the middle.

This is difficult to study. The simplest version of the problem gives a set of possible activities and data on which activities users pursue. 

Past work has tried to use *entropy* to measure activity diversity, but a problem is that entropy doesn't capture similarities between activities. Under an entropy metric, a user who has all similar activities would be treated the same as a user who has an equal frequency of different activities.

This work studies:
 - which communities (*subreddits*) users comment in on Reddit
 - which repositories users contribute, star, or watch on Github

They do this through community embeddings (adapting word2vec for this purpose), then developing a generalist-specialist (GS) score to represent user activity. They validate the GS-score with an online quiz to elicit human intuitions.

## Datasets
**Reddit data**: the authors used all Reddit comments in 2017 (900M comments, 11.4M users, and 232K subreddits); they focus on the top 10,000 subreddits, which are 96.8% of comments (long tails!).

**Github data**: this consists of all Github activities (commits, pull requests, forks, watches, and stars) in 2017 (413M activities, 8.3M users, 26M repos); they focus on the top 40,000 communities sorted by stars, since most repos have just 1 contributor.

## Community embeddings
The authors adapt the word2vec embedding algorithm, which uses user-community pairs to generate embeddings. 

How do we validate these embeddings, though? In word2vec, we have the famous (if overdone) "king - man + women = queen" analogy. The authors follow a similar process by generating semantic pairs (`toronto : torontoraptors`, `chicago : chicagobulls`):

{{< figure src="generalists_specialists_anderson_img1.png" >}}

For each of these 4392 analogies, they compute the vector `a - a' + b` and see if `b'` is the closest vector. The initial embeddings correctly predict 30% of the answers in the first position, and after hyperparameter tuning they reach 72% in the first position and 96% in the top 5.

**Why should we care?** Creating community embeddings enables the ability to compute the similarity between communities (through cosine similarity of their vectors). There's also value to using empirical, crowdsourced data (as long as we recognize its limitations).

## Measuring and validating activity diversity
Armed with community embeddings, we can define a user's *center of mass* by taking the average of the communities in which they participate, weighted by the number of contributions. (If a user contributes twice to /r/CFB and once to /r/CollegeBasketball, their center of mass is 2 times the vector for /r/CFB plus the vector for /r/CollegeBasketball, normalized to be unit length). 

A user's *GS-score* is then the average cosine similarity between their community vectors and their center of mass, again weighted by the number of contributions and normalized.

> This definition fulfills a number of desiderata. First, as the communities one contributes to become more similar to each other, the measure increases and moves towards the specialist end of the spectrum. Second, as users contribute more heavily in one community, they become more specialist. Third, fixing a user’s contributions and adding another contribution to a new community pushes the measure towards the generalist end.

Today, I learned the word *desiderata*: "something that is needed or wanted." 

To validate this score, the authors developed a game-style quiz, asking quiz-takers which of two users was more of a specialist. They found a "strong correlation" between the difference in GS-scores and the proportion of quiz-takers who agreed.

## Findings
The authors find "a broad diversity of user types, ranging from extreme generalists to extreme specialists, on both Reddit and Github." This holds even when fixing the number of communities, which was desired; participating in more communities should only sometimes mean someone is more of a generalist.

More specialized users are more likely to remain in a community; on Reddit, that's twice as likely, and Github, 10x. But generalists are more likely to remain on platforms over time (controlling for activity in the first half of 2015, and seeing if users are still active in the second half of 2017).

How can this inform the design of online platforms?

> Community managers may prefer exposure to specialists to maximize the chance of acquiring new long-term members. But all else equal, generalists are more likely to be long-standing members of the platform itself. Thus, it may be in the platform’s interest to expose users to a more diverse set of communities. Also, designing online platforms to attract generalists and be conducive to community exploration could be beneficial.

This is an interesting dynamic! A healthy platform needs both generalists and specialists to thrive long-term. Designing a platform to attract both kinds of users is a fun design challenge.

There's more on building community recommender algorithms and predicting user retention. It's interesting, but I won't summarize it here for brevity.


## On data-driven community embeddings
The authors note of their process for generating community embeddings:

> This similarity is entirely data-driven, and is in a way crowdsourced: two communities are similar if and only if many people choose to comment in them both. Other methods, such as hand-crafted taxonomies or expert classifications, are potentially biased by subjective opinions. 

I think the last sentence is a bit silly; it implies that this is *unbiased* because it's data-driven and crowdsourced. This method is biased, too, just in less obvious ways.

Another example is how the authors define participation (through commenting). You can easily argue that *viewing* a community matters too; I spend lots of time on Reddit where I'm just reading and not posting. But this method doesn't count viewing towards participation.

And yeah, that's probably mostly because there's no convenient dataset of Reddit views, just comments. But that's a form of bias!

Similarly, I would consider /r/askscience and /r/AskHistorians to be similar subreddits by the human heuristic of "people asking questions of experts in some field." But the users commenting in /r/askscience are scientists, and /r/AskHistorians historians, with little overlap in between. This approach would probably find them to be dissimilar!


## On the identity of platforms
I find it weird how impersonally this paper treats platform users. The authors make comparisons between Reddit and Github frequently (comparing users, behaviors, etc.) by describing them in their own language: generalists vs. specialists, communities, activity level, longevity.

But this loses the actual identity of the platforms. Github is a coding website. "Communities" on Github are repositories. "Activity" means contributing to repositories. And "specialists" likely means core contributors to popular projects. This is a very different activity from commenting on Reddit. Reducing these activities to a platformless *GS-score* feels strangely impersonal.

This applies to the prediction tasks, too. "Predicting which communities a user is likely to join next" makes a lot of sense on Reddit, but on Github it feels downright weird. Why would you want to predict where a user will make their next PR? Why would Github want to predict when someone will stop contributing, as if they can offer retention incentives the way a mobile game can?

I get that the authors want to highlight how their approach is, in theory, platform agnostic. But should it be?

## Closing thoughts
I think the idea of community embeddings is compelling, especially on Reddit. Finding a kind of structure among subreddits is likely to be useful for both platform designers and researchers alike. 

It's less clear to me why this is interesting on Github. Sure, the structure is there; but that only makes sense in the context of Github the online platform, not Github the *coding* platform. In my opinion, the authors didn't do enough to motivate why this matters.

> There are several promising directions for future work. First, the GS-score can be directly applied to answer important questions about subsets of user activity in online platforms. For example, it would be interesting to conduct our results on echo chambers in the subset of political activity on Reddit. ... Second, as our GS-score metric is robust and conceptually simple, it could be broadly applicable beyond the online platforms we considered in this work. It would be illuminating to apply the GS-score to other domains as well.

I think these are both very true and I'd love to see more in these directions. I'm sure the findings are broadly applicable to Facebook Groups, for example, and the political activity questions are surely interesting too. I'll have to keep an eye on Ashton Anderson's work going forward!

