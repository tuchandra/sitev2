+++
title = "Generalized SEIR Model On Large Networks"
date = 2020-06-26T13:00:00
draft = false
categories = ["spark"]
+++

SEIR models for epidemiology break down a population into four partitions: susceptible, exposed, infected, and recovered. This talk gives an overview of how [seirsplus](https://github.com/ryansmcgee/seirsplus) can be used with MLflow and hyperopt to run simulations and experiments of possible COVID-19 scenarios.

<!--more-->

**Speakers**: Amir Kermany (Databricks)

SEIR is a generalized model for infectious diseases that is specified by the following differential equations:

{{< figure src="seir_model.png" >}} &nbsp;

You can incorporate effects from testing, too; split E into "detected exposed" and I into "detected infectious." There are other changes that are outside the scope of this talk, but ya know---epidemiology is a complicated field.

This talk runs simulations using:
 * [seirsplus](https://github.com/ryansmcgee/seirsplus), an implementation of SEIR + network effects
 * MLflow for experiment tracking
 * hyperopt to study the impact of different parameters

Amir showed different examples of how the package works, running simulations with different parameters. Next, they ran hyperopt on various parameter values to minimize the difference between the predicted number of deaths and the actual number of deaths; this is curve fitting, but in a structural model. Cool!

He then demoed a stochastic model with network effects, motivating it because of how a large proportion of South Korea's outbreak [could be attributed](https://graphics.reuters.com/CHINA-HEALTH-SOUTHKOREA-CLUSTERS/0100B5G33SB/index.html) to one person. SEIR+ allows you to specify different network dynamics, social distancing patterns, and more; he showed off how some of these work.

You can also run stochastic simulations in parallel with Spark---cool! A lot of this talk ended up being advertisements of "look what you can do on our platform," but I don't mind when the application is relatively novel. I got a better understanding of how these models work and how one might use the seirplus library to run them, so this talk ended up being pretty good.

