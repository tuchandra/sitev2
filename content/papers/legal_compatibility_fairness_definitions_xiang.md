---
title: "[Paper] On the Legal Compatibility of Fairness Definitions"
authors:
 - Alice Xiang
 - Inioluwa Deborah Raji
date: 2021-01-07
draft: true
categories: [papers]
tags: [reading club]
---


<!--more-->

**Links**: [arXiv](https://arxiv.org/abs/1912.00761), [blog post](https://www.partnershiponai.org/to-prevent-algorithmic-bias-legal-and-technical-definitions-around-algorithmic-fairness-must-align/), [Twitter thread](https://twitter.com/rajiinio/status/1201694932215517185); presented at the HCML workshop at NeurIPS 2019


## Background and motivation
The machine learning community and legal system do not always agree on definitions of fairness. The ML fairness community will use legal terminology in imprecise or misleading ways. This is problematic for two reasons:

> First, to demonstrate evidence of algorithmic unfairness, ML definitions must accurately map onto their legal counterparts to establish liability. ... Second, to deploy bias correction methods in the real world, it is important that the methods themselves are not determined to be discriminatory from a legal perpsective.

ML models must be compatible with the law. This means more than avoiding discrimination. It means that the language and metrics, or lack thereof, to avoid discrimination must match between the ML domain and the legal one.


## Examples of poorly mapped concepts
The authors described a few concepts that are imprecisely mapped between the ML fairness community and the legal definitions. This table is a summary of Section 2 in the paper.

Concept | ML interpretation | Legal interpretation
--------|-------------------|---------------------
Discrimination | Typically defined in terms of metrics, which can be "removed" | Typically defined through "motive, evidenced intent of exclusion, and causality, rather than simply outcomes," which is gauged in context
Protected classes | Often conflated with "minority and marginalized groups" | Symmetric with respect to race and gender
Affirmative action | Treated as cases where we "explicitly take demographics into account" | Allows the use of race as a holistic, not explicit, factor
Disparate treatment | Whether a protected attribute is used in a decision process | Asks whether actions were *motivated* by discriminatory intent
Disparate impact | "when outcomes differ across subgroups" | Only shown if the outcomes can't be explained in a nondiscriminatory manner, or if there is no less discriminatory alternative

The discrimination example stood out to me. The authors cite [Equality of Opportunity in Supervised Learning]({{< ref "papers/equality_of_opportunity_srebro" >}}) as an example of something you *can't* do—"remove discrimination"—which I didn't think about when reading that a few months ago.

It's also worth noting that the legal community might adopt narrower views of court decisions than the ML fairness community. When cases are heavily motivated by the details (in an example about disparate treatment in promoting firefighters, "the fact that many firefighters spent significant time and money preparing for the test"), it may not be possible to draw broad conclusions about its applicability.


## Lessons for ML fairness
**Intersectionality** (the idea that people's identities interact, e.g., that Black women face challenges different than the union of challenges faced by Black people and by women) is typically not considered in ML fairness, where people are represented as vectors of their class attribiutes.

**Procedural fairness** in ML typically refers to the features that help a model make its decision. Legally, it is a qualitative concept that "seeks to arrive at just outcomes through iterative processes and the close examination of the set of governance structures in place to guide individual human decision-making." Far broader and fuzzier than anything seen in ML, where [metrics rule all]({{< ref "papers/reliance_metrics_problem_thomas" >}}).


## Lessons for law
On the other hand, **measuring bias** becomes empirically possible with algorithms. "Making a case for the use of protected variables to effectively measure discrimination, although an intuitive and proven conclusion from a mathematical perspective, is still much more difficult to make a case for in a legal sense." The legal system could adapt to the emergent reality of algorithms here.

The law also typically requires **narrower domains** for anti-discrimination protections than the fairness community is accustomed to, and the ML community could feasibly inform what the future should look like:

> Although ML research often discusses the fairness of ad targeting and recommendation algorithms, bias in these algorithms—although potentially immoral-is not generally illegal.

I'm thinking here about Twitter's [image cropping algorithm](https://www.theverge.com/2020/10/2/21498619/twitter-image-cropping-update-racial-bias-machine-learning), which was found to favor images of white people over Black ones. It's not illegal that it was biased in this way, and it's hard to imagine that it should be. But were this to somehow cause someone harm, it would be hard to find legal recourse.

Finally, anti-discrimination laws are often motivated by **causality**, but algorithmic causality is murkier. "From a statistical perpsective, the presence or absence of protected class variables (or close proxies) in the algorithm does not indicate the presence or absense of a causal connection." The ML community might need to intermediate between legal and statistical definitions of causality.


## My thoughts
This is an interesting paper! I wonder how prescient it'll end up seeming. It feels to me like relevant case law is either sparse or doesn't yet exist; that we're still awaiting court decisions to clarify on how discrimination in ML will end up being mapped onto our legal system.

The idea reminds me of *construct validity* in social computing—that whatever definitions of fairness we come up with have to be compatible with their legal counterparts. It makes sense; especially if ML uses a subtley different definition, that could just end up confusing courts.

A little over a year ago, I read [Discrimination in the Age of Algorithms]({{< ref "papers/discrimination_algorithms_kleinberg_1" >}}), which talked about how definitions of and regulations for discrimination will have to evolve over time. They too analyze issues of disparate impact and treatment, bias, and affirmative action to see how they might be reimagined in a future with more algorithmic decisions.

I'm looking forward to seeing how this issue evolves over time.

