+++
title = "Paper: Watching You Watch: The Tracking Ecosystem of Over-the-Top TV Streaming Devices"
date = 2020-02-12
draft = "false"
categories = ["papers"]
authors = ["Hooman Mohajeri Moghaddam", "Gunes Acar", "Ben Burgess", "Arunesh Mathur", "Danny Yuxing Huang", "Nick Feamster", "Edward W. Felten", "Prateek Mittal", "Arvind Narayanan"]
+++

This paper studies the tracking ecosystem of Roku and Amazon Fire devices, discovering that channels on both platforms regularly send their traffic to known trackers. They also note that they often transmit unique identifiers, and that known methods to protect privacy are largely ineffective.

<!--more-->

**Authors**: Hooman Mohajeri Moghaddam, Gunes Acar, Ben Burgess, Arunesh Mathur, Danny Yuxing Huang, Nick Feamster, Edward W. Felten, Prateek Mittal, Arvind Narayanan

**Link**: open access from [ACM](https://dl.acm.org/doi/10.1145/3319535.3354198) at CCS '19

## Summary
Over-the-Top ("OTT") refers to internet-connected TV devices: think Roku or Amazon Fire, which are the two biggest platforms. Like traditional (linear) TV, they are monetized through advertising. This paper is the first to study the privacy practices of these platforms.

From the abstract:

> We developed a system that can automatically download OTT apps (also known as channels), and interact with them while intercepting the network traffic and performing best-effort TLS interception. We used this smart crawler to visit more than 2,000 channels on two popular OTT platforms, namely Roku and Amazon Fire TV. **Our results show that tracking is pervasive on both OTT platforms, with traffic to known trackers present on 69% of Roku channels and 89% of Amazon Fire TV channels.** We also discover widespread practice of collecting and transmitting unique identifiers, such as device IDs, serial numbers, WiFi MAC addresses and SSIDs, at times over unencrypted connections.

The authors built a system to automatically interact with OTT devices and intercept network traffic. In May 2019, they compiled a list of the top 1000 channels from each of Roku and Amazon Fire TV. They built a testbed that consisted of a TV and OTT device, but also an HDMI splitter and capture card to which they connected their desktop machine. They then built a crawler which does all of the following:

 * install and launch a channel from the home screen
 * plays video on the channel (with keypresses that maximize the probability of something playing)
 * attempts to decrypt network and application-level data
 * uninstalls the channel

**Trackers were everywhere.** 975 of the 1000 Roku channels sent something to the Google-owned doubleclick.net, and 687 of the 1000 Amazon Fire channels featured the Amazon ads domain. Facebook appeared in nearly 200 Amazon Fire channels, but only one Roku channel. 

They then investigated the actual information being collected. Many channels collected information about what was being viewed or device-level unique identifiers like the serial number. On Roku, 73% of requests that had an Ad ID or serial number were trackers; on Amazon Fire, this number was 41%. 

Countermeasures were largely ineffective. The "limit ad tracking" (Roku) and "disable interest based ads" (Amazon) settings reduced the number of requests made to trackers, but Roku serial number leaks and other identifiers communicated to trackers remainend present. Using a network-level Pi-hole showed similarly ineffective results.


## Thoughts, connections, and questions
This is the future of the Internet of Things—trackers everywhere without control over where data about you gets sent. Previous research has showed that up to 50% of smartphone traffic can be attributed to someone's real name, and it appears that this is the case for OTT traffic as well. Other research shows that there is very little understanding of privacy practices on smart TV platforms.

**What are the implications for privacy?** As "smart" systems become more opaque, do users still have a reasonable expectation of privacy? Ten years ago, it would have been ludicrous to imagine that companies were tracking everything you watched on your TV (ignoring the fact that Nielsen panels do exactly that, but those are voluntary panels). Today, it seems like the new normal.

From an advertiser's perspective, this is great!—and usually things that are good for advertisers are not good for consumers. "The tendency of companies to monetize users' data makes it difficult to incentivize privacy friendly practices."

**A gap between expectations and reality.** According to the paper, [past research](https://blues.cs.berkeley.edu/blog/2018/06/12/what-cant-data-be-used-for-privacy-expectations-about-smart-tvs-in-the-u-s-eurousec-18/) shows that there is a large amount of uncertainty about what their Smart TV data is used for, and that just 29% of Smart TV users found it acceptable for advertisers to collect viewing data. There's an obvious gap between user expectations and what platforms are actually doing.

Note that I'm not categorically against opaqueness in smart systems; often they are opaque for a user's benefit, because the interaction with the system becomes more clear. But it can also be dangerous in the case where opaqueness is used to hide something from users, as we see here.

