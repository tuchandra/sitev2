+++
title = "[Paper] Reliance on Metrics is a Fundamental Challenge for AI"
date = 2020-09-22
draft = false
categories = ["papers"]
tags = ["reading club"]
authors = ["Rachel Thomas", "David Uminsky"]
+++

One of my more deeply held beliefs is that people rely too heavily on metrics, so when my friend Judah sent me this paper I was quick to jump on it. Rachel Thomas and David Uminsky argue that an overemphasis on metrics is a fundamental problem with AI.

<!--more-->

**Authors**: Rachel Thomas and David Uminsky

**Link**: [arXiv](https://arxiv.org/abs/2002.08512)

## Background
One of my favorite "laws" is [Goodhart's Law](https://en.wikipedia.org/wiki/Goodhart%27s_law), saying that "When a measure becomes a target, it ceases to be a good measure." The main idea to me is that metrics can be gamed. 

Training modern AI systems almost always consists of optimizing a single metric---the loss function.
In deep learning, the metric is the target, and this is by definition!
In the spirit of Goodhart's Law, this paper argues that this is a problem.

From the abstract:

> Optimizing a given metric is a central aspect of most current AI approaches, yet overemphasizing metrics leads to manipulation, gaming, a myopic focus on short-term goals, and other unexpected negative consequences. 

And later:

> Finally, we propose a framework towards mitigating the harms caused by overemphasis of metrics within AI by: (1) using a slate of metrics to get a fuller and more nuanced picture, (2) combining metrics with qualitative accounts, and (3) involving a range of stakeholders, including those who will be most impacted. 


## Measurement failures
Previous work identified 4 failure modes that are all related to Goodhart's Law:
 
 1. *Regressional Goodhart*, where the difference between the metric and the true goal matters
 2. *Extremal Goodhart*, where the relationship between the metric and true goal is different when taken to some kind of extreme
 3. *Causal Goodhart*, where there's a noncausal relationship between the metric and goal, and so intervening for the sake of the metric may not have impact on the goal
 4. *Adversarial Goodhart*, where adversaries attempt to game the metric

The authors then make the (hopefully well-accepted?) point that metrics are a proxy for what we care about. Clicks are proxies for engagement. Arrests are proxies for crime. Time spent is a proxy for ... oh, engagement too. These range in quality from "probably not that far off" to "actively harmful."

**Metrics can be gamed,** too. The authors present several case studies that I will not summarize here. But everything, from YouTube recommendations to essay grading algorithms to target wait times for hospitals, can be manipulated.

**Metrics overemphasize short-term concerns,** they continue. Measuring what users click on or engage with is a short-term problem, but longer-term issues like radicalization or mental health are far harder to study. They point to a Wells Fargo study where emphasizing a short-term cross-selling target led to 3.5 million fraudulent accounts being opened.


## Towards healthier metrics
What can we do? No one is trying to argue that metrics are useless, but too often they are stripped of context and held above all else. The authors propose a few interventions.

**Use a slate of metrics** and resist the urge to boil down multiple numbers into a single score. It's harder to game several metrics at once, and this can help center multiple dimensions of a problem.

**Combine with qualitative accounts**, which add richness and context to quantitative scores. They reference two papers I've seen widely cited, [Model Cards for Model Reporting]({{< ref "model_cards_mitchell.md" >}}) and [Datasheets for Datasets](https://arxiv.org/abs/1803.09010?context=cs).

**Involve a range of stakeholders,** including those who will be most impacted by the work. I don't think this is a new idea, but it's one of those things that the human-centered ML community [has been talking about]({{< ref "who_is_human_chancellor.md" >}}), and the gap with industry remains.

> While it is impossible to simply oppose metrics, the harms caused when metrics are overemphasized include manipulation, gaming, a focus on short-term outcomes to the detriment of longer-term values, and other harmful consequences.


## Discussion
The point about metrics being a proxy for what we really care about is not novel, but I am thinking about it in a new light after reading Eugene Wei's [Seeing Like an Algorithm](https://www.eugenewei.com/blog/2020/9/18/seeing-like-an-algorithm).

Like other social media, TikTok attempts to predict what content users will enjoy. They use signals such as whether a user watched to the end of a video or quickly swiped away, whether they clicked on the video creator's profile, and more. And like other social media, they cannot directly measure what users enjoy.

What they can do, though, is reduce the differences between the metrics and the true goals (the "regressional Goodhart" case). They do this via an algorithm-friendly design that makes sure the signals (swipe away from video, watch to the end) are as low-friction as possible, and so they are clearer proxies for disliking or liking a video.

I think it's an instructive example in how TikTok got around this metrics problem. To be sure, the stakes are lower there than in many machine learning problems---at worst a user sees a video that they won't like, and in that case they swipe away or close the app---but their solution, of improving the quality of their proxies, is probably applicable in other places.

I liked this paper. I think it was a little bit surface-level, but it was a focused discussion on the challenges in using shorter-term metrics. I agree with the points raised, and think that the focus on metrics obscures more important human-centered design considerations.

