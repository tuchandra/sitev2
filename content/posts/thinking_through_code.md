+++
title = "Something that made me a better programmer"
date = 2020-06-05
draft = false
categories = ["general"]
+++

Something that has made me a better programmer is thinking through my code step-by-step before I run it. Stupid, right? It kind of seems that way in hindsight, but writing about it makes me feel better.

<!--more-->

## Thinking in steps
I realized that I was getting into a habit of trying something, seeing how it broke, fixing that *and only that*, and repeating. This process left my code prone to lots of bugs. I wasn’t thinking through the whole system, or how different components had to interact.

Problems were more likely to arise at the boundaries between pieces—between model and model training, model training and posterior, posterior and visualization. Training code that worked with one model might not work with another. Visualization code was not portable across different models’ posteriors. And changing that code sometimes felt like a minefield.

I think that part of this is due to the culture and norms around the “data science process.” In this process, you get your data, *then* build a model, *then* evaluate its performance. (And then iterate.) But in my current work, I’m creating synthetic data then trying to model it; there’s a lot of interaction between the two “phases” that I don’t typically see.

And so today, I spent a lot of time planning out what I was going to do. I started with the simplest possible example that would show me that all the pieces were working together. For me, this meant only running MCMC for a couple hundred samples and using a naive model without multiple levels.

Gelman’s [case study](https://mc-stan.org/users/documentation/case-studies/golf.html) on golf putting model expansion is inspiring me, I think. I’m treating this work—which I’m starting from scratch—as a model expansion problem. Start simple and build up from there.


### Post script
This isn't a long post, and I only took about 20 minutes to write it. I realized that my free time has been consumed by moving and unpacking, and my free *energy* has been consumed by the state of the world right now. Getting *something* written down, after a week or more without doing anything, feels great.
