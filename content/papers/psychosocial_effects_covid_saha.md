---
title: '[Paper] Psychosocial Effects of the COVID-19 Pandemic: Large-scale Quasi-Experimental Study on Social Media'
date: 2020-12-15
authors:
 - Koustuv Saha
 - John Torous
 - Eric D Caine
 - Munmun De Choudhury
categories:
 - papers
draft: false
---

How did the early months of the COVID-19 pandemic affect expressions of mental health on Twitter? This paper investigates. Through comparisons between 2020 and 2019, and clinically validated machine learning classifiers, the authors study changes in language on social media.

<!--more-->

**Link**: [PDF](https://koustuv.com/papers/JMIR20_COVID19.pdf), coverage from [CBC](https://www.cbc.ca/radio/spark/492-social-tech-1.5828628/high-levels-of-pandemic-induced-anxiety-depression-observed-in-social-media-posts-1.5828631) and [NYT](https://www.nytimes.com/2020/10/12/style/self-care/social-media-.html)

*This paper summary discusses mental health conditions like depression, anxiety, and suicidal ideation.*

## Background and motivation
The COVID-19 pandemic has been a worldwide disaster (and even that feels like an understatement), but one of the understudied areas is how it has affected people's mental health. The authors of this study set out to better understand this impact.

**How?** Like lots of internet research, Twitter.

> We obtained about 60 million Twitter streaming posts originating from the United States from March 24 to May 24, 2020, and compared these with about 40 million posts from a comparable period in 2019 to attribute the effect of COVID-19 on people's social media self-disclosure.

The authors studied this in terms of "symptomatic mental health concerns and expressions of support." They also used transfer learning to identify language indicating mental health conditions and support, then looked at how these changed over time.


## Methods
The authors study symptomatic mental health expressions and support expressions. They use classifiers trained on Reddit data that were repurposed for Twitter. These were validated; see the section on *clinical validity* later.

**Symptomatic mental health expressions** are expressions of symptoms of mental health conditions. An example: "I am too overwhelmed by school and having a crippling anxiety to keep up with everything online I’m seriously NOT OK! I CAN’T TAKETHIS!"

**Support expressions** include emotional support (empathy, kindness) and informational support (resources, suggestions). An example: "To our residents, the town is here for you but we need your help if we are going to keep our hospitals from being overwhelmed."

The authors compare the data from 2020, which has a pandemic, to 2019, which did not (that's the "quasi-experimental" in the title). They looked at: 
 - day-to-day variation in the two kinds of expressions, relative to a baseline from September 2018 to August 2019 (why is it allowed for the baseline to include the control period?)
 - SAGE ("Sparse Additive Generative Model"), which identifies salient keywords in two datasets relative to each other


## Results
This is one of those papers where a single figure gives away the results (honestly a sign of a well-designed figure, too!):

{{< figure src="psychosocial effects saha - img.png" >}}

Relative to the baseline, 2020 featured far more symptomatic mental health expressions on social media. The steepness of the decline is remarkable; I wonder what happened beyond the study period. 

The second figure on support expressions, which I didn't include here, shows a similar trend, but with a notable spike in emotional support on April 28, 2019 that the authors attribute to a [shooting at a San Diego synagogue](https://en.wikipedia.org/wiki/Poway_synagogue_shooting).

Linguistically, the keyword comparisons are interesting too. These are examples cherrypicked from Table 2 in the paper, not in order of saliency:

| Salient in 2020   | Salient in 2019 |
|-------------------|-----------------|
| covid19           | traffic         |
| social distancing | marvel          |
| quarantinelife    | auburn          |
| essential workers | tournament      |
| dr fauci          | playoffs        |
| flattenthecurve   | crimes          |

*Table: salient n-grams for symptomatic mental health expressions in 2020 and 2019*

There were others, too, like "garlic" and "hydroxychloroquine" in 2020, that set off warning bells. Our information ecosystem is deeply flawed---but that's a subject for another paper!

A similar pattern emerges for support expressions: in 2020, "lord", "fauci", "ventilators", "quarantine", "hope staying safe", "wearing masks", and "uncertain times" were salient. In 2019, "hospitality", "duke", "shift supervisor", "tampa", "customer service", "manager retail", and "traffic" (?) were salient.


## Clinical validity and limitations
I've read enough papers by Dr. Munmun De Choudhury that I know to look for construct or clinical validity every time I see something about inferring mental health from social media. One of the great papers by both her and Dr. Stevie Chancellor is [Methods in predictive techniques for mental health status on social media: a critical review]({{< ref "papers/review_methods_predicting_mental_health_status_chancellor.md" >}}).

Broadly, clinical validity refers to whether the thing we're studying (language used on Twitter) actually corresponds to clinical concepts of interest (symptoms of e.g., depression, or expressions of emotional support). It's easy to overlook this---one could naively ask the Twitter API for words like "sad" or "depressed" without checking to see if they were actually associated with symptoms of depression. 

This paper establishes clinical validity early on. The classifiers used for mental health symptomatic expressions have an "87% agreement between machine-predicted labels and expert appraisal." The classifiers for support expressions have agreements of 88% and 93%.

Finally, while not strictly related to clinical validity, the authors also discuss limitations of the Twitter Streaming API (it's not transparent, they used only English-language posts, it's not demographically representative, and it provides unique affordances that other social media platforms do not). Also, this is an observational study, not a true experiment, but the comparison against a similar time window means it's stronger than a typical correlational study.


## Discussion
What does this all mean? From the discussion:

> Our study suggests that social media posts during the COVID-19 pandemic contain a significantly higher frequency of symptomatic mental health and support expressions than a comparable data set from the same period in the previous year.

It appears that COVID has amplified mental health risks and concerns. It also appears that it has increased expressions of support, possibly bringing people together and creating a sense of solidarity.

> Suicide is multifaceted, and although economic loss is a risk factor, so are depression, isolation, and fear of the future. At the same time, the crisis is possibly creating a sense of belonging for individuals at risk for suicide, as stress and anxiety are normalized, and people come together to better support one another during a crisis.

I'm curious about these findings have changed throughout the year, and look forward to seeing more research emerge. Both the expressions of mental health status and of support decreased in volume over the study period, and I wonder if this trend continued.

Personally, while I experienced anxiety as the dominant emotion in the first half of the year, it's being slowly replaced by feelings of isolation and depression. While this is all anecdotal, I don't think it's uncommon.

I quite enjoyed this paper. It was easy to follow and immediately relevant to what we're currently experiencing. The figures and tables were high-quality. I appreciate the thoughtful approach taken to using social media data, understanding its limitations while also using its unique capabilities to study a large-scale shared experience.

