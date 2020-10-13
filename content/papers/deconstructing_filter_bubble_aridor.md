+++
title = "[Paper] Deconstructing the Filter Bubble: User Decision-Making and Recommender Systems"
date = 2020-10-13
draft = false
categories = ["papers"]
tags = ["reading club", "recsys"]
authors = ["Guy Aridor", "Duarte Goncalves", "Shan Sikdar"]
+++



<!--more-->

**Authors**: Guy Aridor, Duarte Goncalves, Shan Sikdar

**Links**: [ACM DL](https://dl.acm.org/doi/abs/10.1145/3383313.3412246) (open access), [Github](https://github.com/ssikdar1/DeconstructingTheFilterBubble), [slides](https://github.com/ssikdar1/DeconstructingTheFilterBubble/blob/master/presentations/recsys2020/Deconstructing_the_Filter_Bubble.pdf)


## Background and motivation
Recommender systems are an increasingly important area of both research and practice.
They are the primary way to bring 'order to chaos,' or to help someone sort through billions of videos on YouTube or millions of items on Amazon.
One of the long-held beliefs is that they can lead users into *filter bubbles*, where they consume increasingly similar (or perhaps extreme!) content over time.

Previous work ([Nguyen 2014](https://archive.thewebconf.org/proceedings/www2014/proceedings/p677.pdf), PDF) has found that, in environments where recommender systems are deployed, users consume increasingly similar content *even in the absence of recommendation.* 
This remains one of the strangest findings I've heard (though I haven't read that paper yet).

This work, however, explains (they claim) those findings.
The authors create and simulate a model of user choice in recommender systems, providing a clear mechanism by which the above occurs.

> We find that recommendation alleviates these natural filter bubble effects, but that it also leads to an increase in homogeneity across users, resulting in a tradeoff between homogenizing across-user consumption and diversifying within-user consumption.

**On filter bubbles**: after Eli Pariser first described the [filter bubble](https://en.wikipedia.org/wiki/Filter_bubble) in 2010, lots of research studied the extent to which it does (and does not) exist.
Nguyen (2014) found that even when consumption is not guided by recommendation, filter bubble effects can arise.
This finding was supposedly unexplained until now.


## The proposed model
The model looks to be pretty complex, but the authors break it down into reasonably understandable pieces.

**Expected utility**: for every item $n$ in the product space, each user $i$ assigns a monetary value $x_{i, n} \in \mathbb{R}$ to consuming it. 
This value varies across users, but users have the same utility $u(x): \mathbb{R} \mapsto \mathbb{R}$ over money.
Consuming an item is equivalent to taking a gamble on it, since a user's beliefs about an item's value may differ from its actual value.
User $i$ will evaluate an item based on the expected value of its utility with respect to their beliefs.

The authors claim that this formulation follows economic consumer theory.
I wouldn't know. ¯\\\_(ツ)_/¯ 

**Model**: suppose that user $i$ faces a set of $N$ items.
Their value from an item can be written as $x_{i, n} = v_{i, n} + \beta v_n$, where $v_{i, n}$ is user- and item-specific, but $v_n$ is a common, baseline value for that item.
These can be stacked into a vector, where for a single user, their values for *all* items $X_i = V_i + \beta V$.

**Values vs. beliefs**: But users do not know those values before consuming an item, and instead have beliefs over them.
The true values are multivariate normal around beliefs; $V_i \sim N(\bar{V_i}, \Sigma_i)$ and likewise for $V$ (but this has mean zero).

**Similar items**: When a user consumes an item, they learn the realized value for that item.
They also learn about values for similar items, defined via the covariance matrix $\Sigma_i$ above: the distance between items $m$ and $n$ is the absolute value of $m - n$ (or $N$ minus that quantity, implying rollover from item N-1 to 0).

This is getting to be pretty detailed, so I'm going to avoid summarizing the rest of the model.
But the rest of the model section walks through an example with four items, which helped a lot! 
This quote stuck out:

> Once the user finds items in the product space with high valuations, she will update her beliefs positively about [similar items] and continue consuming these items regardless of her level of risk aversion.
> However, this same updating leads to a reduction of uncertainty of these items and so, if she is sufficiently risk-averse, she may still continue consuming [similar items] ... since they are perceived to be less risky.

Finally, they simulate cases with recommendation based on user beliefs of item values and the (true) global item values; *oracle* recommendation where the recommender always suggests the best remaining items; and no recommendation.


## Results: filter bubbles and the impact of recommendation
The authors find that when there is a correlation between items' values to users, 'no recommendation' induces more local consumption (filter bubbles).
This is because of the quote above: a lack of recommendation means users get 'stuck' in their viewing habits.
Recommendation (regular or oracle) can alleviate this effect.

### User welfare
The authors define user welfare as the average of the realized values from the items that a user consumes.

They find that, under typical recommendation, welfare increases relative to 'no recommendation,' but the gains decrease as the similarity between items increases. This is because when items are highly similar, the value from consumption (esp. when consuming items that were previously recommended!) exceeds that of recommendation.

### Item diversity and welfare
Item diversity is defined as the average pairwise distance between items consumed.

Without recommendation, diversity and welfare are negatively correlated when users have no risk aversion (because when users dislike an item, they will choose something highly dissimilar, ignoring the risk they might not like it; lower welfare induces high diversity).

With recommendation, diversity and welfare are uncorrelated when users have no risk aversion (the effect above is balanced by the risk aversion of having to consume something different).
They are positively correlated when users have high risk aversion (recommendation can help users to discover items they might not have enjoyed).

### User homogeneity
The user homogeneity is defined as the Jaccard similarity between users' consumption sets.
It is highest under 'recommendation' and lowest under 'no recommendation.'
This arises because the common-value component induces users to consume similar items, especially when the weight of that component $\beta$ is large.


## Discussion
It's tough to read a paper when I really want to understand the details of what the authors did.
I generally don't find that papers are an effective medium for communicating this; there's too much of a focus on "here's why our work is novel" (optimizing for publishing) as opposed to "here's what we actually did" (optimizing for readability or understanding).

Annotated code, video walk throughs, diagrams, or a diagram of their graphical model would have all helped to clarify what they were doing.
I did find a [Github repo](https://github.com/ssikdar1/DeconstructingTheFilterBubble), though, which I'm excited to look through (maybe this is finally the time to try out [Julia?](https://github.com/ssikdar1/DeconstructingTheFilterBubble/blob/master/replication_files/simulations.jl)).

### What is the role of recommender systems?
After reading this paper, the idea that filter bubbles can arise without recommendation makes perfect sense.
Given this, one might ask what the role of recommender systems becomes.

Is it to suggest content that the user might already have clicked on? That doesn't sound all that useful!
What about to try to break filter bubbles? To suggest *dissimilar* items that the user might not have been exposed to otherwise?

The authors address this in their final section. 
They suggest that creators of recommender systems should try to collect additional data: about users' *beliefs* about items they haven't consumed, about their levels of risk aversion, or about how their beliefs change over time.
How to collect this information is itself an interesting platform design question!

They also discuss changing the goal of recommender systems; "the recommender's problem would be to predict what is the most useful information to give the user leading them to change the item that they eventually consume." 
In other words, they could suggest to users *better* items than they would have consumed in the absence of recommendation.

This was interesting! 
I think the question of 'what are we optimizing for' is an important one to always be asking, as we saw a couple weeks ago with Rachel Thomas's paper [Reliance on Metrics is a Fundamental Challenge for AI]({{< ref "reliance_metrics_problem_thomas.md" >}})
I'm looking forward to reading more papers in this space.
