+++
title = "A disaster in Iowa"
date = 2020-02-05
draft = "false"
categories = ["general"]
+++


Like many on Monday, I left work eagerly awaiting the results of the Iowa caucuses happening one state west of me. I got home, cooked dinner, and opened up the [FiveThirtyEight live blog](https://fivethirtyeight.com/live-blog/iowa-caucus-2020-election-live/) to start following election results. A couple of hours passed, and it became increasingly clear that something had gone very, very wrong. 

<!--more-->

## A recap of events
Early Monday afternoon, it was [reported](https://www.bloomberg.com/news/articles/2020-02-05/inside-the-epic-iowa-meltdown-that-paralyzed-2020-democrats?srnd=premium) that a handful of county chairs had trouble with an app to report precinct results. Iowa Democrats emphasized that no one had hacked the app or interfered with the results—it just straight up didn't work.

The app seems to have suffered from user problems, poor connectivity (while not the app's fault, expecting everyone to have good cell reception is misguided), and the lack of any sort of backup plan. As of 2:15 AM on Tuesday morning, the Iowa Democratic Party had literally not released *any* election results, and they wouldn't come for another 15 hours.

After a draining night that resulted in literally nothing happening, FiveThirtyEight [wrote](https://fivethirtyeight.com/features/iowa-might-have-screwed-up-the-whole-nomination-process/): "The point is that the lead story around the 2020 Iowa Democratic caucuses is now — and will forever be — the colossal shitshow around the failure to release results in a timely fashion." I hope they're right, because the Democratic Party is exposing their technological incompetence at every step.


## They didn't need an app
A point that keeps being repeated is that the Iowa Democrats didn't need an app for this. Paper ballots (in this case, the "preference cards") are a tried and true system; they can take a while, but their integrity is second to none. 

That the state party [declined to provide details](https://www.npr.org/2020/01/14/795906732/despite-election-security-fears-iowa-caucuses-will-use-new-smartphone-app) about the app's makers or specific security choices created more fear, rather than assuaging any concerns. **Security by obscurity does not exist**; the fear ended up being totally justified, though rather than failing by being insecure it failed by being completely nonfunctional.

Ben Thompson of Stratechery may have put it best when he [wrote](https://stratechery.com/2020/the-iowa-fiasco-the-best-feature-three-lessons/) "arguably the number one thing this app had going for it was that it didn’t work in the first place." By failing so spectacularly, it was impossible for anyone to have interfered with the election results, because the reporting mechanism was so clearly broken that it invited extra scrutiny.


## What went wrong?
At its core, Shadow is another political consultancy trying to improve some part of the election process with technology. Understanding what went wrong requires understanding how campaign tech is (and isn't) funded.

This [Twitter thread](https://threader.app/thread/1224820389387223041) does an excellent job of explaining what went wrong, and so I will quote it here:

> In the wake of the 2016 election there was a lot of energy around funding better tools. We had folks like @raffi go over to work at the DNC. We had Higher Ground Labs promise money in to the space, they funded Shadow, and many other projects.
>
> Unfortunately they funded it using a startup / incubator model. Giving startup funds to many projects in a cohort and helping them get to an MVP and pitch founders for more money.
>
> After the initial infusion, there was no more money to be had. These projects all failed when they ran out of money. There was no budget to fund development between cycles. The decision makers know nothing about how technology, or its development works.
> 
> The decision makers refuse to use free software, alienating the progcoders/ragtag communities. They also refuse to fund projects between cycles to build reusable platforms.

To add to this, the [New York Times](https://www.nytimes.com/2020/02/04/us/politics/iowa-caucus-shadow-app.html) reported that the Iowa Democrats paid Shadow slightly over $60,000. From the article:

> Shadow was put into a race that engineers at the most well-resourced tech giants, like Google, said could not be won. There was simply not enough time to build the app, test it widely to work out major bugs and then train its users.
> 
> Shadow was also handicapped by its own lack of coding know-how, according to people familiar with the company. Few of its employees had worked on major tech projects, and many of its engineers were relatively inexperienced.

Anyone who's worked in software will hear the alarm bells going off: this is not how software is built, leave alone secure, robust software that works at scale. But that’s what will inevitably happen when you fund platforms or tools with initial cash infusions and then leave them be.

This kind of startup / incubator model can’t work—these are *never* supposed to make money long-term, like startups are. Sustainable platforms have to be maintained, and that costs money. And most importantly, it costs money outside of election cycles.


## Institutional knowledge
Let me quote the Twitter thread again:

> A couple days after Obama was re-elected the political staffers walked in to the tech floor of the Obama campaign HQ and wondered where everyone was. They’d all be laid off, @harper had found them jobs in industry & everybody faded back in to tech companies.
>
> From a staff of hundreds, a handful went to work at the White House or OFA, but for the most part that knowledge was all lost.

"For the most part, that knowledge was all lost." Imagine a company innovating for a couple of years, figuring out what works and what doesn't, coming up with new strategies to appeal to their customers, and learning new ways of using technology ... only to give it all up after four years and start from scratch.

That'd be ludicrous, wouldn't it? Yet it's exactly what we see here. Instead of investing in sustainable platforms and funding them between cycles, the Democrats have chosen to lean on consultancies and one-off solutions. Instead of building out an actual technology organization, engineers and technologists are hired for short-term positions and laid off after the election. 

The problem is structural, and until this is resolved we will continue to hear stories like this.


## Postscript
I volunteer with a group called [Tech for Campaigns](https://www.techforcampaigns.org/about-us) (they were not associated with the making of this app at all). Most of my thoughts from this are the result of talking with TFC folks & other politically-interested friends.

One of the biggest things that TFC has going for us, as we discussed after Iowa, is that *we'll still be around after 2020*. We're interested in creating *sustainable* political tech, and that's what campaigns and parties have to learn to do at the institutional level. 

There is more to be said about using technology where it isn't needed, and I feel quite strongly that elections are one of those places. This post is long enough, so I'll leave you with this [XKCD comic](https://xkcd.com/2030) instead.

For additional reading, I recommend the following:

 * FiveThirtyEight: [Iowa might have screwed up the whole nomination process](https://fivethirtyeight.com/features/iowa-might-have-screwed-up-the-whole-nomination-process/)
 * FiveThirtyEight's [live blog](https://fivethirtyeight.com/live-blog/iowa-caucus-2020-election-live/) about the events as they happened (and didn't happen)
 * A [Twitter thread](https://threader.app/thread/1224820389387223041) by @rabble
 * The New York Times: [Faulty Iowa App Was Part of Push to Restore Democrats’ Digital Edge](https://www.nytimes.com/2020/02/04/us/politics/iowa-caucus-shadow-app.html)
 * Bloomberg: [Inside the Epic Iowa Meltdown That Paralyzed 2020 Democrats](https://www.bloomberg.com/news/articles/2020-02-05/inside-the-epic-iowa-meltdown-that-paralyzed-2020-democrats)
 * Stratechery: [The Iowa Fiasco, The Best Feature, Three Lessons](https://stratechery.com/2020/the-iowa-fiasco-the-best-feature-three-lessons/) (subscription required)



