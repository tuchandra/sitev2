+++
title = "[Paper] Improving fairness in machine learning systems: What do industry practitioners need?"
date = 2020-09-26
draft = false
categories = ["papers"]
tags = ["chi2019", "reading club"]
authors = ["Kenneth Holstein", "Jennifer Wortman Vaughan", "Hal Daumé III", "Miro Dudík", "Hanna Wallach"]
+++

There's lots of research on what (un)fairness in machine learning looks like. But what do industry practitioners actually need to address fairness issues? This paper surveys them to find out.

<!--more-->

**Authors**: Kenneth Holstein, Jennifer Wortman Vaughan, Hal Daumé III, Miro Dudík, Hanna Wallach

**Link**: [arXiv](https://arxiv.org/abs/1812.05239) 

## Background
From the abstract:

> The potential for machine learning (ML) systems to amplify social inequities and unfairness is receiving increasing popular and academic attention.
> A surge of recent work has focused on the development of algorithmic tools to assess and mitigate such unfairness.
> If these tools are to have a positive impact on industry practice, however, it is crucial that their design be informed by an understanding of real-world needs. 

This paper studies industry practitioners' challenges and needs in developing fairer ML systems. 
The authors categorize these challenges, then highlight directions of future research to address practitioners' needs.

The authors describe some of the ways in which (un)fairness in ML has been studied:
 * Developing statistical definitions of fairness
 * Studying users' expectations on algorithmic fairness, finding that they do not always align with statistical definitions
 * Auditing ML products and creating calls to action

Only one case studied the needs of ML practitioners: see [Veale et al. at CHI 2018](https://arxiv.org/abs/1802.01029). 
This paper expands on that work.


## Interviews and surveys
The authors ran two sets of interviews: one pilot round with 6 people, and a second, more in-depth set with 29 people. 
The interviewees worked on 25 ML product teams across 10 companies.
Their roles included product managers, data scientists, ML engineers, chief data scientist and CTO, UX designer and researcher, and several others.

I found interesting the challenges that the researchers faced in recruiting participants:

> For instance, given a recent trend of negative media coverage calling out algorithmic biases and unfairness in widely-used ML systems, our contacts often expressed strong fears that their team or company's identity might leak to the popular press, harming their reputation.
> Some contacts revealed a general distrust of researchers ...
> Finally, some contacts worried that, in diving into the details of their teams' prior experiences, they might inadvertently reveal trade secrets.

These are worth keeping in mind when thinking about research-industry partnerships.

They later ran a survey, completed by 267 ML practitioners in a wide variety of roles, which asked about teams' current practices, challenges, and needs, offering closed- and free-response questions.


## Key findings
**Fairness-aware data collection**: fair ML research typically focuses on mitigating bias, but many interviewees reported their training datasets (not models) being the most important place to improve fairness.
When data is collected from in-the-wild users, "challenges can arise when specific user populations are less engaged with the product."

The takeaway here is that practitioners frequently have more of an ability to collect additional (or better) training data than papers on algorithmic "de-biasing" typically assume.

**Challenges due to blind spots**: interviewees were worried about their teams' "blind spots," which might stop them from even monitoring for certain kinds of unfairness.
"You'll know if there's fairness issues if someone raises hell online," one said, but this is obviously not ideal for detecting unfairness.
51% of survey respondents agreed that serious fairness issues are only discovered *after* deployment.

One interesting challenge was that most framings of AI fairness focus on legally protected attributes, like ethnicity and gender.
But a participant noted that the subpopulations of interest can be domain- or problem-based (e.g., in essay scoring software, whether the author is a native speaker).
Even with training in fairness and proactive searches for it, blind spots can arise from cultural background or lack of domain knowledge. 

> Interviewees noted that it would be helpful to somehow pool knowledge of potential fairness issues in specific application domains across teams with different backgrounds, who have complementary knowledge and blind spots.

**Needs for more proactive auditing processes**: there are lots of complementary findings here:
 * of 51% of survey respondents who said their team had not found any fairness issues in their products, 55% said that they believe undetected issues "probably" or "definitely" exist.
 * only 21% of respondents said their team prioritizes fairness "a lot" or "a great deal"
 * only ~20% of respondents said they have fairness KPIs or automated tests for fairness

> Several of our interviewees reported that their team had searched the fair ML literature for existing fairness metrics.
However, they often failed to find metrics that readily applied to their specific application domains.

Sometimes, access to individual-level demographics (which a lot of fair ML literature assumes) is not permitted.
One data scientist recounted building a classifier to predict sex and ethnicity, so that they could use the predicted protected attributes to audit their product ... but they knew this was buggy. 

The "enormous space of potential fairness issues" was also a challenge.
A UX researcher noted that even though they recruit diverse groups, these contain 8 - 10 people, from which it's impossible to to represent everybody.
Another described fairness testing as "spot checks" and not comprehensive. 
Others noted that it was difficult to diagnose between one-off issues and systemic problems.

**Needs for more holistic auditing methods**: interviewees noted differences between popular and academic discourse on fairness (usually thought of in terms of models) and their domain (thinking about the more complex, harder to measure effects of ML systems).
A PM on a web image search noted that some of their users were uncomfortable with "manipulating" search results of e.g., CEOs to show fewer white men.
A data scientist identified a possible need for simulation-based auditing for the case of long-term feedback loops that were impossible to screen for in advance.

**Addressing detected issues**: interviewees discussed challenges in debugging and remediating fairness issues.
They often struggled to identify the cause, then to decide where to focus their efforts.
One team cited additional data collection as their "last resort," but another as their first step. Teams noted lots of wasted time pursuing dead ends.

Others cited:
 * "fears of unexpected side effects as a deterrent to addressing fairness issues" (e.g., if the user experience changes for the worse)
 * being unable to predict how changes would affect the UX in advance
 * not knowing how much additional data they'd need to collect
 * needing to change broader system design (using the term "healthcare professional" instead of the often-gendered "doctor" or "nurse)

> Interviewees often expressed unease with the idea that their teams' technical choices can have major societal impacts. 
> For example, a technical director ... said *'ML models' main assumption [is] that the past is similar to the future [...] if I don't want to have the same future, am I in the position to define the future for society or not?'*

**Biases in the humans in the loop**: people noted possible biases of humans involved in creating or collecting trading data.
An example was in essay scoring software, where biases in the human scorers might be reflected in the models.


## Future work
> In this work, we conducted the first systematic investigation of industry teams' challenges and needs for support in developing fairer ML systems.
> Even when practitioners are motivated to improve fairness in their products, they often face various technical and organizational barriers.

The authors note a few directions for future research:

 * Support practitioners in collecting and curating high-quality datasets
 * Create domain-specific educational resources
 * Address fairness auditing without access to individual demographic information
 * Develop tools for fairness-focused debugging
 * Build automated auditing tools and improve the ability to prototype ML systems


## Discussion
This paper was incredible.

I found this when looking for work that discussed the research-industry gap in AI fairness.
I've been recently thinking along the same lines, thanks to conversations with my friend [Judah](https://judahgnewman.com/).
From my position in industry, it is near impossible me to practically contribute to work on algorithmic unfairness; many of the issues raised in the paper were salient for me.

Perhaps more importantly, I think this kind of collaboration is *more* important in the fields of AI fairness, transparency, etc., than other machine learning subfields.
In computer vision, it's fine if research labs develop better image recognition models (with some exceptions, like facial recognition) while industry practitioners use whatever models they find appropriate.
In AI fairness, though, the problems being addressed are often ones that stem from industry.
As such, a tight collaboration between fairness researchers and practitioners is essential.

A lot of academic research is just that: academic.
Even in deeply practical fields like AI fairness or human-centered AI, papers like [Equality of Opportunity in Supervised Learning]({{< ref "equality_of_opportunity_srebro.md" >}}) or [Who is the Human in Human Centered Machine Learning]({{< ref "who_is_human_chancellor.md" >}}) raise incredibly interesting points but have little immediate application to practitioners.

This is not to criticise those papers. 
Those papers contain interesting, valuable work that advances the field. 
Building tools for industry practitioners to use is challenging, though, and research on bridging this gap is a large part of what this paper calls for.

Here's a quote I loved, with which I'll close this post:

> While some fair ML tools are already being prototyped with practitioners, their initial design often appears to be driven more by the availability of algorithmic methods than by real-world needs.
> If such tools are to have a positive and meaningful impact on industry practice, however, it is crucial that their design be informed by an understanding of practitioners' actual challenges and needs for support in developing fairer ML systems.

Great work.
