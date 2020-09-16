+++
title = "[Paper] Information, incentives, and goals in election forecasts"
date = 2020-09-15
draft = false
categories = ["papers"]
tags = []
authors = ["Andrew Gelman", "Jessica Hullman", "Christopher Wlezien"]
+++

What kinds of challenges arise when communicating election forecasts, as FiveThirtyEight, The Economist, and a host of others are attempting to do? How do you best discuss your predictions and uncertainty? What responsibilities do forecasters have? Andrew Gelman, Jessica Hullman, and Christopher Wlezien discuss.


<!--more-->

**Links**: [PDF](http://www.stat.columbia.edu/~gelman/research/unpublished/forecast_incentives3.pdf), [blog post](https://statmodeling.stat.columbia.edu/2020/09/08/information-incentives-and-goals-in-election-forecasts/), [Twitter thread from Dr. Hullman](https://twitter.com/JessicaHullman/status/1303384797243486208)

## Background
Andrew Gelman, Jessica Hullman, and Christopher Wlezien put out a paper titled [Information, incentives, and goals in election forecasting](http://www.stat.columbia.edu/~gelman/research/unpublished/forecast_incentives3.pdf) a couple of days ago. It caught my eye because I regularly read [Gelman's blog](https://statmodeling.stat.columbia.edu/), am interested in election forecasting, and have also read a number of Jessica Hullman's papers.

From the abstract:

> Presidential elections can be forecast using information from political and economic conditions, polls, and a statistical model of changes in public opinion over time. We discuss challenges in understanding, communicating, and evaluating election predictions, using as examples the Economist and Fivethirtyeight forecasts of the 2020 election.

Most of the first half of this paper is devoted to communicating information in probabilistic election forecasts. What do win probabilities mean? How can uncertainty be visualized or otherwise communicated? What is and isn't in scope for the forecast?

They also discuss *incentives* of forecasters, including perhaps competing incentives for overconfidence and underconfidence. A related topic is (the difficulty in) calibrating election forecasts.

Let's dive in.

## Communicating election forecasts
The authors highlight difficulties in communicating election forecasts.

**On win probabilities**: these are not the same as vote margins, which the authors note is a persistent confusion. A win probability of 60% means that the election is roughly a tossup, but a vote margin of 60% (i.e., a 60-40 result) is a landslide win.

With these come further difficulties in communicating the uncertainty associated with each number. And in the case of vote margins, seemingly small changes can make huge differences:

- The FiveThirtyEight model estimates Biden's two-party vote share as 53% +/- 3%.
- The Economist model estimates Biden's two-party vote share as 54% +/- 2%.

These vote shares are virtually indistinguishable to me. Yes, the FiveThirtyEight model is considerably less confident about Biden's chances, and this shows up in the topline probabilities—71% from them vs. 87% from The Economist. 

When comparing two models created from the same information, though, it's not surprising that their predictions are so similar. This means we have to focus more on the methods, which is sometimes easier said than done!


## Introspecting models
When the data and code for models are made available, as is the case for [The Economist's forecast](https://github.com/TheEconomist/us-potus-model), it's easier to study their modeling decisions. After all, you can just look for yourself! Granted, this is still difficult---it might not be clear why certain decisions were made, what alternatives were considered, or what is accidental versus intentional. But it's certainly easier than with a closed source model.

... which FiveThirtyEight's is. I don't fault them---I assume they're limited by ABC in some way---but this means we can only judge the FiveThirtyEight model by its outputs (and blog post descriptions of methodology).

### FiveThirtyEight, and uncertainty
The authors do this to introspect the FiveThirtyEight model. They call out that: 

- FiveThirtyEight's 95% predictive interval of (42%, 60%) for Biden's vote share in Florida
- The conditional probability that, given Trump wins California, he has a 30% chance of losing the electoral college.

These---especially the second---seem pretty implausible to me. The uncertainty on the first item feels high, and the authors make note of this.

Meanwhile, an outcome where Trump wins California but loses the election is as outlandish as [Biden carrying every state besides New Jersey](https://twitter.com/micahcohen/status/1304532822783389702). That it has a 30% chance to happen feels very wrong.

The authors use these to suggest that this model has too low of a *between-state correlation*. This is pretty surprising to me, given that in 2016 one of the things that differentiated FiveThirtyEight's model (and prediction of a ~30% chance of Trump winning) was their use of between-state correlations to account for the possibility of systematic polling errors.

### The Economist, and certainty
The Economist, meanwhile, originally published a model that gave Biden a 90+% chance of winning the electoral college, and a 99% chance of winning the popular vote. Despite his clear lead in the polls, this too felt overconfident to me (and them). To me, it seems far more likely than 1-in-100 that something could disrupt his lead in the last three months of the election.

Observations like this can make one reconsider the building blocks of a model. In this case, the authors (note that Gelman worked on this model) took a step back to consider why they felt so confident in a Biden win, and adjusted accordingly.

### The main point
The closing point is worth calling out:

> The point of this discussion is not to say that the Fivethirtyeight forecast is “wrong” and that the Economist model is “right”---they are two different procedures, each with their own strengths and weaknesses---but rather that, in either case, we can interrogate a model’s predictions to better understand its assumptions and relate it to other available information or beliefs.


## On calibration
Calibrating a forecast---making sure that what you claim has a 20% probability happens 20% of the time---is difficult in the best of cases but is made even harder by the small number of presidential elections. While 95% intervals are the standard, calibrating 1-in-20 events would require 80 years of presidential elections. (State-level results help a little, but they're correlated, so while we have more than 1 data point per election year, we have fewer than 50.)

This makes sense. We saw this in 2016, too. FiveThirtyEight modeled a 30% chance of Trump winning, and lots of other forecasts modeled under 10%. How do we know which was "right"? These are epistemic questions that we can never fully answer. 


## Competing incentives
This was a really interesting section. Incentives for overconfidence in forecasting include:

- looking better when you're right
- being rewarded for boldness, especially when media systems are forgiving of failure
- wanting to avoid admitting you don't actually know something

There's also a huge list of reasons for not reporting uncertainty at all:

- fearing that uncertainty implies unwarranted precision
- not feeling like there's a good way to communicate uncertainty
- thinking that people already know uncertainty is present
- thinking that people will not understand uncertainty
- thinking that not presenting uncertainty will avoid overwhelming readers
- thinking that not presenting uncertainty will make it easier for people to make decisions
- worrying about making the message less credible.

Whew! These are all attached to citations in the full paper. This is why I follow Hullman's research.

What about underconfidence? Incentives for being underconfident in your work might include:

- not wanting to look "wrong"
- when wide-tailed distributions create more uncertainty (as Nate Silver suggests happens in polling)
- motivating readers to diversify their behavior

There doesn't seem to be much literature on this, as Hullman [points out](https://twitter.com/JessicaHullman/status/1303384803203526656), so this was interesting to think about.


## On stability of forecasts
The message:

> Good forecasts should be stable most of the time.

One challenge of forecasting, the authors write, is that there is a push for news. But this year's election forecast have been pretty stable, and day-to-day fluctuations based off individual polls are not noteworthy. 

I found this funny:

> We are not fans of Twitter and its 24-hour debate culture, but one advantage of this format is that it allows journalists to remain active without needing to supply any actual news.

Serious forecasters recognize that big news is, by definition, rare. The flip side to this is that I've witnessed at least half a dozen Twitter arguments where Nate Silver and Elliott Morris are talking over each other and arguing semantics. But I'll take that (which does occasionally produce thoughtful discussion) over overreactions to a new poll each day.


## The responsibilities of forecasters
The authors posit that forecasters have some responsibilities to the public: to include information that is known to impact election results (the economy, poll averages, etc.), to use statistics properly, to specify their assumptions, and to think about how readers may use their predictions.

I also like this quote:

> Journalists and academics alike use terms such as “horse race” and “forecast wars” in reference to election prediction, but we see forecasting as an essentially collaborative exercise. Comparative discussions of forecasts, like model comparisons in an analysis workflow, provide insight into how different assumptions about a complex process affect our ability to predict it. When the public has a chance to observe or even participate in these discussions, the benefits are greater.

I agree with this---I've learned a lot this year from following Morris and Silver on Twitter, which I didn't use in 2016. Granted, Twitter has its own problems, but I have seen a lot of thoughtful discussion of modeling assumptions, methodology, and forecasting over the past few months.

## Final thoughts

This was a good read. It took me a little under an hour, and I read it top to bottom (unlike most papers). I think this paper thoughtfully described some of the problems in election modeling, and its attribution to competing incentives makes sense. 

I find the point about asking questions of models to understand their outputs to be particularly important. This is hardly exclusive to election forecasting; one of the points that Janelle Shane made in [*You Look Like a Thing and I Love You*]({{< ref "books/you_look_like_a_thing.md" >}}) was that you can learn a lot about models by pushing them to their limits. And asking "What happens if Trump wins California?" certainly falls into that category.

I enjoyed this paper. I don't have anything deeper to say, really, other than it's a thoughtful, nuanced take on a messy problem.