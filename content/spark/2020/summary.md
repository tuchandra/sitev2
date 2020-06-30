+++
title = "Spark 2020 Summary"
date = 2020-06-30
draft = false
categories = ["spark"]
+++

My summary of the talks I watched at Spark + AI Summit this year, and recommendations for what to watch after the fact.

<!--more-->


## tl;dr
These were the best talks:
 * [Productionalizing Models through CI/CD Design with MLflow]({{< ref "spark/2020/productionalizing_models_mlflow.md" >}})
 * The [Wednesday afternoon keynotes]({{< ref "spark/2020/wednesday_afternoon_keynotes.md" >}}), and in particular [Dr. Phillip Atiba Goff's](https://www.youtube.com/watch?v=fSVSTe0McJU) and [Nate Silver's](https://www.youtube.com/watch?v=9ZfPGEMSkX4) talks.
 * [Automated Testing For Protecting Data Pipelines from Undocumented Assumptions]({{< ref "spark/2020/automated_testing_undocumented_assumptions.md" >}}) (or just go look at [great-expectations](https://github.com/great-expectations/great_expectations/))

These are also worth watching if they sound interesting, but they won't be for everyone:
 * [Automated And Explainable Deep Learning For Clinical Language Understanding At Roche]({{< ref "spark/2020/clinical_decision_support_roche.md" >}})
 * [Democratizing PySpark For Mobile Game Publishing]({{< ref "spark/2020/democratizing_pyspark.md" >}})
 * [Scoring At Scale: Generating Follow Recommendations For Over 690 Million LinkedIn Members]({{< ref "spark/2020/follow_recommendations_linkedin.md" >}})


## Wednesday, June 24
The conference started with [Wednesday morning keynotes]({{< ref "spark/2020/wednesday_morning_keynotes.md" >}}), talking about what's new in Spark 3.0, new features coming to Koalas and PySpark, and other announcements.

I watched [Productionalizing Models through CI/CD Design with MLflow]({{< ref "spark/2020/productionalizing_models_mlflow.md" >}}) by Mary Grace Moesta & Peter Tamisin at Databricks. This was a nice introduction to the side of MLflow that I'm least familiar with---the model registry and CI/CD tools. It discussed how MLOps is a more specialized version of normal DevOps, and MLflow can help to manage those differences.

I also watched [Portable Scalable Data Visualization Techniques for Apache Spark and Python Notebook-based Analytics]({{< ref "spark/2020/portable_scalable_data_viz.md" >}}). This was not a very good talk, but at the end the speaker did a cool and confusing thing where he created a Spark DataFrame that had figures as images.

The [Wednesday afternoon keynotes]({{< ref "spark/2020/wednesday_afternoon_keynotes.md" >}}) were a **highlight of the conference**. Dr. Phillip Atiba Goff spoke about #BlackLivesMatter and what kinds of services we need to be investing in. Nate Silver also spoke about his experiences doing analytics, including lessons about how to think probabilistically and interpret data. YouTube already has recordings of [Dr. Goff's](https://www.youtube.com/watch?v=fSVSTe0McJU) and [Nate Silver's](https://www.youtube.com/watch?v=9ZfPGEMSkX4) talks.

At some point, I watched [An Approach To Data Quality For Netflix Personalization Systems]({{< ref "spark/2020/data_quality_netflix.md" >}}) by Preetam Joshi & Vivek Kaushal, both senior software engineers at Netflix. This was great too! Hearing about the problems that arise at Netflix's scale is interesting, and they did a great job explaining their data quality issues.

A last talk was [How (not) to scale deep learning in 6 easy steps]({{< ref "spark/2020/how_not_to_scale_deep_learning.md" >}}) by Sean Owen at Databricks. This included some practical advice for training neural networks, and I appreciate that it was immediately actionable.

## Thursday, June 25
The [Thursday morning keynotes]({{< ref "spark/2020/thursday_morning_keynotes.md" >}}) were by folks from Databricks, announcing changes to the Databricks workspace (first class Git integration! finally!), upcoming changes to MLflow (model schemas, plus that it's joining the Linux Foundation), and some stuff from Microsoft about responsible AI.

I watched [Everyday Probabilistic Data Structures for Humans]({{< ref "spark/2020/probabilistic_data_structures.md" >}}) by Yeshwanth Vijayakumar (Adobe). This was a little bit hard to follow, but it introduced me to Bloom filters, HyperLogLog, and Count Min Sketch. This is one of those talks that introduced me to ideas that I was unfamiliar with; instead of teaching me how these work, it taught me that these exist and when I might need to use them.

[Using Bayesian Generative Models With Apache Spark To Solve Entity Resolution Problems At Scale]({{< ref "spark/2020/bayesian_generative_models.md" >}}) by Charles Adetiloye and Timo Mechler of MavenCode discussed a Bayesian generative model for handling deduplication. Sadly, it was too high-level to be informative.

[Using Apache Spark And Differential Privacy For Protecting The Privacy Of The 2020 Census Respondents]({{< ref "spark/2020/census_differential_privacy.md" >}}) by Simson Garfinkel gave an overview of why the US Census Bureau is investing in differential privacy, and then broadly discussed the algorithm they're using to do this.

The [Thursday afternoon keynotes]({{< ref "spark/2020/thursday_afternoon_keynotes.md" >}}) were by Kim Hazelwood (west coast head of engineering at Facebook AI Research) and Hany Farid (UC Berkeley). Dr. Hazelwood spoke about recommender systems and how they fit into the broader ML ecosystem, and Dr. Farid on deepfakes and techniques to detect them. **These were both great talks,** and the [recordings](https://www.youtube.com/watch?v=DCERuwn2IaI) are on YouTube again.

In the afternoon, I watched [Automated And Explainable Deep Learning For Clinical Language Understanding At Roche]({{< ref "spark/2020/clinical_decision_support_roche.md" >}}) by David Talby (CTO @ Pacific AI), Vishakha Sharma (Principal Data Scientist @ Roche), and Yogesh Pandit (Staff Software Engineer @ Roche). This was really great! It struck the right balance of an interesting problem (reading and understanding pathology reports), novel techniques, engaging speakers, and high-quality slides (no scrolling through notebooks!). 

Finally, I watched [Geospatial Analytics At Scale: Analyzing Human Movement Patterns During A Pandemic]({{< ref "spark/2020/geospatial_analytics_esri.md" >}}) by Joel McCune (Spatial Data Scientist) and Jim Young (Business Development Lead) at ESRI. This was a brief talk that didn't teach me much, besides that ESRI is analyzing movement data. Cool.


## Friday, June 26
The [Friday morning keynotes]({{< ref "spark/2020/friday_morning_keynotes.md" >}}) were by Adam Paszke (the creator of PyTorch) and Amy Heineike (from Primer, as in Covid19Primer.com). Paszke spoke about what's next for PyTorch, and how they're working to increase adoption in industry (as opposed to academia). Heineike discussed how they built a database of COVID-19 information for Covid19Primer.com.

[Scoring At Scale: Generating Follow Recommendations For Over 690 Million LinkedIn Members]({{< ref "spark/2020/follow_recommendations_linkedin.md" >}}) by Emilie de Longueau and Abdulla Al-Qawasmeh was a talk about how LinkedIn generates recommendations for which entities (pages, etc.) their users should follow. The main insight was a custom hash join that minimizes shuffles and scales well; this was quite good!

[Automated Testing For Protecting Data Pipelines from Undocumented Assumptions]({{< ref "spark/2020/automated_testing_undocumented_assumptions.md" >}}) by Eugene Mandel & Abe Gong (Superconductive) introduces the Python library [Great Expectations](https://github.com/great-expectations/great_expectations/), which can be used for data quality checks. The talk also motivated how data testing is different from regular unit testing.

[Generalized SEIR Model On Large Networks]({{< ref "spark/2020/generalized_seir_models.md" >}}) by Amir Kermany (Databricks) gave some background into SEIR models in epidemiology, and then did some flashy demos on how they can be used within Databricks.

[Democratizing PySpark For Mobile Game Publishing]({{< ref "spark/2020/democratizing_pyspark.md" >}}) by Ben Weber discussed Zynga's experiences opening up their PySpark environment to their entire analytics division. Doing so presented challenges at first, but eventually led to novel insights that they wouldn't have seen before. 

Finally, [Patterns And Anti-Patterns For Memorializing Data Science Project Artifacts]({{< ref "spark/2020/patterns_for_artifacts.md" >}}) by Derrick Higgins and Sonjia Waxmonsky from BCBS talked about best (and worst) practices for handling non-code objects in data science projects, going from "your project is not a folder on someone's machine!" to how you can support reproducible data scieince.

