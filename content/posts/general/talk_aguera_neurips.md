+++
title = "Blaise Aguera y Arcas: Social Intelligence (NeurIPS 2019)"
date = "2019-12-28"
draft = false
categories = ["general"]
+++

This is my summary of the talk by Blaise Augera y Arcas at NeurIPS 2019, [Social Intelligence](https://slideslive.com/38921748/social-intelligence).

<!--more-->

## On learning and loss functions
Aguera opens the talk by discussing why neural nets have exploded recently; this is the same story that we always hear about large datasets and more powerful computers. He talks about federated learning as a way to decentralize and scale the learning process, and how it's received more attention recently. The "scale" story is different in the federated paradigm, too; the data is abundant in raw size, but rare in the sense that you can't iterate over all of it. The compute is massive in aggregate, but limited on individual devices. There's a premium on quick convergence, and federated learning has ties to and challenges with ML fairness. He also discusses federated training of generative models as a way to scale and preserve privacy (being able to generate unlimited amounts of data that fits some distribution while maintaining the privacy of all the people who contributed to training it).

But then Aguera takes a step back to ask "where is all this AI stuff going." We have two narratives: the ML narrative where we're modeling `p(x)` or `p(y|x)`, and the AI narrative where people talk about superhuman performance or winning games. We can achieve superhuman performance by having a well-defined problem, a loss function, and enough data, he states, but the "shock" is how remarkably little territory this covers. "That's not how most of life works." What are the loss functions for optimal hiring, criminal sentencing, couples therapy, or music? Or other seemingly simple things, like ranking notifications on Android?

And that's to say nothing of basic human activities. He brings up a great quote from Patricia Churchland: "Go ahead and market something as 'intelligent', but if it is brittle, lacks flexibility, and 'common sense' and has nothing approximating motivation or drive or emotions or moods, it may be difficult to persuade the rest of us that it is intelligent in the way that biological entitites can be."

Continuing, Aguera discusses how evolution can decide on good or bad (using a toy system to demonstrate), and that this isn't "optimization" in the traditional sense. Mathematically, you can look at machine learning systems; given a phase plane diagram of highly reduced GANs, they have curl, meaning that they are not the gradient of any function and are loss-free (Nagarajan & Kolter, NeurIPS 2017). The combined GAN is not doing gradient descent and there is no loss function that is being optimized, even if the individual units are doing so. "Optimization is not how life works. And I would argue that it's also not how brains work."

## More on biology
ANNs are, to a first approximation, linear combinations of inputs with activation functions that preserve positive values. Trivial, sure, but an arbitrarily good approximation to any function. But then Aguera presents drawings of real neurons, which are *much* more complex than our addition and multiplication machines. Brains don't just evaluate functions; they develop, they imprint, they have instincts, they have feelings and desires. Functions don't do that.

Neurons, meanwhile, have per-cell and per-synapse state, multiple timescales, temporal averaging, sources of randomness, variance normalization ... how can we learn to learn using these building blocks, instead of feature-engineering learning? Aguera proposes a biologically inspired synapse update rule that doesn't require a loss function or gradient descent, which I don't really understand at all. It all seems cool, though, and less forced or artificial.

"We'd like to be able to not just build brains that are function approximators ... but build brains with multiple brain areas, the way real brains are." A feed-forward network that's just `f(g(h(...)))` where you apply backpropagation can't be how real brains work, he argues. "When you look at a real brain it has tons of different areas that are connected to each other in a zillion different ways, and evolution has figured out how to create all of the feedback and the learning cycles in these things ... and **none of that works using calculus by backpropagating** from the end to the beginning."

The limitations of our current learning paradigm are super interesting. The engineering of neural networks and requirement to formulate problems in terms of a loss function and gradient descent appear to be limitations. The next question becomes why (which this talk seems to answer), followed by how we can overcome that.


## Thoughts
This talk was not what I expected. The abstract was a little misleading, posing questions about AGI, public scrutiny, human agency, and climate change; but the talk didn't discuss these at all. The actual talk content was a discussion about advances in ML and federated learning, followed by the motivation for why gradient descent and optimization are perhaps limiting progress in the networks and systems we're designing. That's a great talk, to be clear, but the abstract didn't prepare me for what this talk turned out to be. Especially given the word "social," I was expecting more about the social impacts of ML systems, but we got something more biologically-inspired.

With that aside: I've thought for a while that SOTA ML research seemed like variations on the same neural network story, and things like [Jerome Pesenti](https://www.wired.com/story/facebooks-ai-says-field-hit-wall/) saying that the field will soon hit a wall led me to believe that. This talk helps me to better understand those thoughts by pointing out where specifically our current approaches fail: in systems that aren't doing anything like gradient descent. The human brain doesn't learn through SGD and backprop, and while they're useful for creating function approximators, it doesn't seem like our current approaches will create much more than that.

The last question that Aguera raises is "how are we going to even know when we're making progress?" Citing the emergence of standardized datasets that let researchers compare their methods against each other, he asks how we can define SOTA "for systems that develop language, that teach, that learn, that have empathy" ... that's a great question. How can we combine the ideas from ML research with those from fuzzier fields, like human language, cognition, or ethics? This research is as much ML (and statistics & computational neuroscience & etc.) as it is psychology, sociology, anthropology, and more.

Aguera said in response to a question: "As a person who is leading teams that are working on real ML problems on real devices, ... it's very interesting to me how quickly you run into the limits of what you can actually define objective functions or loss functions for." He discusses how this is more than a philosophical matter; there are real problems that people are working on that don't have clear solutions, so perhaps we've already hit the wall.

The last five minutes of the talk (plus questions) were my favorite. This is where the talk moved from "here's what we have done" and "here are my ideas" to "here are the questions we still have." And I guess that's where I'm at, personally speaking, figuring out the questions that are most interesting to me as I prepare to apply to grad school.
