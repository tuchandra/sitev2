+++
title = "[Paper] Proposed Guidelines for the Responsible Use of Explainable Machine Learning"
date = 2020-02-17
draft = "false"
categories = ["papers"]
authors = ["Patrick Hall", "Navdeep Gill", "Nicholas Schmidt"]
+++

This is a paper attempting to make explainable AI (XAI) a little more concrete by developing proposed guidelines for its use. This was a workshop paper at NeurIPS 2019, then a talk at the KDD 2019 workshop.

<!--more-->

**Authors**: Patrick Hall, Navdeep Gill, Nicholas Schmidt

**Link**: on [arXiv](https://arxiv.org/abs/1906.03533), plus related slides [on Github](https://github.com/jphall663/kdd_2019)

**How I found this paper**: I met the lead author at Spark + AI Summit where he gave [a talk on ML interpretability](https://tusharc.dev/spark/interpretable_ai.html) (link is to my notes). This paper came onto my radar after following some links from the talk late last year.

## Summary
Explainable AI (XAI) has been in vogue recently, as ML models continue to become more complex and more opaque. It's great for enabling humans to learn from ML and to understand why a model behaved the way it did, but (like any technology) it can be misused.

### Definitions

The paper includes definitions that will be useful for this blog post and future ones:

 * **Interpretability**: the ability to explain or present in understandable terms to a human
 * **Explanation**: collection of visual and/or interactive artifacts that provide a user with sufficient description of a model's behavior to accurately perfrom tasks like evaluation, trusting, predicting, or improving a model
 * **Explainable ML**: mostly (local or global) post-hoc analysis, like feature importances (Shapley values), surrogate models (LIME, surrogate decision trees), or visualizations (partial dependence plots, individual conditional expectations)
 * **Interpretable ML**: white-box models (linear models, decision trees, rule-based models, etc.)
 * **Unwanted sociological bias**: one of many forms of discrimination, including overt discrimination or disparate treatment or impact.

A model is *biased* if (1) group membership is not independent of the likelihood of a favorable outcome, or (2) membership in a subset of a group is not independent of that likelihood. The discrimination that causes this bias may or may not be illegal.

### Proposed guidelines
**Use explanations to enable understanding**: explanations typically increase understanding and transparency, but not necessarily trust. It's possible to understand a model without trusting it (e.g., when a feature is overemphasized, so you know *why* it's making a decision but don't expect it to work when that feature varies). It's possible to trust a model without understanding it (pick your favorite neural network).

**Learn how explainable ML is used for nefarious purposes**: these methods can cover for intentionally misused black-boxes or enable stealing of training data. Understanding the dark side of this technology can help to detect abuse.

**Augment surrogate models with direct explanation**: "models of models" (surrogates) can be helpful, but they should be used alongside techniques that use the original model (e.g., Shapley values, partial dependence plots, ALE, or ICE plots).

**Use highly interpretable mechanisms for mission- or life-critical ML**: given the fact that explaining black boxes is still super challenging, if a decision is life-altering or high-value, use an interpretable model. Interpretable models are also recommended for when a value needs to be appealable.

Regulatory statutes are likely to require interpretable models (and in some cases, they already do). Adverse action notices (e.g., why you got denied for a credit card) are also required in many cases, and models that enable these are required by default.

A corollary to the last guideline that I like is to use explanations alongside testing for disparate impact. Explanations increase transparency, but testing for disparate impact increases trust. As discussed in the first section, these are not the same!


## Thoughts, connections, and questions
I like how this paper gives *practical* advice in the wake of a wave of coverage on explainable and interpretable AI. As ML systems continue to proliferate into everyday decision making, it's important that we continue to develop techniques to understand them.

Development of new techniques in this field appears to be tightly linked to tech policy. It seems to me that interpretable and explainable AI are starting to receive more attention as [calls to regulate AI](https://www.bbc.com/news/technology-51178198) increase and as stories of AI bias [continue to appear]({{< ref "posts/imagenet_bias_wired.md" >}}) in the news. There is likely to be a hodgepodge of regulations that allow certain things in certain situations, and I think we'll see this field grow quickly as these regulations continue to appear.

I really love Hall's point about understanding and trust being different. I think this will continue to be an important distinction as we (regular people) are on the "receiving end" of ML models. For example, I trust the neural nets behind my Google Home to process what I say and give me a reasonable response. I don't, however, understand them at all. That's fine for this application, though, because I don't *need* to understand how it parses my speech.

To that point, though, there appear to be subfields of ML where interpetable models have no place at all; a lot of NLP and computer vision applications seem this way based on my (surface level) understanding. I'm not aware of any interpetable models that can reach close to SOTA on image classification or speech recognition tasks.

Other have warned against the use of black box models in high-stakes decisions; Cynthia Rudin did so in a [paper](https://www.nature.com/articles/s42256-019-0048-x) that received some attention. In applications where CV causes an impact on human lives (self-driving cars, anyone?), what are we to do? One possible solution would be to treat the output of the CV algorithm as fact, and have the decision making that follows it be interpretable; but this might be sidestepping the problem (e.g., "why didn't the car recognize that as a person?"). This is an interesting problem.
