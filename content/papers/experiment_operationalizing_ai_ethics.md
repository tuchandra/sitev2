---
title: "[Paper] Biased Programmers? Or Biased Data? A Field Experiment in Operationalizing AI Ethics"
authors:
 - Bo Cowgill
 - Fabrizio Dell'Acqua
 - Samuel Deng
 - Daniel Hsu
 - Nakul Verma
 - Augustin Chaintreau
categories:
 - papers
date: 2020-12-14
draft: false
---

This study, from the NeurIPS [Navigating the Broader Impacts of AI Research workshop](https://nbiair.com/), is a field experiment in algorithmic bias. Take 400 programmers and ask them to predict math performance; in what ways are their algorithms biased?

<!--more-->

**Link**: [arXiv](https://arxiv.org/abs/2012.02394)

**Authors**: Bo Cowgill, Fabrizio Dell'Acqua, Samuel Deng, Daniel Hsu, Nakul Verma, Augustin Chaintreau

## Experimental design
The study population was roughly 400 people, 80% of whom are at a machine learning bootcamp at a university (presumably Columbia), and the rest of whom are freelance machine learning engineers. 

They were divided into treatments which did or did not have sample selection problems in training data; of the ones who did, some were also given a reminder of algorithmic bias or a whitepaper about sample correction.

The engineers were asked to use machine learning to predict math performance from job application features; their algorithms were built individually and tested on unseen data. The testing data included records which differed only in gender, akin to counterfactuals or audit studies.

The main finding of this paper is that having access to better training data helps engineers lower bias. They did not find that female or minority programmers produced less biased algorithms. They *did* find correlation among predictions within demographic groups. The interventions (reminder & whitepaper) did not help.


## My thoughts
My main critique of this paper is that it reinforces the "biased algorithms are due to biased data" narrative. This idea places data collection and preparation as an act separate from machine learning itself, turning machine learning into a myopic "algorithm development" problem. Rachel Thomas has a great [Twitter thread](https://twitter.com/math_rachel/status/1288514000225841152) on this subject.

There's a more charitable view. One might say that this paper emphasizes the importance of training data in machine learning. But I don't think that's true, either; it's a reductionist view of machine learning. Dr. Thomas suggests:

> It's indicative of a narrow framing of bias as solely an issue with training data, which can be easily fixed with different training data. This ignores crucial questions, such as whether this task should exist at all and who is deploying it on whom.

With all this said, the secondary finding of the paper is very interesting.

> However, we do find that prediction errors are correlated within demographic groups, particularly gender. Specifically, two male programmers’ prediction errors are more likely to be correlated with each other. ... This creates performance improvements through cross-demographic averaging.

The natural extension of this is that diverse teams, where people have different perspectives and (according to this) will produce different kinds of algorithms, are going to be better off, but a team of male programmers will double down on errors. Of course, this *still* frames machine learning as an algorithmic problem alone; but they're right to recommend diverse teams!

Naturally, the tech press took this and ran with the [headline](https://venturebeat.com/2020/12/09/columbia-researchers-find-white-men-are-the-worst-at-reducing-ai-bias/) "Study finds diversity in data science teams is key in reducing algorithmic bias." That's better than the original headline, which was "Columbia researchers find white men are the worst at reducing AI bias" (look at the URL!). Neither of those are *that* accurate, but ... okay, tech press.

More broadly, I love reading workshop papers because of how quick they are to get through. That means they often lack details, though. I would have liked to see more detail in the results; what were the prediction errors? How strongly were they correlated? Hopefully, they'll expand on this with future work.