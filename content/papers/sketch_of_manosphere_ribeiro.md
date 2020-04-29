+++
title = "[Paper] From Pick-Up Artists to Incels: A Data-Driven Sketch of the Manosphere"
date = "2020-02-23"
draft = false
categories = ["papers"]
authors = ["Manoel Horta Ribeiro", "Jeremy Blackburn", "Barry Bradlyn", "Emiliano De Cristofaro", "Gianluca Stringhini", "Summer Long", "Stephanie Greenberg", "Savvas Zannettou"]
+++

This paper characterizes and studies the migration of fringe "men's rights" groups on Reddit and elsewhere. They demonstrate that these communities (the "Manosphere") has more hateful speech than the rest of the web. Paper by [Ribeiro](https://manoelhortaribeiro.github.io/) et al.

<!--more-->

**How I found this paper**: one of the authors on the YouTube radicalization paper is the lead author here, though I'm not sure how I came across it. Twitter?

**Authors**: Manoel Horta Ribeiro, Jeremy Blackburn, Barry Bradlyn, Emiliano De Cristofaro, Gianluca Stringhini, Summer Long, Stephanie Greenberg, Savvas Zannettou

**Link**: [arXiv](https://arxiv.org/abs/2001.07600)

## Summary
**Motivation**: the "Manosphere" is a group of male-dominated communities including "Pick Up Artists (PUAs), Men's Rights Activists (MRAs), Men Going Their Own Way (MGTOW), and Involuntary Celibates (Incels)." Previous research has studied these communities from techno-sociological perspectives, but this work was first to use a large-scale data-driven approach.

The research questions were:

 * how has the Manosphere evolved over the last decade?
 * are Manosphere communities becoming more toxic over time?
 * how do these communities compare to each other? do users migrate between them?

The authors crawled 7 specialized forums (since fringe content may be too extreme for mainstream sites like Reddit) and 62 subreddits, collecting forum data from 2019 and Reddit data from 2005 -- 2019. Through analyzing the activity in each community, they found that **more extreme communities are becoming more popular over time.** They also found that threads in Incel and MGOTW forums are becoming longer, indicating more "engagement" or perhaps more intensity.

They then studied the toxicity of each community using the Google Perspective API. The most hateful communities were certain forums (with median toxicity of 0.20, 0.16, and 0.15), while Reddit as a whole had a toxicity score of just 0.06 (specific subreddits were around 0.10). All of these analyses were performed on random samples of ~30M posts from each community.

Finally, the authors studied the migration of users across subreddits (tracking users across all the forums is difficult and possibly a privacy violation, at least for an observational study). Manosphere communities largely shared the same userbase, they found, and there were migrations from older communities (MRAs, PUAs) to newer ones (TRP, MGTOW, and Incels). Some migrations were associated with an increase in toxicity.

**The takeaway**: these communities are toxic, surprise! This shouldn't come as a shock to any well-adjusted person who has stumbled upon content from these subs while browsing Reddit. The authors note in the conclusion that these migrations may be part of a broader *radicalization pathway* which warrants further study.


## Thoughts, connections, and questions
The eye-catching title is what drew me to this paper, as these communities have been receving more and more negative attention on Reddit lately (or perhaps I am just more aware of it). I *love* reading research on (or related to) Reddit, since it perfectly intersects social computing and a website that I use frequently.

**On the Perspective API**: a user on Twitter [mentioned](https://twitter.com/c_j_pascoe/status/1227658201174142977) that the tool used to assess toxicity, the Google Perspective API, had some bias problems. To Google's credit, they turned this into a [module in their ML practica](https://developers.google.com/machine-learning/practica/fairness-indicators) focused on fairness and bias, but it at one point was rating "I am a gay black woman" with 87% toxicity, or "I am a woman" at 41% vs. "I am a man" at 20% ([source](https://twitter.com/jessamyn/status/900867154412699649)).

It looks like this [has gotten better](https://www.perspectiveapi.com/#/home) since then---I tried doing the same thing and found more alignment for phrases with man vs. woman, and couldn't reproduce the other examples either---but it's unclear when these changes were made. The authors say as much in the paper: "we use Google's Perspective API, which previous work shows it might be deceived and may exhibit racial biases." However, the authors note, this is the only publicly available tool for such a problem, and hate speech classification is an open problem.

**Update**: the lead author has a [Twitter thread](https://twitter.com/manoelribeiro/status/1230056471708172288) that addressess this in more detail. Yes, Perspective has biases; no, these aren't disqualifying. "Abolishing a measurement because of known biases is anti-scientific," he argues. There's no reason to believe that these biases are significant for design.

Realistically, I don't think any of this affects my perception of the conclusions of the paper---I have no trouble believing these communities are more toxic than a randomly chosen one---but it probably does mean the results could be challenged on the basis of flaws in the toxicity assessment. I'm very interested in reading more about these communities' part in radicalization pathways (or how they are steps towards one), and watching the research develop in this area.
