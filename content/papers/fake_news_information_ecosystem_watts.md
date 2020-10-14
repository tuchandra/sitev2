+++
title = "[Paper] Evaluating the fake news problem at the scale of the information ecosystem"
date = 2020-10-14
draft = false
categories = ["papers"]
authors = ["Jennifer Allen", "Baird Howland", "Markus Mobius", "David Rothschild", "Duncan Watts"]
+++

What is the role of fake news in the overall media ecosystem?
Conventional wisdom might say it's significant, but this paper provides evidence for the opposite.
Using datasets of cross-platform media viewing, the authors find that fake news represents a small proportion of overall media consumption.

<!--more-->

**Authors**: Jennifer Allen, Baird Howland, Markus Mobius, David Rothschild, Duncan Watts

**Links**: [Science](https://advances.sciencemag.org/content/6/14/eaay3539) (open access)

## Background and motivation
This paper studies the presence and prevalence of "fake news" at the scale of the overall media ecosystem. 
This is notable primarily because prior work has focused almost entirely on fake news online (which makes sense! that's where most of it is), but forgets about the limited role that online media has in the lives of the vast majority of Americans.

## Why is this problem hard?
Studying the prevalence of fake news on multiple platforms is challenging.

It's easy to collect data on Twitter, thanks to open APIs and permissive privacy defaults, but findings that make use of such data (like [The Spread of True and False News Online]({{< ref "spread_of_news_vosoughi.md" >}}), a still-great paper) are limited in that they only represent, well, Twitter.

TV is much harder to study, as are general desktop or mobile internet usage, not least because companies like Nielsen established themselves as the only true way to measure TV viewing nationally! 
This makes sense given the long history of TV, but it's still a drastic difference.

And in practice, people's beliefs and behavior are rarely influenced by what they read or view on a single platform, much less an online one!
To create a more well-rounded understanding of the issue of fake news, it's necessary to evaluate it at the scale of multiple platforms. 

The researchers get over this problem by doing something only researchers can do---combining data assets from competitors!
They use Nielsen's national TV panel, Comscore's desktop and mobile panel, and Nielsen's desktop-only web panel. 
In doing so, they can study (almost) all media (on TV, programs; on desktop and mobile, apps and URLs) that each individual person consumed.

## Methods and findings
**Classifying fake news.**
On the internet, this is classified via the publisher or URL, which is in accordance with standard methods. (Notably, this cannot classify content on YouTube.)
On TV, there are no 'objectively fake news stations' in the same way that there are websites, so the proportion of people who see fake news on TV is zero by definition.

**News consumption.**
One key finding from this study is that the prevalence of news consumption in general is vastly overstated: 

> First, news consumption of any sort is heavily outweighed by other forms of media consumption, comprising at most 14.2% of Americans’ daily media diets.

People simply don't consume that much news.
Of the ~460 minutes per person per day of media consumption, over 400 of them are *not* news-related.
And to the extent that they do consume news, it's almost all on TV! 

> Overall, the ratio of TV to online news—including both desktop and mobile devices—is more than five to one (54 min versus 9.7 min), varying from a minimum of almost two to one for 18- to 24-year-olds (9 min versus 5 min) to a maximum of more than seven to one for those 55 years and older (94 min versus 13 min).

And based on the desktop panels, fake news occupied under 0.2% of the average person's daily media diet.

## Discussion
What does this mean?
This paper doesn't suggset that fake news isn't a problem, or that research on it isn't valuable.
"Arguably the deliberate circulation of false information with the objective of creating confusion and discord is intolerable in principle and should be combatted at any prevalence greater than zero," they write.

I can't say I disagree.

And I'm personally quite interested in how people are exposed to information, news or otherwise.
The article [The Truth is Paywalled, but the Lies are Free](https://www.currentaffairs.org/2020/08/the-truth-is-paywalled-but-the-lies-are-free/) has been living rent-free in my head since I read it this summer.

This paper *does* suggest, though, that 'fake news' is a bogeyman.
Fake news is not responsible for the problems of polarization, of Donald Trump being president, or of right-wing radicalization.
These problems are better attributed to "the content of ordinary news" or "the avoidance of news altogether," they argue.


## Closing thoughts
This was a quick read which made a clear point: that fake news is not as pervasive in the overall media ecosystem as Twitter discourse would lead you to believe.
The majority of Americans still get their news from TV, and news is a small part of overall media consumption.

> In particular, public ignorance or misunderstanding of important political matters could also arise out of a combination of (i) ordinary bias and agenda setting in the mainstream media (23–25)) and (ii) the overall low exposure of many Americans to news content in general, especially in written form. 
> We conclude that **future work on misinformation and its potentially corrosive effects on democracy should consider all potential sources of problematic content,** as well as the absence of relevant content, not simply the type that is most easily identified and least associated with conventional media interests (19).

There are plenty of open questions in this space, though, and naturally I'd love to see research in the areas that were out of scope for this work:

 - Categorizing TV broadcasts to study the extent to which TV content is misleading, heavily biased, hyperpartisan, or more
 - Studying, among the people who *do* consume fake news, how they get exposed to it and whether their exposure increases over time
 - Studying the extent to which this occurs on YouTube (that sounds painful)

Studying the prevalence of fake news, and other questions like how it spreads and how people become exposed to it, is still interesting.
I look forward to reading (or perhaps someday contributing to!) future work in this space.
But it's important to keep the bigger picture in mind.
