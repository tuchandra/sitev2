+++
title = "Paper: A Comparison of Approaches to Advertising Measurement: Evidence from Big Field Experiments at Facebook"
date = 2020-02-07
draft = "false"
categories = ["papers"]
authors = ["Brett Gordon", "Florian Zettelmeyer", "Neha Bhargava", "Dan Chapsky"]
+++

In what is probably my last digital advertising paper for now, I read a paper out of Kellogg + Facebook studying the causal effects of digital advertising. This is the nail in the coffin of my belief that digital advertising is overhyped and overvalued, and that they do far less than anyone appears to believe.


<!--more-->

The paper's authors are Brett Gordon and Florian Zettelmeyer from Kellogg at Northwestern, and Neha Bhargava and Dan Chapsky from Facebook. View the PDF on the [Kellogg website](https://www.kellogg.northwestern.edu/faculty/gordon_b/files/fb_comparison.pdf).

## Summary
Digital ad spending exceeded TV ad spending in 2017, and is continuing to grow. The impacts of all these ads, however, are less clear. Perhaps the most famous example is an [eBay study by Blake, Nosko, and Tadelis](http://faculty.haas.berkeley.edu/stadelis/Tadelis.pdf) that demonstrated own-brand search advertising did more or less nothing for their bottom line, and instead cost the firm millions of dollars. This paper attempts to understand the impact of digital advertising using a wealth of data from 15 ad campaigns at Facebook.

### Measurement is challenging
Measuring the causal impact of advertising is challenging. Individual behaviors are volatile, and endogeneity can severely bias inference results. From the paper:

> Quasi-random variation in exposure has at least three sources: user-level variation in visits to Facebook, variations in Facebook's pacing of ad delivery, ... and variation due to unrelated advertisers' bids. 

Put otherwise, there are (at least) 3 reasons for exogenous variation in ad exposure: user behavior, Facebook's ad targeting, and advertiser bids.

> However, three mechanisms generate endogenous variation between exposure and conversion outcomes: user-induced endogeneity ("activity bias"), targeting-induced endogeneity due to the ad system overweighting users who are predicted to convert, and competition-induced endogeneity due to the auction mechanism.

These are the problematic (for the sake of causal inference) sources of variation: more active users will see ads more, ads *already* target people more likely to click / buy products, and other advertisers bidding on ads can affect the results.

The paper makes three contributions:

 * that good data are inadequate to reliably estimate ad effects
 * to characterize the unobservables needed to use observational methods successfully
 * to explore observational vs. experimental approaches to causal measurement

### Experimental design
An advertiser (called the focal advertiser) decides which users to target (e.g., "all woman between 18 and 54"). Users are assigned to the control and test groups, and within the test group users may or may not be exposed to the ad (they may not be exposed if, for example, they didn't use Facebook during the campaign). There is no single "control ad," but rather users in the control group are shown whatever the second-highest bidding ad was.

"Compliance" to the experiment is one-sided in the test group, because exposure to an ad is endogenous based on several factors:

 * **User-induced endogeneity**, also called "activity bias," occurs because exposed users are more likely to convert by mere virtue of being online during the campaign. This means that "the conversion rate of the unexposed group is a *biased* estimate of the conversion rate of the exposed group had it not been exposed" (because there are differences between the groups).
 * **Targeting-induced endogeneity** happens because the targeting system prefers to show ads to users who will convert. The authors write: "conditional on the advertiser's bid, the probability of exposure increases or decreases for different users." Put otherwise, exposed users were (in part) exposed because they're more likely to convert in the first place.
 * **Competition-induced endogeneity** happens for two reasons. The first is because advertisers are more likely to target users who (they believe) will convert. The second is because *other* advertisers bidding on subsets of the focal advertisers' target can prevent those users from being exposed. (For example, if the focal advertiser's target is women between 18 and 54, and another advertiser targets on mothers between 18 and 54, mothers are less likely to be exposed to the focal campaign.)

The paper continues with details on the RCTs and observational methods used. They then describe the data used, which were experiments run on at least 1 million users, across industries and groups of users. The data consists of Facebook variables (surprisingly broad; age, gender, relationship status, account age, # of friends, various metrics about how active they are, and their region) joined with ACS data (characterizing the zip code they live in).

At this point, it became challenging to follow the rest of the paper. At some point, I might return to it, but right now it's too far away from what I already understand to be useful for my learning.


## Thoughts
This appears to be the most damning evidence of digital advertising being rather overrated. I'm open to results that support the opposite, but I haven't seen any yet. And I [wrote in November]({{< ref "posts/digital_advertising.md" >}}): 

> I do agree [that advertising does something], though—I am confident that advertising has some impact on people, but I believe that this effect is hugely overstated.

I also wrote there that I believe more in contextual advertising--ads related to things that I'm looking at--which need less (messy, noisy, privacy-violating) data about me.

This paper exposes one of my blind spots in data science--causal inference. I've heard lots about it, but haven't had any kind of formal training or education in it. Learning about causal inference may become one of my goals for the upcoming year.

Writing this summary--as I skipped most of the second half of the paper--is an interesting experience. I don't know enough about this field or the methods used to be able to understand this paper at even a surface level. And while I'd love to learn more, it's *also* unclear what I have to learn to reach this point.

This reminds me of something I read in [An Opinionated Guide to ML Research](http://joschu.net/blog/opinionated-guide-ml-research.html): to read textbooks. A book would walk me through the foundational knowledge that I need to make sense of research results, rather than assuming that I already have it. Perhaps books on this will be in my future, too.
