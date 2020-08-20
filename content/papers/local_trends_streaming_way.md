+++
title = "[Paper] Local Trends in Global Music Streaming"
date = 2020-08-02
draft = false
categories = ["papers"]
tags = ["icwsm2020"]
authors = ["Samuel F. Way", "Jean Garcia-Gathright", "Henriette Cramer"]
+++

Spotify makes a global music catalog available to subscribers around the world. Historically, that's meant different countries have more access to each other's music. How does that hold up in 5.5 years of Spotify streaming data?

<!--more-->

**Authors**: Samuel F. Way, Jean Garcia-Gathright, Henriette Cramer (Spotify Research)
    
**Link**: [Proceedings of ICWSM](https://aaai.org/ojs/index.php/ICWSM/article/view/7336) (open access) and [prerecorded talk](https://www.youtube.com/watch?v=9v4AfX2IVdY&)


## Summary
Music has changed over the years; the ways that artists record and distribute their music have changed, and the ways that listeners discover music have too. Spotify is one of the only companies uniquely positioned to be able to study *how*. Their main question here was **"how is global music trade changing in the streaming era?"**

Globalization is a complex topic with lots of hard questions. The authors recognized this. From the recorded talk (not the paper):

> It is essential that companies like Spotify grapple with these sorts of questions [of globalization] to be able to ensure that the way that we operate is culturally responsible and fair to the artists and fans around the world that we represent. 

Loosely speaking, the paper's findings were that:
 * from 2014 to 2019 on Spotify, preferences for *local* content (as opposed to global content) have increased
 * common official language and geographic proximity have increasingly shaped music consumption
 * these trends persist across genres, age groups, and early- and late-adopters of streaming

Here, "local" means "music whose main performing artist is from the same country as the listener." Previous intuition suggested that music recording, and then music streaming, accelerated globalization. This paper instead finds that preferences for local content have increased during the streaming era.


## Data
The authors data consists of:
 * 3 trillion streams, with origin and destination country info
 * over 5.5 years (January 2014 to October 2019)
 * from 248 million listeners
 * in 51 countries

From this data, they studied trends of locality over time. They first analyzed the data without any kind of modeling, finding that most markets (countries) exhibit a strong preference for local content. Markets to which Spotify had recently expanded, however, showed less of a preference.

The authors also present one of the most beautiful and information-packed figures I've seen in a paper:

{{< figure src="local_trends_streaming_way_img1.jpg" >}}

This shows us that proximity shapes music trade (the different square regions are the Spanish-speaking Americas, then Asia, then the Middle East and Africa, then Europe). Outliers (like Spain and Andorra to the Spanish-speaking Americas) are generally explained by language.


## Gravity modeling
The authors adopt "gravity models" from economics (which adopted this from physics), where the "music flow" (as opposed to trade) between two countries is modeled based on the law of universal gravitation. From the paper:

$$
trade_{i, j} = G \cdot \frac{M_i M_j}{distance_{i,j}}
$$

In this paper's formulation, the authors take the log of both sides, add fixed effect terms for each country, and add an error term. Since that's basically a linear model, they can also add effects for home-country bias and two countries sharing a common language.

$$
\begin{align*}
\log(trade_{ij}) &= \beta_0 + \beta_1 \log(M_i) + \beta_2 \log(M_j) + \mu_i + \mu_j + \gamma_{ij} \\\\
&+ \beta_3 \log(distance_{i,j}) + \beta_4 \text{home bias}_{i, j}  \\\\
&+ \beta_5 \text{common language}_{i,j}
\end{align*}
$$

They fit three models: (1) on all genres, (2) on just Pop music (according to Gracenote!), and (3) on all genres *except* Pop. The results, which were consistent across models, revealed that countries were increasingly streaming their own music, that shared language is becoming more important, and that music is traveling over shorter distances.


## Thoughts
I found the recorded talk (and a [Twitter thread](https://twitter.com/samfway/status/1270461128716349440) by the primary author) to be really well-done. I think the paper asked a thoughtful question, and Spotify is one of maybe three companies (with YouTube and Apple Music) that's capable of studying it in a meaningful way.

The paper itself was a little harder to understand than I expected. Its results were scattered throughout, and it wasn't clear that a lot of the early figures and conclusions weren't due to the gravity modeling approach. This is at least partially due to the constraints of the paper format, and it makes me grateful for the talk. Way's slides were simple and concise, and he explained the work (and its caveats and assumptions) clearly.

(The rest of my thoughts aren't specific to this paper.)

I'm saddened that this paper is impossible to replicate by anyone outside Spotify. That's a well-known problem in science, but I feel like it's worse here. None of the extensions that the authors propose are feasible for anyone outside Spotify (or perhaps YouTube or Apple Music) to study. 

So much of internet research depends on these proprietary datasets held secret at large companies, and it feels like the research community is at their mercy. No one made Spotify publish this paper, and there are plenty of unanswered questions about [how Spotify is changing the music industry](https://musically.com/2020/07/30/spotify-ceo-talks-covid-19-artist-incomes-and-podcasting-interview/). Questions like this, which risk painting Spotify in a negative light, will never be studied by Spotify Research.

This isn't to single them out---by no means is Spotify unique here. Research about social media platforms---one of the main purposes of this conference!---seems so limited if you don't actually work there.

Maybe this isn't true; maybe I'm off-base here. But it seems like other parts of computer science research aren't so imbalanced. Then again, the world is imbalanced too, and these platforms have vast amounts of power over us. Maybe that's the problem.
