+++
title = "Resources to learn about Bayesian inference"
date = 2020-10-08
categories = ["general"]
draft = false
+++

This is a companion post to my upcoming PyMCon talk, *Learning Bayesian Statistics with Pokemon GO*. I want to catalog resources that helped me to learn Bayesian inference for the benefit of others trying to do the same.

<!--more-->

Do you have suggestions for this list? Feel free to email me@\<this domain\>.

## Books and Papers
[Bayesian Data Analysis 3](http://www.stat.columbia.edu/~gelman/book/) by Andrew Gelman and several others is one of the gold-standard books for learning about Bayesian modeling. It is fairly mathematically involved, and I recommend using it as a reference. The book is available as a free PDF for non-commercial purposes.

[Statistical Rethinking](https://xcelab.net/rm/statistical-rethinking/) by Richard McElreath is another highly regarded book on Bayesian statistics. The conceptual explanations are among the best I've found anywhere. A second edition was recently releaed.

[Probabilistic Programming & Bayesian Methods for Hackers](https://camdavidsonpilon.github.io/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers/) by Cam Davidson is a free book in the form of a collection of Jupyter Notebooks. It focuses on practical applications of Bayesian methods, putting examples before developing any theory, and is a pretty easy read.

[Bayesian Analysis with Python](https://github.com/aloctavodia/BAP) by Oswaldo Martin is a more practical reference than *BDA3* or *Rethinking*, and focuses more on implementing ideas as you learn them.

[A conceptual introduction to Hamiltonian Monte Carlo](https://arxiv.org/abs/1701.02434) by Michael Betancourt is a research paper motivating HMC from first principles. It's a dense but informative read.

## Libraries
[PyMC3](https://github.com/pymc-devs/pymc3) is the main library used for MCMC in Python. Its API is relatively intuitive, though more complex models are harder because it’s built upon the now-defunct Theano. The PyMC3 [example notebooks](https://docs.pymc.io/nb_examples/index.html) are an excellent introduction to what’s possible with Bayesian modeling.

The PyMC developers also maintain a repository of [PyMC3 educational resources](https://github.com/pymc-devs/resources). This mostly consists of exercises from BDA3, Statistical Rethinking, and a couple of other books that have been worked out in PyMC3.

[Stan](https://mc-stan.org/) is the most widely-used domain language for Bayesian modeling. Their [forums](https://discourse.mc-stan.org/) are packed with educational resources (look under the “modeling” tag in particular). The [Stan User’s Guide](https://mc-stan.org/docs/2_20/stan-users-guide/index.html) is also worth reading for developing your conceptual understanding of Bayesian methods. Stan has a large, interdisciplinary community, and their resources are generally applicable to anyone working in this space.

[Pyro](http://docs.pyro.ai/en/stable/) is also a Python package which focuses on variational inference methods but also implements MCMC samplers. Pyro is built on PyTorch, which (in my opinion) is nicer to work with than Theano or TensorFlow. Pyro’s documentation is harder to get started with than PyMC3’s, and variational inference is more complex than MCMC, but both Pyro and VI are quite powerful.

[NumPyro](http://num.pyro.ai/en/stable/) ([Github](https://github.com/pyro-ppl/numpyro)) is an alternative to Pyro, powered by JAX and just-in-time compilation. While it maintains API parity with Pyro, in practice it has always felt more MCMC-focused than Pyro itself. It is substantially faster than PyMC3 because of how incredible JAX is.

You might also refer to Colin Carroll's blog post [A Tour of Probabilistic Programming APIs](https://colcarroll.github.io/ppl-api/).


## Talks
[Bayesian Inference is Just Counting - Richard McElreath](https://www.youtube.com/watch?v=_NEMHM1wDfI) is a gentle introduction to Bayesian inference and how it forces us to think differently from before (he says it’s roughly the first 6 chapters of the Statistical Rethinking book).

[Eric Ma - Beyond Two Groups: Generalized Bayesian A/B[/C/D/E...] Testing](https://www.youtube.com/watch?v=Pt37qA351yk) - from PyCon 2019

[The intuition behind Hamiltonian Monte Carlo](https://www.youtube.com/watch?v=a-wydhEuAm0)

(And I'm sure there will be many more from PyMCon soon!)


## Other web resources
For a general understanding of MCMC:
 * [A practical guide to MCMC](https://jellis18.github.io/post/2018-01-02-mcmc-part1/) by Justin Ellis
 * [Hamiltonian Monte Carlo from Scratch](https://colindcarroll.com/2019/04/11/hamiltonian-monte-carlo-from-scratch/) by Colin Carroll
 * [Markov Chains: why walk when you can flow?](http://elevanth.org/blog/2017/11/28/build-a-better-markov-chain/) by Richard McElreath
 * [Prior choice recommendations](https://github.com/stan-dev/stan/wiki/Prior-Choice-Recommendations) from the Stan developers
 * [How would you explain MCMC to a layperson?](https://stats.stackexchange.com/questions/165/how-would-you-explain-markov-chain-monte-carlo-mcmc-to-a-layperson) on Stats StackExchange

[A set of Bayesian Notes](https://jrnold.github.io/bayesian_notes/) by Jeffrey B. Arnold, though unmaintained, are helpful for developing some of the theory in Bayesian inference.

[The Bayes Way](https://bayesway.com/) links to lots of other resources.

[Andrew Gelman’s blog](https://statmodeling.stat.columbia.edu/) is updated several times a day. It’s a combination of posts about Bayesian thinking, research, education, and whatever else crosses his mind. Definitely worth following, if only to increase your general knowledge.


## Miscellaneous worked examples
[Andrew’s Spinner](https://nbviewer.jupyter.org/github/clausherther/public/blob/master/Rethinking%20-%20Andrew%27s%20Spinner.ipynb), a homework question that someone posed on Twitter that turned out to be surprisingly interesting.

[Why hierarchical models are awesome, tricky, and Bayesian](https://twiecki.io/blog/2017/02/08/bayesian-hierchical-non-centered/) by Thomas Wiecki

[Pokemon GO shiny rates: a Bayesian perspective](https://tusharc.dev/site/silph.html) (I wrote this)

[Hierarchical Partial Pooling for Repeated Binary Trials](https://mc-stan.org/users/documentation/case-studies/pool-binary-trials.html) (aka “the baseball example”)

[Bayesian methods for multilevel modeling](https://docs.pymc.io/notebooks/multilevel_modeling.html) (aka “the radon example”)

[Model building and expansion for golf putting](https://mc-stan.org/users/documentation/case-studies/golf.html)

[Bayesian product ranking at Wayfair](https://tech.wayfair.com/data-science/2020/01/bayesian-product-ranking-at-wayfair/) - the rare industry use case! (I have no affiliation with Wayfair)

[Bayesian estimation supersedes the t-test](https://docs.pymc.io/notebooks/BEST.html) talking about how what we do is a more informative version of frequentist statistical techniques

