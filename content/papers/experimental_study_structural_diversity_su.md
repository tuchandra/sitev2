+++
title = "[Paper] An Experimental Study of Structural Diversity in Social Networks"
date = 2020-08-04
draft = false
categories = ["papers"]
tags = ["icwsm2020", "reading club"]
authors = ["Jessica Su", "Krishna Kamath", "Aneesh Sharma", "Johan Ugander", "Sharad Goel"]
+++

In a social network, structural diversity is a measure of how (dis)similar one's social connections are. It's positively correlated with engagement, but the mechanism behind this is unknown. This work experimentally alters structural diversity for new Twitter users, studying whether or not it affects user retention.

<!--more-->

**Authors**: Jessica Su (Facebook), Krishna Kamath (Twitter), Aneesh Sharma (Google), Johan Ugander & Sharad Goel (Stanford)

**Links**: [ICWSM Proceedings](https://aaai.org/ojs/index.php/ICWSM/article/view/7332), [prerecorded talk](https://www.youtube.com/watch?v=Cf2kK18I1XE&)

This is the second paper for my reading group with my friend [Judah](https://judahgnewman.com/). We've come up with a nice (in my opinion) system for selecting papers. Since we each have reading lists, we have one person give a slate of papers and the other choose one of them. This week, I gave the slate of [all the ICWSM papers on my reading list]({{< ref "/reading_list" >}}), and he picked this one.


## Summary
**Structural diversity** is the concept of "how similar are your social connections," dating back to a [2012 paper](https://www.pnas.org/content/109/16/5962) by Ugander et al. Previous research has found structural diversity to be associated with engagement on a platform---people whose networks are more structurally diverse use the platform more.

Why, though? There are a few plausible explanations:
 * structural diversity increases the utility of the network (you get more out of using the platform if you interact with a more diverse group of people)
 * having a wide variety of content makes it more likely you see something interesting
 * or maybe it's just a correlation; maybe young people happen to have more diverse networks, and also use social media more.

Past studies on this have all been observational, because (as this paper discusses) this is a really tough question to study experimentally. 


## How do you study this experimentally?
One of the challenges with this kind of experiment is that it's hard to define the causal effect. 

Suppose that engagement (or your favorite metric measuring it) is only affected by structural diversity, and nothing else. That'd be pretty unrealistic. The authors give the two example networks of "college friends + work colleagues" vs. "family members and bowling league." The idea is that *network membership* matters; you can't just artificially manipulate the structure of a network (and even then---how would you do that?).

Another challenge is *how do you even do this?* "This" being "exogenously induce structural changes to an individual's network of social contacts." The fact that people typically choose their networks means that manipulating these networks is probably impossible.


## Experimental design
So what do they do? They study ~500,000 of the new Twitter users in 2016. As part of the onboarding process, new users receive 20 recommendations for accounts to follow. The authors varied the account recommendations for new users to have low, medium, or high-similarity accounts. The metric of interest was user retention.

Underlying this design is a key assumption. By altering the structural diversity of these recommendations, they could influence the structural diversity of the user's network as it develops. Fortunately, this is testable!

The authors investigated the subpopulation of new users who followed *exactly* 20 accounts. Why 20? Because they were most likely to have clicked "Follow all" on the recommendation page. Compared to accounts who followed 18 or 21 users, these accounts were most likely to have the treatments induce structural diversity in their networks (left part of this figure).

{{< figure src="experimental_study_structural_diversity_su_img1.png" >}}

On the right, we see that the average pairwise similarity (higher = less structurally diverse), which was induced via the follow recommendations, persists over time in a user's network.

The set of users who click "follow all" probably isn't representative of all new Twitter users. And focusing on that subset also induces a network size limitation. Those are  acceptable tradeoffs here, though, because the sample doesn't have to be representative. This isn't a paper about Twitter; it's a paper about networks.


## Results
In the "follow all" subset, structural diversity correlates with retention. If they subset further to users who were eligible for the experiment (basically users where it was possible to assign high/medium/low diversity recommendations; for some, it wasn't), then the correlation is lower.

They found no causal effect of structural diversity on retention. Different treatment groups *did* have different levels of structural diversity, but this difference did not affect retention.


## Thoughts
The results are interesting, sure (I'm glad a negative result was published!). But I think the experimental design is where this paper really shines.

Being able to experimentally induce structural diversity in networks is novel in its own right, to say nothing of the results of the paper. I particularly liked the part of the paper that was spent validating the fact that this is a good way to induce structural diversity.

The insight that "users who follow exactly 20 users are the group of interest, and we should pay extra attention to them" is creative. The "follow all" button has existed independently of this paper, but its presence during the onboarding process is critical to the experimental design.




