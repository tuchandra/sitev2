---
title: "[Paper] Hidden Figures: Roles and Pathways of Successful OSS Contributors"
date: 2020-10-24
draft: false
categories:
- papers
tags:
- cscw2020
authors:
 - Bianca Trinkenreich
 - Mariam Guizani
 - Igor Wiese
 - Anita Sarma
 - Igor Steinmacher
---

This CSCW paper studies open source software contributors—all of them, not just maintainers and developers. While open source has often been looked at as a purely technical community, this paper draws attention to the other forms of work that contributors do.

<!--more-->

**Link**: [ACM DL](https://dl.acm.org/doi/abs/10.1145/3415251) (free access)

**Authors**: Bianca Trinkenreich, Mariam Guizani, Igor Wiese, Anita Sarma, Igor Steinmacher

## Background and motivation
Open source software (OSS, or just "open source") is the foundation of the modern software industry. The vast majority of software today draws upon open source tools—languages, libraries, and tools that are free to use. Past research has studied OSS, but some parts are still poorly understood.

In particular, "there is a need to expand our understanding beyond the simplistic notion of a technical core-periphery contribution structure." Past research has focused mostly on technical contributors (i.e., developers), but lots of other roles exist in open source, and are not paid as much attention.

This motivates the two research questions:

> **RQ1.** What different roles can be played by successful and recognized contributors to OSS?
> 
> **RQ2.** How do roles evolve for such successful and recognized OSS contributors?

**Why this matters**: open source isn't just a group of developers getting together to build tools. Successful open source projects might have huge numbers of volunteer and paid contributors, industry support, and non-developer roles that are essential to their success.

## Interviews
To study these "hidden roles," the authors recruited 17 open source contributors across 15 projects (ranging in size from 30 to 3000 contributors, covering different kinds of tooling, and being backed by different kinds of organizations). 

The researchers conducted semi-structured interviews with each, asking the central question "Can you walk me through your career journey and tell me the story from when you started until now?" They analyzed the transcripts with inductive open coding.

I love when papers reference seemingly unrelated fields to back up their research methods:

> Our sample—composed of 17 participants ... is in line with the anthropology literature, which mentions that a set of 10-20 knowledgeable people is sufficient to uncover and understand the core categories in any cultural domain or study of lived experience.

(Not that this is a bad thing to do—just funny to me.)


## Community centric roles
The authors identified a set of community-centric (including non-coding-related) roles, like developer advocates and mentors. These included "community founder" and "community manager."

The community manager roles were further divided into many other activities:
 - **advocate**: working on "large mass engagement," giving and organizing talks, and advertising software
 - **mentor**: helping newcomers to become more engaged
 - **strategist**: often related to governance, focused on improving processes and transparency (often internally within a company supporting OSS)
 - **treasurer**: making sure the ecosystem is financially sustainable!
 - **writer**: creating documentation, education materials, books, etc.
 - **license manager**: handling legal work

The project-centric roles included coders, project managers, and system admins. That's pretty standard stuff.


## Entry points and career movements
Studying the participants' career pathways revealed that there was no set plan for working in OSS.

> Participants changed their pathways in different ways, moving from coding to non-coding-related roles, across companies and projects, and performing parallel OSS and non-OSS activities.

Some started while in graduate school, and others while lurking. Some started at large software companies, and others at startups. Others worked at nonprofits, realizing the importance of community-facing work, or had no background in technology at all.

> Non-coding activities are an integral part of a flexible and fluid OSS career path, which encompasses multiple roles. Different participants from different backgrounds built their OSS careers through different roles and activities. 


## Discussion
I wrote about my *surprise* that OSS exists in [yesterday's paper]({{< ref "papers/mitigating_exploitations_indie_dev_freeman.md" >}}). When I step back and realize how much work—often unpaid, often unrecognized, often unappreciated—goes into open source software, it's all pretty astounding.

This paper finds that because OSS has matured (because they are a driving force in software today), there are a new set of roles that contribute to its success. People jump between these roles, or work in multiple at once, but the most important point is that **lots of non-coding work goes into open source.**

The authors draw upon *legitimate peripheral participation* (LPP) to explain some of these findings. LPP describes how participants can "lurk" on the periphery, building skills and knowledge, before learning enough to contribute more visibly. This explains several, but not all, pathways in this paper.

**A call for action**: the researchers call upon the OSS community to recognize and reward these community-facing contributors. (I hate the term "non-technical"—it just means different skills, and is used too often to discredit people who can't code.)

**Threats to validity**: I haven't seen this section in a paper before, but the authors describe several ways in which their study might be *invalid*:
 - construct validity, if their definition of open source wasn't accurate (unlikely!)
 - internal validity, which may be threatened by the fact that they only interviewed *successful* open source contributors
 - reliability, the extent to which this can be replicated and is consistent
 - theoretical saturation, or if they created a sufficiently high-quality sample (they hope so!)

This was a good read. I love that the goal of this paper was essentially to dive into non-coding roles in open source. It might not be apparent that these folks play a major role in a project's success, but this paper makes clear that they do.


