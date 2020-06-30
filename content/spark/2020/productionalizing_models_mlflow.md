+++
title = "Productionalizing Models through CI/CD Design with MLflow"
date = 2020-06-24T13:30:00
draft = false
categories = ["spark"]
+++

This talk, by Mary Grace Moesta & Peter Tamisin at Databricks, dove into MLOps and productionalization of machine learning models using MLflow. How can we apply principles from CI/CD to machine learning? And how can MLflow help us to do so?

<!--more-->

**Speakers**: Mary Grace Moesta & Peter Tamisin at Databricks

## MLOps
MLOps is relevant because:
 * the data science development framework and tools are typically centered around local development
 * as data and complexity grow, so do the number of integration points
 * ML operations allow for development at scale and hands off production runs

She doesn't need to convince me---I've been aware that this was a blind spot in my understanding of machine learning for a while. Mary Grace passed it to the other speaker, Pete, to talk about CI/CD.

I think the second point is particularly important: as the scale of your data increases, and as you add more tools, the integration points become increasingly challenging to manage. Bugs are most likely to arise at the boundaries between services: when passing data from one module to another, when moving from local execution to the cloud, when running on unseen production data, etc.


## CI/CD
Pete Tamisin described CI as code (running tests and linting), building (pulling everything together, running more automated tasks, packaging libraries), and generating releases. CD, meanwhile, is deploying your code (as a notebook or library), testing it (and reporting on it), and operating with it (scheduling downstream ingestion, ML pipelines, analytics, etc.).

There's a lot more, based on my understanding of these: monitoring, sending feedback, debugging production issues, creating reports, and far, far more. There's a reason this is a whole field!

In machine learning, this looks like:
 * tracking experiments, runs, results, hyperparameters, artifacts
 * having a notebook or IDE environment to iterate on models
 * train models with different features or hyperparams, and track how they do
 * release the model code or a trained model
 * serve the model in real time or with batch scoring
 * etc ...

MLflow can enable this (that's the point of the talk). I've known about [MLflow tracking](https://www.mlflow.org/docs/latest/tracking.html) for a while, but the [model registry](https://www.mlflow.org/docs/latest/model-registry.html) is totally new to me (minus them announcing it last year). The model registry lets you catalog different versions of models and manage where they are deployed.

Using MLflow, you can use the model registry to track models in different stages (dev, staging, prod, others). All of this is managed through Python code with the MLflow API, which is *really* nice (no more YML files!). That's one of the reasons I like MLflow tracking so much, too.

The talk finished off with a demo of different MLflow features. Good to see, but hard to summarize here.


## In conclusion---
"MLops is an important piece of the machine learning framework that enables the business to consume downstream results with ease." The basic of CI/CD, they demonstrated, still apply to a machine learning project, but need some modifications (e.g., what kinds of artifacts are you deploying---a trained model that you need to use downstream, instead of website code). 

That's what MLflow has been created to help with; it acts as an intermediary between different steps of the process and different tools, which sounds great. This was an awesome talk!

