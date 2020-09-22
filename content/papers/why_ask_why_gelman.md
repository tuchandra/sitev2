+++
title = "[Paper] Why ask Why? Forward Causal Inference and Reverse Causal Questions"
date = 2020-09-21
draft = false
categories = ["papers"]
tags = ["reading club"]
authors = ["Andrew Gelman", "Guido Imbens"]
+++

This short paper argues that reverse causal questions ("why did sales go down?") are opportunities to consider problems with existing models. The search for causal explanations, then, can help us to improve our models.

<!--more-->

**Authors**: Andrew Gelman, Guido Imbens

**Link**: [NBER](https://www.nber.org/papers/w19614)

This is the paper for this week's reading group with my friend [Judah](https://judahgnewman.com/). This was one of the papers he suggested among a list of four or five, and I picked it because I haven't done much formal reading on causal inference.

## Summary
Statistics and econometrics are traditionally focused on effects, not causes. Some researchers dismiss the search for causes. So, in the abstract, the authors write:

> We argue here that the search for causes can be understood within traditional statistical frameworks as a part of model checking and hypothesis generation. 
> We argue that it can make sense to ask questions about the causes of effects, but the answers to these questions will be in terms of effects of causes.

In other words, you don't have to view this specifically as a question of causal inference, and can instead think about it in the context of a statistical model.


## Two types of questions
The authors identify two kinds of causal questions:

1. *Forward causal questions* are questions of the form "What might happen if we do X?", or questions about what the effects of particular treatments or changes might be
2. *Reverse causal inference* are questions of the form "What causes Y?", like why certain voting outcomes exist or

Reverse causal questions, the authors argue, are mostly only used to motivate forward questions. We use "why" questions to motivate "what if" questions, which are easier to study through experiments.

What are some kinds of questions we might ask?

 * (forward) What is the effect of money on elections?
 * (reverse) Why do incumbents running get more fundraising than challengers?
 * (forward) What is the effect of this marketing campaign on our sales?
 * (reverse) Why did our sales drop?

The forward question is straightforward, if difficult. One can model the causal effect $y$ as $y(T = 1, x) - y(T = 0, x)$, where $T$ represents a treatment and $x$ other variables. This asks "all other things held equal, if we change the treatment, what is the impact on the outcome?"

The reverse causal question is harder. 


## Reverse causal questions as model checking
The key point of this paper:

> We can frame reverse causal questions as model checking.

We see a pattern that needs an explanation. This, they argue, means that the existing explanations are insufficient. These existing explanations are due to *implicit models* of how the world works. 

> If we gather some numbers on dollar funding, compare incumbents to challengers, and find the difference is large and statistically significant, then we are comparing to the implicit model that there is variation but not related to incumbency status.

The authors fit this into the mathematical structure of causal inference. I think the main point is that **answering the question *why?* is an invitation to understand how our existing models are insufficient.**

This is an interesting perspective. I like the idea of using reverse causal questions to consider problems with existing models. I think I agree with it, but I have such little experience in this space that this is a weakly held belief. 
