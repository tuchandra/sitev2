+++
title = "[Paper] Norms Matter: Contrasting Social Support Around Behavior Change in Online Weight Loss Communities"
date = 2020-01-28
draft = false
categories = ["papers"]
authors = ["Stevie Chancellor", "Andrea Hu", "Munmun de Choudhury"]
+++

My last of Dr. Chancellor's papers for now. This paper studies the discourse within two online health communities for weight loss, /r/loseit and (the now banned) /r/proED. The authors discuss how different communities provide support differently and discuss design implications.

<!--more-->

**Authors**: Stevie Chancellor, Andrea Hu, Munmun de Choudhury

**Link**: on Dr. Chancellor's [website](http://steviechancellor.com/wp-content/uploads/2019/03/norms-matter-chi2018.pdf) (published in CHI 2018)

## Summary
From the abstract:

> We use computational linguistic methods to juxtapose similarities and differences in two Reddit weight loss communities, /r/proED and /r/loseit. We employ language modeling and find that word use in both communities is largely similar ... We contrast the context of word use and find differences that imply different behavior change goals ... these content and context norms predict whether a comment comes from /r/proED or /r/loseit.

For those unfamiliar, /r/loseit is a subreddit that promotes "sustainable methods of weight loss," while /r/proED is (was) a sub for "those who are suffering with disordered behaviors, but are not yet ready for recovery." The subs, while both hoping to facilitate weight loss, have very different intentions. The authors study these in the context of *norms* (defined as "community behaviors and intentions").

The research questions:

 * What content differences in norms characterize social support on /r/loseit and /r/proED?
 * What context differences in norms characterize social support on /r/loseit and /r/proED?
 * Can we algorithmically predict support to be healthy or subversive, that is, characteristic of the norms prevalent in /r/loseit or /r/proED, based on their content, context, or both?

The authors gathered 2.3 million comments from /r/loseit from July 2010 to September 2016, and 123K comments from /r/proED from May 2015 to September 2016 (these were the communities' lifetimes at the time of writing; /r/proED is also much smaller).

**Characterizing content**: using TF-IDF, the authors looked at the most important tokens in each community. They also computed the log likelihood ratios (the log of the ratio of the probability of a word appearing in /r/loseit to the probability of appearing in /r/proED) to look at the words that were more frequent in each community.

 * The most common tokens in both communities were similar: "weight", "calories", "eat", "day", etc.
 * The tokens most characteristic of /r/loseit were things like "faq", "myfitnesspal", "logging", or "victory", and on /r/proED "lw", "thinspo", "ugw", "wl", and more ED-related words or words related to dangerous weight loss approaches

**Characterizing context**: they used word2vec again, just like in the [Tumblr pro-ED paper](https://tusharc.dev/papers/classification_pro_ed_chancellor.html). They trained and built embeddings from scratch.

 * the word "fat" appeared in both, but in /r/loseit it was more associated with physiological representations of fat, or in relationship to weight change, whereas in /r/proED it was associated with negative physical or visual comments about fat.
 * the word "diet" on /r/loseit was associated with specific diets (keto, vegetarian, etc.) or the abstract sense of a diet being what you eat. On /r/proED, it was used most frequently with sodas as a zero-calorie alternative to food and other drinks.

**Classifying the community**: they train regularized logistic regression models to predict which community a comment came from. One model uses just the TF-IDF weights, another uses the embeddings, and the third uses both. All three models perform well on this task. The variables most predictive of the /r/loseit class are associated with sustainable behavioral change ("myfitnesspal", "moderation", "c25k"). Those most predictive of /r/proED were related to disordered eating, like "restricting", "purge", "laxatives", and with weight, like "underweight", "bmi", or "thinspo."

The discussion makes the central argument of the paper: that *norms matter* when discussing online communities. Even when two communities use similar language, the context can transform the community into promoting healthy or subversive behavior. They also discuss design implications, suggesting the design of tools to track norms in online health communities or human-in-the-loop moderation that makes use of tools similar to the ones built here.


## Thoughts, connections, and questions
This paper predates an important development in the online health community space: /r/proED was banned in November 2018.

This [/r/TrueOffMyChest post](https://old.reddit.com/r/TrueOffMyChest/comments/9xa1dt/reddit_ban_endangered_thousands_of_lives_re_rproed/) talks about how when the sub was banned, thousands of people lost their only support system for their disordered eating behavior. Former users of the sub talked about how they went there for support, and not for encouragement, and how the name "pro ED" really meant "pro people with EDs." I, too, had visited (but never participated) in the sub on a number of occasions. I did this when I was looking for people who thought like I did (that is, in a disordered way), and it's clear that many others did too.

[Other research](https://www.sciencedirect.com/science/article/abs/pii/S1740144517302528) that followed this paper investigated the content of /r/proED in more depth. "Praising individuals who maintain their eating disordered behaviors was common," says the highlights. And based on having read some of the content there when I visited, it's hard to disagree with that statement. Once again speaking personally (read: not for anyone else who has or had an ED), eating disorders warp your perception of what is "normal," as it relates to food and weight.

Yet the question still remains of what the effects of this ban were on the very real, very vulnerable people who used /r/proED. I am certain that many people did visit the community for support, and that they lost a support system with this ban. It was, perhaps, a support system that encouraged their disordered behavior, but it was a support system nonetheless. And considering how high risk eating disorders are, it seems all but certain that this ban seriously endangered former members of that community.

That's not to encourage disordered behavior at all, of course. But imagining the impacts of this on people who relied on /r/proED for support or commiseration makes me uneasy. I don't believe there's an understanding of the purposes that people use these communities, either. And I find it unlikely that Reddit considered any of this when banning the sub, given that they usually act in their own interests (and not their users') as a platform (responding to [media criticism](https://www.newyorker.com/magazine/2018/03/19/reddit-and-the-struggle-to-detoxify-the-internet) and [pressure](https://www.dailydot.com/society/reddit-r-jailbait-teen-pics-problem/)).

This raises important questions about platform design and moderation that I don't have the answer to. What happens when people are encouraging dangerous behavior on your platform? What happens when they're not encouraging that, but people around them are? What happens when the people in question are a particularly vulnerable population? I don't believe the blanket ban was appropriate, and instead believe that it endangered users; I also understand that Reddit is going to act in its own interests and ban subs that may tarnish its image. And I don't know what can be done.

