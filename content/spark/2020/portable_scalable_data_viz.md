+++
title = "Portable Scalable Data Visualization Techniques for Apache Spark and Python Notebook-based Analytics"
date = 2020-06-24T13:00:00
draft = false
categories = ["spark"]
+++

This talk, by Douglas Moore at Databricks, briefly discussed strategies for data visualization using Spark and different visualization libraries.

<!--more-->

Moore started by reviewing the Python visualization landscape, using the following notorious picture by Jake VanderPlas:

<img src="https://www.anaconda.com/wp-content/uploads/2019/01/PythonVisLandscape.jpg">

(For a more nuanced take on it, check out this [Anaconda blog post](https://www.anaconda.com/blog/python-data-visualization-2018-why-so-many-libraries).)

On top of all this, portability is hard; writing portable code is hard in the first place, but portable visualizations are even harder because of how visualizations can depend on the OS or browser for rendering. 

## Strategies
One of Moore's suggestions was to output your matplotlib figures to a `BytesIO` object, rather than just displaying it; that sounds like a totally reasonable thing to do, but it wasn't clear to me what the use case was.

Another suggestion was to save your plots to a file with `fig.savefig(filename.png)`. Uh, yeah?

With Spark, Moore's strategy was to reduce your data as much as possible on the backend, using Spark, before visualizing (so that you don't overload your driver or browser). Again, that seems obvious to me, especially if we're using something like Altair, which [embeds all data within the plot](https://altair-viz.github.io/user_guide/faq.html#maxrowserror-how-can-i-plot-large-datasets.)

For Altair: Moore showed how, for headless rendering, you'll need to install a headless web browser. That makes sense, but there's something about installing Chrome from a Databricks Notebook that made me laugh. Here, the portability was rendering Altair as a PDF, which is quite cool.

## Images in a DataFrame?
In the last 5 minutes, he discussed how to store images within a Spark DataFrame, which is kind of insane. You can then save the DataFrame as a parquet and use it later, and do normal DataFrame-like things with it. Sadly, he skipped through the code about how to do this, and as a result it was hard to understand.

This was a miss, sadly; I can tell that it would be useful to some people, but I overestimated how deep or how complex it would be.

