+++
title = "[Paper] Competition and Crowd-out for Brand Keywords in Sponsored Search"
date = 2020-01-03T15:24:00
draft = false
categories = ["papers"]
authors = ["Andrey Simonov", "Chris Nosko", "Justin Rao"]
+++

Another paper on digital search advertising, this one on the effects of competition on ads placed on brand keyword searches. This was another study reacting to the eBay study on own-brand advertising.

<!--more-->

**Link**: published in the Marketing Science journal, the paper is available [here](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2668265)

**Authors**: Andrey Simonov, Chris Nosko, and Justin Rao.

## Summary
From the abstract:

> On search keywords that include trademarked terms, the brand owner (focal brand) and other relevant firms compete for consumers. For the focal brand, paid clicks have a direct substitute in the organic link that appears directly below the advertisements. This crowd-out can create a large wedge between the real causal effect and commonly-reported "nominal measures," such as click-through rates.

In other words, measuring click-through rates can be misleading because if the advertisement weren't there, people would click on the organic links anyway.

> We find a positive, statistically significant effect impact of brand ads, with a modest size, on the order of 1 - 4%. ... First, if the focal brand is not present in the top slot, competitors "steal" 10 - 20% of clicks on average. Second, when the focal brand is in the top slot, competitors steal only a modest fraction of clicks, 1 - 5%, but dramatically shift the focal brand's traffic from the organic link to the paid link, raising the focal brand's costs. Taken together, the results indicate **the primary value of branded paid links is defensive in nature.**

Super interesting stuff. The eBay study (Blake, Nosko, Tadelis 2015) showed that when eBay stopped bidding on their own keywords, 99.5% of traffic was retained via the organic link. Data from Bing shows that "advertising on brand keywords is substantial, yet the presence of an almost complete substitute (the organic link) suggests that it is practically worthless for the focal brand." One might also question the entire value of advertising to users who intentionally seek out your brand (by searching for it), since it seems like they'll find their way to the brand anyway.

## Methodology and results
Since this was another paper out of Microsoft Research, the authors had access to Bing search data. They went further, running a fully-randomized experiment on Bing by manipulating the maximum number of allowable ads above organic search results to either 0, 1, 2, or 3 (the usual is 4).

**1**: how much do organic search results serve as substitutes to paid search results when there are no competitors? This replicated the conditions of the eBay study. They found that sponsored links drove significant incremental traffic (2 - 3%), which was larger for lesser known brands and smaller for well-known brands like eBay. The "crowd-out" of clicks from the free link to the paid one was large, moving roughly half the traffic to the paid ad. This means that the "cost per click" is very different than the "cost per incremental click," since the presence of a paid ad diverts otherwise-free clicks to it.

**2**: how large is the difference between cost per click and cost per incremental click (again without competing ads)? On average, CPIC is 11 times (an order of magnitude!) larger than CPC.

**3**: when competitors are present, and the focal brand chooses to "defend" and bid aggressively for the top spot, the defense works; competitors take 1 - 5% of clicks. In this case, the presence of competitors impacts how much traffic goes through the paid link. Without any, 50 - 60% of the traffic does through the paid link but adding one, two, and three competitors add 10, 5, and 9% traffic to the paid link respectively. This increases the cost of the defensive advertising.

**4**: when competitors advertise and the focal brand doesn't, competitors get 20% of the total clicks on their paid top-spot ads. In this case, the data shows that competitors are a real threat to traffic if the focal brand is not present.

Once again, the rest of the paper goes into more detail about the methodology and data settings. I skimmed it but choose not to summarize it here. I *really* appreciate the format of this paper putting results in the first 5ish pages, then having more details, then a discussion.


## Thoughts, connections, and questions
A point that I have glossed over in the review of this paper and [the previous one]({{< ref reactions_to_search_ads_rao.md >}}) is that these are only studying advertising on own-brand keywords. If I am Target, bidding on Walmart searches, I'm fairly confident there is some value there by stealing some of their traffic. But if I'm Target bidding on Target searches, these two papers suggest that the only reason to bid on searches is to protect from competitors who are also bidding on them.

I think the main takeaway from this paper is that the cost-per-click metric is *super* misleading. The fact that the metric doesn't account for people who would have already reached the brand via the organic link makes me question a lot of other metrics and common practices in advertising. A complicating factor, though, is that cost-per-incidental-click is much harder to measure, and requires more experimentation that's only really possible at a certain scale.

I love these kinds of large-scale studies. They're only really possible in industry at a small number of large companies, but the fact that they're possible at all is super cool to me. I'd love to work in this kind of experimentation division, and it makes me wish that my current company were set up to do more experiments like this (testing multiple models in prod, studying the impact of different types of ads, etc.) ... so much of the data opportunities that we have are squandered.

This is probably it for my papers on online advertising for now, but who knows; I might return to this topic later. It's really interesting to think about, especially because it heavily relates to the areas Nielsen is trying to invest in.
