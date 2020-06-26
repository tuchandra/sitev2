+++
title = "Democratizing PySpark For Mobile Game Publishing"
date = 2020-06-26T12:00:00
draft = false
categories = ["spark"]
+++

This talk, by Ben Weber of Zynga, talks about their experiences making their PySpark environment available to everyone in their analytics function. Democratizing PySpark in this way, while not easy, helped to improve their analytics function.

<!--more-->

Zynga's publishing platform includes analytics and reporting, their experimentation platform, personalization services, and marketing optimization. Weber spoke [last year]({{< ref "spark/automated_modeling.md" >}}) about their experience using AutoML for scaling up their analytics function, and this talk represents a really cool evolution of that.

Their environment until last year was Github, Python, and JupyterLab; recently, they've moved into a more production-like era, using Docker, Flask, and (Py)Spark. They partner with their data engineering team to set up model endpoints, too. Over the past two years, too, they've **democratized PySpark**.

## Democratizing PySpark
For a long time, their analytics platform was only available to a small set of data scientists. They chose to open it up to everyone in analytics, woah! The goals were:
 * level up their teams
 * standardize tooling
 * evolve their data platform
 * support large scale analyses
 * distribute ownership of data products

This came with the obvious risks of causing high costs, fragmentation across many users, and distracting people from their main focus.

To enable this transition, they had training notebooks and wiki documentation, offsite mentoring and PySpark office hours, and (most importantly, in Weber's opinion) *collaboration* in cross-team products and peer review.

Another unexpected benefit was that, as they scaled up data products, there were more teams responsible for owning data products in production. Their products were generally either pipelines (running in batch, storing results in S3 or Couchbase, or being served on the experimentation platform) or endpoints (served with SageMaker).

Weber continued with other analytics improvements that they've seen since opening up the platform. There were lots of new applications:
 * using an autoencoder for cheat detection, by modeling players as 1D images
 * modeling Markov chains in PySpark to simulate how a game economy would change over time
 * tons of new experimentation work, doing testing at scale for all kinds of games
 * using reinforcement learning for real-time model serving for personalization, which is in prod on Word with Friends 2 and CSR Racing 2 (this is [open source](https://github.com/zynga/rl-bakery)!)

What a great talk! I joined because of how good Weber's talk was last year, and this was even more interesting. It struck the right balance of talking about interesting applications, having well-designed slides, and giving interesting, actionable advice.
