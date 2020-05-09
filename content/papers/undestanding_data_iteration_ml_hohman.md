+++
title = "[Paper] Understanding and Visualizing Data Iteration in Machine Learning"
date = 2020-05-08
draft = "false"
categories = ["papers", "chi2020"]
authors = ["Fred Hohman", "Kanit Wongsuphasawat", "Mary Beth Kery", "Kayur Patel"]
+++

TODO


<!--more-->

**Authors**: Fred Hohman, Kanit Wongsuphasawat, Mary Beth Kery, Kayur Patel

**Link**: [ACM Digital Library](https://dl.acm.org/doi/abs/10.1145/3313831.3376177)

## Background
Machine learning is all about iteration---you never get good results the first time around, and if you do then you've probably made a mistake. Typical ML workflows will include *model iteration*, where one enhances their model (by adding features, changing the model type, tuning hyperparameters, etc.) in order to improve performance at some task. This paper studies *data iteration*, which focuses on improving the *dataset* itself. From the abstract (emphasis mine):

> Our interviews with 23 ML practitioners reveal that they improve model performance frequently by **iterating on their data (e.g., collecting new data, adding labels) rather than their models.** We also identify common types of data iterations and associated analysis tasks and challenges. 

Sounds promising---I can think of a scenario at work literally this week where this happened, where we needed more (better) data to actually tackle our question of interest. I also think this is undervalued in typical machine learning conversation, where things like Kaggle give the data to you and instead focus on model iteration. The authors call out how this is a property of the "real world":

> The classic ML colloquialism, “garbage in, garbage out,” evokes this essential fact that data needs to have the appropriate signal for a model be useful. In real world applications, rarely do teams start out with a dataset that is a high-quality match to their specific ML project goals. Thus data iteration is vital to the success of production ML projects.

Some of these concerns are unique to machine learning systems. There's the principle that "changing anything changes everything," where any change in any part of an ML system (more or less data, different processing, model tweaks, different metrics, etc.) can drastically impact the overall results. This is different from many software systems where you can make small changes and be reasonably confident that they'll only affect a small part of the system.

> These unique challenges also impact software development for machine learning [29]. A recent study of ML industry professionals found that “discovering, managing, and versioning the data needed for machine learning applications is much more complex and difficult than other types of software engineering”

For a great paper on the challenges with ML systems, see Google's [Machine Learning: The High Interest Credit Card of Technical Debt](https://research.google/pubs/pub43146/). In this work, the authors focus on data iteration.


## User interviews
The authors interviewed 30 ML practitioners---8 in computer vision, 8 in natural language processing, 5 in applied ML, and one in sensors. One question was "why do data iteration?", with numerous answers: starting with a small amount of data can help bootstrap modeling by letting you conduct quick feasibility studies and iron our the details of the problem. Data improves performance, obviously, as one researcher wrote: "Most of the time, we improve performance more by adding additional data or cleaning data rather than changing the model." And data changes over time---the NLP researchers pointed out how language evolves over time, so keeping up with data is important.

**How do practitioners iterate on data?** A lot of different ways: adding sampled instances (representative of a population), add specific instances (for a specific label or feature), add synthetic instances (notably in computer vision), adding labels, removing noisy data, and modifying features or labels.

**What were data iteration challenges?** The main one was tracking experiment history, which I *definitely* understand. It's one thing to track different versions of models---a commit hash + metrics is usually sufficient, with a ton of caveats. But tracking different versions of *data* is another beast entirely. Practioners described training the same models on old & new data with constant test sets and coming up with ways to recognize data drift.

Freezing and unfreezing data versions was also a problem; users reported fixing data to tune model architectures, but eventually you have to unfreeze it and hope that your models work on the live data. Another concern was when to stop collecting data, and so were analyzing failure modes and buliding "blacklists" of bad data.


## Chameleon: visualization for evolving data
The authors prototyped a visualization tool for exploring data that changes over time. A "data timeline view" shows the data versions, a sidebar shows the version summaries and instance predictions, and a feature view visualizes performance histograms. 

I didn't spend very much time on this part of the paper because (1) I'm generally skeptical of new visualization tools, and (2) showing is better than telling; reading about a visualization system is boring.

The authors did do case studies with the tool: one on sensor prediction and another on learning from log data. These were fairly complex case studies with changing data and difficult requirements, which is nice to see.


## Reflections and opportunities 
I love seeing user studies and interviews in HCI. I could go on for hours about how my tools help and limit me, what kinds of things I do repeatedly, what I think about different parts of my workflow, and more. There's there's a *ton* of value in getting deep, qualitative feedback from users that reflects their experiences. 

The authors mention an opportunity for a tool that jointly manages data iteration and model iteration. I agree; this (to my knowledge) is a hole that is usually solved by two separate solutions. Being able to organize and manage messy, changing data is a huge problem that teams that I've worked on face.

Another suggestion is for visualizing probabilistic labels; a recent trend in ML is creating probabilistic label generation instead of doing (often extensive) data labeling. Being able to visualize that is an open problem.

**Closing thoughts**: this was a good paper. It wasn't one of my favorites, but not every paper will be. There's a lot of value in reading papers that aren't directly related to what I'm interested in, so I'm still glad I've read it. I'm also working on spending less time on these summaries when I'm not reading the paper in depth, and I accomplished that today.
