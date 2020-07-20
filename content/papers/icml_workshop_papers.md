+++
title = "[Papers] Two recommender systems papers from the ICML Participatory Approaches to ML workshop"
date = 2020-07-20
draft = false
categories = ["papers"]
authors = ["many!"]
+++


The [Participatory Approaches to Machine Learning](https://participatoryml.github.io/) workshop at ICML 2020 caught my attention, and so I read two papers on recommender systems that came out of it: *Deconstructing the Filter Bubble: User Decision-Making and Recommender Systems* and *Designing Recommender Systems with Reachability in Mind*.

<!--more-->

Reading workshop papers is so much easier than full papers, since they're shorter and more focused. They're also a little bit inspirational---I could see myself producing one of these, whereas full conference papers seem way out of reach for me. These were both more mathematical than the usual papers I read, too, which was a nice change.


## Deconstructing the Filter Bubble: User Decision-Making and Recommender Systems
**Authors**: Guy Aridor (Columbia University); Duarte Goncalves (Columbia University); Shan Sikdar (Everquote)

**Links**: [recorded talk](https://www.youtube.com/watch?v=B34xEQtCbL8), [PDF](https://participatoryml.github.io/papers/2020/31.pdf)

> We study a model of user decision-making in the context of recommender systems via numerical simulation. We show that this model provides an explanation for the findings of Nguyen, et. al (2014), where, **in environments recommender systems are typically deployed, users consume increasingly similar items over time even without recommendation.**

The authors develop a model of user choice with four components:
 * users sequentially consume items among large choice sets; users are long-lived, but consume a small fraction of choices.
 * users are uncertain about how much they value the different items before consuming them.
 * consumption of an item changes beliefs about the value of similar items
 * recommendation provides information about true valuations (common value plus a user-specific indiosyncratic component)

They present a mathematical formulation which ... does not make sense to me. They model the initial beliefs as `x ~ N(mu, sigma)`, then the user chooses an item to consume. Upon consuming it, they discover more information about the other items? Yeah, but mathematically how? I dunno.

Anyway---according to Nguyen et. al (2014), user behavior is consistent with filter bubble effects in the absence of recommendation, and recommendation leads to people being *less* likely to fall into filter bubbles. This happens because a user consuming an item reduces their uncertainty about the value of similar items, so they'll be more likely to consume them. 

Classical recommender systems will attempt to recommend items with the highest predicted user ratings; recent work shows that *accurate* recommendations might not be *useful*. (That's the classic question of "are you solving the right problem?")  Recommending, for example, a sequel to a movie is probably not useful, since the user is likely to seek it out on their own. The authors' key insight is that it's not useful *because* "it ignores the inference the user themselves made."

The authors don't provide a solution to this, but note that there's new research in this area. "Our approach most closely follows the set of proposed serendipity measures ... [these] recommendations are said to 'have the quality of being both unexpected and useful,'" which is in the spirit of their approach. The authors' approach is unique in that it relies on understanding user beliefs.

Good stuff! I'm looking forward to reading more about recommender systems; the [Nguyen (2014) paper](https://experts.umn.edu/en/publications/exploring-the-filter-bubble-the-effect-of-using-recommender-syste) sounds interesting.


## Designing Recommender Systems with Reachability in Mind
**Authors**: Sarah Dean (UC Berkeley); Mihaela Curmei (UC Berkeley); Benjamin Recht (UC Berkeley)

**Links**: [Recorded talk](https://www.youtube.com/watch?v=HvtzvRW5fT8), [PDF](https://people.eecs.berkeley.edu/~sarahdean/stochastic_reachability.pdf)

Another recommender systems paper. The aquthors introduce the classical perspective on recommender systems (surfacing content that a user will enjoy or rate highly), then state "Many of the problems attributed to personalization online occur because of feedback effects, and thus a static perspective is insufficient for capturing important system properties."

The authors center their analysis on *reachability*, which "quantifies the influence a user has over their recommendations." They ask the question "can a user choose an action so that a particular item is likely to be recommended?"

**User actions**: users are represented by their ratings, some of which can be modified by actions, and others which are historical data. The fraction of "mutable" items is parameterized by α.

**Score model**: this is a function parameterized by the user actions, e.g., the inner product of item-factors and user-factors in some latent user-item space. Here, they assume linear score updates.

**Selection rule**: given a set of scores over items, the selection rule translates the scores into the probability of each item being selected. This is a β-softmax.

In this simulation, with 50 users and 100 items, suppose that 20% of the ratings are observed; for one user they consider varying selection rules for different values of β, and they consider action spaces of different sizes α.

Plotting the baseline probability vs. the maximum reachability shows that (1) increasing β in the score function improves the maximum reachability, and (2) larger action spaces correspond to larger reachability.

This is great (and the video was wonderfully made)! Breaking down a recommender system, then simulating how different changes affect the recommendations, ia an interesting question.


## Closing thoughts
One of the reasons 
