+++
title = "[Paper] The Hardware Lottery"
date = 2020-11-02
draft = false
categories = ["papers"]
tags = ["reading club"]
authors = ["Sara Hooker"]
+++

The "hardware lottery" is when a research idea succeeds because it is suitable with available hardware.
What does this mean for the future of research?

<!--more-->

**Link**: [arXiv](https://arxiv.org/abs/2009.06489)

**Authors**: Sara Hooker

## Summary
This paper introduces the term *hardware lottery* "to describe when a research idea wins because it is suited to the available software and hardware, and *not* because the idea is superior to alternative research directions.*

Hooker reflects on this idea in a historical context.
"Choices about software and hardware have often played a decisive role in deciding the winners and losers in early computer science history," she writes.
And yet the importance of hardware is often ignored when thinking about how research has developed.

> Today the hardware landscape is increasingly heterogeneous. This essay posits that the hardware lottery has not gone away, and the gap between the winners and losers will grow increasingly larger.


## Winning and losing the hardware lottery
Hooker argues that the machine learning community has a tendency to see algorithmic, software, and hardware choices as independent.

> Despite our preference to believe algorithms succeed or fail in isolation, history tells us that most computer science breakthroughs follow the Anna Karenina principle. 
> Successful breakthroughs are often distinguished from failures by benefiting from multiple criteria aligning serendipitously.

That means *winning the hardware lottery*. 
She shows how Charles Babbage, in 1837, designed an analytical machine that was a century too early.
And perhaps most saliently, deep learning, invented in the late 1900s, has only recently emerged as a promising direction of research.

Early advances in deep learning were essentially incompatible with CPUs; training would exhaust memory.
It was not until the early 2000s that GPUs, which had been around since the 1970s, were repurposed for training neural networks. 


## Towards more lotteries
"We are experiencing a second pendulum swing back to specialized hardware," Hooker writes.
The end of Moore's law means that efficiency improvements will be driven by domain-specific hardware.
A notable research example is TPUs (tensor processing units).

> In many ways, hardware is catching up to the present state of machine learning research.

Hardware requires more of an investment than software.
Designers and developers cannot build specialized hardware for every idea---only the ones they think will last. 
This biases research directions to the ones for which suitable hardware already exists.

> Scientific progress occurs when there is a confluence of factors which allows the scientist to overcome the "stickyness" of the existing paradigm.

Hardware for deep learning is here to stay.
But hardware for other use cases---whose viability might be longer term, or not exist at all!---is less certain.
Hooker argues for investment in hardware research to overcome these lotteries.


## My thoughts
This was great.
I think I agree with the premise of the paper; it's naturally hard to understand how the field came to be a certain way, but Hooker makes a compelling case for the importance of hardware lotteries along the way.

I'm interested in seeing how domain- or task-specific hardware evolves over the next several decades.
I know progress is slow, but this seems more and more like a natural---if costly---avenue for research.

