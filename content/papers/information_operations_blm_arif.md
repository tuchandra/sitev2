+++
title = "[Paper] Acting the Part: Examining Information Operations Within #BlackLivesMatter Discourse"
date = 2020-06-10
draft = false
categories = ["papers"]
authors = ["Ahmer Arif", "Leo Graiden Stewart", "Kate Starbird"]
+++

This CWCW 2018 paper studies tweets and profiles of accounts that were suspended by for affiliation with Russian information operation campaigns. How did these accounts contribute to the discourse? What kinds of things did they tweet about? What were their profiles like? Another timely paper, Dr. Starbird shared this on Twitter and it immediately stood out.

<!--more-->

**Authors**: Ahmer Arif, Leo Graiden Stewart, Kate Starbird

**Link**: [ACM Digital Library](https://dl.acm.org/doi/abs/10.1145/3274289), from CSCW 2018


## Background
Social media companies have started acknowledging that their platforms becoming host to *information operations*, which are "actions taken by governments or organized non-state actors to manipulate public opinion." Famous examples include Cambridge Analytica and the nebulous "Russian interference" in \<pick a social movement>. Information operations are not new, but their interaction with social media platforms is.

From the abstract:

> This research examines how social media accounts linked to one such operation---allegedly conducted by Russia's Internet Research Agency---participated in an online discourse about the #BlackLivesMatter movement and police-related shootings in the U.S. during 2016. ... Our empirical findings show how these accounts imitated ordinary users to systematically micro-target different audiences, foster antagonism, and undermine trust in information intermediaries.

The story of how this work got started is interesting. The authors study accounts that were publicly suspended by Twitter for being affiliated with the Russian Internet Research Agency (RU-IRA), but they did not expect to land on the #BlackLivesMatter movement. When Twitter released these account names, the authors recognized several from earlier work, then decided to dig deeper. That's a nice insight into how the research process can be highly nonlinear.


## Methods
The methods, loosely speaking, were:
 * generate a network graph of retweets that reveals distinct communities
 * cross-reference 2752 suspended RU-IRA accounts with the network, then select 29 that were well-integrated
 * qualitatively analyze the "digital traces" (tweets, profiles, links, websites)
 * in order to understand how they were participating in the discourse
 * then juxtapose those observations with the network graph to figure out where those accounts were integrated

That's really interesting! Attacking these large-scale problems requires mixed methods. My guess is that this methodology was the result of both open-ended exploration (poking around for something that looks promising) and iteration (abandoning ideas that failed), but that might be wrong; I'd love to hear more about how they got here.

The Twitter dataset started with shooting-related keywords from December 2015 - October 2016, then was filtered to those with "{Black, Blue, All}LivesMatter", leaving ~250K tweets. They applied an activity filter that left 22K accounts and ~90K tweets.

The retweet network readily clustered into right-leaning and left-leaning communities. These communities included 29 RU-IRA accounts and 109 tweets; this either limited or focused the analysis, depending on your perspective (which I appreciate the authors for mentioning).

The authors used the Wayback Machine to collect snapshots of these accounts' timelines; this isn't perfect, but provided a window into these accounts nonetheless. They paid close attention to profile data (background images, bios); tweets focused on original content (including images and memes); and external websites that these accounts linked to.

**Methodological challenges**: this is a great section!
 * Twitter data was incomplete due to rate limits and biased because of the shooting-related terms that they tracked; the findings are *not* representative of the overall #BlackLivesMatter discourse
 * because of the above, they do not seek to quantitatively assess the *impact* of RU-IRA, but rather to understand how the content was designed
 * Twitter's methodology for suspending RU-IRA accounts is unknown
 * social media data is ephemeral, as shown by their use of Internet Archive data, which limits past-looking analyses

That Twitter data is only generally available in real-time (via the Streaming API) is, in my head, one of the biggest challenges in studying it. Identifying events as they are happening, and the hashtags or keywords to focus on, seems really hard!


## Interesting findings
As expected, the retweet network clusters readily into left- and right-leaning. Perhaps more surprising is the fact that the RU-IRA accounts occur within both clusters and circulate around:

{{< figure src="information_operations_blm_arif_img1.png" >}} &nbsp;

> An initial---and striking---observation is that there were clearly RU-IRA accounts embedded in both clusters, meaning that RU-IRA content was retweeted on both "sides" of the conversation. Furthermore, we can see that while RU-IRA content spread throughout each community---and in some cases was highly retweeted---it very rarely moved between them.

Again, this work is unable to offer any quantitative analysis of the impact of these accounts, but it does provide a window into what's going on.

**Inauthentic identities**: RU-IRA accounts constructed user profiles that, at first glance, showed "an interesting and authentic self." 

> Accounts in the right-leaning cluster tended to use photographs to present themselves as white men and women living in Texas or other southern states **who were interested in firearms and the right to bear them.**

Something about the phrase "firearms and the right to bear them" made me laugh uncontrollably. Thanks, uh, Russia.

The authors' description of what makes these profiles seem so authentic is interesting:

> These profiles can appear to be the online personas of real African and White Americans because they appeal to creative self-expression and caring for others ... they invoke stereotypical thinking by articulating African and White Americans as binary groups that are internally homogenous with respect to politics.

I would love to see an experiment studying how well people are able to distinguish between the profiles of real people and bots.

**Tweets**: these generally contained content similar to what you'd observe in other places on Twitter: "commentary, images, news, and videos that helped shape, reproduce, and solidify the political identities they enacted." In other words, they acted like normal Twitter users.

**Coordination**: accounts within the same cluster would often retweet or @mention each other, projecting authenticity and managing their audience's attention. 

**Participation in #{Black, Blue, All}LM discourse**: the left-leaning accounts connected their African American identity to BLM by tweeting about police shootings. These were sometimes from mainstream media, but others from alternative media sources (which elevated the credibility of the latter). They used topical hashtags, charged messages, and memes.

> This activity feeds directly into attempts to frame #BlackLivesMatter as an anti-police hate-group. From prior research we know that such framings were actively resisted and addressed by #BlackLivesMatter activists while being proliferated within anti-BlackLivesMatter discourse. By tapping into this larger reservoir of antagonistic discourses proliferating in American politics,these accounts amplified toxicity in public  discussions

This is so interesting---I really wonder how much this has been successful. The past two weeks have seen a marked increase in anti-police sentiment (and rightly so, in my opinion), and I wonder about the extent to which #BlackLivesMatter is seen as anti-police in this way.

Put otherwise, it seems that the goal was to amplify the voice of #BlackLivesMatter, but to subtly twist it along the way---to make it more hateful than it is, to make people question what it stands for, and to sow discord. That, I think, is the goal of broader disinformation campaigns that we hear about---to cause distrust in institutions, and make us feel like we live in a post-truth world.

Accounts on both sides used topical memes, casual language, and emotionally charged content effectively; put otherwise, they behaved like normal Twitter users. Both clusters also criticized the "mainstream media," on the left criticizing media for its coverage of police violence and BLM itself, and on the right crying out about fake news.


## Discussion
This is another paper that's quite timely in light of recent events; I know that studying these kinds of accounts' impact today would be a lot harder (Twitter is bigger, the BLM movement is bigger and noisier, and surely the Russians have gotten better at this), but I would love to work at Twitter Research and study this problem.

This paper paints a much more sophisticated picture of Russian disinformation campaigns than I think is typically discussed. When I hear people talk about information operations or sockpuppets, I hear a lot of "you can notice them by their poor grammar" or "they all just follow each other," but this paper shows that the opposite is true:

> Our research suggests that these performances are not simply automated or even scripted, but are instead like an improvisation in the sense that an actor is given a set of constraints, but then dynamically adapts their performance in interaction with the crowd.

Understanding the performative aspect, the authors write, is critical for understanding these information operations. The activity did not attempt to infiltrate a single side of the conversation---it joined both, then amplified divisive messages from both sides. 


## Questions I have
What proportion of Twitter is bots or (studied here) sockpuppets? How can we measure their impact on public opinion and discourse? Hell, how can we measure *anyone's* impact on this? What kind of quantitative approaches would even be possible here?

How have these accounts succeeded in changing public perception of #BlackLivesMatter? To what extent are they still doing so today? How has this changed over time?

To what extent are people able to recognize these accounts? To what extent do people unwittingly promote their content? (The authors mentioned that Twitter's CEO Jack Dorsey and one of their researchers both retweeted one of these accounts.) How do we develop algorithms and systems for recognizing inauthentic accounts?

This was a great paper, and I'm glad Dr. Starbird put it on my radar by sharing it on Twitter.
