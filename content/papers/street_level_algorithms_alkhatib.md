---
title: '[Paper] Street-Level Algorithms: A Theory at the Gaps between Policy and Decisions'
authors:
 - Ali Alkhatib
 - Michael Bernstein
date: 2021-01-14
categories: [papers]
tags: [reading club, chi2019]
---

Street-level bureaucrats are the people making routine decisions for institutions—administrators, police, professors, and more. This work introduces *street-level algorithms* as an idea for algorithms that are tasked with filling the same role.

<!--more-->

**Link**: [PDF](https://hci.stanford.edu/publications/2019/streetlevelalgorithms/streetlevelalgorithms-chi2019.pdf), [ACM DL](https://dl.acm.org/doi/10.1145/3290605.3300760)

**Authors**: Ali Alkhatib, Michael Bernstein


## Motivation: from bureaucrats to algorithms
The theory of [street-level bureaucrats](https://en.wikipedia.org/wiki/Street-level_bureaucracy) has been around for a while, originally coined by Michael Lipsky in 1969. Lipsky argued that policy implementation comes down to ordinary people (the bureaucrats). From this paper's introduction:

> Police officers choose whether to issue citations to people speeding only slightly over the speed limit; judges may make every effort to make bail accessible given a defendant’s circumstances; teachers may allow some flexibility in course prerequisites.

These *street-level bureaucrats* are where the power of an institution (police, university, etc.) actually manifests itself. 

It's obvious how this can be problematic. Judges might dismiss cases involving white people more often, or women might be less likely to ask for a prerequisite to be waived. But laws are not capable of enforcing themselves, and it's through street-level bureaucrats that laws and policy end up touching people's lives.

**How do we get to algorithms?** The authors argue that increasingly, algorithms are making decisions similar to Lipsky's street-level bureaucrats. *Street-level algorithms* take some kind of policy and data, and manifest their power as decisions that immediately affect people.

> These systems that make and execute decisions about us represent the layer that mediates the interaction between humans and much more nebulous sets of computational systems. It’s here, we argue, that we should be focusing when we discuss questions of fairness in algorithmic systems, raise concerns about the lack of accountability of complex algorithms, and critique the lack of transparency in the design, training, and execution of algorithmic systems.

The last point is important. Questions about fairness and accountability do not exist in a vacuum. They should be addressed within the entire sociotechnical context in which the algorithms are applied.

## Reflexivity and decision making
The authors' main point has to do with *reflexivity* of bureaucrats and algorithms.

Street-level bureaucrats practice discretion. They do not have to enforce policies explicitly as stated, and they are comfortable with ambiguity. They can "fill in the gaps" when encountering new situations that don't fit within the bounds of what they've seen before.

Street-level algorithms, however, can only be "reflexive" in this way *after* making a decision. Even the most sophisticated of reinforcement learning systems receive feedback after an action is taken—and that's in the best case when there is feedback at all, or when the algorithm can be changed.

> Our central claim is that street–level algorithms make frustrating decisions in many situations where street–level bureaucrats do not, because street–level bureaucrats can reflexively refine the contours of their decision boundary *before* making a decision on a novel or marginal case, but street–level algorithms at best refine these contours only *after* they make a decision.


## Case studies
One case study comes from **content moderation on YouTube**. YouTube uses machine learning to classify whether or not uploaded videos should be demonetized for breaking their community guidelines. This can obviously fail:
 - at one point, videos from transgender creators were automatically labeled as "sexually explicit" and demonetized
 - in the other direction, "fraudulent videos of Peppa Pig being tortured at a dentist's office were left alone." What?!

The authors contrast this to police monitoring street performers in cities. It's often restricted to certain contexts, but those contexts cannot be explicitly enumerated or codified.

> Police have to be flexible about the application of their powers and make reasonable decisions in new circumstances. The challenge is to characterize the novelty of the situation and reflect on the decision they're being called to make. More importantly, they must make these decisions in the moment.

Algorithms can't do this. Even with more training data—a commonly proposed solution—algorithms can't anticipate culture shifting.

**Crowdwork** provides another example. Platforms like Mechanical Turk algorithmically evaluate worker responses to questions by comparing them to a gold standard response. But if a worker's response is new (but still correct), it might be labeled as incorrect. "The algorithm at best can only ask if this work resembles other work."

Finally, the more interesting case is in the **justice system**, where a street-level judge *uses* an also-street-level algorithm giving a (bail or sentencing) recommendation.

> This interaction can be fraught: bureaucrats in the judicial system resist, buffer, and circumvent the algorithmic recommendations, especially as those algorithms attempt to subsume the work of those bureaucrats. 

This interaction matters because it reminds us that we cannot encode a legal system into an algorithm. Why bother having judges if the law were no more than a set of rules? The algorithms aren't taking on the role of an abstract policy or law—they're taking on the role of the bureaucrats. And the bureaucrat's job is messier, more vague, and requires more discretion.


## Intersectionality and margins
From all of these case studies, it becomes clear that the main failure modes of street-level algorithms are *at the margins*. "While similar cases in the mainstream may well have been seen before by the algorithm, when the case is at the margin, its particular intersection of traits may be completely novel."

The authors connect this to intersectionality: the idea that combinations of traits need to be treated holistically, not as the sum of their parts. How can algorithms identify that a situation is so new that it must be evaluated holistically?

> Much of the discussion of judicial bail recommendation algorithms today is focused on the goals of fairness, accountability and transparency, or *FAT*. We argue that FAT is a necessary, but not sufficient, goal. Even a perfectly fair, transparent, and accountable algorithm will make errors of generalization in marginal or new cases.


## My thoughts
I love papers that take an idea from another field and apply it to computing. It's valuable to be able to draw from the history of an existing theory which has been refined over time. Here, the idea of street-level bureaucrats provides a rich context for thinking about algorithmic decision making systems in a new way.

This was my first exposure to the idea of street-level bureaucrats, and I appreciate how deeply practical it seems. The concept of street-level algorithms feels like a natural extension.

---

This reminds me of another paper I read, [Users Experience Contesting Algorithmic Content Moderation]({{< ref "papers/automated_content_moderation_karahalios" >}}), a paper I read from CSCW this year. Those researchers found many users expressing frustration with automated decision making systems—exactly the problem that this paper discusses!

The authors note that street-level bureaucrats are not perfectly fair or transparent. Historically, many bureaucrats been agents of discrimination, applying discriminatory policies or [enforcing policies unequally](https://twitter.com/le_roux_nicolas/status/1334601960972906496). Given the framing of this paper, it's natural to suggest overseeing algorithms in similar ways to how we oversee bureaucrats. But it's worth remembering (and the authors do note this) that those regulatory systems have perpetuated various failures of bureaucracy, too.

Put otherwise, we shouldn't expect to oversee algorithmic systems in the same way that we oversee bureaucratic systems. Existing regulation still allows bureaucracy to discriminate or cause harm. Algorithms can do this too—faster and at a greater scale.

---

Finally, I was a little bit underwhelmed by the novelty of this paper. I found myself thinking "yeah, I've heard this before" in a couple of places. I hadn't seen the term "street-level bureaucrats," but:
 - the idea of algorithmic decision making systems struggling at the margins came up in *Because Internet*, where the author talked about how language evolves over time
 - the idea of algorithms being challenged by intersectionality came up in [Critical Race Theory for HCI]({{< ref "papers/critical_race_theory_ogburu" >}})
 - the idea of algorithmic systems replacing bureaucratic ones was discussed in [this article from The Verge](https://www.theverge.com/2018/3/21/17144260/healthcare-medicaid-algorithm-arkansas-cerebral-palsy)

Granted, the Critical Race Theory paper and the CSCW paper linked above both came out after this one, so that's not really a fair criticism! It's always tough to gauge the extent to which ideas from a paper have percolated into public discourse. And so I don't mean to undersell the work; I'd still recommend this as a good introduction that provides a new way of thinking about algorithmic systems.


