+++
title = "On targeted advertising"
date = "2020-03-22"
categories = ["general"]
draft = false
+++

This is my response to an article from Wired, [Why don't we just ban targeted advertising?](https://www.wired.com/story/why-dont-we-just-ban-targeted-advertising/). My direct answer is "because that's not the problem," and I instead discuss the two more fundamental problems that I see in that space.

<!--more-->

I've [written]({{< ref "posts/digital_advertising.md" >}}) about digital advertising before, and I'm not its biggest fan. Not only do I think that the space is rife with privacy violations and abuses of user data, but I also believe that it's mostly for nothing: that online advertising is a [bubble](https://thecorrespondent.com/100/the-new-dot-com-bubble-is-here-its-called-online-advertising/13228924500-22d5fd24), and that it's not nearly as effective as the amount of money in it would lead you to believe.

## Why I disagree
The author's core assumption seems to be that by banning targeted advertising, the same money will be funneled into untargeted advertising:

> Newspaper ad revenue, steadily climbing until 2006, has plunged ever since. Where have advertisers taken their budgets instead? Overwhelmingly, to Facebook and Google and the advertising infrastructure they control. Take away their targeting advantage, and marketers would have to shift back to paying publications to reach their audiences, so-called “contextual advertising.” Getting rid of microtargeting wouldn’t singlehandedly restore journalism to its glory days, but it could help—a lot.

They also claim utopian effects from a world without targeted advertising:

> The proponents of a behavioral advertising ban paint a rosy picture: less discrimination, better civic discourse, a rejuvenated news media. What’s not to like?

The idea that behavioral advertising is responsible for these, and that these issues will go away in its absence, is misleading. Facebook presumably optimizes for engagement; this much is known. Its goal is to keep you on the platform as long as possible, so that you see more ads. Would a Facebook without targeted ads *not* want this? It seems hard to imagine that its goal would ever be anything *other* than keeping you on the platform for longer; its revenue would still likely be tied to how much people use it (what service's revenue *isn't*?).

The article acknowledges as much, but doesn't actually take on that argument:

> Even a subscription-based social network would want to engage its users, he said, and what engages users is sensationalism and filter bubbles. “I do not think it is enough to address the damage of microtargeting if you don’t also deal with algorithmic amplification,” [Roger] McNamee [from the article, "a former Zuckerberg confidant who is now a zealous big-tech antagonist"] told me.

I remain unconvinced that banning targeted advertising is even helpful to the core problems here---and again, this isn't because I'm invested in them. I have [previously written]({{< ref "posts/digital_advertising.md" >}}) about my criticisms of digital advertising. I've read papers studying this ([Rao and Simonov, 2016]({{< ref "papers/reactions_to_search_ads_rao.md" >}}), [Simonov, Nosko, Rao 2017]({{< ref "papers/competition_crowd_out_simonov.md" >}})), and those suggest to me that the industry is propped up on confirmation bias and misleading metrics.

## Why am I defending it?
Why, then, am I defending targeted advertising, when I've written about how much it all sucks before? **Because banning it won't help, and because it's not inherently bad.**

Ending targeted advertising would favor those who can afford to cast a wide net with their advertisements---those who can affords pace on the largest platforms with the largest audiences. Once again, the author acknowledges this:

> On the other hand, by far the biggest spenders on digital political ads this year are a trio of billionaires—Michael Bloomberg, Tom Steyer, and Donald Trump—the first two of whom probably would never have even made it to a televised debate if not for their war chests. Which illustrates a fundamental truth: Digital platforms, like most technological advances in history, often end up delivering the biggest benefits to the already rich and powerful.

I mentioned this when writing about a [paper]({{< ref "papers/ethical_tensions_social_media_chancellor_2.md" >}}) by Dr. Stevie Chancellor: "We also have to be careful with the question of who software gives more power to, and who it takes power away from." While that was in the very different context of inferring mental health states of social media users, the idea applies here too. While the author wants to take power *away* from Google and Facebook (a noble goal!), a hasty ban on targeted advertising would only favor them precisely because of how large they are.

And for people actually using the internet, what does a website look like when the cost of advertising is lower, and when advertisers have no idea if they're reaching the right people? There are *more* ads, not less. Why does the author think that arbitrary, untargeted ads on smaller publications would cause a "revived news media"? Do they forget the "hot singles in your area" or "penis enlargement pills" ads of the 15-years-ago-internet?


## Some actual problems
I think that the author does get at some actual problems that targeted advertising contributes to: these are **rampant abuse of people's data** and **unchecked political advertising**. These, though, should be regulated themselves.

### Rampant abuse of people's data
Anyone paying attention has noticed that large companies are rather careless with personal data. The last three years have each featured major data security incidents: Equifax in 2017, Cambridge Analytica in 2018, and Capital One in 2019. There are smaller ones that I can't remember, and certainly countless others before 2017. While these aren't strictly related to targeted advertising, I contend that the blatant disregard for individuals' data is the cause for many of the problems with it.

One of my major issues is that advertisers can bring their own data to Facebook (I have not done research on Google or other advertisers). Information that other companies have obtained on their own becomes more powerful by their being able to share it with Facebook, causing people's Facebook profiles to follow them into the offline world.

This information is sometimes obtained ethically---from customer loyalty programs or mailing lists---but the same program allows one to join [voter registration data](https://l2political.com/) (which you can just *purchase*!) to Facebook, creating a dangerous combination.

If companies are using my data in a responsible, secure way, then I would have far less of a problem with it than I do today; likewise if they weren't sharing it with others. Google's recent [restrictions](https://www.blog.google/technology/ads/update-our-political-ads-policy) on political microtargeting show that targeting is not an all-or-nothing question, so I believe there are ways to do this *better*.

Put otherwise, I believe what we actually need are regulations on data collection and data sharing. GDPR is a great step in this direction, but since I don't live in Europe, its only effect on me is the annoying cookie banners on every website. Further regulating what data websites can and can't collect, and whom they can share it with, will help to correct some of the abuses of targeted advertising.


### Unchecked political advertising
I'm also starting to believe that unregulated political advertising is a threat to democracy. Political disinformation campaigns and the lack of ownership or fact-checking by platforms are one thing; but what makes this problem unique is the sheer *scale* at which advertisers can reach out to different groups.

One report suggests that the Trump campaign created 100,000 distinct pieces of creative content in 2016. That obviously took time, but once created, it became possible to automate the experimentation and serving to the people who it would influence the most. A modest improvement from microtargeting was amplified several times over by the scale at which it operated.

Platforms are responding in different ways to this problem. In the fall, Facebook famously [announced](https://www.theverge.com/interface/2020/1/10/21058616/facebook-political-ads-targeting-misinformation-polarization) that they would not regulate political advertising, Twitter [banned](https://www.nytimes.com/2019/10/30/technology/twitter-political-ads-ban.html) it outright, Google [restricted](https://www.blog.google/technology/ads/update-our-political-ads-policy/) the degree of targeting allowed, and Spotify [paused](https://adage.com/article/digital/spotify-suspend-political-ads-2020/2224281) it while acknowledging that the problem was challenging.

The authors of the book I'm reading, [Network Propaganda]({{< ref "books/network_propaganda_2.md" >}}), agree. From Chapter 9:

> The fundamental problem is that Facebook’s core business is to collect highly refined data about its users and convert that data into microtargeted manipulations (advertisements, newsfeed adjustments) aimed at getting its users to want, believe, or do things. Actors who want to get people to do things—usually to spend money, sometimes to vote or protest—value that service. ... But even if you think that microtargeted behavioral marketing is fine for parting people with their money, **the normative considerations are acutely different in the context of democratic elections.** That same platform-based, microtargeted manipulation used on voters threatens to undermine the very possibility of a democratic polity.

The authors propose, and I largely agree, that Facebook (and others) publish a record of all political ads that it serves and all experiments run using those ads. This, they argue, is essential for the health of democracy.

Past transparency efforts, meanwhile, have been ineffective and misleading, [writes](https://theconversation.com/facebooks-transparency-efforts-hide-key-reasons-for-showing-ads-115790) Oana Goga in *The Conversation*. One study [found](https://www.ndss-symposium.org/wp-content/uploads/2019/02/ndss2019_04B-1_Andreou_paper.pdf) (PDF) that the explanations Facebook provides are often incomplete. Consider an ad whose primary targets are specific people, based on a list of email addresses provided to Facebook. The "Why am I seeing this ad?" explanation Facebook provides states that it was because a user is interested in Facebook---nothing about email targeting or photography.


## Closing thoughts
A related problem, which I haven't discussed here, is that the free internet is supported by (largely targeted) digital advertising. An internet where targeting goes away, or where advertising is less valuable, is an internet with less free content available.

That's not necessarily a bad thing: good content does cost money to produce. And I'm happy to pay for quality content that interests me: I subscribe to [Stratechery](https://stratechery.com/) by Ben Thompson, and am considering [The Athletic](https://theathletic.com/) and the Chicago Tribune. But while I find content from other outlets occasionally compelling, I don't see myself ever getting a Wall Street Journal or Economist subscription because the *majority* of their content doesn't appeal to me. I'd be happy to pay a small amount of money per article that I find interesting, and I'm sure others would too, but such a model doesn't exist anywhere yet.

Back to the point, though: the suggestion of banning targeted advertising misidentifies the problems we're dealing with. Targeted ads aren't inherently bad, and unlike the author of the original article, I think it's here to stay. The question is not "should we get rid of it," but rather "how can we regulate this in a way that respects people's privacy." I fully appreciate that this is a hard problem---but we have to start with modest, practical changes, and banning all targeted advertising is not the way forward.
