+++
title = "Network Propaganda, part 2"
date = "2020-03-09"
categories = ["books"]
draft = true
+++

Part 2 of the book *Network Propaganda* studies its dynamics: the section goes into detail about how immigration came to be the central issue of the Trump presidency, but not in the way that the Republican Party expected, followed by a chapter focusing on Fox News and one on the failure modes of the mainstream media.

<!--more-->

Political communciation, the authors argue, focuses on three mechanisms by which media influences politics: agenda setting (which questions are salient?), priming (what standards should we use to assess people or positions?), and framing (the context within which claims are made, and how that influences our understanding or attitudes). The right-wing media (successfully) framed immigration in terms of fear of Muslims, not Latin American immigration, which led to the travel ban in Trump's first week. 


## [Ch. 4] Immigration and Islamophobia: Breitbart and the Trump Party
This chapter discusses how immigration became the central topic of Trump's candidacy, and how it shifted from an initial emphasis on Mexico ("When Mexico sends its people, they're not sending their best") to immigration from Muslim countries. To understand this, the authors take us back to the Reagan candidacy, which in 1980 embraced immigration from all over the world; the Republican Party did not contest this view. 

In 1992, Pat Buchanan ran on an anti-immigrant, "America First" platform; in the early 2000s, Latinx voters moved from evenly split between Democrats and Republicans to more consistently Democratic. And after the 2012 election, an RNC taskforce emphasized that they "must embrace and champion comprehensive immigration reform. If we do not, our Party's appeal will continue to shrink to its core constituencies only."

Put otherwise, the Republican Party didn't seem to want an immigration-hostile agenda in 2016. Of course, Trump, as an outsider to the party, did not follow this playbook, and instead became the perfect candidate for the immigration "issue." An analysis on immigration-related headlines reveals a clear emphasis on Muslim immigration and Islamic terrorism, far more than any focus on Latin American immigration, driven mostly by Trump's candidacy (it picked up after he won the nomination).

Immigration was largely Breitbart's issue, who produced far more stories on the subject than did any other major news outlet. The following is a network map where the sizes are the number of immigration-related stories, the edges are based on inlinks, and the colors are based on the Louvain community detection algorithm:

{{< figure src="network_propaganda/immigration_media_map_ch4.jpg" >}} 


The authors also study the influence of "explicitly white-nationalist publications" by training eight models to identify stories as white-nationalist, right, center-right, center, center-left, or left. Each had the highest accuracy in distinguishing white-nationalist stories, and had difficulty with center / center-left / left publications (supporting what we read in the [first part]({{< ref "books/network_propaganda_1.md" >}})). The use of TF-IDF revealed blatant racism and anti-semitism in the white nationalist stories. 

The chapter concludes with an account of how the right-wing media (successfully!) framed the Clinton campaign in terms of corruption in the Clinton Foundation. "In the telling of the right-wing media ecosystem, Clinton was a traitor who collaborated with the enemy. And the enemy was Muslim, and mostly Arab."

It is incredibly interesting how I, a fairly politically involved person, heard *nothing* about these ludicrous stories in the leadup to the 2016 election. These fantasies about Clinton being complicit in the funding of ISIS, or the Saudis bankrolling 20% of her presidential campaign, are *absolutely batshit crazy*. But more crazy is the fact that there is an *entire media ecosystem* devoted to spreading stories like these.



