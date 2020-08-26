+++
title = "[Paper] Generative Models for Effective ML on Private, Decentralized Datasets"
date = 2020-07-29
draft = false
categories = ["papers"]
tags = ["iclr", "reading club"]
authors = ["Sean Augenstein", "Brendan McMahan", "Daniel Ramage", "Swaroop Ramaswamy", "Peter Kairouz", "Mingqing Chen", "Rajiv Mathews", "Blaise Aguera-Arcas"]
+++

How do you build and debug machine learning models when you don't have access to the raw data? Maybe it's sensitive information, or that it's stored on user devices. This Google paper from ICLR 2020 proposes using *generative models* as a privacy-preserving stand-in for user data.

<!--more-->

**Authors**: Sean Augenstein, Brendan McMahan, Daniel Ramage, Swaroop Ramaswamy, Peter Kairouz, Mingqing Chen, Rajiv Mathews, Blaise Aguera-Arcas (Google)

**Link**: on [Google Research](https://research.google/pubs/pub48690/) or [arXiv](https://arxiv.org/pdf/1911.06679.pdf)

Why this paper? I'm starting a weekly reading club with my friend [Judah Newman](https://judahgnewman.com/), and this was the first one that we picked.

## Background
When building and debugging machine learning models, it's common to manually inspect raw data. Just today, I looked at raw data in order to:
 * see what one batch of data looked like
 * figure out how to reshape a batch of data as part of a preprocessing step
 * try to figure out why another preprocessing step failed on a particular batch
 * try said preprocessing step on a different batch, then compare the two batches

and probably a half dozen other things that I don't remember. Table 1 from the paper summarizes these kinds of tasks:

Task                                                        | What data do you inspect?
------------------------------------------------------------|--------
Sanity checking data                                        | Random training data
Debugging mistakes                                          | Misclassified examples
Debugging unknown labels/classes (out-of-vocab words)       | Examples of unknown classes
Debugging poor performance on certain classes/slices/users  | Examples from the low-accuracy classes
Human labeling examples                                     | Unlabeled examples from training set
Detecting bias in training data                             | Examples with high density at training but low density at serving

These are basically "sanity checking and model debugging" (the first four), data labeling (#5), and detecting bias (#6). 

Manual data inspection isn't (or perhaps shouldn't be) always possible, though:

> However, manual data inspection is risky for privacy-sensitive datasets, such as those representing the behavior of real-world individuals. Furthermore, manual data inspection is impossible in the increasingly important setting of federated learning, where raw examples are stored at the edge and the practitioner may only access aggregated outputs such as metrics or model parameters.

This paper presents a research agenda to address this problem. "We demonstrate that generative models---trained using federated methods and with formal differential privacy guarantees---can be used to effectively debug data issues even when the data cannot be directly inspected."

Sounds ... too good to be true? My immediate skepticism is that the results from this paper are only useful in an academic setting, and not an industry one. Let's dig in.


## Approach
"How can a modeler effectively debug when training data is privacy sensitive or decentralized?" the authors write. How, indeed? 

The idea, simply put, is that:
 * you find yourself in a situation where you would be looking at raw data
 * you express the "criteria" for what data you want as a data selection procedure
 * the procedure gets passed to one of these "privacy-preserving generative models"
 * that model gives you data "like" the data you actually want, without actually revealing it.

**Why generative models?** Well, if you don't *have* to use real user data, then perhaps synthetic data that's "close enough" will work. The generative models here are based on neural nets ("deep generative models").

**Why federated learning?** (Or why decentralized data?) The generative models are trained on edge devices (e.g., user phones), so that raw user data never leaves them. Model updates, not data, are sent to a central server, which trains a global model.

**Why differential privacy?** Because deep generative models (and other ML models) can memorize training examples and leak personal information. This paper uses user-level DP, which is "per-user update clipping and post-aggregation Gaussian noising." So, uh, clip extreme values and add noise?


## Application 1: debugging an RNN
Consider an Android keyboard app that uses a word-RNN to offer next-word predictions. The app takes raw text, tokenizes and normalizes it, then passes these words as input to the RNN. The RNN has a fixed vocabulary, and any other words are marked as out-of-vocabulary. Training happens on-device via federated learning.

Suppose there's a bug in tokenization that causes a spike in out-of-vocabulary rates. You'd feasibly notice the spike, but you can't inspect the data (it is local to the user device).

They simulate this with a dataset of StackOverflow questions and answers (where all posts by author X are treated as a user), then artificially introduce a tokenization bug. What do you do?

You build an auxiliary model, apparently, which is a character-level RNN trained only on out-of-vocabulary words. Because RNNs are generative models, you can draw samples from them to help debug the tokenization issue. 

That sounds like a pretty specific use case: a natural language model, using RNNs, with edge learning. I can't decide whether the example is contrived or natural, which is weird.


## Application 2: debugging GANs during inference
GANs (generative adversarial networks) consist of a generator and a discriminator that are trained together. The generator tries to create content (images) that the discriminator can't tell from real content; the discriminator tries to tell them apart.

"We can take the GAN training framework and adapt it to FL and DP," they claim. The generator's training does not require user data, so it can be trained like normal on a central server. The generator's loss is a function of the discriminator, too, so if the *discriminator* is trained with differential privacy, then the generator will be as well.

The experiment here was to "monitor an on-device handwriting classification network being used for inference." Consider a banking app that lets users take pictures of checks to deposit. The images are processed on-device with a pre-trained CNN.

Suppose that a bug is introduced in preprocessing; a metric about how often users correct the algorithm's output spikes, indicating that there is *a* problem but not what it is. The data cannot be inspected because it's sensitive (images of checks).

The solution here is to train two (DP, federated) GANs: one on a subpopulation of users for whom the model performs well, and one on whom it performs poorly. Because the generators are private, inspecting the generated images on both populations would reveal the bug that it was learning.


## Closing thoughts
I like this a lot! The approach really doesn't seem that out there---use generative models as a stand-in for user data, and pick your generative models in a clever way so that they're useful.

I think it would be really interesting to try to train a machine learning model from start to finish without being able to inspect the data. Building a model might be easy enough, but you'd have to worry about things like target leakage, performance in production, and who knows what else.

Differential privacy is becoming more important at my company, and reading this paper gives me a lot of ideas. Suppose we were modeling TV viewing by our TV panelists (we're not, but suppose ...). To preserve their privacy, we might try generating synthetic panelists and modeling how they would view, instead of the real panelists.
