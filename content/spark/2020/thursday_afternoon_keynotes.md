+++
title = "Thursday afternoon keynotes: on deep learning and deep fakes"
date = 2020-06-25T15:00:00
draft = false
categories = ["spark"]
+++

The afternoon keynotes featured Kim Hazelwood, the west cost head of engineering at FAIR, discussing recommender systems; and Hany Farid, from UC Berkeley, discussing deepfakes.

<!--more-->


## Deep Learning: It’s Not All About Recognizing Cats and Dogs
**Speaker**: Kim Hazelwood (west coast head of engineering at Facebook AI Research)

Hazelwood opens her talk with what drives the machine learning growth (better data > better models > better systems > better data again), and how Facebook's use of machine learning is increasing quickly (2x engineers working on it, 5x models being trained, 8x compute being used). For inference, meanwhile, they make 200 trillion predictions *daily* (*what*??); and they remove 99% of fake accounts automatically daily.

She discussed how many people have a simplified view of machine learning, where it's either computer vision or NLP; but here, they have all kinds of systems in practice. There are more than just CNNs and RNNs out there, and Facebook uses a wide variety of machine learning models.

I missed the rest of this talk, sadly, but this [blog post](https://www.sigarch.org/deep-learning-its-not-all-about-recognizing-cats-and-dogs/) is worth reading, and I'll be sure to catch the recording once it's up next week.


## Creating, Weaponizing, and Detecting Deep Fakes
**Speaker**: Hany Farid (UC Berkeley)

Farid opens with a discussion of photo and video manipulation; tools like Photoshop have made this accessible for a long time, and even video manipulation has been possible for a while. But since 2015 or so, we've entered a new era of this kind of manipulation. See, for example, [thispersondoesnotexist.com](https://thispersondoesnotexist.com/).

This is powered through GANs, where you start with noise, pass it through a generator, have a discriminator try to distinguish between it and a real image, and repeat. This, given enough time and data, will produce images that are very, very difficult to discriminate from reality.

The same is possible when starting from existing images; pass the discriminator a bunch of images of Donald Trump, and seed the generator with one of Alec Baldwin on SNL, and you can get "face swaps." 

While obviously funny, this can be weaponized into (primarily, right now) non-consensual pornography or other forms of manipulated media. Consider, for example, a manipulated video of Zuckerberg saying that profits are down 10%; how much would that impact the stock market?

What about detecting deep fakes? Farid gives an example of President Obama saying "Hi everybody," during which he typically turns his head up and to the right while pursing his lips afterwards. When watching hours of videos of him speaking (or having a computer watch it), one can find these kinds of behavioral tells; these are often not present in deep fakes.

They give an example of tracking all kinds of signals like these from videos of presidential candidates, then projecting them into a 2D space:

{{< figure src="president_embedding.png" width="700px" >}} &nbsp;

Woah!

Another example was looking at the specific shape that mouths make when saying different phonemes. These are usually consistent when the same person says the same thing multiple times. GANs don't know these; they just think in terms of pixels, and so the aggregate shapes are likely to be different in generated video.

Farid closed the talk with warnings: that yes, we have to get better at detecting manipulated media and mis/disinformation. But tech companies have to get better at regulating the presence thereof on their platform, and policy needs to catch up to the nature of media today. What a great talk!



