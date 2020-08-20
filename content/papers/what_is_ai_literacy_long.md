+++
title = "[Paper] What is AI Literacy? Competencies and Design Considerations"
date = 2020-08-19
draft = false
categories = ["papers"]
tags = ["chi2020"]
authors = ["Duri Long", "Brian S Magerko"]
+++

What does it mean to be AI literate? This work, which received a Best Paper Honorable Mention at CHI 2020, first defines *AI literacy* in terms of its core competencies, then discusses considerations for the design of AI systems.

<!--more-->

**Authors**: Duri Long, Brian S Magerko (Georgia Tech)

**Link**: [ACM Digital Library](https://dl.acm.org/doi/abs/10.1145/3313831.3376727), [PDF](https://static1.squarespace.com/static/53c69580e4b08011fc2337bf/t/5e2893e4a9d342214836e832/1579717605435/CHI+2020+AI+Literacy+Paper-Camera+Ready.pdf)

## My definition of AI literacy
This paper answers the question of what "AI literacy" actually means. One of its core contributions is a set of *competencies* that, together, make up AI literacy. 

Before I started reading, I thought about what I believe AI literacy to be. I came up with this:

> AI literacy is the ability to understand what AI systems are doing (to the extent that the system allows) and what the consequences of their use might be.
> 
> This includes an understanding of how AI systems are making decisions (based on what data; according to what criteria; on what population) and an understanding of what impact its outputs have (how the outputs inform decisions; how accurate its outputs are; how its outputs affect different groups of people).
> 
> Underlying this is an understanding of the types of problems AI systems attempt to solve (and which problems are and aren't appropriate for AI) and a data literacy (where different kinds of data come from; who data belongs to; how data is collected, processed, and shared).

I don't claim that this is a good definition of AI literacy (I'm sure the paper will do a much better job), but I think writing this down helped to ground my understanding.


## Background and motivation
Why does AI literacy matter? Mostly because of misconceptions, the authors claim. People might not know they are even interacting with AI, creating misconceptions about what AI is and is not. "These misconceptions can limit people's ability to effectively use, collaborate with, and act as critical consumers of AI," or cause improper regulatory action or public disappointment.

There is a need, then, for additional research investigating:

> (a) what competencies users need in order to effectively interact with and critically evaluate AI, and
> 
> (b) how to design leaner-centered AI technologies that foster increased user understanding of AI.

Part (b) is driven by the fact that most research on AI education for non-technical learners is under a year old. But AI research has existed for decades, and general *education* research can inform this work as well. The authors draw on both in this paper.


## The paper's definition of AI literacy
The authors define AI literacy in terms of the competencies discussed later.

> We define *AI literacy* as *a set of competencies that enables individuals to critically evaluate AI technologies; communicate and collaborate effectively with AI; and use AI as a tool online, at home, and in the workplace.*

They develop a conceptual framework of five themes, or questions about AI:

 1. What is AI?
 2. What can AI do?
 3. How does AI work?
 4. How should AI be used?
 5. How do people perceive AI?

They explore each of these themes and their associated competencies next.


### 1: What is AI?
Defining AI can be confusing for experts, leave alone for people without technical backgrounds. One of the core competencies is simply being able to recognize AI, and others have to do with understanding its characteristics.

> **(1) Recognizing AI**: distinguish between technological artifacts that do and do not use AI.
>
> **(2) Understanding Intelligence**: critically analyze and discuss features that make an entity "intelligent," including discussing differences between human, animal, and machine intelligence.

I like that this calls out the differences between human and machine intelligence. I think the "intelligence" of AI is often thought of as similar to humans', but that's not true (just ask a deep learning researcher about how similar neural nets are to brains).

> **(3) Interdisciplinarity**: recognize that there are many ways to think about and develop "intelligent" machines. Identify a variety of technologies that use AI, including technology spanning cognitive systems, robotics, and ML.
> 
> **(4) General vs. Narrow**: distinguish between general and narrow AI.


### 2: What can AI do?
People's trust in AI is task-dependent. Understanding how well AI can complete different kinds of tasks can help people decide whether or not to trust AI. That gives us:

> **(5) AI's Strengths and Weaknesses**: identify problem types that AI excels at and problems that are more challenging for AI. Use this information to determine when it is more appropriate to use AI and when to leverage human skills.
>
> **(6) Imagine Future AI**: imagine possible future applications of AI and consider the effects of such applications on the world.

Coming up with "*design fictions*," which are fictional scenarios about what might exist in the future and how it might affect the world, can help to explore perceptions of AI, they write.


### 3: How does AI work?
People often develop "folk theories" to explain AI algorithms, which (accurate or not) shape their experience. The authors studied cognitive systems, robotics, and machine learning to understand the concepts included in various AI education curricula.

The competencies here relate to understanding "representations" (to a computer, what is an image?) and decision making.

> **(7) Representations**: understand what a knowledge representation is and describe some examples of knowledge representations.
> 
> **(8) Decision Making**: recognize and describe examples of how computers reason and make decisions.

There are more related to machine learning in particular. The authors studied misconceptions that students without a CS or statistics background have about machine learning: assuming humans think like computers, assuming that ML is fully automated, or not understanding the limits of ML.

> **(9) ML Steps**: understand the steps involved in machine learning and the practices and challenges that each step entails.
>
> **(10) Human Role in AI**: recognize that humans play an important role in programming, choosing models, and fine-tuning AI systems.

Competency (10) reminds me of the idea that AI is not magic. It's still very, very messy, and humans (who themselves are flawed, operating under constraints, and yet likely doing the best they can) are involved at every step of the way.

> **(11) Data Literacy**: understand basic data literacy concepts.
>
> **(12) Learning from Data**: recognize that computers often learn from data (including one's own data).

Another "machine learning is not magic." It's often operating on the data that we produce ourselves for corporations.

> **(13) Critically Interpreting Data**: understand that data cannot be taken at face-value and requires interpretation. Describe how the training examples provided in an initial dataset can affect the results of an algorithm.

I love this one. An understanding of data itself is its own subject.

From robotics, there were two more competencies:

> **(14) Action & Reaction**: understand that some AI systems have the ability to physically act on the world. This action can be directed by higher-level reasoning ... or it can be reactive.
>
> **(15) Sensors**: understand what sensors are, recognize that computers perceive the world using sensors, and identify sensors on a variety of devices. Recognize that different sensors support different types of representation and reasoning about the world.

### 5: How should AI be used?
This section dives into AI ethics. They discuss all of the topics listed in the quote below, briefly stating some relevant ethical issues from each.

> **(16) Ethics**: identify and describe different perspectives on the key ethical issues surrounding AI (i.e., privacy, employment, misinformation, the singularity, ethical decision making, diversity, bias, transparency, accountability)

The inclusion of this competency suggests that you cannot be AI literate without an understanding of AI ethics. I like that.


## How do people perceive AI?
This section reviews "how humans perceive and make sense of AI." Typically, humans understand agents through *theory of mind*, which attributes people's behavior to mental states (like beliefs or desires). But AIs don't reason like humans do, which can create misconceptions.

Systems can be internally complex but appear simple (the *Tale-Spin effect*), or internally simple but appear complex (the *Eliza effect*). The associated design consideration are to **promote transparency**

There's also the *SimCity effect*, where systems gradually reveal how they work "through play." Revealing a system all at once is likely to overwhelm a user. Instead, allowing users to inspect different parts of a system over time can help to develop their understanding. The design consideration here is to **unveil gradually**.

Children, meanwhile, are developing their understanding of intelligence itself over time. They "personify agents and then recognize that they are programmable," leading to one more competency (**programmability**) and design consideration (**opportunities to program**).

## Other design considerations
The authors present more design considerations. The first several of these were informed by a discussion of how children are developing, and the last few by a study of how AI is perceived in popular media.

 * **milestones**: consider how developmental milestones and prior experience with technology affect perceptions of AI
 * **critical thinking**: encourage learners to question AIs' intelligence and trustworthiness
 * **identity, values, and backgrounds**: consider how these affect one's interest in and preconceptions of AI.
 * **support for parents**: when designing for families, consider providing support to aid parents
 * **social interaction**: consider designing AI learning experiences that foster social interaction and collaboration
 * **leverage learners' interests**: consider doing this when designing literacy interventions
 * **acknowledge preconceptions**: which may arise from popular media, and consider how to address and expand upon these.
 * **new perspectives**: consider introducing new perspectives that are less prevalent in popular media
 * **low barrier to entry**: consider how to communicate to learners *without* extensive background in math or CS.


## Closing thoughts
Wow, this paper was dense but great. The lists of 19 competencies and 15 design considerations were tough to work through, especially because I felt the need to include most of them in this summary.

I appreciate how comprehensive this work is (or appears to be---maybe there are blind spots that future research will reveal). Looking back to my own definition above, the authors included everything that I did, plus quite a bit more.

Papers like this can be challenging to get through because there's so much information, and all of it matters. It's not like a traditional ML paper where you might be able to skip the related work, or skim the methods, or get everything out of a couple figures; this is equal parts a literature review and agenda-setting paper.

But that's also what makes it valuable. I started skimming it towards the end, but this is one of those papers that I'll ideally be returning to down the road.


