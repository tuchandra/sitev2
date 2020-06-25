+++
title = "Notes from the Thursday morning Spark keynotes"
date = 2020-06-25T12:00:00
draft = false
categories = ["spark"]
+++

The morning keynotes were more Databricks-focused; topics included updates to the Databricks workspace environment, new and upcoming features in MLflow (and that it's joining the Linux Foundation!), and demos on "responsible AI" from Microsoft.

<!--more-->

## The next generation Databricks workspace
**Speakers**: Clemens Mewald, Lauren Richie

Databricks announced a lot of changes to their platform, working towards a more mature editing environment that's more than just "here are your notebooks." These include:
 * first-class Git support, including brancing and better integration with Github/Gitlab/Bitbucket
 * support for normal IPython notebooks
 * support for `conda_env.yml` to manage environments
 * uhhh other stuff I think

I didn't pay too much attention to this---I try to avoid working in notebooks where possible---but objectively, these are great changes for the platform. First class Git support is great to see.

They gave a great demo of opening a notebook in a feature branch (not possible before), making comments and working collaboratively with a teammate (kind of possible before), and scheduling the notebook as a cron job. They deployed the now-automatically-updating forecast as a dashboard for imaginary stakeholders, too, which was great.


## Simplifying Model Development and Management with MLflow
**Speakers**: Matei Zaharia, Sue Ann Hong

This started as a pitch for MLflow, talking about what it is and what its use cases are. The major announcement was that **MLflow is joining the Linux Foundation**! That's huge and totally unexpected. (See the [Databricks blog post](https://databricks.com/blog/2020/06/25/mlflow-joins-the-linux-foundation-to-become-the-open-standard-for-machine-learning-platforms.html) and the [Linux foundation blog post](https://www.linuxfoundation.org/press-release/2020/06/the-mlflow-project-joins-linux-foundation/)).

Another major feature announced is **autologging**, which helps make note of data versions (I think). I didn't understand this as much, but I'm excited to come back to it. They showed an example of how you can clone a model run exactly by making use of data versioning and better environment management.

**MLflow model schemas** are another new feature; these allow you to specify input and output data types for models. This lets you validate compatibility between datasets, e.g., by specifying `{zipcode: str, sqft: double, distance: double}`, and raise warnings if you try to pass an incompatible dataset.

**MLflow model registry tags** let you add metadata to models in the reigstry (e.g., `passed_gdpr_review`, `passed_performance_test`), and this is possible through both the UI and API (so it can integrate with CI).

Finally, the **MLflow deployments API** helps to manage depoyments in RedisAI and GCP (for now), and eventually K8s, AWS SageMaker, and Azure ML. Within the Databricks platform, you can deploy models from the registry, too. Cool!

There was a cute demo making use of these tools that included puppies. Yay!


## Responsible ML – Bringing Accountability to Data Science
**Speakers**: Rohan Kumar and Sarah Bird (Microsoft)

This talk was about Microsoft's approach to responsible AI. It started off with surface level explanations of what interpretable and explainable AI are, along with different tools Microsoft offers to help with these.

Dr. Bird gave a demo afterwards, showing how tools from one of Microsoft's responsible AI toolkit can do things like post-hoc analysis and force demographic parity at training or testing time. Pretty surface level and definitely cherrypicked, but that's every keynote.


