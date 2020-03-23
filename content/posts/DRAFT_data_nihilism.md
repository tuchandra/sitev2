+++
title = "Data Nihilism"
date = "2020-04-01"
categories = ["general"]
draft = true
+++

I've

<!--more-->

I said to my friends: "I'm turning into a data nihilist where I believe that numbers are meaningless when they're stripped of all the context that underlies them."

All of these numbers about coronavirus are, in this interpretation, meaningless:

 * the number of tests administered (who were they administered to? where? when?)
 * the number of confirmed cases (mostly a function of the number of tests, which is [why](https://www.nytimes.com/2020/03/04/us/coronavirus-in-washington-state.html) Seattle had the most cases)
 * the number of deaths (also a function of testing, and of what counts as a case)
 * the incidence rate (depends on all of the above)
 * the mortality rate (depends on all of the above)

The fact that Washington had more cases than anywhere else is misleading: that's because the University of Washington developed their own test. Based on those numbers, one might conclude that Seattle was more dangerous than the rest of the country---but New York City predictably now has far more cases.

## A broader problem
Moreover, this speaks to a broader problem within data science: that people who lack the necessary domain knowledge are attempting to take on the ["coronavirus modeling problem"](https://www.kaggle.com/sudalairajkumar/novel-corona-virus-2019-dataset) without any knowledge of epidemiology.

Modeling coronavirus, if you are not an epidemiologist, is not useful to *anyone*. When the stakes are so high, it's actively *dangerous* to share the results of uninformed models. A bad model for TV ratings means a change in how money moves around advertisers and networks. A bad model for disease spread means that people might act differently and endanger themselves or others.

Part of doing ethical data science is knowing when you *shouldn't* build a model. In the case of a global pandemic, that's "always," unless you are one of a very small group of people.

Here are the ways that data scientists can help with the coronavirus crisis, *in order*:

 0. Wash your hands frequently
 0. Self-isolate (we're in data science, it's possible)
 0. Spend money at local businesses and restaurants
 0. Provide social and emotional support to others
 0. Read reports like the [Imperial College one](https://www.imperial.ac.uk/media/imperial-college/medicine/sph/ide/gida-fellowships/Imperial-College-COVID19-NPI-modelling-16-03-2020.pdf) to educate ourselves
 0. Apply to jobs in epidemiology, and prepare to learn from people who know a *lot* more than us

