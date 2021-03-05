+++
title = "[Paper] We Are Dynamo: Overcoming Stalling and Friction in Collective Action for Crowd Workers"
date = 2021-03-04
draft = false
categories = ["papers"]
tags = ["reading club", "chi"]
authors = ["Niloufar Salehi", "Lilly C. Irani", "Michael S. Bernstein", "Ali Alkhatib", "Eva Ogbe", "Kristy Millan","Clickhappier"]
+++

What does collective action look like online? The authors design and study Dynamo, a platform for organizing Amazon Mechanical Turk workers into action, and discuss the unique affordances and challenges of the web.

<!--more-->

**Authors**: Niloufar Salehi, Lilly C. Irani, Michael S. Bernstein, Ali Alkhatib, Eva Ogbe, Kristy Milland, Clickhappier

**Links**: [PDF](https://hci.stanford.edu/publications/2015/dynamo/DynamoCHI2015.pdf), [ACM DL](https://dl.acm.org/doi/10.1145/2702123.2702508)


## Motivation
The abstract of this paper identifies a tension in the web which is central to this work:

> By lowering the costs of communication, the web promises to enable distributed collectives to act around shared issues. However, many collective action efforts never succeed: while the web's affordances make it easy to gather, these same decentralizing characteristics impede any focus towards action

This paper studies the difficulty of organizing online labor, focusing on the Amazon Mechanical Turk (AMT) community ("Turkers"). It precedes other work that I've read, like [Data Strikes]({{< ref "papers/data_strikes_vincent" >}}), by studying coordinated action online. The author here built *Dynamo*, a community platform for Turker collective action.

Collective action online faces twin problems: *stalling* and *friction*. Efforts stall (lose momentum) when the next step is too labor-intensive or unengaging. They face friction when an action creates disagreement or faces criticism, often diminishing motivation. These are linked: "efforts stalled when friction accumulated or when the fear of criticism led to no activity."

The competing tensions of stalling and friction underlie this work. Stalling and friction can threaten the success of *publics*, groups of people gathering based on mutual interest. Collective action groups are examples of publics.


## Designing for Turkers
I found the section titled "our method and position" to be interesting:

> We undertake this project not as outside observers, but as people with stakes in the ecology of human computation. We have been requesters and workers on Amazon Mechanical Turk, and we have investments in Computer Science, a field that produces and legitimizes human computation. We produced Dynamo through a process of collaboration with interested workers not only to build something for them out there but also to call into question our own design practices and assumption.

The authors sought to recognize the imbalance of power between themselves and Turkers. Knowing that anything they created could potentially harm Turkers, they had to build trust with the community. To this end, they engaged with a few workers interested in collective action early on and for more than a year, conducting ethnographic research to inform the design.

Their ethnography identified other challenges, too. Workers use social media to discuss their experiences, share leads, or sometimes act collectively (supporting a particular member or writing emails). But trust in online communities is fragile, and community norms are loosely defined. 

Finally, "Turkers must weigh collective action against personal risk to their worker account, work environment, or reputation as online workers." People worried about being blocked from using AMT and losing income; yes, this is a worry offline, but AMT having higher turnover and lacking face-to-face interactions reduces worker power.


## Dynamo
Dynamo is "a platform to support collective action in the AMT ecology." Its design was based around three affordances:

 - **trust and privacy**, as the platform had to be safe from external (Amazon) retaliation. Registration required completion of a Dynamo task on AMT, usernames were randomly generated, and users' worker IDs were never stored.
 - **assembling a public**, allowing workers to lend supportor critique different ideas. "Dynamo focuses on short ideas pitches," which can be voted on and graduate into more fully-featured "campaigns."
 - **mobilizing**, providing affordances to discuss and advance a campaign.

In its first six months, Dynamo gathered 470 Turkers, 5,800 unique visitors, and 32,000 views. The goal was never to attract everyone, but rather to create small communities of motivated workers.

Their first two campaigns were creating guidelines to curb poor academic research (e.g., by injecting fake data into the rating system Turkopticon) and a letter writing campaign to Jeff Bezos. Historically, the authors note, "labor movements have made similar efforts to gain public recognition" as a first step towards other achievements. This is harder for online workers, who are even less visible than, say, an Amazon warehouse worker.


## Challenges of Dynamo
Dynamo was not without its challenges; a later section focuses on Dynamo's "constant brushes with failure." These are rooted in the challenges of stalling and friction, discussed above. The authors argue that this is because Dynamo is more than a public: it's a public *that acts*, requiring interest to be transformed into concrete action.

Based on the experiences with Dynamo, the authors offer strategies to keep collective action movements alive and to overcome stalling and friction.

- *debates with deadlines*, setting deadlines for discussions to prepare for consensus (ironically, similar to the Bezos-popularized [disagree and commit](https://managementforstartups.com/articles/the-hard-thing-about-disagree-and-commit/))
- *act and undo*, taking action but letting things be undone if possible (e.g., writing a draft then letting people change anything)
- *produce hope*, making people believe in success
- *reflect and propose*, attempting to understand criticism then proposing action to address it


## My thoughts
If I had to give a vague summary of this paper, I'd say something like "hey, we built this platform for online workers to organize and did it in a thoughtful way; here's what we learned." This contrasts with most papers I read from CHI, which I feel typically focus less on building something and more on interviews or observational research. 

To make this more concrete, I'm sure that it'd be possible to interview Turkers on the difficulties of using the platform, organizing collectively, or gaining visibility. (People have!) This paper provides something different.

I like that the authors ground their discussion in the existing term of *public*. I was first introduced to this from Cass Suntein's [#republic](https://press.princeton.edu/books/hardcover/9780691175515/republic), which I [wrote]({{< ref "books/republic_1" >}}) | [about]({{< ref "books/republic_5" >}}) last year. Extending the idea to one of "publics that act" was new to me.

It's not clear to me what happened to Dynamo; I assume it was shut down after a couple of years, as I can't find the website online anymore. According to [The Atlantic](https://www.theatlantic.com/business/archive/2018/01/amazon-mechanical-turk/551192/), it looks like Amazon closed the account that was being used to recruit new workers. I think it's okay that the platform didn't last, but it shutting down is a reminder of the [transience of digital spaces]({{< ref "posts/password_tool_6" >}}).

I enjoyed this. I would like to learn more about how Dynamo influenced work that came after it; for example, I can see parts of it in [Data Strikes]({{< ref "papers/data_strikes_vincent" >}}), but haven't read very much into this space. I'm looking forward to more!




