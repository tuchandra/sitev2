+++
title = "[Paper] On the Dangers of Stochastic Parrots: Can Language Models Be Too Big? 🦜"
date = 2021-02-11
draft = false
categories = ["papers"]
authors = ["Emily M. Bender", "Timnit Gebru", "Angelina McMillan-Major", "Margaret Mitchell"]
tags = ["reading club", "facct2021"]
+++

Large language models are increasing in prevalence, and the field is marching steadily towards bigger ones still. This paper takes a step back to question the risks of these models. Can they be too big? (And yes—the emoji is part of the title!)

<!--more-->

This paper was the centerpiece of Google's [firing of Timnit Gebru](https://www.platformer.news/p/the-withering-email-that-got-an-ethical). It's received outsized attention as a result, and this has made writing about it exceptionally challenging. How do I say something new when so much has already been said? Nonetheless, I'll do my best.

**Link**: [PDF](http://faculty.washington.edu/ebender/papers/Stochastic_Parrots.pdf)

**Authors**: Emily M. Bender, Timnit Gebru, Angelina McMillan-Major, Margaret Mitchell
 

## Background and motivation
As far as motivation goes, the introduction says it all: 

> One of the biggest trends in natural language processing (NLP) has been increasing the size of language models (LMs) as measured by the number of parameters and size of the training data.

Most recent is Google Brain's [trillion-parameter Switch-C](https://venturebeat.com/2021/01/12/google-trained-a-trillion-parameter-ai-language-model/) model, and preceding it are OpenAI's 175 billion-parameter GPT-3 and several others before. Institutions are "seemingly competing to produce ever larger LMs," the authors write, and the risks of doing so have not yet been explored.

The primary argument of this paper is that the race for ever-increasing size is harmful in several ways.

> We hope that a critical overview of the risks of relying on ever-increasing size of LMs as the primary driver of increased performance of language technology can facilitate a reallocation of efforts towards approaches that avoid some of these risks while still reaping the benefits of improvements to language technology.

## Costs of language models
The paper discusses many, many costs and harms, either potential or already existing. Some of these are well-documented, and others are new; but what I like most about the paper is how it ties all of these strands together.

Most important is how the authors note that these costs are unevenly distributed:

> When we perform risk/benefit analysis of language technology, we must keep in mind how the risks and benefits are distributed, because they do not accrue to the same people.

The costs of large English language models will be beared by, for example, "800,000 people in Sudan affected by drastic floods." And who do these language models benefit? Perhaps the Sudanese, but they're certainly not built with them in mind! 

**Environmental costs**: "training a single BERT base model (without hyperparameter tuning) on GPUs was estimated to require as much energy as a trans-American flight." That's ludicrous. The paper notes recent initiatives to prioritize efficient hardware and algorithms, like [SustaiNLP](https://sites.google.com/view/sustainlp2020).

**Training data size**: what stands out to me is that, in order to build a vaguely passable corpus of training data, one must rely on crude approaches that leave a lot to be desired. This cascades, perpetuating dominant narratives.

*Where do you get your data?* There's no shortage of language on the internet, but at scale models like GPT-2 rely upon outbound links from Reddit. But Reddit is 67% male, and 64% between 18 and 29, overrepresenting content they submit relative to more marginalized groups.

*How do you filter this data?* To exclude problematic content *at scale*, one language model's training data discarded any page containing one of the [list of dirty, naughty, obscene, and otherwise bad words](https://github.com/LDNOOBW/List-of-Dirty-Naughty-Obscene-and-Otherwise-Bad-Words/blob/master/en). This, too, is a crude approach, and the authors note that excluding words like "twink" will filter out discourse from (you guessed it) the marginalized LGBTQ community.

Other issues include:
- how social movements, and discourse around them, evolves over time; but training data for most language models is static.
- that models encode bias and stereotypes against marginalized people
- that large training datasets incur *documentation debt*, where the datasets are undocumented *and* too large to document.

All of these are true, and while some are true of language models generally, these problems become worse as models get larger. These costs are usually ignored, or relegated to a "broader impacts" paragraph in a paper that is otherwise singing praises of large language models.


## On "stochastic parrots" 🦜
Section 6 of the paper discusses how the issues discussed above can cause real-world harm. "We find that the mix of human biases and seemingly coherent language heightens the potential for automation bias, deliberate misuse, and amplification of a hegemonic worldview," they write.

**False coherence**: the authors note that communication is a jointly human activity. For example, when I talk about this paper to Judah tomorrow, my words will be chosen with him in mind. As I write this blog post, I have a mental model of the audience of my blog. Language models, though, do not communicate.

> Text generated by an LM is not grounded in communicative intent, any model of the world, or any model of the reader’s state of mind. It can’t have been, because the training data never included sharing thoughts with a listener, nor does the machine have the ability to do that.

In other words, text generated by a language model doesn't constitute communication because it *can't*. It follows that there's no comprehension, either; even when we think we understand a language model's text, it's just an illusion. We assign intent to a model that has none. 

This becomes especially problematic when language models propagate harms embedded in the training data:

> We note that the risks associated with synthetic but seemingly coherent text are deeply connected to the fact that such synthetic text can enter into conversations without any person or entity being accountable for it. This accountability both involves responsibility for truthfulness and is important in situating meaning.

When a model, not a person, is responsible for harmful content, people have less recourse in dealing with it. "Humans are prepared to interpret strings belonging to languages they speak as meaningful and corresponding to the communicative intent of some individual or group of individuals who have accountability for what is said."


## What are we to do?
What should researchers do instead?

> We should consider our research time and effort a valuable resource, to be spent to the extent possible on research projects that build towards a technological ecosystem whose benefits are least evenly distributed or better accure to those historically most marginalized. This means considering how research contributions shape the overall direction of the field and keeping alert to directions that limit access.

Long ago, well before I was interested in AI fairness and ethics, I read something like "When you build technology, think about who it gives power to and who it takes power away from." It seems like mainstream AI research is finally catching up to this.

Finally, they propose some specific research items:
- adopt systems like [data statements](https://www.aclweb.org/anthology/Q18-1041/), [datasheets for datasets](https://arxiv.org/abs/1803.09010), or [model cards](https://arxiv.org/abs/1810.03993) to better document models
- consider pre-mortems of how language models might fail
- spend time assembling datasets by hand
- consider value sensitive design
- investigate how to directly serve marginalized populations.


## My thoughts
It's incredibly hard to write anything thoughtful about this paper when so much has already been said. But I really enjoyed this paper, and think I will be coming back to it regularly in the future. 

One of the [critiques](https://gist.github.com/yoavg/9fc9be2f98b47c189a513573d902fb27) that I read was that it makes a political argument without stating this. I don't think I agree; it's quite obvious to me that the paper is political. But I quite like [Suresh Venkatasubramanian's framing](https://algorithmicfairness.wordpress.com/2021/01/23/on-stochastic-parrots/):

> Does this paper indulge in advocacy? Of course it does. Does that make it less “scientific”? Setting aside the normative loadedness of such a question, we should recognize that papers advocate for specific research agendas all the time. The authors have indeed made the case (and you’d have to be hiding under a rock to not know this as well) that the focus on size obscures the needs of populations that aren’t represented by the majority as seen through biased data collection. You might disagree with that case and that’s fine. But it’s well within scope of a paper in this area to make the case for such a focus without being called ‘political’ in a pejorative manner.

So, yes, of course this paper is political—but only because we've positioned the default of building ever-larger language models as being *apolitical*. Every non-default position has to justify itself, ceding power to the status quo each time this occurs.

I'm not an NLP researcher, but from the outside it feels to me like we've been marching towards larger models without ever *giving a damn* about the harm that they do. Earlier today, I saw on Twitter how [GPT-3 produces disturbing text when prompted with the keyword 'Muslim'](lhttps://onezero.medium.com/for-some-reason-im-covered-in-blood-gpt-3-contains-disturbing-bias-against-muslims-693d275552bf?gi=sd). But, clearly, OpenAI saw the model as fit to release anyway.

Is that not a political decision? Releasing a product that's irreparably and explicitly harmful to a particular group of people? This "takes one-sided political views," to use Yoav Goldberg's phrase, and yet it didn't seem like anyone cared here.

I appreciate this paper for bringing attention to the bewildering landscape of problems with large language models. I particularly liked the discussion of false coherence, and would love to learn more about that line of thinking. I'm looking forward to more work like this in the future.
