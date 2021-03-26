---
title: "[Paper] A Primer in BERTology: What We Know About How BERT Works"
categories: [papers]
tags: [reading club]
date: 2021-03-25
draft: false
authors: [Anna Rogers, Olga Kovaleva, Anna Rumshisky]
---

BERT is one of many large language models taking NLP by storm. But little is known about how or why it works, leading to papers studying it specifically: "BERTology." This survey paper synthesizes current research on how BERT works and what remains unknown.

<!--more-->

**Authors**: Anna Rogers, Olga Kovaleva, Anna Rumshisky

**Link**: [arXiv](https://arxiv.org/abs/2002.12327)


## Background and motivation
BERT is the most well-known language model based on Transformers (aka "attention," which was *not* clear to me early on). It works well on a variety of benchmarks, but like many language models, it's not always clear why. 

It's also unclear what's happening under the hood; what is the nature of BERT's "understanding" of language? What kind of linguistic knowledge does it have? 

These kinds of questions motivate what the authors call "BERTology" (literally "the study of BERT"). This work is a survey paper of 150 studies (!) attempting to understand BERT.


## What does BERT know?
The authors gather results from dozens of other papers studying BERT. Some of the highlights include:
- BERT encodes some information about parts of speech and syntax
- BERT does not directly encode syntax structure, but this can be recovered from token embeddings
- BERT does not understand negation, and its predictions are invariant to some kinds of malformed inputs
- BERT is "brittle to named entity replacements," suggesting that it doesn't genericize named entities
- BERT struggles with real-world inference and cannot reason based off its knowledge

What about more specific linguistic knowledge? How is that stored? In embeddings, and *contextualized* embeddings specifically. (Two embeddings for identical words will differe slightly by context, and they'll differ more if you take the embeddings from later BERT layers.) The embedding can also differ based on the position of the word in the sentence (the authors call this undesirable - why?).

Lower layers of BERT have the most information about word order; middle layers have the most syntactic information; and the final layers are the most task-specific. Semantics are apparently spread across the model.

There's an entire section on training BERT, too. These papers studied the impact of things like:
 - model architecture (number of attention heads, number of layers)
 - large-batch training
 - masked language models (?), including how, what, and where to mask
 - adding explicit linguistic information or other structured knowledge
 - pre-training, fine-tuning, and different ways of doing each

## What comes next?
The last section of the paper talks about directions for future research. Leaving aside the fact that there are several research directions for studying a single language model, they suggest:
- developing benchmarks that require verbal reasoning (where BERT can't just use shallow heuristics, which it's bound to learn in any dataset large enough)
- developing benchmarks for more linguistic competence
- studying how to teach reasoning (BERT has lots of facts, but can't really combine them)
- understanding what happens at inference (what knowledge gets used? what features are important?)


## My thoughts
It's kind of amazing that NLP research is in a place where we can have an *entire survey paper*—not just individual papers—on how a *single* model works. The authors said that they covered over 150 studies on BERT alone! I'm sure that number has grown since publication, too.

I think this speaks to how centralized the field is around a few very large language models. It gives more importance to the concerns raised in the [Stochastic Parrots paper]({{< ref "papers/stochastic_parrots_bender.md" >}}). We understand so little about these models, and it's clear that they lack any kind of reasoning ability!

This paper shows that there are still many open questions about how BERT works. There are questions about other large language models, too. We can add questions about how BERT is used, too. (I'm sure a 2021 version of [Algorithms of Oppression](https://nyupress.org/9781479837243/algorithms-of-oppression/) would have plenty to say!)

Survey papers are challenging for me to read, though. I appreciate the depth of the literature review; this is clearly very thorough. But I wish the authors had done more to synthesize the information shown and make it a little more cohesive. It felt more like reading a list rather than an article. 

More generally (and this isn't a criticism of the paper), this kind of paper makes me pessimistic about the future of NLP research. It feels like there are large language models that *happen* to work well on the specific things we evaluate them on. But we don't have a general purpose understanding of what they're actually learning, what different modifications will do, or why they work the way that they do. 

It seems like it's impossible to reason about the models that are taking over the field. What do we do when our tools are so opaque that, after hundreds of papers, we still don't understand their capabilities or why they work as well as they do?

I don't really know, but I'm glad the authors are asking.




