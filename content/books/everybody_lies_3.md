+++
title = 'The dangers of big data ("Everybody Lies", part 3)'
date = 2020-04-01
categories = ["books"]
draft = false
+++

The final post in my series about *Everybody Lies* is another abstract one. Here, I discuss the dangers of big data and how the wrong data can lead us astray.

<!--more-->

## Data skepticism
One of the things I was most skeptical about when I started [*Everybody Lies*](http://sethsd.com/everybodylies) was that it would oversell the power of big data. And it did, to an extent: the marketing material makes incredible statements about (from the title) "what the internet can tell us about who we really are."

From the book homepage linked above:

> However, we no longer need to rely on what people tell us. New data from the internet—the traces of information that billions of people leave on Google, social media, dating, and even pornography sites—finally reveals the truth. By analyzing this digital goldmine, we can now learn what people really think, what they really want, and what they really do.

This is ... oversold, to say the least, if not outright misleading. But it's an advertisement, so I won't read too much into these claims.

I was, however, pleasantly surprised to find that the author dedicated the final part of the book to warning us of the shortcomings and pitfalls of big data.


## Misleading datasets
Big data certainly can be used for extraordinary things ... given enough time, money, talent, willingness to fail, and, of course, data. In my experience, big data is often the messiest, and the work required to wrangle it into a usable form is the hardest and most time-consuming. Big data is a harder sell when you have to spend days analyzing what at first might be indistinguishable from garbage.

Moreover, big data can be biased in ways that you don't expect. Take a dataset of *all* cable box data from a cable provider, which I've worked with at Nielsen. One might reasonably expect this to be a good predictor of TV viewership. And it is!---but only to a first approximation, as it doesn't produce the high-quality estimates that a smaller, but representative, panel would.

Rather, it overstates the channels that older people like (because they're the ones who have cable). It doesn't inform us how many people are watching TV in general (because it's household-level, not person-level). It extends the length of events (because people leave their boxes on when they go to bed). It's overrun with heartbeat "on" signals and other machine-generated noise. Its utility to inform your perceptions of TV viewing is useful to a degree, but our reality is messier, and big data often doesn't account for that.

The author calls this out---the mistaken attitude that simply throwing *more* data at a question will help us to solve it:

> The solution is not always more Big Data. A special sauce is often necessary to help Big Data work best: the judgment of humans and small surveys, what we might call small data.

This is the messy reality of big data: that you often need to correct for its bias with a high-quality truth set. You might need to discard some of the data as unusable, or model information that's missing. Data, by itself, simply isn't always helpful.


## Beyond bias
The reality of big data isn't just that it's sometimes biased, though. It's that it requires you to think differently, and to ask different questions. A high-quality panel or expensive longitudinal study contains far different information than a catch-all census dataset. Later chapters discuss this reality:

> And then, finally, the researchers realized their mistake. “Big Data is not just about doing the same thing you would have done with surveys except with more data,” [Raj] Chetty explains. **They were asking little data questions of the massive collection of data they had been handed.** “Big Data really should allow you to use completely different designs than what you would have with a survey,” Chetty adds.

A question to ask of a panel might be "what characteristics are associated with people who watch NBC," where the individual-level information is desirable. A question to ask of a large dataset might be "how much does viewing differ across markets," where large sample sizes mean that individual-level *noise* gets averaged out.


## Closing thoughts
The end of the book warns us of statistical significance leading us astray: see [xkcd 882](https://xkcd.com/882/). So, too, can big data: ask the wrong questions and get the wrong answers. Take the data at face value and get face-value approximations. It's powerful, for sure; but data isn't a silver bullet, and bad data can be as dangerous as no data.
