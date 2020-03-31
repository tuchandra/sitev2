+++
title = "What is data science? (Everybody Lies, part 2)"
date = 2020-03-31
categories = ["books"]
draft = false
+++

I had some more abstract thoughts about what "data science" really means while reading *Everybody Lies*. In this post, I talk about data science as *discovery* and about what it means to "do" data science.

<!--more-->

## Data science as discovery
One of my favorite descriptions of data science comes from this book:

> You are a data scientist, too. When you were a kid, you noticed that when you cried, your mom gave you attention. That is data science. When you reached adulthood, you noticed that if you complain too much, people want to hang out with you less. That is data science, too. When people hang out with you less, you noticed, you are less happy. When you are less happy, you are less friendly. When you are less friendly, people want to hang out with you even less. Data science. Data science. Data science.

I quite like this perspective; data science isn't about statistics, or Python, or machine learning, at least in this abstract and idealized sense. Data science is instead about how we ask questions of and learn about the world, and use data to update our beliefs. Data science is about knowing what questions to ask, and knowing what information the answers give you.


## A case study: predicting pancreatic cancer
The authors cite a compelling example of Columbia & Microsoft researchers who wanted to find out what symptoms predict pancreatic cancer. When people searched "diagnosed with pancreatic cancer" or something similar, their searches from up to a few months prior were often about things like back pain or changes in skin color.

It turns out that these searches were able to predict 10ish percent of cases with no false positives. A modest result, perhaps, but beating cancer is a race against the clock where every bit of time helps. (Here's an [interview with the author](https://www.cs.columbia.edu/2016/web-searches-as-an-early-warning-system-for-pancreatic-cancer/), an [NYT article](https://www.nytimes.com/2016/06/08/technology/online-searches-can-identify-cancer-victims-study-finds.html), and the [original paper](http://erichorvitz.com/JOP_June_2016.pdf) (PDF)).

Is this data science? Undoubtedly. But I don't think it's useful to say that the authors "did" data science. Rather, though, data science provided a new way of asking questions about this problem---how can this data be useful? What signals might we find here? What do the answers to these questions tell us?


## Data, science, and data science
A lot of that is just "science," though: ask questions, run experiments, get answers (or don't!), reframe your questions, repeat. The "data" comes in when we ask falsifiable questions, get evidence from observations or experiments, and use the evidence to update our beliefs. The authors put this well:

> We are often wrong, in other words, about how the world works when we rely just on what we hear or personally experience. While the methodology of good data science is often intuitive, the results are frequently counterintuitive. Data science takes a natural and intuitive human process—spotting patterns and making sense of them—and injects it with steroids, potentially showing us that the world works in a completely different way from how we thought it did.

What a great perspective!


## Closing thoughts
Data science is not magic, and it's not just prediction, either. We're seeing an explosion of people trying to use "data science" or "AI" to forecast the spread of COVID-19, who either don't realize that doing so requires deep epidemiological expertise, or who realize it and lack the humility to let it stop them. 

I have more thoughts about COVID-19 forecasting, but I'll close with this. One can't just "do" data science---it's a different way of thinking about the world, and the wrong way of thinking can quite easily lead us astray. 
