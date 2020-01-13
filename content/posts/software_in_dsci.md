+++
title = "Software engineering is an essential part of data science"
date = 2020-01-13
draft = false
categories = ["general"]
+++

Good software engineering is an indispensible part of good data science. I've believed this for a while, but only recently come to feel strongly about it, and this post goes into more detail on why.

<!--more-->

## Preface: Joel Grus' "I Don't Like Notebooks"
I recommend that every data scientist watch Joel Grus' talk called [I Don't Like Notebooks](https://www.youtube.com/watch?v=7jiPeIFXb6U) from JupyterCon 2018. I didn't discover this talk until about 9 months of working as a data scientist, and hearing it helped me to formalize my thoughts as well. It's been another 9ish months since then, and now here I am writing this post.

Joel's talk focuses on notebooks. He discusses how the hidden state issues make code difficult to reason about; how out-of-order execution makes code more complex than it needs to be; and how certain interface choices encourage bad habits. The theme of the talk is that if you're doing science, your code is an essential part of the process, and using the right tools for the job makes it more likely that your code (and your science) is correct.

This post is not a tirade against notebooks, though if you are in the mood for one I *highly* recommend the above talk. Rather, this post is about software engineering being an indispensible part of the data science process.


## The prevailing sentiment (in my experience)
Let's start with perhaps my favorite quote from Joel's talk:

> There's this sense in the data science community, which I find super unfortunate, that data science doesn't need to follow the rules of good software engineering.

The idea that data science is somehow separate from software engineering is, in my experience, fairly widespread. It's a sentiment that I see day after day, both at work and among data scientists online. There are people out there who believe in the importance of good engineering, though, and it was one of my coworkers who sent me Joel's talk in the first place. Becoming the guy who won't shut up about engineering has helped me to discover other like-minded people.


## Forget "it's research"
Simply put: **good software engineering is an indispensible part of good data science.**

Forget the "it's research" excuse. If the goal of our research to reach some kind of conclusion about how something works, we want to make sure we have some faith in those conclusions. Our code (and our data, but it's a lot easier to organize data than code) is what produces our results; how can we trust our results in the presence of messy code?

There's a related [tweet chain](https://twitter.com/fchollet/status/1018396455533506560) from Francois Chollet, the creator of Keras, that puts this very well:

> In the context of machine learning research, science and engineering are not distinct concepts. You don't do "science" by thinking very hard about platonic ML concepts and then publishing your thoughts. You do science by engineering systems that test small ideas, iteratively ... Buggy code is bad science. Poorly tuned benchmarks are bad science. Poorly factored code is bad science (hinders reproducibility, increases chances of a mistake). If your field is all about empirical validation, then your code *is* a large part of your scientific output.

One might say that they're confident their code is correct because they've built it up from scratch, checked intermediate results along the way, and so feel okay about the final product. At the very least, that's what I hear when other data scientists talk about validating their results. But good software engineering is the safest way to be reasonably confident that your code is correct.

Moreover, what about other people's code? What about hot-off-the-presses papers, or a new model that another team built? The reproducibility of science is an essential part of the scientific method. Poorly organized code makes it harder to reproduce other people's results, leave alone build on top of them.


## Why I care
One reason I feel strongly about this because some of my biggest contributions to each of the teams I've worked on have been helping them to improve their code.

The most salient example is from my first data science team, when several team members were developing models in parallel to try to solve the same problem. We had several ideas for how to benchmark our models, and several versions of that benchmarking code floating around. I reconciled the differences and created a lightweight library for the team to use, so we made sure we were all speaking the same language when we talked about model performance. (Note that this problem *wasn't* caused by notebooks, though this process was made a lot harder by having to work in them!)

Other examples include narrowing down the source of a bug to two people running different versions of Python, and a different bug where they had different versions of sklearn installed. Another is (from last week!) a nasty bug in a data pipeline where some of our data was getting dropped midway through; we still haven't figured out why, and debugging it is harder because of the code only existing in notebooks.

These issues make my job harder, sure, but fixing them is (part of) what I get paid to do, so ... whatever. The more glaring problem is that these issues make me lose faith in the validity of our models and analyses. In the face of complex data pipelines and machine learning models which lack unit tests and documentation, how can anyone be confident that they work correctly?


## What we can do
Talking about writing better code and doing better engineering becomes exhausting if I don't have buy-in from everyone around me (but in the cases where I do, it's incredibly rewarding). It takes team-wide effort to start code reviews and write unit tests, leave alone adopt more basic practices like using Git and documenting dependencies. What can we do as individuals?

One change I have had success with is adopting a software-first mindset. Forget notebooks; do experimentation in an IPython console. The fact that consoles are ephemeral will force you to factor out reused code into a library almost immediately. This can be checked into Git, letting you track changes, remove dead code, and collaborate with others.

Writing a full unit test suite, while a noble goal, is a harder sell. Rather, I've started adding `assert` statements into pipeline code to make sure things are behaving as I expect. I recognize that this is far from an ideal solution. But in my experience, this is an easy way for people to document their assumptions about what data should look like at different steps, and it has the bonus of halting execution if things go awry.




