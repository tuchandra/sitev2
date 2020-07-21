+++
title = "[Papers] Two more papers from the ICML Participatory Approaches to ML workshop"
date = 2020-07-21
draft = false
categories = ["papers"]
authors = ["many!"]
+++

Two more papers in the [Participatory Approaches to Machine Learning](https://participatoryml.github.io/) workshop at ICML 2020. These are more directly about participation: *Participation is not a Design Fix for Machine Learning* and *What If I Don't Like Any Of The Choices? The Limits of Preference Elicitation for Participatory Algorithm Design*.

<!--more-->

## Participation is not a Design Fix for Machine Learning
**Authors**: Mona Sloane (NYU); Emanuel Moss (CUNY Graduate Center); Olaitan Awomolo (Temple University); Laura Forlano (IIT)

**Links**: [recorded talk](https://www.dropbox.com/s/up7k3hq7p2ko5us/ICLM%20Presentation.mov?dl=0), [PDF](https://arxiv.org/ftp/arxiv/papers/2007/2007.02423.pdf)

More and more recently, the ML community wishes to build more participatory systems. This paper discusses different forms of participation and suggests how to consider participation more equitably.

The authors identify three kinds of participation:
 * **participation as work**: participants play a role in producing the data used to train or evaluate ML systems. ImageNet was labeled by Turkers, NLP datasets are often sourced from Wikipedia, and ordinary web users produce datasets for models. 
 * **participation as consultation**: designers consult stakeholders for short-term projects, possibly because it's unclear who the stakeholders are or longer-term direction isn't yet clear.
 * **participation as justice**: longer-term relationships, with more frequent communication and more trust and reciprocity. 

One of the major critiques is of the idea of scalability. "Part of the promise of ML," the authors write, is to scale (or generalize) from finite datasets to a broader context. However, "datasets are deeply context-bound, and that context, as well as the appropriateness of the use of those datasets, is lost in the scaling of ML applications."

How does this manifest itself? "Participation as consultation" happens early, but later it's too costly, precisely *because* of the scale that that participation helped to create. Ouch!

They therefore suggest:
 * recognize participation as work; obtain user consent, provide them with with opt-outs, or clarify how user behavior generates training data. And importantly, compensate "ghost workers" fairly.
 * design participation as consultation for specific contexts, meaning that those short-term sessions should be examined to make sure designers are engaging the right stakeholders.
 * "participation as justice must be genuine and long-term," i.e., use *actual* ideas and literature from justice to inform design, and don't just use "ethical AI" as smoke and mirrors.


## What If I Don't Like Any Of The Choices? The Limits of Preference Elicitation for Participatory Algorithm Design 
**Authors**: Samantha Robertson (UC Berkeley); Niloufar Salehi (UC Berkeley)

**Links**: [Recorded talk](https://www.youtube.com/watch?v=t2YAF1L0vRw&feature=youtu.be), [PDF](https://srobert4.github.io/files/limits_of_prefs.pdf)

The central claim here is that stakeholder *preferences* are not a sufficient form of democratic *participation*, and that overreliance on preferences can inhibit equitable outcomes.

They argue this through a case study from an SF school district; students submit preferences over schools and schools submit priorities over students, then they get matched together. The implicit assumptions were:

 > 1. that preferences are inherent and fixed
 > 2. that preferences fully encapsulate relevant values, needs, and goals
 > 3. that some aggregation of these preferences is socially optimal (best for the group)

(1) isn't true because preferences over schools are *not* inherent (they're often the product of research), and they don't exist in a vacuum (students may want to be at similar schools to their classmates).

(2) breaks down in the case where people don't like any of the options. Families with a car will be constrained to nearby schools, for example, and mere *preferences* can't address needs like lack of transportation.

(3), while not inherently flawed, is only one of many ways to distribute opportunities. In this case, social outcomes end up heavily constrained by these preferences, which in SF is inequitable.

**Suggestions** include allowing different formats for expressing preferences, giving more opportunities at different stages of the process, and allowing for public discourse and deliberation.

While preferences are an intuitive way to encourage participation, the authors argue, the story is more complicated. There are other things to keep in mind:
 > * How do we ask people what they want? Who responds?
 > * What are the alternatives they can choose from? Who benefits? What's missing?
 > * How do we decide who gets what they *most* want? How does that drive change, shift power, or promote justice? 

Great stuff! I think the idea that preferences aren't enough is fairly intuitive; they're an inherently constrained medium for something more complex, especially in the case of school assignments. They're not useless---that's not what this paper is saying---but they have limits.

> The student assignment context highlights the limitations of preference elicitation because the socio-political context is extremely complex, power imbalances exist among participants, and the stakes for each participant are very high.

Put otherwise, the preferences and school assignments do not exist in a vacuum; they exist in a complex, imbalanced social context. Matching algorithms that attempt to reduce this problem to a numerical one cannot be aware of this context.

