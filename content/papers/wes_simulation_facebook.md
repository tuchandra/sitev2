+++
title = "[Paper] WES: Agent-based User Interaction Simulation on Real Infrastructure"
date = 2020-09-02
draft = false
categories = ["papers"]
tags = ["reading club"]
authors = ["John Ahlgren", "Maria Eugenia Berezin", "Kinga Bojarczuk", "Elena Dulskyte", "Inna Dvortsova", "Johann George", "Natalija Gucevska", "Mark Harman", "Ralf Lämmel", "Erik Meijer", "Silvia Sapora", "Justin Spahr-Summers"]
+++

In this paper, Facebook simulates itself. Through legions of bots trained through reinforcement learning, but running on the real Facebook platform, Facebook details how it created a web-enabled simulation system of its own platform.

<!--more-->

**Authors**: John Ahlgren, Maria Eugenia Berezin, Kinga Bojarczuk, Elena Dulskyte, Inna Dvortsova, Johann George, Natalija Gucevska, Mark Harman, Ralf Lämmel, Erik Meijer, Silvia Sapora, Justin Spahr-Summers (Facebook)

**Links**: [Facebook Research](https://research.fb.com/publications/wes-agent-based-user-interaction-simulation-on-real-infrastructure/), [PDF](https://research.fb.com/wp-content/uploads/2020/04/WES-Agent-based-User-Interaction-Simulation-on-Real-Infrastructure.pdf?), [talk](https://youtu.be/GsNKCifm44A?t=835)

I first about this paper from Jack Clark's [Import AI](https://jack-clark.net/), under the headline ["Facebook simulates itself."](https://jack-clark.net/2020/04/14/import-ai-193-facebook-simulates-itself-compete-to-make-more-efficient-nlp-face-in-painting-gets-better/). It caught my eye as potentially interesting research, though my major worry was that it was too broad to be worthwhile.

This paper was published in the [Genetic Improvement Workshop](http://geneticimprovementofsoftware.com/gi2020icse.html#papers) at ICSE 2020. It was challenging to find both because the workshop name didn't list the conference, and also because this was actually the *keynote* of the workshop ... but the title wasn't listed alongside the schedule. Ouch!


## Summary
**What does WES even mean?** It's "web-enabled simulation," which as I understand it:
 * simulates a community of users on a software platform
 * does *not* simulate the platform itself, meaning that it actually runs on Facebook (and its infrastructure)
 * has agents that simulate user behavior, which could be rule-based or learned through supervised or reinforcement learning
 * and this is essentially a form of machine learning for *software itself*

Facebook's WES system, which this paper is about, is called WW. They describe it as "a scaled down simulation of Facebook's platform, the actions and events of which use the same infrastructure code as the real platform itself." 

The goal of the simulation is to act as a(nother) testing system, i.e., to help find issues with software changes or perhaps to study the possible impacts of new features (for which there by definition are no real users). Testing via this kind of simulation is valuable because it focuses on user behavior (and interactions), not system behavior (like unit or integration tests do).

To that end, one of the selling points of this paper is its *platform realism*:

> **Realism**: WES interactions between bots are achieved through the real platform infrastructure, whereas a more traditional simulation approach would first model this infrastructure. This is important because the platform infrastructures that mediate user interactions are increasingly complex.

In other words, Facebook is so complex that it cannot be simulated. Users, on the other hand, are easy to simulate? ¯\\\_(ツ)_/¯


## Details on Facebook's WW
> A WES simulation can be seen as a game, in which we have a set of players that operate to fulfill a certain objective on a software platform.

For example, they can train bots to behave like bad actors, where they are rewarded for violating community standards. By encouraging the bots to break Facebook's guidelines, they often will if a software update allows them to do so. 

**Mechanism design**: in order to experiment with new platform designs, it is not necessary to change the platform itself and run, say, an A/B test. (That might not always be possible, anyway, in the case of e.g., new privacy restrictions.) With WES, one can adjust the mechanism (model of interaction) by which bots interact with the platform.

It's unclear to me what a mechanism actually is, and I don't think this was clearly explained. I see it as an abstraction layer between bots and the Facebook platform, so that bots are shielded from platform code changes and so that researchers can experiment with new platform designs. 

## Social testing
I found this part interesting:

> WES systems can reveal faults that are best explored and debugged at this 'community' level of abstraction.

This is a departure from normal software engineering; instead, WES allows Facebook to test the entire sociotechnical apparatus (assuming your models of users are good enough). The authors refer to this *social testing* as a new layer of abstraction, which I think is an important distinction when considering platform design.

The authors presented several examples of why this is valuable:
 * To train bots to perform privacy-violating actions on each other, so that researchers can identify holes in their privacy policies (or implementations)
 * To encourage bots to explore the space of community-standards-violating content, which stress tests Facebook's bad-content-detection algorithms
 * To search for effective mechanisms to impede bad actors (through something called *automated mechanism design*) can be helpful. (They point out that this problem doesn't require you to *detect* bad actors, but rather merely to *get in their way*.)
 * To find potential "social bugs" (e.g., classification outcomes, pipeline breakages, usage metrics) as a result of product changes

## Closing thoughts
This paper was pretty tough to read, and I don't feel like I got a lot of value out of it. I think the idea of web-enabled simulation is interesting, and learning about that was new to me, but the specific ways in which Facebook built and used their WES didn't engage me as much. 

One of the specific stylistic choices that I did not like was the varying levels of detail throughout the paper. The majority of section 3 was written at a high level, and yet the authors felt it worthwhile to mention that a `ScriptRunner` is an entry point into the simulation. I don't think that's useful information.

I think there are many potentially interesting questions in the Facebook-WES space, but these are only questions that Facebook Research itself can answer. Studying how communities might develop under different circumstances, how true and false information might spread with different interventions, or how groups might be polarized are powerful propositions---but ones that we probably won't ever get an answer to.

That gets to another reason I didn't like this paper very much: it feels to me like WW has the potential to address major unsolved questions about Facebook, its community, and the information ecosystem, but the research agenda section of this paper made it feel like WW was just Facebook's playground. 

Their open questions were:
 * Look for applications of multi-agent reinforcement learning
 * Look for applications of multi-objective search
 * Use AI assisted game play
 * Improve automated mechanism design
 * Improve end user realism 

etc ... These all just feel like academic problems without real-world importance.

But there *is* real-world importance to this. Tons of it! And the paper didn't begin to address this. There are questions about emergent behavior on Facebook that the research community would *love* to attempt to answer: 
 * How is information shared in Facebook groups?
 * What kind of information do people see on their news feed?
 * How do people inadvertently cause information cascades?
 * To what extent do Facebook groups radicalize their members?

And so many more. These are questions about real users in the real information ecosystem, and yet this paper frames everything in terms of these abstract "bad actors" who are scammers or data leakers. This paper makes WW feel like Facebook's toy, rather than a powerful simulation and research tool for one of the most complex sociotechnical systems in the world.
