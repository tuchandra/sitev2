---
title: "'At the End of the Day Facebook Does What It Wants': How Users Experience Contesting Algorithmic Content Moderation"
date: 2020-11-08
draft: false
categories:
- papers
tags:
- cscw2020
authors:
- Kristen Vaccaro
- Christian Sandvig
- Karrie G Karahalios
---

When algorithms make decisions, humans should be able to appeal them. Right? This CSCW paper studies users' experience with contesting algorithmic content moderation decisions.


<!--more-->

**Link**: [ACM DL](https://dl.acm.org/doi/abs/10.1145/3415238) (free access)

**Authors**: Kristen Vaccaro, Christian Sandvig, Karrie G. Karahalios

It's been a stressful week, and I spent pretty much all my free time playing Hades and reading the book Why We Sleep; I didn't have the mental energy to read anything academic. But now, armed with more hope for the future, I'm getting back to some CSCW papers.

## Background and motivation
Automated content moderation is widespread on social media, partially so that moderation can scale to the size of platforms, and partially to reduce the already-heavy burden on human moderators. (For an excellent short paper on this, see [Content moderation, AI, and the question of scale](https://tusharc.dev/papers/content_moderation_scale_gillespie.html) by Tarleton Gillespie, published in *Big Data and Society*.)

This paper focuses on *contestability* of these systems, which (broadly!) means the extent to which human users can appeal or challenge algorithmic decisions. Ideally, a good appeals system can not only correct algorithmic mistakes, but also inform future design decisions and expose blind spots of algorithm designers.

> Despite the potential of such appeal systems to help users co-construct decision making processes in sociotechnical systems, they are often poorly designed or non-existent.

That's not surprising to me! Maybe I'm just cynical---but automated content moderation has always felt *intentionally* like it was designed to be uncontestable. To this end, the authors note that Facebook, Instagram, and Twitter did not originally allow appeals.


## How do we study appeal systems?
There are lots of questions to ask about appeal systems, but this paper studies users' perceptions of their fairness. How can systems be designed in a way that makes users feel like their voice has been heard?

> We study whether different appeal designs can improve users' perceptions of the fairness of the decision making process.

One factor is whether the outcome is favorable to the user. The authors control for this by only studying cases where appeals do not change the outcome (here, a suspended account).

Another factor is the presence of barriers that get in the way of submitting complaints. "Our review of content moderation system appeal designs shows that current systems often fail this goal."

The authors test three experimental conditions (plus a control without an option to appeal):
1. Users write an explanation that will be evaluated by a person
2. Users write an explanation that will be evaluated by an algorithm
3. Users are able to change their behavior during a short review window

The third is most interesting—human evaluations are costly, and algorithmic evaluations can be just as unfair as the original decisions. The authors evaluate these in terms of FACT—fairness, accountability, feelings of control, and trustworthiness.

For each, users (within a survey) were shown a message that their Facebook account had been suspended for spreading misinformation, then given the option to appeal (except for the control group). They then answered questions about fairness, accountability, feelings of control, and trustworthiness; along with questions about the decision making process and Facebook's approach to fairness.

## Results
> RQ1. How does adding appeals change users' perceptions of FACT of an algorithmic decision making system?

The authors found that adding appeals did *not* improve perceptions of fairness! I find this incredibly surprising, and so did the authors. This was true of all three appeal types. 

> One would expect current appeal designs to work well; Facebook has thousands of engineers to design effective appeal mechanisms. Our initial hypothesis was that the current appeal design would work better than none, and that a less punitive appeal would work even better. Instead, we find that none of these approaches improve user perceptions of fairness ... **this is surprising and new.**

## Perceptions of appeal systems
The most interesting part of this paper, though, is in the qualitative experiences that users describe.

> RQ2. What do users choose to contest in their appeals of algorithmic content moderation?

Many participants fundamentally argued that Facebook should not moderate content (48 of 182). Others (incorrectly) said Facebook was infringing on their freedom of speech, or that misinformation wasn't harmful or shouldn't be a priority relative to bigger moderation issues.

> To suspend someone for 'misinformation' is Big Brother at work.

I can't say that I totally disagree—account suspension is a pretty drastic step, and given how the experiment was designed, it's hard *not* to find this entire exercise to be blatantly unfair.

A lot of users noted aspects of automation as problematic:
 - that algorithms should not make final decisions
 - that "text processing cannot account for tone, intent, and context"
 - that a user was *critiquing* misinformation

And others contested opacity ("I have no idea what you mean, I don't spread false news") or the inconsistency ("Facebook, your bias is showing" or "Facebook suspends too many conservative accounts").

The sheer breadth of ways in which users contest algorithmic decisions is incredibly interesting, and I think that's the real value of this paper. The experiment is *fine*, but it's a negative result and (in my opinion) too artificial to create any real insights about fairness. But seeing dozens of users discuss automated content moderation is informative.

## Towards better appeals
So how can we do better? The failure modes of appeals include power imbalances (platform vs. single users), decisions being made in isolation (making it harder to protect minority interests when individuals have to advocate for themselves independently), and "perceived illegitimacy."

The authors recommend a few possible directions for future work:
 - "scaffolding the appeal" by providing a more structured form or better guiding the user
 - "unburdening the user" by letting them express their anger or frustration (and generally being more aware of the power imbalance)
 - "constructing the user" by better educating them


## Closing thoughts
This was really great. One of the research areas I'm interested in is how people perceive algorithmic black boxes, and content moderation systems certainly count. That people develop folk theories about how they work, and that these systems must contend with a large power imbalance, are important to keep in mind.

Like I wrote above, this collection of beliefs about a (artificial) moderation decision is informative for future design. I would love to see future work follow up with semi-structured interviews or an otherwise deeper treatment. 

> Platforms have the opportunity to build such true contestability into their systems through appeal designs; and in doing so, they can address the challenges of perceived illegitimacy, inconsistency, and power asymmetries. But to do so, they will need to embrace an approach that takes a user-focus in all aspects: design, code, but also policy.


