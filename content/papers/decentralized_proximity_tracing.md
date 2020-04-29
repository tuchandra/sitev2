+++
title = "[Paper] Decentralized Privacy-Preserving Proximity Tracing"
date = 2020-04-08
draft = false
categories = ["papers"]
authors = ["many, see full post"]
+++

This is a summary of a proposal for a "secure and privacy-preserving decentralized proximity tracing system," aiming to help combat COVID-19 while placing individual privacy at high priority. View the proposal on [GitHub](https://github.com/DP-3T/documents).

<!--more-->

The authors are numerous (copied directly from the README):

> EPFL: Prof. Carmela Troncoso, Prof. Mathias Payer, Prof. Jean-Pierre Hubaux, Prof. Marcel Salathé, Prof. James Larus, Prof. Edouard Bugnion, Dr. Wouter Lueks, Theresa Stadler, Dr. Apostolos Pyrgelis, Dr. Daniele Antonioli, Ludovic Barman, Sylvain Chatel
>
> ETHZ: Prof. Kenneth Paterson, Prof. Srdjan Capkun, Prof. David Basin, Dennis Jackson
>
> KU Leuven: Prof. Bart Preneel, Prof. Nigel Smart, Dr. Dave Singelee, Dr. Aysajan Abidin
>
> TU Delft: Prof. Seda Gürses
>
> University College London: Dr. Michael Veale
>
> CISPA: Prof. Cas Cremers
>
> University of Oxford: Dr. Reuben Binns
>
> TU Berlin / Fraunhofer HHI: Prof. Thomas Wiegand
>
> University of Torino / ISI Foundation: Prof. Ciro Cattuto


## Background: location tracing
One of the suggestions for combating the spread of COVID-19 is a large-scale location tracing program. The idea, broadly speaking, is that "someone" uses location data to detect when people have come into contact with individuals who are infected with COVID-19 (or perhaps were themselves exposed). Those people can be told (or forced) to self-isolate.

Contrast this to the current situation in the US, when most people have no idea if they've come into contact with a carrier of the virus. While many are observing social distancing, there are strong arguments for needing something more robust than "please stay home." Location data, and automated contact tracing, [are](https://www.forbes.com/sites/zakdoffman/2020/04/07/covid-19s-new-normal-yes-your-phone-will-track-infected-people-nearby/#582bb107f0db) | [being](https://www.theverge.com/2020/3/31/21199654/location-data-coronavirus-us-response-covid-19-apple-google) | [pointed](https://theintercept.com/2020/04/02/coronavirus-covid-19-surveillance-privacy/) | [to](https://news.trust.org/item/20200328130228-rzdk2/) as a potential solution.

This is, of course, controversial. The Washington Post [asked](https://www.washingtonpost.com/news/powerpost/paloma/the-technology-202/2020/03/30/the-technology-202-we-asked-more-than-100-tech-experts-if-u-s-should-use-location-data-to-track-coronavirus-they-were-split/5e80c80b602ff10d49ad757e) a panel of experts on whether or not this should be done in the US, and they were evenly divided. And I personally don't trust the (US) government to build such a system in a way that won't simply be repurposed for mass surveillance in the future.

A number of European countries are, however, already starting to do this by having cell providers share location data with governments. East Asian countries, who have largely been ahead of the US and Europe in their responses, have arguably been successful---Taiwan linked its immigration database to its health system, and both Singapore and Taiwan [are requiring](https://www.nytimes.com/2020/03/31/world/asia/coronavirus-china-hong-kong-singapore-south-korea.html) smartphone location data to be shared with the government.


## Decentralized Privacy-Preserving Proximity Tracing
The idea behind this proposal (DP-3T) is to create a system for contact tracing that respects the privacy of individuals. DP-3T sits under the [Pan-European Privacy-Preserving Proximity Tracing](https://www.pepp-pt.org/) (PEPP-PT) project, which is a set of loosely related proposals. The goal of the app is to note when contact occurs, and *not* to track infected individuals; once notified that they've been exposed, users are assumed to be responsible.

The authors outline the following requirements:

 > * **Completeness**: The contact history is comprehensive regarding contact events.
 > * **Precision**: Reported contact events must reflect actual physical proximity
 > * **Integrity**: Contact events corresponding to at-risk parties are authentic, i.e., users cannot fake contact events.
 > * **Confidentiality**: A malicious actor cannot access the contact history of a user
 > * **Notification**: At-risk individuals can be informed

They go onto require the following privacy guarantees:

 * **Data use**: must be limited for *only* the purposes of proximity tracing and proximity graph reconstruction, and not e.g., full location history.
 * **Controlled inference**: inference about individuals should be controlled to avoid information leakage; this is the "principle of least privilege" here.
 * **Protect identities**: data cannot be linked back to an individual.
 * **Erasure**: delete irrelevant data, follow data retention policies.


## System design
The authors propose two designs, which have four steps:

 1. The app is installed, and upon installation a chain of ephemeral IDs are generated from a seed.
 2. During normal operation, the app broadcasts ephemeral IDs via Bluetooth, and rotates these IDs frequently and unpredictably.
 3. When a user has been infected, they submit their seed to a backend that allows others to reconstruct the IDs that her phone broadcast while she was contagious.
 4. Individual apps can locally compute whether their user was in proximity to an infected person.


While the design has a backend, it's not a central point of trust and doesn't maintain any secrets. All privacy-sensitive information is decentralized. This has the important benefit that the server cannot learn the social graph, making it impossible for malicious actors to reuse the data or compromise privacy if the server is compromised.

**Details on normal operation:** smartphones first locally generate a key `SK[t]` for the first day, then compute `SK[t+1] = H(SK[t])`, where H is some hash function, for the following days. Given a particular day's seed, the phones locally generates N emphemeral IDs to be used on that day. The keysIDs are broadcast in a random order. Each phone stores the ephemeral IDs that other devices have broadcast.

**Details on proximity tracing**: a health authority informs a patient of a positive test result. Following this, the patient will send their key `SK[t]` from the first day they were contagious to the server, which is distributed to all phones in the system. A phone can use this key to reconstruct the ephemeral IDs which the infected patient's phone broadcasted, and check if any of those ephemeral IDs were observed.

An alternative design uses a Cuckoo filter to offer greater privacy at the expense of larger downloads to individual devices. The details of this are a little bit over my head.


## Thoughts
This is really interesting to read. Once again, I'm skeptical of any centralized solution that maintains a global contact graph or full location data; and while I knew that decentralized solutions must exist, this is the first time I read about one in depth.

This work *also* represents the first system I've seen that's designed with the idea that it can be gratefully dismantled once we've gotten past COVID-19. By enforcing privacy by design and following reasonable data retention policies (nothing realistically needs to be kept for more than a few weeks), I have much more faith in this system than I do any other that I've seen proposed.

NPR [reports](https://www.npr.org/sections/coronavirus-live-updates/2020/04/02/825860406/in-germany-high-hopes-for-new-covid-19-contact-tracing-app-that-protects-privacy) that Germany may be rolling out a system like this in the near future. I look forward to hearing how it goes, and hope that it helps them get this under control.

Finally, I ought to acknowledge one of my college professors, [Dr. Josiah Hester](https://josiahhester.com/), who taught an [Internet of Things research seminar](http://users.eecs.northwestern.edu/~josiah/eecs395_495/) that I took as part of my MS. That class helped me to develop the skills needed to be able to digest systems papers like this one, from understanding how they're typically structured to knowing which parts were most crucial to a high-level understanding.


