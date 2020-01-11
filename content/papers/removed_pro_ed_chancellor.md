+++
title = "Paper: This Post Will Just Get Taken Down: Characterizing Removed Pro-Eating Disorder Content on Social Media"
date = 2020-01-11
draft = "false"
categories = ["papers"]
+++

This is a social computing paper analyzing characteristics of over 30,000 pro-eating disorder (pro-ED) posts that were removed from Instagram after having been public at one time. The authors built a classifier for removed pro-ED posts against non-removed ones, and also studied the characteristics of removed posts more generally. <!--more-->

**Authors**: Stevie Chancellor, Zhiyuan (Jerry) Liu, and Munmun de Choudhury

**Link**: on Chancellor's [website](http://steviechancellor.com/wp-content/uploads/2019/03/deleted-posts-chi-2016.pdf) (published in CHI 2016)

## Summary
From the abstract (emphasis mine):

> We examine characteristics of over 30,000 pro-eating disorder (pro-ED) posts that were at one point public on Instagram but have since been removed. Our work shows that straightforward signals can be found in deleted content that distinguish them from other posts ... We build a classifier that compares public pro-ED posts with this removed content that achieves moderate accuracy of 69%. We also ... find that removed content **reflects more dangerous actions, self-harm tendencies, and vulnerability** than posts that remain public.

Instagram prohibits self-harm and pro-ED content by rule (which is good!), but that of course doesn't stop people from making posts that break this rule. Many posts even acknowledge this, saying "this post will just get taken down" in the descriptions. Vulnerable individuals use Instagram in this way to "buffer themselves against negative emotions and actions."

Studying the characteristics of this content can help us to better understand the behavior and the motivations of the people behind the post. It may also help us to understand how much of this is Instagram-specific and inform platform design. 

The data collection process was three stages, using the Instagram API at all phass: first, obtaining 6.5 million *public* posts by crawling tags with pro-ED content. Second, they sampled 100K active users from the authors of said posts, then gathered their public timelines (26M posts). Third, they checked if the posts from Phase II were available six months later, and sampled 31K posts that had been removed (but whose accounts still existed).

They built several logistic regression models on the *text* of each post (ignoring the photo/video in it) to try to classify content that would be removed from content that remained public. Each model used some combination of tag occurrences, tag co-occurrences, or post unigrams as features. The best one achieved 69% accuracy on a balanced hold-out set. 

The most predictive features for a post being removed were those that correspond to pro-ED lifestyles, self-harm behaviors, and high vulnerability ("cutting", "bodycheck", "worthless", "suicidal", "razor"). The predictors for a post remaining public were more related to ED recovery, and expressed more emotions ("gourgeous", "angry", "misunderstood").

One possible extension to this work is the design of just-in-time interventions for users who post this content. Expanding the relatively simple model would improve its accuracy and applicability. This could also assist with content moderation to reduce reliance on user reports. One might also study the time scale of the removal and whether it was user- or platform-initiated. Finally, interdiscplinary work will is needed to translate this into positive health outcomes.


## Thoughts, connections, and questions
Unrelated to the paper is a thought about link rot on the web. The paper has a footnote link to the Instagram blog on their policy change against self-harm content, but the link is since dead and I can't find a mirror. 

Social computing is yet another space that I find myself interested in. The [project](http://github.com/tuchandra/red-tweet-blue-tweet) I did studying political polarization on Twitter was a huge component in me getting a job as a data scientist, and social media gives us information about the world in a way that no other data source can. 

The ethics of this kind of work are interesting; in addition to the usual questions of social computing work, we have the question of studying removed content. The people at the center of this work are also a vulnerable community expressing said vulnerability publicly. The authors recognize this:

> We recognize that analysis of deleted or removed content is controversial territory in social computing ... However, we believe that the important health benefits of our work for those in need justifies the study of removed content in pro-ED communities. In that light, our work extends efforts in the social computing research community where large-scale data analytic approaches have been adopted to extend timely and tailored support to vulnerable communities online.

The eyes-off approach they took (not looking at the posts themselves, since they were removed) is particularly notable here. It's an approach that people often talk about for preserving privacy (not looking at individual data points), but one that I haven't seen applied in practice until now.

I love this quote from the discussion:

> Broadly, through these investigations of deviant pro-ED content, social computing researchers can gain insights into the intent and motivation behind sharing of pro-ED content on a public social platform and the general goals of such sensitive self-disclosure. They can also understand how individuals are repurposing social media platforms in order to connect and bond with others with similar personal challenges ... as well as to seek their help and support.

I think the reason I was interested in this paper is because it relates to my more fundamental interest in how technology affects people's lives. Understanding how people use social media is of broad interest to lots of people, and papers like this give us a unique lens into vulnerable communities. The biggest question remaining is how we can use this kind of work for good.
