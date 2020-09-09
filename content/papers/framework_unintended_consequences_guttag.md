+++
title = "[Paper] A Framework for Understanding Unintended Consequences of Machine Learning"
date = 2020-09-09
draft = false
categories = ["papers"]
tags = ["reading club"]
authors = ["Harini Suresh", "John V. Guttag"]
+++

What does it really mean for a machine learning system to be "biased"? Lots of different things, potentially, to the point where the term being so overloaded has started causing confusion. This paper presents six different categories of bias in machine learning.

<!--more-->

**Authors**: Harini Suresh, John V. Guttag

**Link**: [arXiv](https://arxiv.org/abs/1901.10002)


## Background and motivation
Machine learning systems can have negative consequences. Surprise!
Too often, these consequences are attributed to problems of "biased data" or something similarly broad and/or reductive.

From the abstract:

> In this paper, **we provide a framework that partitions sources of downstream harm in machine learning into six distinct categories** spanning the data generation and machine learning pipeline. We describe how these issues arise, how they are relevant to particular applications, and how they motivate different solutions.


## A partitioning of bias
The authors partition sources of harm into six categories:

| Type of bias | Description |
|--------------|-------------|
| Historical bias | A misalignment between the "world as it is" and the objectives encoded a model | 
| Representation bias | The sample population underrepresents (and does not generalize) for some part of the broader population |
| Measurement bias | When the set of features or labels leaves out important information or otherwise causes differential performance |
| Aggregation bias | "When distinct populations are inappropriately combined" |
| Evaluation bias | When the benchmark populations do not represent the broader population, or the metrics are not appropriate |
| Deployment bias | When a system is used in inappropriate ways |

They go into each in more depth.

**Historical bias**: even if the data is perfectly collected, this kind of bias leads to a model that reflects historical unfairness. A perfectly-measured feature of "crime" would still reflect historical crime in poor neighborhoods. A perfectly-sampled image of "CEO" would still produce almost entirely images of men.

**Representation bias**: "when certain parts of the input space are underrepresented," a model will be less certain about the prediction on that region. This is a more formal version of class imbalance.

**Measurement bias**: this arises when your measureable data is differentially noisy (e.g., one group's performance is more frequently monitored or data quality differs across groups). Positive feedback loops are a sign of this. Predictive policing runs into this problem, where the mere fact that poorer neighborhoods are more highly policed.

(It's not totally clear how this is different from historical bias. I think historical bias is more "this is the way the world is" and measurement bias is more "this is due to improper data collection," but I'm not sure.)

**Aggregation bias**: this arises when "a one-size-fits-all model is used for groups with different conditional distributions, p(Y|X)." The (flawed) idea is that the relationship between inputs and outputs is invariant across groups, but that's often not the case. 

**Evaluation bias**: occurs when the evaluation (often a standard benchmark) doesn't represent the actual target population. Imagine a model evaluated on ImageNet being applied to, well, something totally different. A common example is facial recognition, which was benchmarked on mostly-white faces, underperforming dark-skinned people.

**Deployment bias**: is the result of "a mismatch between the problem a model is intended to solve and the way in which it is actually used."

> This often occurs when a system is built and evaluated as if it were fully autonomous, while in reality, it operates in a complicated sociotechnical system moderated by institutional structures and human decision-makers.


## Mitigating this
The authors propose two ways to mitigate different kinds of bias.

**Mitigating aggregation bias**: rather than assuming that p(Y|X) is equal across groups, one could build a model that takes into account group differences. (They cite Gelman's multilevel modeling as an example.) 

**Mitigating evaluation bias**: you can improve an evaluation by comparing per-group metrics or an aggregate that weights groups equally (this improves the "granularity" of your eval). You can use multiple metrics to improve its "comprehensiveness."

Those didn't feel like case studies---more mathematical formulations. To me, case studies are concrete, practical examples.


## Closing thoughts
This paper was pretty abstract. I think a lit review on "harms from ML," which categorized the papers according to this framework or others, would be interesting to read. That would be lots of work, though!

More generally, though, I love the idea of partitioning sources of bias in machine learning. When reading about the [PULSE model issues](https://thegradient.pub/pulse-lessons/) in June, I noticed lots of people talking past each other by trying to reduce the issues to "dataset bias."

There were a couple of issues at play: 
 * *evaluation bias* happened because lots of facial recognition algorithms are benchmarked on mostly-white datasets
 * *representation bias* was happening, too, because the dataset *did* mostly contain white faces
 * aggregation bias* might have been at play, because it could be possible for another algorithm to perform differentially better on faces of different races

On the whole, though, there were lots of dumb arguments. "Is it the algorithm or the data" presents a false dichotomy, when in fact *both* are the fault of historical, systemic racism. Much of the discussion felt like pointless arguments about semantics, distracting (intentionally or not) from the deeper issues at play.

I digress. All this is to say---I liked this paper. I wish it were a little more concrete or fleshed out its ideas more (is it a workshop paper?), but I think this is a useful framework for thinking about bias in machine learning.

