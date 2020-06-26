+++
title = "Using Apache Spark And Differential Privacy For Protecting The Privacy Of The 2020 Census Respondents"
date = 2020-06-26T14:00:00
draft = false
categories = ["spark"]
+++

As the 2020 Census is happening, the US Census Bureau has developed a new system to use differential privacy to protect people's personal data. This talk describes what motivated this system (being able to reconstruct personal data in 2010---oh no!) and how they created a differential privacy algorithm to help them out.

<!--more-->

**Speakers**: Simson Garfinkel (US Census Bureau)

The Census is mandated by Congress, and it's used to enforce voting rights, appropriate federal funds, and help all kinds of businesses develop and plan their products. Census Bureau employees are *sworn for life* to protect respondent data, and the Census Bureau cannot make any kind of publication to reveal data of a person. Federal law also forbids the use of data for non-statistical purposes.

## Reconstruction attack
The Census Bureau was interested in the degree to which it was possible to reconstruct personal data from their published records, which get quite granular. Using only public data, the Census Bureau constructed a database reconstruction and reidentification attack, reconstructing *all* 300 million microdata records of address, age, sex, ethnicity, and race for 300+ million individuals. 

It gets worse: they bought four commercial databases to add people's names to this with a linkage rate of ~45%, and 38% was reidentified. Put otherwise: they were able to reconstruct confidential data for 17% of the US population. Yikes!

They now know how to take many aggregate publications and "solve" for the microdata that produced them; this is just a system of equations.


## Differential privacy
The basic idea behind differential privacy is to add noise to the data. This controls the privacy-loss vs. accuracy tradeoff, and the question of how much noise to add is a policy decision. There was no off-the-shelf system for applying this to a national census, so the Census Bureau had to create one.

Their requirements were producing higher-quality statistics at more densely populated geographies, and (importantly) producing consistent tables from the top down. To accomplish this, they create microdata that is safe to tabulate, and aggregate it *up*.

How do you do this? They didn't want to perturb individuals; instead, they worked at the census block level. This algorithm takes distributions over people at the block level (~8M), then adds noise, then reconstructs the people within that block (using MIP).

Simson spent a while talking about the specs of their machines and how they tracked the CPU load, which was not really interesting at all. But the rest of the talk was super interesting, especially given how critical the census is to my work and so much of this country's work. 

Resources:
 * code on [Github](https://github.com/uscensusbureau/census2020-das-e2e) for their differential privacy tools
 * a [paper](https://github.com/uscensusbureau/census2020-das-e2e/blob/master/doc/20190711_0945_Consistency_for_Large_Scale_Differentially_Private_Histograms.pdf) they published about this (PDF)

Cool!



