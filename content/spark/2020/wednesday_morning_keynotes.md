+++
title = "Notes from the Wednesday morning Spark keynotes"
date = 2020-06-24T12:00:00
draft = false
categories = ["spark"]
+++

Spark + AI Summit kicked off with keynotes by Ali Ghodsi (Databricks CEO), Matei Zaharia (creator of Spark) and Brooke Wenig (Databricks machine learning lead), Reynold Xin (Spark contributor), and Vishwanath Subramanian (Starbucks director of data). I wasn't able to listen to all of it, but this post has a few highlights.

<!--more-->

## What's new in Spark?
One seemingly big feature is **Adaptive Query Execution**: Spark can automatically decide how to optimize jobs and split queries up into subqueries. This is opt-in right now, and will soon become the default, making shufflings easier. They're adding hints for join optimizations, too.

Python 2 is being deprecated (yay!) and they're improving GPU support (right now it's kind of hacky?). They're also improving support for distributed machine learning (previously we had to use something like HorovodRunner, and it was super finnicky).

The [redesigned UDFs](https://databricks.com/blog/2020/05/20/new-pandas-udfs-and-python-type-hints-in-the-upcoming-release-of-apache-spark-3-0.html) look great, too; UDFs were pretty challenging to work with before now.


## Other announcements: koalas and pyspark
Databricks announced [koalas v1.0](https://github.com/databricks/koalas), noting that they're near 80% API coverage of pandas. It's really cool to see how far they've come in just a year after [having announced](https://databricks.com/blog/2019/04/24/koalas-easy-transition-from-pandas-to-apache-spark.html) koalas last year.

They also noted miscellaneous improvements to Pyspark, which they're calling Project Zen (in line with the Zen of Python):
 * **better error messages!** the Pyspark stack traces that were hundreds of lines of Java, only to find a `ValueError` buried within, were probably my least favorite part of using Pyspark before.
 * better documentation (it looks pandas-inspired!)
 * some API changes that they didn't expand on at all

This is great---it's cool to see Databricks investing more in the usability of their platform.


## The data lake myth
Ali spent a while discussing how the transition from data warehouses to data lakes often left a lot to be desired. In theory, you should have a data lake that has all of your data, right? In practice, when their solutions architects were working on these projects, they noticed 9 common challenges with data lakes:
 1. hard to append data (adding newly arrived data causes incorrect reads)
 2. hard to modify existing data (due to GDPR or CCPA)
 3. jobs failed midway through, causing some data to be missing
 4. real-time operations were challenging, due to inconsistencies between streaming and batch
 5. costly to keep history
 6. difficult to manage metadata
 7. problems with too many files
 8. poor performance
 9. data quality issues (these are getting pretty vague ...)

They described how [Delta Lake](https://delta.io/) (and recent improvements to it) can help these problems. By making every operation transactional, things will either fully fail or fully succeed, and this apparently solves the first five problems. One of the flashiest parts is that you can do a `SELECT * FROM table AS OF TIMESTAMP [a year ago]`, which is wild!


## More changes, still
Reynold went into more detail about Delta Engine, which I frankly neither understand nor expect to need to understand. Spark is faster?

Databricks announced their acquisition of [Redash](https://github.com/getredash/redash/), which is an open-source dashboarding service for an entire company. This followed by a slick demo of Redash, which I had never seen before, but combines SQL queries with your normal database schemas with click-and-drag, dropdown-customizable visualizations. It seems nice!



