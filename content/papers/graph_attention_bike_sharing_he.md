+++
title = "[Paper] Towards Fine-grained Flow Forecasting: a Graph Attention Approach for Bike Sharing Systems"
date = 2020-09-16
draft = false
categories = ["papers"]
tags = ["reading club", "www"]
authors = ["Suining He", "Kang G. Shin"]
+++

In bike sharing systems, forecasting the demand for pick-ups and drop-offs at each station is essential. This paper presents a novel methodology for doing this, which uses graph neural networks and a spatiotemporal design for station-by-station flow forecasting.

<!--more-->

**Authors**: Suining He, Kang G. Shin

**Links**: [PDF](https://rtcl.eecs.umich.edu/rtclweb/assets/publications/2020/he-www-2020-gbikes.pdf), published in WWW 2020.



## Background
Bike sharing is becoming more popular over time, particularly for "first-mile" or "last-mile" transit (i.e., taking a train most of the way to work, then a bike for the last bit, or the reverse).
An important part of running a bike sharing system is predicting the number of pick-ups and drop-offs at each station. 

This is a challenging problem. If you underpredict the number of pick-ups, there won't be any bikes available. If you overpredict, there'll be too many bikes at that station. And that's even worse than you'd imagine, because too many bikes *also* means that riders can't drop off bikes at that station.


## The approach
The authors propose a *spatiotemporal graph attention convolutional neural network.* Oh man! Let's break this down:

 * *spatiotemporal* just means that the problem has both *spatial* (physical space) and *temporal* (time) components. Here, that means that bike trips happen from one station to another at a certain time, and models need to account for both components.
 * *graph* means that the problem is modeled as a graph, where nodes are stations and edges are trips between them.
 * *convolutional* here refers to the *graph convolution*, whose details frankly confuse me, but which at a high level tries to model the idea of "neighbors" here 
 * *attention* refers to *graph attention*, which are used to model inter-station flows 
 * *neural network*, well, yeah.

Why do we care about modeling neighbors? Because the flow to/from one station is related to the flow to/from stations around it. If they're within, say, a block of each other, then pick-ups at one station will likely reduce demand for another station. If they're far apart, but both are near major workplaces, then pick-ups at one station will likely be correlated with pick-ups at the others.


## Problem specification
The main dataset is a set of *stations* and *trips*. Trips go from one station to another at some point in time. In this dataset, time is discretized by binning into (I believe) 15 minute increments.

Given the trips dataset, one constructs *aggregated flows* in and out of a station. The aggregated flow into station *i* is the number of trips that end at that station (either overall, or at some point in time), and likewise for the flow out.

At one point in time, then, you can construct a (number-of-stations x 2)-dimensional matrix of each station's inflows and outflows. At *all* points in time, this is a (number-of-time-bins x number-of-stations x 2)-dimensional matrix.

The problem is then specified as:
 * predicting the inflow and outflow at every station at the next time interval
 * given all the historical flows that came before,
 * given station-to-station correlations,
 * and given external factors like weather and other points-of-interest near each station,


### External factors
We'll come back to the station-to-station correlations. What are the external factors?

Weather, for one; the presence of rain will certainly affect bike sharing trips.
Simple time features, like day of week, hour of day, and if it was a holiday, were also included.

And the last, which I found interesting, was *points of interest* near each station. Based on OpenStreetMap, they counted the number of commercial, residential, recreational, cultural, and governmental POIs in the neighborhood of each station, and used these as model features.

I was surprised to see *transit hubs* not included in the external factors. It seems that the presence of a train station or bus stop near a bike station would have an impact on pick-ups and drop-offs there; after all, this problem was motivated in terms of first-/last-mile transit. 


### Station-to-station similarity
What are these station-to-station correlations? 

> In a bike station network, closer stations likely have stronger links and mutual effects than those more distant stations.

(See also: [Tobler's first law of geography](https://en.wikipedia.org/wiki/Tobler%27s_first_law_of_geography).)

The authors define two senses in which stations are "close," a spatial one and a temporal one:
 * Spatial closeness decreases given larger cityblock distance (i.e., not Euclidean) between two stations. Easy enough.
 * Temporal closeness looks at, within a certain time window, how similar the flows from one station to all others are to the flows from the other station to all others. That is,

{{< figure src="graph_attention_bike_sharing_he_img1.png" width="600px" >}}

This took me a while to wrap my head around, but it makes sense now. Stations *i* and *j* are similar if there are similar flows from station *i* to all others and from station *j* to all others (over some time interval). The *w*'s in the above definition just represent the window size. In the application, the authors find *w* values corresponding to short, medium, and long time windows.


## Neural network architecture and evaluation
This is where the paper started to get pretty hairy, and I started skimming after not understanding what the hell was happening. There are a lot of figures to help clear things up, but ... ouch. I simply do not have enough experience in this field to understand what's going on.

The evaluation compared the performance of this approach to several other models (historical averages, ARIMA, RNNs and LSTMMs, and a couple others). Unsurprisingly, since I'm reading a paper about it, their model performed the best (using RMSE as a metric).

They also included prediction results over morning and evening rush hours; the sensitivity to settings like time interval and number of attention heads; the activation of different nodes after the graph attention layer; and some case studies for different Manhattan neighborhoods.

That last bit is quite cool, actually:

{{< figure src="graph_attention_bike_sharing_he_img2.png" width="600px" >}}

This is a t-sne representation of the high-dimensional activation vectors after the first graph attention layer. The network has started discriminating stations with heavy or light bike usage (the colors), correlating the groups together. And in LA, where the bike stations are spread out nonuniformly in different parts of the city, there are more distinct clusters in the low-dimensional representation.


## Discussion
This paper was pretty far off from the kind of work that I usually read. Branching out isn't a bad thing, though my utter disinterest in working out the mechanics of graph convolution shows that this field probably isn't for me.

This is a really interesting problem. I think this is a great example of a problem where the only reasonable way forward is with machine learning. There's just so much data, and there are deeply nonlinear (in both time and space!) relationships between your data entities. The results are seriously impressive. 

But ... as with most methods-heavy papers I read, I was disappointed to see little to no discussion of the implications here. So the authors can predict inflows and outflows well; great. That's not by itself useful.

What does this work suggest for Citi Bike, Divvy, and Metro Bike? How can those agencies use these results (especially given that this is not open source)? How can this improve mobility for communities that are underserved by transit? (This is a [problem](https://blockclubchicago.org/2020/07/16/divvy-expands-to-far-south-side-with-16-5-miles-of-bike-lanes-coming/) on the far south side of Chicago.)

I get that answering this question was mostly out of scope for the paper. But at least discussing it would have made the paper feel more complete, I think. After all, forecasting is just a tool; it's what you do with your forecasts that has the potential to actually impact people's lives.
