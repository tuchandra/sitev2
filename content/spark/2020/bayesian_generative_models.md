+++
title = "Using Bayesian Generative Models With Apache Spark To Solve Entity Resolution Problems At Scale"
date = 2020-06-25T14:00:00
draft = false
categories = ["spark"]
+++

Deduplication is a huge problem in many domains; this talk by two people from MavenCode discusses how they've used Spark-driven Bayesian generative models to solve large entity resolution problems.

<!--more-->

**Speaker**: Charles Adetiloye, Timo Mechler (MavenCode)

This talk is on different deduplication problems, which is a class of problems that I'm currently working on. Deduplication broadly means linking up records that refer to the same person, but might not appear so; perhaps due to companies being acquired, people having multiple accounts, data coming in from different sources, or any number of other reasons.

What might you do? One option is supervised learning; while this is easy to implement (just do logistic regression on `p(match)`), it requires labeled data. You could also do probabilistic supervised learning, and the speaker gave the example of naive Bayes.

Unsupervised learning is an option, too; they suggested k-means clustering, but that sounds insane for this problem. 

They suggest *blocking keys*, where you subset your data based on things that you are highly confident are correct (e.g., gender). Then you can match the males from one dataset to the males in the other, and likewise for females. (Yeah, there's more to gender than this; too bad most of our data science practice is based on gender as a binary attribute. :/)

Then we got a demo on fuzzy string matching. Yuck.

## Their actual approach: Bayesian generative models
Their actual approach is completely unsupervised and Bayesian so as to preserve uncertainty. The summary was ... hard to understand. 

Their dataset of user profiles has entities E and attributes A; they partition their dataset based on one of the categorical attributes, which allows Spark to step in for parallelization. To partition efficiently, they use a KD Tree, which isn't *perfect* but is good enough, in theory.

Within a partition, look at the similarity distances (defined differently for different kinds of features---string similarity for names, physical distance for locations, numerical distance for numbers, etc.). Based on this, they use MCMC to cluster ... something. I'm confused.

They showed a demo, which looked cool. The approach still doesn't make sense to me. I guess that's how these go.




