+++
title = "What I read recently (coronavirus edition)"
date = "2020-03-15"
categories = ["what I read"]
draft = false
+++

I didn't get to read much this week, but I also decided to split up my weekly reading posts into the [usual one]({{< ref "what_i_read/20200314.md" >}}) and this one, summarizing coronavirus-related pieces I've read.

<!--more-->

## [This is how the CDC is trying to forecast coronavirus spread](https://www.technologyreview.com/s/615360/cdc-cmu-forecasts-coronavirus-spread/)
**Author**: Karen Hao

I found this from the MIT Technology Review's [Weekend Reads](https://forms.technologyreview.com/weekend-reads/) newsletter. The article discusses how the CDC partners with multiple research groups, including one from CMU, to accurately forecast the flu, and now coronavirus. The CMU group has a real-time prediction of the current number of people infected, a machine learning forecast, and a crowdsourced forecast. The latter is particularly interesting: they review a chart of trajectories of past flu seasons, and are then asked to complete the curve of the current one. In aggregate, the crowd often performs just as well as the ML forecast.

One of my favorite parts of this article was the head of the CMU group, Roni Rosenfeld, discussing his reluctance to take on the problem:

> “People act on the basis of forecasting models, whether they are on paper or in their heads,” he says. “You’re better off quantifying these estimations so you can discuss them rationally as opposed to making them based on intuition.”

I think this quote is illuminating: most people have *some* idea of how the pandemic will go, whether that's the [worst-case](https://www.technologyreview.com/s/615358/worst-case-coronavirus-scenario-214-million-americans-infected-17-million-dead/) of 214 million Americans being infected or the head-in-sand "it's just a flu" folks. Having a model---*some* model---lets us at least quantify uncertainty and calibrate our expectations.

Additionally, this is actually quite similar to how FiveThirtyEight created a primary model while fully knowing it would be imperfect. Nate Silver discussed how, in the past, they thought there were too many complexities involved with modeling the entire primary elections. But he wrote something remarkably similar to what Rosenfeld did above, in ["How Our Primary Model Works"](https://fivethirtyeight.com/features/how-fivethirtyeight-2020-primary-model-works/):

> If building a full-fledged primary model presents its share of challenges — some of which I’ll describe here — there are also plenty of problems with publishing a half-assed forecasting product. (Meanwhile, trying to navigate our way through the primaries without any sort of forecasting product would present [bigger challenges still](https://fivethirtyeight.com/features/how-i-acted-like-a-pundit-and-screwed-up-on-donald-trump/).)

The last link goes to an article titled "How I Acted Like A Pundit And Screwed Up On Donald Trump." It is one of many articles written by people reflecting on the need for a more data-driven, rigorous approach to forecasting elections. That's not to say that "data-driven" means "good" by any means: but, as both Silver and Rosenfeld say, having a forecast that makes quantifiable predictions at least gives you something against which you can compare your mental priors.


## [AI could help with the next pandemic---but not this one](https://www.technologyreview.com/s/615351/ai-could-help-with-the-next-pandemicbut-not-with-this-one/?)
**Author**: Will Douglas Heaven

I am a sucker for well-written, responsible, and realistic AI coverage: it's part of why I love the [Skynet Today newsletter](https://www.skynettoday.com/about) so much, though this article didn't come from there. This one discusses how the idea that AI is a powerful weapon against diseases is "only partly true and risks becoming counterproductive."

> So here’s a reality check: AI will not save us from the coronavirus—certainly not this time. But there’s every chance it will play a bigger role in future epidemics—if we make some big changes. Most won’t be easy. Some we won’t like.

There are three areas in which AI might be able to help us in the future:

 * **Prediction**: monitoring news outlets and social media can provide powerful signals. But knowing that something's wrong isn't always helpful; in principle it can help health authorities to prepare, but this requires both trust in the algorithms and the ability to respond quickly. Moreover, data access also stands in the way of effective ML systems: public health data is often locked within hospital systems, not shared across international borders, and protected by strict regulations (for good reason).
 * **Early diagnosis**: a major failure in the United States has been the [lack of testing](https://www.sciencemag.org/news/2020/02/united-states-badly-bungled-coronavirus-testing-things-may-soon-improve), but dreamers point to machine learning as a potential aid here. Today, though, the problems are the same as always: lack of access to data, and the lack of models that can learn in the absence of abundant data.
 * **Treatment**: simulating how the virus may evolve over time is an exciting, but far-off, application. The ultimate barrier, though, may be [health and policy officials](https://www.technologyreview.com/s/615323/why-the-cdc-botched-its-coronavirus-testing/).

This article does an *excellent* job of taking down some of the hype around AI systems. The recurring theme is that we have to treat this from a [sociotechnical perspective](https://www.honeycomb.io/blog/the-future-of-software-is-a-sociotechnical-problem/): models are only as good as the data they're trained on, yes, but they're also only as good as the people acting on them and the environments they're deployed in.

Building trust in ML models is essential to being able to use them effectively. This is usually discussed at an "individual prediction" level: "why did my model make this decision?" But that's not enough: for them to be effective in the real world, we need to move beyond believing individual predictions to believing that models themselves are trustworthy signals. This means knowing how to act on them, testing their failure modes, and more.


## [How to practice social distancing during the coronavirus pandemic](https://www.technologyreview.com/s/615355/coronavirus-social-distancing-during-pandemic/)
**Authors**: Tanya Basu and Karen Hao

This is another COVID-19 related article; unsurprisingly, my reading this week has been *lot* about the present global health crisis. The basic idea is that **something is better than nothing**: there are lots of ways to be *more* responsible without completely holing up for several weeks. Maintaining your sanity is also important: mental wellness affects your immune system.

A highlight, for me, is minimizing the number of trips outside one's home. Run errands together, and during off-peak hours, and when you get home change your clothes and/or shower. The authors stress that risk reduction is better than an all-or-nothing approach: doing as much as you can to lower your risk (of contracting the disease or infecting others) is already quite good.

And [**wash your damn hands**](https://www.cdc.gov/handwashing/when-how-handwashing.html)!


## Other, shorter articles
[The Korean clusters](https://graphics.reuters.com/CHINA-HEALTH-SOUTHKOREA-CLUSTERS/0100B5G33SB/index.html) from Reuters Graphics is a data journalism piece about how one person in South Korea---"Patient 31"---appeared to be linked to thousands of coronavirus cases. This person was hospitalized for a car accident, went to a church service, developed a fever, then went to another service and a hotel lunch buffet. While the last two were obviously irresponsible, the first service *in the absence of any symptoms* was still likely responsible for hundreds of new cases. Social distancing matters!
