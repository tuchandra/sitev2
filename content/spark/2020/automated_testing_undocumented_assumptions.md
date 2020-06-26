+++
title = "Automated Testing For Protecting Data Pipelines from Undocumented Assumptions"
date = 2020-06-26T12:30:00
draft = false
categories = ["spark"]
+++

Data pipelines are fraught with undocumented assumptions: about column data types, nullability, acceptable values, and more. Automated unit testing often fails to catch violations of these assumptions. The speakers from Superconductive introduce [Great Expectations](https://github.com/great-expectations/great_expectations), a library to build these assumptions into a data pipeline.

<!--more-->

**Speakers**: Eugene Mandel & Abe Gong (Superconductive)

The assumptions in data pipelines are something that every data scientist has encountered. Automated unit testing often fails to catch violations of these assumptions, simply because the nature of data is different than the nature of code. Automated testing is important, but **code testing and data testing are not the same.** 

If code fails a test, it's wrong; simple (assuming your tests are good). If data fails a test, well, ... what does a test even look like? Data can sometimes be human generated, and weird stuff *does* happen. Other times, yeah, the data is bad and something went wrong upstream. What do you do?


## Great Expectations
[**Great Expectations**](https://github.com/great-expectations/great_expectations) is their library for "knowing what to expect from your data." An *expectation* is a declarative statement that describes a property of the dataset: "values in this column should be between 55 and 90, at least 95% of the time." 

You express the expectation as structured JSON (ugh). Example expectations might be `expect_column_to_exist`, `expect_column_to_not_be_null`, etc.; literally just things you expect of your data. Based on the expectation, the library creates a class `PandasDataset`, `SparkDataset`, etc., which represents the constraints on the class. 

This matters because **your tests are your docs and your docs are your tests.** Your data expectations can be used to autogenerate schema documentation in HTML. Your documentation will always stay in sync with your tests. Love it!

This can solve several classes of data issues:
 * **drift**: values that change slowly over time. It might take a while to catch it, but this will catch it with expectations on accepable values.
 * **outages**: a spike in some data values will immediately be noticed.
 * **garbage bad values**: yeah.

Love it---great talk!
