+++
title = "An Approach To Data Quality For Netflix Personalization Systems"
date = 2020-06-25T16:00:00
draft = false
categories = ["spark"]
+++

Netflix ingests terabytes of data and billions of rows daily, and these are used for personalized recommendations both online and offline. How do they manage data quality? By lots and lots of quality checks early on.

<!--more-->

**Speaker**: Preetam Joshi & Vivek Kaushal, both senior software engineers at Netflix

## (One of) Netflix's data pipelines
The talk opened with a summary of how Netflix recommendations work: start with member data and video data, do online feature generation, compute recommendations, and serve one. The online features are also sent to a historical fact store, so they can generate features offline later to train models offline and recompute recommendations (e.g., for trying out better models or experimenting). The talk focuses on the historical fact store.

The historical fact store consists of logger > ETL > Hive > query engine. It has 10 PB of data with hundreds of attributes, and 1 billion rows flow through the ETL pipeline daily. The data is used by a variety of models to enable personalization. Bad data is ... bad, though.

**Drift**: imagine you have a bug in the ETL pipeline, and you erroneously mark 10% of kids' profiles as adult profiles; adults will start seeing more kids content, and then thumbs down-ing that content, which is bad. That is a subtle bug---you might not notice it immediately, but eventually it'll cause problems with recommendations.

**Drastic changes**: you put 6 socks in the dryer, and suddenly 5 come out. They show an example of an attribute that was sending 600M rows daily, and then on April 29th it sent 150M. They got an alert, fixed it, and it was back to normal the next day.

**Under utilization**: you have a lot of data coming in, but you don't use it for anything. I don't really understand why this is a problem.

These can be caused by two kinds of bugs---bugs in the source or bugs in the pipeline. Preetam continued with the *solutions* to these data quality issues.


## Tackling data quality
Their data quality architecture looks like:
 * online feature generation, which goes into a historical fact store
 * data aggregations (in Spark) put info into an aggregated data store
 * the aggregated data store powers both automated monitoring/alerting and metrics/visualizations

Consider example data, having info on the amount of time that a member plays a video in seconds. In this example, there were `null` play durations, but there was another computed column log(play duration) which ... wasn't always null (due to default handling). Another example was a 1-billion second play time, which is longer than Netflix itself has existed.

Without any kind of data quality monitoring, we might not realize these are causing problems until training time (if we're lucky) or perhaps when debugging a prod issue. 

In this case, they might aggregate the daily number of null plays or the 99th percentile of play durations and *automatically* monitor for outliers. You could compare metrics with historical data from the previous week, or overlay two histograms, and look for differences within each pair of distributions. 

**Automatic distribution checks**: imagine you have two datasets with thousands of attributes, and you want to compare the distributions of each attribute independently. You'll first prune the attributes using a statistical test (and they described the Kolmogorov-Smirnov test), then debug the differing ones once the list has been made tractable. 

They described their automated monitoring, too; they can set thresholds for the number of nulls or the 99th percentile, then send pager alerts, dev alerts, etc., when real-time metrics exceed that threshold. The big wins were 15% cost saving (from detection of unused data---oh, that's why they do it!), 80% proactive detection of issues, and 99% validation during data migrations.

The takeaway from all of this is that **managing data quality is obviously important, but managing it as early as possible is critical.** Love it.
