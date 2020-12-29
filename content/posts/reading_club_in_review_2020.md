+++
title = "Half a year of reading club"
categories = ["general"]
tags = ["reading club"]
date = 2020-12-28
draft = true
+++

In August, I started a reading club with my friend [Judah](https://judahgnewman.com). 17 papers later, this post reflects on some of the things I've learned.

<!--more-->

## Why we started and how we do this
Judah and I had talked about research ideas and aspirations for ages, often sharing paper or book recommendations. In the middle of this year, we decided that a weekly reading group would be a great way to stay in touch, read more interesting work, develop new ideas, and grow as researchers.

Each week, one person suggests a handful of papers, and the other picks one from this list. We can come to agreements on what's interesting to read while also stretching each other's interests (my papers generally focus more on social media, Judah's on fairness). 

Both of us also value writing about what we've learned. You can read Judah's paper write-ups [on his website](https://judahgnewman.com/categories/papers/).


## Practical questions about fairness and AI: papers I really loved
These three papers shared a common thread: practical discussion of challenges in AI. At the end of each, I found myself strongly agreeing with the points made and thinking that this particular treatment was refreshing.

[Improving fairness in machine learning systems: What do industry practitioners need?]({{< ref "papers/improving_fairness_practitioner_needs_holstein.md" >}}) by Kenneth Holstein, Jennifer Wortman Vaughan, Hal Daumé III, Miro Dudík, and Hanna Wallach.

This work addresses the research-industry gap in AI fairness. From my position in industry, it's near impossible to practically contribute to—or even apply—work on algorithmic (un)fairness. What do practitioners *actually* need?

> While some fair ML tools are already being prototyped with practitioners, their initial design often appears to be driven more by the availability of algorithmic methods than by real-world needs. If such tools are to have a positive and meaningful impact on industry practice, however, it is crucial that their design be informed by an understanding of practitioners’ actual challenges and needs for support in developing fairer ML systems.

---

[Reliance on Metrics is a Fundamental Challenge for AI]({{< ref "papers/reliance_metrics_problem_thomas.md" >}}) by Rachel Thomas and David Uminsky.

Metrics are a proxy for something that we really care about. This is not a good thing! Rachel Thomas presented a focused discussion of the difficulties in relying on metrics in machine learning.

> Optimizing a given metric is a central aspect of most current AI approaches, yet overemphasizing metrics leads to manipulation, gaming, a myopic focus on short-term goals, and other unexpected negative consequences.

---

[What is AI Literacy? Competencies and Design Considerations]({{< ref "papers/what_is_ai_literacy_long.md" >}})  by Duri Long and Brian S Magerko.

What does it mean to be AI literate? Equal parts literature review and agenda setting, this paper defined the term in terms of core competencies, then put forth implications for design of AI systems.

> We define AI literacy as a set of competencies that enables individuals to critically evaluate AI technologies; communicate and collaborate effectively with AI; and use AI as a tool online, at home, and in the workplace.


## Decolonial AI and archival theory: papers that pushed me out of my comfort zone
One of the great benefits of reading with someone else is that I was exposed to papers that I would not have otherwise found. I highlight two of these here.

[Decolonial AI: Decolonial Theory as Sociotechnical Foresight in Artificial Intelligence]({{< ref "papers/decolonial_ai_mohamed.md" >}}) by Shakir Mohamed, Marie-Therese Png and William Isaac.

This paper was the furthest from anything that I'd read before, and I'm quite glad that I did. I find the idea of *sociotechnical foresight* to be powerful. We should not allow ourselves to be surprised when technological systems are misused; instead, we should anticipate how they might be. This requires a critical look at the historical, and often colonial, context that surrounds them.

> Any commitment to building the responsible and beneficial AI of the future ties us to the hierarchies, philosophy and technology inherited from the past, and a renewed responsibility to the technology of the present.

---

[Data and Power: Archival Appraisal Theory as a Framework for Data Preservation]({{< ref "papers/data_and_power_archival_schoenebeck.md" >}}) by Sarita Y Schoenebeck and Paul Conway.

I remember being a little confused by this paper: liking the premise, and learning a lot, but ultimately wanting more than what the paper gave me. In hindsight, that's a sign I was being stretched into a new field. The paper discussed how we can use archival theory to think about issues in computing, and I found it a compelling introduction.

> Archival theories propelling an understanding of the archive in the 21st century are a natural fit with computing scholarship. CSCW researchers generally subscribe to the belief, articulated by Pinch and Bijker [63], that technological systems are socially constructed. Archivists share this belief, arguing that archives, and the ideas, feelings, actions, and transactions embedded in them, are social constructs.


## Papers that I wanted more from
One of the signs that I'm growing as a researcher is that I catch myself thinking "I wish this paper also tried this." This means that I'm beginning to read more critically and come up with my own ideas.

[Generalists and Specialists: Using Community Embeddings to Quantify Activity Diversity in Online Platforms]({{< ref "papers/generalists_specialists_anderson.md" >}}) by Isaac Walker and Ashton Anderson.

This work develops community embeddings for Reddit and Github by repurposing the word2vec algorithm. I noticed myself wanting more details on the embeddings. I had questions about their validation and applications, and would love to see more work on this.

> We developed high-quality community embeddings, which encode similarities between communities as defined by their members, as well as a set of community analogies to validate them. Based on these embeddings, we introduced the GS-score, a principled mea-sure of activity diversity. 


## Data strikes, equality of opportunity, and the hardware lottery: new ideas from the year


['Data Strikes': Evaluating the Effectiveness of a New Form of Collective Action Against Technology Companies]({{< ref "papers/data_strikes_vincent.md" >}}) by Nicholas Vincent, Brent Hecht, and Shilad Sen.

As "data labor" becomes more common, this paper introduces *data strikes* as the answer to "what happens if data labor is withheld?" I'm excited to see how this idea develops over time.

> The public is increasingly concerned about the practices of large technology companies with regards to privacy and many other issues. To force changes in these practices, there have been growing calls for “data strikes.” These new types of collective action would seek to create leverage for the public by starving business-critical models (e.g. recommender systems, ranking algorithms) of much-needed training data.


---

[Equality of Opportunity in Supervised Learning]({{< ref "papers/equality_of_opportunity_srebro.md" >}}) by Moritz Hardt, Eric Price, and Nathan Srebro.

The concept of *equality of opportunity* was new to me, and while I struggled with some of the math in the paper, the ideas were compelling. This was my first reading into formal definitions of algorithmic fairness and discrimination.

> We propose a criterion for discrimination against a specified sensitive attribute in supervised learning, where the goal is to predict some target based on available features. Assuming data about the predictor, target, and membership in the protected group are available, we show how to optimally adjust any learned predictor so as to remove discrimination according to our definition. 

---

[The Hardware Lottery]({{< ref "papers/hardware_lottery_hooker.md" >}}) by Sara Hooker.

This paper opened my eyes to the importance of hardware to major advancements in machine learning. What algorithms have failed to gain traction because they weren't a good fit for the available hardware? What does a future of more specialized hardware look like, and how will we get there?

> Choices about software and hardware have often played a decisive role in deciding the winners and losers in early computer science history,

