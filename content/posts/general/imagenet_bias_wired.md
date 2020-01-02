+++
title = "Reflections on ImageNet bias in the news"
date = "2019-12-26"
draft = false
categories = ["general"]
+++

This post is a reflection on two articles, [The viral app that labels you isn't quite what you think](https://www.wired.com/story/viral-app-labels-you-isnt-what-you-think/) and [AI is biased. Here's how scientists are trying to fix it](https://www.wired.com/story/ai-biased-how-scientists-trying-fix/), both from Wired.

<!--more-->

## ImageNet Roulette
The first article was about ImageNet Roulette, a (now removed) "game" to illustrate some of the flaws in the ImageNet dataset. From the article:

> The project, called ImageNet Roulette, is an effort by artist Trevor Paglen and researcher Kate Crawford to illustrate the dangers of feeding flawed data into artificial intelligence. It takes aim at one of the field’s seminal resources: ImageNet, the database of 14 million images that’s credited with unlocking the potential of deep learning, the technique used for everything from self-driving cars to facial recognition. The algorithm behind the Roulette tool is trained using images within ImageNet that label people across 2,395 categories, from “slatterns” to “Uzbeks.” **“I wanted to crack ImageNet open and look at images that weren’t meant to be looked at,”** says Paglen. The experiment, now viral, has plenty of people asking just how those labels got there in the first place, and why they remain.

The issue here boils down to ImageNet containing labels that, in some cases, go beyond biased to straight up offensive. The dataset is an amalgamation of the 1980s dataset WordNet, labeling by Princeton undergrads, more labeling by Mechanical Turk users, and any structure that researchers imposed onto the problem (e.g., how to design the hierarchy). Any bias in the dataset can't be traced back to one single source; instead the problem is the exact opposite, that no one knows everything that's in this dataset.


## Efforts to improve it
The second article was about how researchers are working on these issues. A [blog post](http://image-net.org/update-sep-17-2019) from September discusses the effort to improve ImageNet data, summarizing a FAT* 2020 paper "Towards Fairer Datasets: Filtering and Balancing the Distribution of the People Subtree in the ImageNet Hierarchy."

> The ImageNet team analyzed their data set to uncover [derogatory or loaded terms] and other sources of bias, and then took steps to address them. They used crowdsourcing to identify and remove derogatory words. They also identified terms that project meaning onto an image, for example “philanthropist,” and recommended excluding the terms from AI training.

That sounds like a reasonable thing to do, but problems will still remain. Removing derogatory terms is one (obvious!) thing to do, but what about implicit associations? It's probably the case that the "computer" images have white men in them, even in the background, or (as [Stock & Cisse found](https://arxiv.org/abs/1711.11443)) that prototypical "basketball" images have black men in them. I don't think an "unbiased ImageNet" is even possible; what does it look like to have an unbiased worldview? Images don't label themselves; they're all made by people. There are concepts that don't translate exactly across languages, or items that have special cultural significance to certain groups of people, and I have no idea how datasets could account for these.


## Thoughts
ImageNet is just one problem here; a larger issue is, I think, the fact that large datsets are being collected and annotated with little thought for what might be in them. No single person or group knows about everything that's in ImageNet (if they did, there's no way they would have released some of the labels that are blatantly racist), and it's probably impossible with a 14M-image dataset. What about entirely algorithmically generated datasets, like GPT-2 [being trained on](https://openai.com/blog/better-language-models/#fn1) outbound links from Reddit? The authors say "This can be thought of as a heuristic indicator for whether other users found the link interesting (whether educational or funny)", but the "other users" here is Reddit users--which skew young, white, and male. What are the implicit biases present in that dataset?

Another issue is the purpose of the dataset. One might reasonably argue that ImageNet isn't supposed to be used for classifying pictures of humans. The most common 1000-class subset of ImageNet has three "people" categories (scuba diver, bride/groom, and baseball player), though the entire dataset has 2,832 such categories. The [Excavating AI](https://www.excavating.ai/) website explored some of these:

> ImageNet contains 2,833 subcategories under the top-level category “Person.” The subcategory with the most associated pictures is “gal” (with 1,664 images) followed by “grandfather” (1,662), “dad” (1,643), and chief executive officer (1,614). With these highly populated categories, we can already begin to see the outlines of a worldview. ImageNet classifies people into a huge range of types including race, nationality, profession, economic status, behaviour, character, and even morality. ... As we go further into the depths of ImageNet’s Person categories, the classifications of humans within it take a sharp and dark turn. There are categories for Bad Person, Call Girl, Drug Addict, Closet Queen, Convict, Crazy, Failure, Flop, Fucker, Hypocrite, Jezebel, Kleptomaniac, Loser, Melancholic, Nonperson, Pervert, Prima Donna, Schizophrenic, Second-Rater, Spinster, Streetwalker, Stud, Tosser, Unskilled Person, Wanton, Waverer, and Wimp. There are many racist slurs and misogynistic terms.

It's hard to argue that anyone intended for the labels to be such a mess, but when you outsource the labels to Mechanical Turk, what else can one expect? It's easier to annotate images of objects than humans, and certainly less problematic when crowdsourcing them. I think ImageNet should remove the "person" images entirely and focus on objects, recognizing that their data is not well-suited for classifying humans. Cleaning up the labels is a good idea, but to fix all of the issues in the "person" hierarchy seems like an impossible task, and one that is only tangential to the broader goal of ImageNet.

I'm influenced here by the [model cards](../papers/model_cards_mitchell.md) paper, though ImageNet is a dataset and not a model. To me, it seems like ImageNet shouldn't be used to train classifiers for images of humans, and that this would be documented in a "limitations" or "intended use" section of a model card or datasheet. Leave that to more specialized, more carefully curated datasets.
