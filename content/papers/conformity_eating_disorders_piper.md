+++
title = "[Paper] Conformity of Eating Disorders through Content Moderation"
categories = ["papers"]
tags = ["cscw2020"]
draft = false
date = 2020-10-22
authors = ["Jessica L. Feuston", "Alex S. Taylor", "Anne Marie Piper"]
+++

Content moderation is an essential part of online communities, but the experiences of people who are moderated are less studied. This work conducts a digital ethnography on people with eating disorders. The authors argue that moderation enforces conformity on a platform, which can further marginalize people with eating disorders.

<!--more-->

**Authors**: Jessica L. Feuston, Alex S. Taylor, Anne Marie Piper

**Link**: [PDF](https://www.ics.uci.edu/~ampiper/papers/CSCW2020_content_moderation.pdf)

## Background and motivation
The CSCW (computer supported cooperative work) community historically is concerned with online communities and content moderation in those communities, and how people experience moderation. Content moderation is often treated as a topic-based activity, asking "what kinds of content are acceptable on this platform?"

This paper takes a different approach.

> Here, we closely attend to how moderation happens and what the consequences of moderation are for members of marginalized groups expressing non-dominant narratives.
> We argue that the relations between the social and the technical (i.e., the *sociotechnical*) afforded on social media platforms exert an active force, producing and reproducing a conformity to particular norms and values.

In simpler terms: the combination of platform standards, social norms, technical affordances, and platform features all *interact* to create a sense of conformity. None of these by themselves is enough.

> We examine these social and technical practices of content moderation on social media platforms as they relate to individuals with eating disorders. 

They show that moderation can be damaging to marginalized groups. One of the particular ways in which it is damaging is by reinforcing ideas about what is considered 'normal' in online spaces. 

I've read other papers on eating disorder community, and the authors here cite all of the following:
- [Norms Matter: Contrasting Social Support Around Behavior Change in Online Weight Loss Communities]({{< ref "papers/contrasting_social_support_chancellor.md" >}})
- [Multimodal Classification of Moderated Online Pro-Eating Disorder Content]({{< ref "papers/classification_pro_ed_chancellor.md" >}})
- ['This Post Will Just Get Taken Down': Characterizing Removed Pro-Eating Disorder Content on Social Media]({{< ref "papers/removed_pro_ed_chancellor.md" >}})

This is a paper whose related work stuck out to me. It rarely makes sense to summarize related work on this blog. But it might be worth coming back to later, since I've already read other work in this space.

## A digital ethnography
The authors conduced a two-year digital ethnography to study "the experience of content moderation for individuals with eating disorders." They also conducted 20 semi-structured interviews with individuals who identified as (but were not necessarily diagnosed with) having eating disorders.

**Online observation**: in November 2017, the authors collected content posted on five hashtags on Instagram. This created an initial corpus of 2102 posts. They continued observing users who had contributed to the corpus, resulting in 6223 posts and 2188 users.

They did something similar on Reddit, collecting posts related to Reddit's decision to ban communities like /r/ProED (a "pro-eating disorder" community), then following the users who made those posts. They similarly crawled Tumblr, starting by searching for keywords and then following the accounts.

The methods are pretty interesting; this is the first paper I've read that used a digital ethnography. For brevity, I'll invite you to read the [original paper](https://www.ics.uci.edu/~ampiper/papers/CSCW2020_content_moderation.pdf) if you're interested in more about their methods, theory, or ethical considerations.

## Findings
The authors recount the story of one participant who had a personal eating disorder blog on Tumblr. She worked hard to limit attention to it, but "still felt she was 'walking on eggshells' whenever she posted." 

> Specifically, she 'didn't want people to come crucify me because I was talking about, you know, the part of eating disorders that nobody wants to see. That nobody wants to hear.'

Eventually, she was banned. "We learned of many unintended consequences of moderation," the authors write, including loss of a sense of community. She associated with moderation feelings of anger and confusion.

> Platform moderation often involves unsolicited removal of personal posts and accounts, which are maintained by and for the individual. ... By removing or deleting this personal content, platforms effectively remove certain experiences and prevent opportunities for reflection and catharsis.

In this way, content removal can feel like silencing personal experiences. Notably, the author write, this idea can coexist with the traditional notions of why content removal is beneficial (e.g., reducing potentially triggering images). But it's not as cut and dry as one might think.

Moderation can also cause a loss of community. When Reddit banned /r/ProED, a number of individuals felt that their social support systems were being cut off. (Reddit's practice of "quarantining" communities had similar effects.)

This reminds me of yesterday's paper, [Moving Across Lands - Online Platform Migration in Fandom Communities]({{< ref "papers/fandom_migrations_fiesler.md" >}}), where Fiesler and Dym recounted a sense of loss (of content and community) as fandom communities migrated from platform to platform. Moderation, here, can be thought of as a form of forced deplatforming that causes similar loss.

### Resistance to moderation
Users had several ways to resist and respond to moderation:
- Posting about other posts being removed, like 'hey someone reported me, not cool'
- (on Reddit) posting in other subreddits
- Creating community petitions and surveys
- Simply *creating new accounts* ("platforms, after all, want new users"), though it remains on them to recreate their old communities and followers

### Community-led moderation
Communities created their own versions of what was considered acceptable. Notably, in one case, they reconfigured what the phrase 'pro-ED' means:

> Contemporary usage by community members has reconfigured pro-ED to refer to groups of individuals who support people with eating disorders ..., rather than being supportive of the disorder itself. For Marie, pro-ED meant *"I'm dealing with a disorder and I don't want help right now. And I want a place to vent about that."*

The authors also observed tensions between wanting to engage online (to vent or get support) and not wanting to negatively affect others. This influenced how communities created self-governance practices.

## On what's 'normal'
The authors open their discussion with:

> Our claim is that through practices of content moderation these platforms are, in effect, enforcing an *order of normal* that restricts and aims to influence the ways people can participate online. In short, content moderation enforces a particular range of norms and values.

Is this controversial? It seems to me that this is precisely what content moderation does, and by design. Content moderation, to me, is about imposing one's ideals about what a platform should be.

Perhaps it is the authors' point that this is normal, because they later suggest that this should be changed:

> We argue platforms and researchers should explore alternative ways to support individuals with eating disorders, rather than impose an order of normal that further marginalizes and subjugates certain experiences.

I agree with this. Forcing oneself to comply with community or platform norms, when one just wants *support*, can be a draining experience. Having one's content removed, as the authors show, can create a sense of loss that is rarely discussed.

## Informing platform design
Briefly (because this post has gotten way too long), I want to highlight some of the ways that the authors suggest this  might inform platform design:

**By accepting other experiences with eating disorders.** Rather than forcing conformity, consider harm reduction approaches—which communities often self-impose anyway. Rather than removing content that does not fit the platform image, create different spaces for it.

**By creating more affordances for content warnings.** Instagram allows users to blur 'sensitive' images and confirm they want to see it, but few other platforms provide mechanisms for doing so. Creating better affordances for self-moderating could help individuals express themselves and reduce triggering content.

**By giving more power to individuals who are reported**. This is tough, because moderating is often voluntary or low paid, and other work details the [intense emotional labor of being a moderator](https://dl.acm.org/doi/10.1145/3290605.3300372). But providing more agency to often-powerless individuals could be helpful in reducing feelings of loss or marginalization.

## Discussion
It's really interesting reading such a methodical breakdown of these online spaces. A lot of the observations made are things that community members take for granted; things like:
 - content is all mixed up ("I've recently seen a bunch of recovery tags in non-recovery spaces!")
 - posts have content warnings
 - communities often self-impose standards and governance
 - community members support harm reduction ideals over  banning certain types of content

On one hand, seeing researchers write about this makes me feel like "Well, yeah, the community members know that." On the other, that's precisely how the researchers found out!—by talking to the community—and this paper is written for other people, not necessarily for the communities being studied here.

The core ideas here are about the *consequences of conformity*. When you accept that platforms drive users and communities towards conformity, it becomes possible to question their sociotechnical design and how they exclude different groups of people.

This paper was great, and we're 2 for 2 on awesome CSCW papers so far. I'm looking forward to reading more soon.






