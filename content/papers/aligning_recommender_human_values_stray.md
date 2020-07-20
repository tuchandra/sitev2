+++
title = "[Paper] What are you optimizing for? Aligning Recommender Systems with Human Values"
date = 2020-07-19
draft = false
categories = ["papers"]
authors = ["Jonathan Stray", "Steven Adler", "Dylan Hadfield-Menell"]
+++

How can recommender systems better align to human values, like fairness, diversity, or equity? This paper, from the ICML Participatory Approaches to ML workshop, discusses approaches to answering this question.

<!--more-->

**Authors**: Jonathan Stray (Partnership on AI); Steven Adler (Partnership on AI); Dylan Hadfield-Menell (UC Berkeley)

**Link**: [PDF](https://participatoryml.github.io/papers/2020/42.pdf) on the [ICML Participatory Approaches to ML Workshop website](https://participatoryml.github.io/#420)

## Summary
From the introduction:

> We describe cases where real recommender systems were modified in the service of various human values such as diversity, fairness, well-being, time well spent, and factual accuracy. 

Classically, the authors write, recommender systems frame their goals as maximizing "relevance." How likely is it that a Netflix user will click on a recommended video, or watch some or most of it? How do you maximize the chance that an Amazon shopper adds a recommended item to their cart?

Previous work has argued for changes to recommender systems' objectives to better match *human values* of diversity of content, fairness, reduction of addiction or polarisation, and more. Maybe you want to recommend TV shows starring people of color, or products that are more environmentally friendly. The design of such systems is poorly studied.

> In this paper, we propose that recommender system design can draw from the study of the *value alignment problem*: the problem of ensuring that an AI system’s behavior aligns with the values of the principal on whose behalf it acts ... In the corresponding *recommender alignment problem*, the objective is to align recommendations with the goals of users, system designers, and society as a whole.

Sounds interesting! 

## Case studies
The authors provide three examples of how large, commercial recommender systems have been improved (from a human-values perspective).

**Identifying unwanted content**: Facebook, and other companies, have modified content recommendation systems to use fewer hand-crafted metrics (time away from page, like-to-share ratio) and instead rely on sub-classifiers to identify likely clickbait. These models' outputs feed into to the recommender system. Similar models are used for anti-misinformation efforts, e.g., to identify users or domains sharing previously-debunked content.

**Promoting desirable outcomes**: goals addressed here include healthy public conversations, exposure for unknown content creators, and users' well-being. 

"Spotify is notable for elaborating on the fairness and diversity issues faced by a music platform," noting how Spotify's playlists are considered "fair" if they have artists at different levels of popularity (balancing the needs of major artists and more unknown ones). Twitter has created "healthy conversation" metrics to encourage healthier discourse.

**Characterizing the state-of-the-art**: the idea here is that you identify and operationalize abstract concepts like "healthy conversation" or "clickbait," then adjust your algorithms accordingly. 

The authors' criticism of this process is that it's too reactive, addressing problems one-by-one and often after they've become widespread. It also prioritizes the problems most visible to system designers (often white and male).


## Some suggestions
**Useful definitions and measures**: there are metrics for "well-being" in public policy and other values like "agency." Developing a useful set of definitions, protocols, and metrics here could improve progress on recommender alignment.

**Participatory recommenders**: "it would be better if users could be effectively involved" in the design and routine operation of the recommender system. One effort created an online matching system in which volunteer delivery drivers, donors, recipients, and non-profit employees collaboratively assessed tradeoffs; it was, apparently, perceived as more fair.

**Interactive value learning**: "The recommenders with the most troubling side effects often have passive, low-agency, low-bandwidth interfaces like infinitely scrolling content feeds or autoplay." Direct user control of values could provide agency and transparency, they argue. (This point isn't super clear to me.)

**Design around informed, deliberative judgment**: solicit informed, retrospective feedback from users. These kinds of evaluations are often higher quality than in-the-moment "I do / don't want to see this."

## Closing thoughts
Recommender systems are, in my opinion, underestimated in the role that they play in modern life. Machine learning discourse focuses on supervised vs. unsupervised, and recommender systems are this weird and complex middle ground. Understanding how to build "better" recommender systems (and understanding the various definitions of better) is important to help these systems to have positive impacts.



