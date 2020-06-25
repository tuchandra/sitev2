+++
title = "Geospatial Analytics At Scale: Analyzing Human Movement Patterns During A Pandemic"
date = 2020-06-25T17:30:00
draft = false
categories = ["spark"]
+++

How does Esri use Spark and GIS to analyze human movement? How do they use this insight to assess risk? This talk attempts to answer these.

<!--more-->

**Speakers**: Joel McCune (Spatial Data Scientist) and Jim Young (Business Development Lead) at ESRI

This talk focuses on spatial data science during COVID-19. **Geography matters** in a pandemic, obviously; you need person-to-person contact for the disease to spread, in most cases. Social distancing looks very different in my hometown in southern Indiana and in my apartment in Chicago. Risk, too, will differ by geography.

Esri used [Veraset](https://www.veraset.com/)'s human movement panel, which gives us a representative (is it?) sample of individual movement; it's 5.6 billion records per day. Analysis happened in Databricks and ArcGIS.

Given the raw data, they create a hexagon index (standard in spatial analytics)---in particular, they use [Uber's H3 index](https://eng.uber.com/h3/). They:
 * identify dwellings based on sleep patterns
 * bin observations into the H3 hexagons
 * identify the trip locations
 * calculate the risk index, multiplying trip count by distance (what)
 * summarize the results in a dashboard

One of the things they do is make informational PDFs about different kinds of people, like "high-rise renters," and assess risk that way. Is this useful?

That was it---that was super surface level, but it's interesting to hear how this work is done, I guess. The talk ended in 15 minutes and this summary is like 200 words.

