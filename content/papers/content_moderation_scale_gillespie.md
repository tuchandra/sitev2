+++
title = "[Paper] Content moderation, AI, and the question of scale"
date = 2020-08-21T15:00:00
draft = false
categories = ["papers"]
authors = ["Tarleton Gillespie"]
+++

This short paper in *Big Data and Society* came across my radar on Twitter today. Automated content moderation is often heralded as an answer to the impenetrable size of Facebook, YouTube, and other platforms. But it's not clear that automation is the answer.

<!--more-->

**Authors**: Tarleton Gillespie

**Link**: [Full text](https://journals.sagepub.com/doi/10.1177/2053951720943234)


## Background and motivation
This short essay in *Big Data & Society* discusses the way that "scale" justifies AI-powered content moderation, perhaps too much. From the abstract:

> The push towards automated content moderation is often justified as a necessary response to the scale: the enormity of social media platforms like Facebook and YouTube stands as the reason why AI approaches are desirable, even inevitable. But even if we could effectively automate content moderation, it is not clear that we should.

The "promise of AI" is almost a cliche, at least for those outside Silicon Valley, Gillespie argues. Too often is content moderation seen as a technological problem that can be solved with a technical solution.


## On scale
One of the points discussed is that "scale is not the same as size." Platforms point to "scale" to mean the size of their userbase or the amount of content posted; but "scale is about how the small can be made to have large effects."

Content moderation through AI isn't just about "the small," though. Sure, you might hire fewer human moderators, but you'll have a lot of up-front work to produce the enormous amount of training data required. (The article doesn't say anything about the quality of the training data, but there'll be gaps there too.)


## Why not automate?
One argument is that automation is overrated: platforms' claims of automated moderation are overstated; that the majority of content that's automatically flagged are copies of previously human-reviewed content. 

I don't accept this argument as a pitfall of automation. Automatically removing content that has already been determined to be problematic is a good thing. Instead, this simply means humans are (still) an indispensible part of the moderation process.

Another issue with automation is the vast amount of training data required, and how this simply *isn't a good problem for AI*. Platforms' policies will evolve over time, but training data (the corpus of past moderation decisions) will likely remain largely the same. And machine learning can't reliably account for context or culture.

It gets worse: even if you're "mostly right," as well-trained ML tools often are, the errors will often be on already-disempowered groups:

> Statistical accuracy often lays the burden of error on underserved, disenfranchised, and minority groups. The margin of error typically lands on the marginal: who these tools over-identify, or fail to protect, is rarely random.


## On values
Content moderation is also a question of values, and computers have no sense of these:

> There is no stable, widely shared value system that simply must be implemented. **Calling something hate speech is not an act of classification, that is either accurate or mistaken.** It is a social and performative assertion that something should be treated as hate speech, and by implication, about what hate speech is. And, undoubtedly, it will be disagreed with.


## One argument for it
There is one argument in favor of content moderation: that it's often psychologically scarring work, and the humans who do it are often taken advantage of.

> In fact, the strongest argument for the automation of content moderation may be that, given the human costs, there is simply no other ethical way to do it, even if it is done poorly.

I was glad to see the paper address this reason. Even after reading the (excellent) arguments here, I think this is where I stand. Automated tools are necessary to reduce the burden on humans, at least at the size of Facebook, Instagram, and other large online platforms. 

But why accept that size? I've been thinking for a while that there's an argument to be made that Facebook is too big to be effectively moderated. Gillespie points this out, too: "perhaps, if moderation is so overwhelming at this scale, it should be understood as a limiting factor on the 'growth at all costs' mentality."

The author leaves us with a call to design automated systems to work alongside and support humans, and not to replace them. And, while we're doing that, think about whether the size of these platforms is actually manageable.

> It is size, not scale, that makes automation seem necessary. Size can be changed. But it may require a profound act of countercapitalist imagination to find new ways to fit new ML techniques with new forms of governance—not as a replacement for repetitive human judgments, but to enhance the intelligence of the moderators, and the user communities, that must undertake this task.

