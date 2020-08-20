+++
title = "[Paper] Firms' Reactions to Public Information on Business Practices: Case of Search Advertising"
date = 2020-01-03T14:00:00
draft = false
categories = ["papers"]
authors = ["Justin Rao", "Andrey Simonov"]
+++

This is a paper evaluating the effects of the infamous eBay online advertising experiment, in which eBay pulled millions of dollars of own-brand advertising and saw no measurable effect on web traffic. The study (using data from Bing) evaluated how other companies reacted to this news.

<!--more-->

The paper's authors are Justin Rao at MSR and Andrey Simonov at UChicago Booth. View the PDF on [Semantic Scholar](https://pdfs.semanticscholar.org/b003/d2e2e95b60f1553023b8149436629652bd5c.pdf).

## Summary
From the abstract:

> We use five years of bidding data [from Bing advertising] to examine the reaction of advertisers to widely disseminated press on the lack of effectiveness of brand search advertising (queries that contain the firm's name) found in a large experiment run by eBay. ... Firms did not react to the information pertaining to the high value and ease of running experiments ... We find no correlation between firm-level advertising effects and the propensity to advertise in the future.

The eBay experiment was by [Blake, Nosko, and Tadelis](http://faculty.haas.berkeley.edu/stadelis/Tadelis.pdf) ("BNT"), and it found that ads for eBay on branded keywords (e.g., "eBay shoes") had almost no effect on traffic to eBay. These results "call into question the entire enterprise of advertising on own-brand queries." A critical component of eBay's case was that they did not face competition for the highest spot on search advertising; someone like Target might, if Walmart were to advertise on the query "target shoes".

Based on this observation, the authors used a diff-in-diff test with firms who did not regularly face competitors as the "treatment" and firms that did as the control. They found that "treated firms decrease advertising levels on brand keywords by 11% relative to their untreated counterparts."

The second question studied was on experimentation: "do firms adopt active experimentation" to study how effective these ads are for them? Overall, firms did not change their experimentation levels after BNT, but experiment-like changes in advertising were run by 72% of the 395 "treated" firms (without many competitors).

The final result is complex:

> First, the negative information on brand search effectiveness led to a reduction in the propensity to advertise on own-branded queries. While this impact is highly significant statistically and economically meaningful, the majority of firms nonetheless continued with business as usual, pointing to substantial “inertia” of business practices.

> Second, there is no measurable impact on the propensity to conduct experiments.Not only did firms fail to increase experimentation in response to very positive news about the value of experimentation, the insights that can be derived from existing experiment-like variation in ad levels do not appear to impact decisions.

The authors contrast the "knowledge spillovers" here to those in the medical field, where there's less of a concern about incentives and appearances, and more of a culture of learning about new techniques. Many researchers believe that agency problems exist in large firms with different incentives at different levels, and so these results may point to one manifestation of this.

The remainder of the paper goes into detail about the data and methodologies, and I choose not to summarize them here because I'm not as interested in spending time on those. This is a good example of a diff-in-diff study, which I don't know well, so I may come back to this later.


## Thoughts, connections, and questions
I found this paper after reading the article "The new dot com bubble is here: it's called online advertising" (summary [here]({{< ref "/posts/digital_advertising.md" >}})). I became interested in learning more about the state of digital advertising research. What do people know about it? What are the open questions?

This paper approaches the research question as more than a statistical one; it goes farther and attempts to understand the business practices ("substantial inertia") that cause this. It takes special care to discuss the human differences, like those of a marketing manger running experiments vs. a CFO doing so. The lower-level marketing manager is likely disincentivized to produce "bad news," whereas a CFO might be more interested in learning the truth.

These results are out of Microsoft Research using searches on Bing. I wonder if Google or Apple did a similar study on ad effectiveness; I imagine that their data would be much richer. Of course, Google as an advertising company would have little incentive to draw attention to the eBay experiment.

That the eBay study received so much attention is striking, but that companies didn't increase their experimentation (which the paper heavily advocated for!) is even more surprising. The authors give two possible explanations, that the right people aren't paying attention and classic risk-aversion (the risk of punishment for past behavior that is found out to be "wrong"), which are both problems of incomplete incentives.

To me, the most damning piece of this is that the eBay study is precisely what *should* have spurred a change in advertising behavior, if anything could. It showed clear results, demonstrated high ($50MM) cost savings, got widespread attention in both technical and business circles, and gave direct, actionable information. This shows me that the problems in digital advertising are more than one of incomplete data.

The authors do a great job of discussing this point: that "the business practices we study are in a domain, advertising, for which past work suggests principal-agent problems may be particularly large." They recognize that while the eBay study may represent good news (cost savings) for companies, they may also represent bad news for those "on the ground" with advertising budgets and teams of marketers. New information is understandably risky for them.

What, then, is the breaking point? When will companies stop pumping millions of dollars into advertising that has been shown to be ineffective? Or even less extreme than that, when will they start experimenting to study the effects themselves? How long will this go on?
