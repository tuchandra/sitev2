+++
title = "Friday morning keynotes: on PyTorch and COVID"
date = 2020-06-26T11:00:00
draft = true
categories = ["spark"]
+++

The Friday morning keynotes included a talk about PyTorch by its author Adam Paszke, and "science vs. COVID" from Amy Heineike of Covid19Primer.com.

<!--more-->


## PyTorch: a modern machine learning research and production platform
**Speaker**: Adam Paszke

Paszke's talk focused on how PyTorch is increasingly used in research---many new advancements will appear alongside their PyTorch implementations---but its adoption in industry has been lagging. One of the current goals is to close this gap.

To this end, Paszke talked about some new work in PyTorch:
 * Torch Script, which I believe is JIT-compiled PyTorch to make models serializable and generally faster
 * Torch Serve, which enables easier mobile deployments
 * other things that went super fast

I can tell that this was a good talk, but I don't believe that I was in its intended audience---I've used PyTorch, but not enough to understand enough about what was going on here, or have the upcoming changes be meaningful to me.

## Science vs Covid, lessons from Covid19Primer.com
**Speaker**: Amy Heineike (from Primer, as in Covid19Primer.com)

How was Covid19Primer.com built? It's built on the quickly growing literature and discourse on COVID-19; they had automated jobs to scrape PubMed, bioRxiv, medRxiv, and arXiv, along with Twitter and newspapers. They used various machine learning methods to make sense of this massive data---topic modeling, classification, unsupervised clustering, and more.

This was hard to summarize---Heineike talked about different things that she had seen in the COVID data, patterns of how researchers talked about data, and how information was propagated. 

