+++
title = "Network Propaganda, part 1"
date = "2020-03-02"
categories = ["books"]
draft = false
+++

I wrote [previously]({{< ref "posts/cant_not_be_researcher.md" >}}) that I was reading the book [Network Propaganda](https://www.oxfordscholarship.com/view/10.1093/oso/9780190923624.001.0001/oso-9780190923624) by Yochai Benkler, Robert Faris, and Hal Roberts. I believe I'll get more from the book if I write about it, [as with papers]({{< ref "posts/why_papers.md" >}}), so I plan to write up a summary and thoughts on each of four parts of the book. The entire book is available [for free online](https://www.oxfordscholarship.com/view/10.1093/oso/9780190923624.001.0001/oso-9780190923624)!

<!--more-->

**What is this book?** *Network Propaganda* is a collection of studies of media coverage of the 2016 presidential election in the United States. Its primary argument is that "longstanding institutional, political, and cultural patterns have interacted with technological change since the 1970s to create a propaganda feedback loop in American conservative media." It challenges the often-repeated wisdom that Russia elected Trump or that fake news played a large role in the campaign. They similarly reject the ideas of increasing political polarization and echo chambers, instead providing evidence for the *radicalization* of the Republican Party.

**How did I find this book?** Actually, from Reddit; I was reading a thread (that I've lost the link to) of book recommendations and saw this one come up. I'm very interested in social networks, political modeling, and the media ecosystem, so this book seemed like a great fit for me.

**A key point from Part 1**:

> We take a political economy view of technology, suggesting that the fundamental mistake of "the internet polarizes" narrative is that it adopts too naive a few of how technology works and understates the degree to which institutions, culture, and politics shape technological adoption and diffusion patterns. 

To truly understand what happened in 2016, the authors argue, studying technology and the internet alone is a mistake. We must study the sociotechnical systems in place, how they have changed over time, and what drove these changes. This kind of nuanced take is why I appreciate this being a book: there's no shortage of space to present arguments with sufficient depth.

Let's jump in.


## Chapter 1: Epistemic Crisis
This chapter sets the scene for the book by describing the political climate around Trump's election. In the wake of the 2016 election, which happened a few months after "Leave" won in the Brexit referendum, and alongside the rise of far-right parties in many European nations, there emerged a great deal of uncertainty around democracy and its future.

> Something fundamental was happening to threaten democracy, and our collective eye fell on the novel and rapidly changing---technology. Technological processes beyond the control of any person or country---the convergence of social media, algorithmic news curation, bots, artificial intelligence, and big data analysis---were creating echo chambers that reinforced our biases ... and were generally overwhelming our capacity to make sense of the world.

It's incredibly challenging to separate out *my* experience of what happened in 2016 from what the authors describe, and evaluate their claims without letting what I saw influence them. That's the irony in writing this, though; that in the age of political filter bubbles and algorithmic feed generation, everyone's experience with politics and media is more different than it was before. People have always preferred to surround themselves by others who share their beliefs, but now the algorithms behind Twitter and Reddit do that for us. To me, this makes it harder to find common ground with others.

Not so fast, though:

> But it is important to recognize that ... we do not have anything approaching a scientific consensus on what exactly happened, who were the primary sources of disinformation, what were its primary vectors or channels, and how it affected the outcome of the election.

The book attempts to change that, but what I take from this is that one can safely ignore anything that says any *single* thing (political polarization, Facebook, the Russians, etc.) caused Trump to be elected. Rather, there are a number of actors at play whose effects often get wrapped together (in my experience). The authors refer to these entities throughout the book:

 * political clickbait fabricators (websites whose only goal is to get clicks)
 * Russian hackers, bots, and sockpuppets
 * the Facebook news feed algorithm and online echo chambers
 * Cambridge Analytica
 * white supremacist and alt-right trolls
 * the right-wing media ecosystem
 * mainstream media
 * Donald Trump, as a candidate and a president


## Chapter 2: The Architecture of Our Discontent
This chapter studies the architecture of the American news media ecosystem. The authors collected 2 million stories from the presidential campaign and another 1.9 million during the first year of the Trump presidency and analyzed them in different ways.

> What we find is a highly asymmetric media ecosystem, with a tightly integrated, insular right wing, while the rest of the media ecosystem comprises ... a single media ecosystem, spanning the range from relatively conservative publications like the *Wall Street Journal* to liberal or left publications.

The authors present a variety of media maps where edges are based on media hyperlinks, Twitter shares, Facebook shares, or other measures of relationships between nodes. The colors represent the partisanship of the publication (red is right, green is center, blue is left). One example is below:

{{< figure src="network_propaganda/media_map_sept2016_ch2.jpg" >}}

One can observe a partisan divide, where the center and center-left publications are closer to the left-leaning ones than the right-leaning ones are to any others. Everyone outside the right had formed a tight, interconnected attention network that varied in partisanship. The right, meanwhile, "formed an insular sphere centered on Breitbart."

Following the election, "each segment of the media ecosystem became a clearer version of itself." In the center-to-left ecyosystem, there was an increase in the attention paid to centrist publications. On the right, Fox News had a resurgence at the expense of Breitbart. The Twitter media sharing map is most striking:

{{< figure src="network_propaganda/media_map_twitter_ch2.jpg" >}}

By now, the point should be clear, and even moreso to the people who read the entire chapter. I'll quote the final paragraphs of the chapter as a conclusion:

> The consistent pattern is that ... there is no left-right division, but rather a division between the right and the rest of the media ecosystem. The right wing of the media ecosystem behaves precisely as the echo-chamber models predict ... the rest of the media ecosystem, however, operates as an interconnected network anchored by organizations ... that adhere to professional journalistic norms.


## Chapter 3: The Propaganda Feedback Loop
This chapter studies how the two previously established media ecosystems operate. 

> Dynamics on the right tend to reinforce partisan statements, irrespective of their truth, and to punish actors ... who insist on speaking truths that are inconsistent with partisan frames and narratives dominant within the ecosystem. Dynamics in the rest ... tend to dampen and contain partisan statements that are demonstrably false.

This doesn't mean the left is free of blame, the authors quickly state; rather, *on average*, partisan falsehoods *tend* to flourish on the right, and (it gets worse!) "not as errors but as design features of the network." They establish two sets of dynamics: one "reality check dynamic" and one "propaganda feedback loop."

{{< figure src="network_propaganda/reality_check_ch3.gif" >}}

<br><br><br><br>

{{< figure src="network_propaganda/propaganda_feedback_ch3.gif" >}}

In the propaganda feedback loop, "outlets within the network are not designed to check or refute propaganda as long as it is consistent with the partisan narrative." This doesn't mean that the audiences are immune to arguments from the other side; they are aware of such views, but discount opposing criticism. The media enables this by lowering trust in external media and further promoting insularity.

The chapter continues with a lengthy case study into two "smear" stories: the accusations of Bill Clinton flying to "orgy island" on the "Lolita Express" and those that Donald Trump had raped a 13 year old in 1994. Both the right and the left had extreme margins that were promoting these stories, respectively, but the difference is in those margins' interactions with the mainstream media. The top media on the right were part of the propaganda feedback loop, and had to share these stories to maintain their "credibility"; the opposite dynamic happened on the center-left.

**In conclusion**: the observations show that we do not have a fully polarized media ecosystem; rather, many Republicans occupy a self-reinforcing bubble, while Democrats and Independents occupy a more traditional media sphere. The right follows a *fundamnetally different media model*, where the party elites legitimize propaganda, and the core audiences treat fact-checking itself as partisan. 

Why, though? 

> It is not that Republicans are more gullible, or less rational, than Democrats. It is not that technology has destroyed the possibility of shared discourse for all. **It is the structure of the media ecosystem within which Republican voters ... and Republican politicians ... find themselves that made them particularly susceptible to misperception and manipulation, while the media ecosystem that Democrats and their supporters occupied exhibited structural features that were more robust to propaganda efforts and offered more avenues for self-correction and self-healing.** 

Put otherwise: the media ecosystems are fundamentally different, and it's not because of Facebook or the Russians. It's because the media has been slowly moving towards this for years, for decades!, and now they have diverged in important ways. That's not to say the Democrats are infalliable, as the book will later discuss the failure modes of the center-left media ecosystem.

This was great---these chapters took a *long* time to get through, because the sentences are so wordy and the text is so dense. But reading it once and summarizing it as a second pass has helped me to synthesize these ideas. Now, 1500 words later, I feel better about my understanding of the first part of this book than I did before. I'm excited to read more.


