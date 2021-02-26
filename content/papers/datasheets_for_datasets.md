+++
title = "[Paper] Datasheets for Datasets"
date = 2021-02-25
draft = false
categories = ["papers"]
authors = ["Timnit Gebru", "Jamie Morgenstern", "Briana Vecchione", "Jennifer Wortman Vaughan", "Hanna Wallach", "Hal Daumé III", "Kate Crawford"]
tags = ["reading club"]
+++

Datasets, which are a central part of all machine learning, are often alarmingly undocumented. How can we do this better, prioritizing transparency and accountability? The authors propose datasheets that describe the characteristics, collection practices, and recommended uses of datasets.

<!--more-->

**Authors**: Timnit Gebru, Jamie Morgenstern, Briana Vecchione, Jennifer Wortman Vaughan, Hanna Wallach, Hal Daumé III, Kate Crawford

**Link**: [arXiv](https://arxiv.org/abs/1803.09010)

This is a paper that I've heard lots about, and that I *feel* like I've read, but haven't. It's in the same spirit as [Model Cards for Model Reporting]({{< ref "/papers/model_cards_mitchell" >}}), which proposes a framework for reporting on the performance, limitations, and expected usage of machine learning models.

## Motivation
The idea for this paper draws upon a regulation from the electronics industry:

> In the electronics industry, every component, no matter how simple or complex, is accompanied with a datasheet that describes its operating characteristics, test results, recommended uses, and other information. By analogy, we propose that every dataset be accompanied with a datasheet that documents its motivation, composition, collection process, recommended uses, and so on.

The goal is to address the needs of both dataset consumers and dataset creators. The benefit for consumers is obvious to me, as someone in industry who deals with undocumented datasets daily. The benefit to creators, meanwhile, is that this process can encourage reflection on the process of creating and distributing the dataset.

To create the list of questions that a datasheet should answer, the authors produced an initial set of questions, tested them out on real datasets, and consulted researchers, practitioners, and laywers. They iterated on the set of questions and landed at the ones listed in the paper, noting that datasheets might differ by domain.


## Questions on a datasheet
What do datasheets actually contain? Answers to questions, mostly:

> The questions are grouped into sections that roughly match the key stages of the dataset lifecycle: motivation, composition, collection process, preprocessing / cleaning / labeling, uses, distribution, and maintenance.

The questions I write below are paraphrased; the full paper includes more questions with further context and details.

**Motivation** asks why a dataset was created. Who made it? Who funded it? Why was it made?

**Composition** helps to describe what's in a dataset. What do the instances within a dataset represent (documents, photos, people, countries)? Is it a sample, and if so how? Is information missing or incorrect? Does it contain confidential or non-public data? Might content within the dataset be considered offensive or threatening?

**Collection** is similar, but focuses more specifically on how the data was collected. How was it acquired (from an API, somehow inferred, from human coders, observed, etc.)? Who was involved in this process? Is the data related to people, and if so how did they contribute to the process?

**Preprocessing / cleaning / labeling** asks if this was done, and if so how. Was the raw data provided? Is the software to do this available?

**Uses** encourages dataset creators to reflect on how the dataset should and should not be used. Has it been used already (where?)? Are there tasks for which it shouldn't be used? Is there anything about the composition, collection, or preprocessing that might impact future use?

**Distribution** considers how the dataset will be shared, internally within an organization or to the public. How and when will it be distributed? Is there a license, copyright, or other regulatory restriction?

**Maintenance**, finally, encourages dataset creators to plan for maintenance. Who supports, hosts, or maintains the dataset, and how can they be contacted? Will it be updated? Are there retention limits in place?


## Practical considerations
What I appreciate most about this paper is how practical it is. I (and the authors) recognize that this creates a lot of extra work for dataset creators, but I still think that this provides a useful framework for how to approach documenting real-world datasets. There are several situations in which I could see myself using this at work.

A benefit of this process is that it forces you to question your blind spots. The *distribution* section includes questions about copyright and licenses that may be an afterthought. Likewise, asking if there are mechanisms for people to revoke consent or if the data was public force creators to grapple with them head-on.

---

This work reminds me of a recent conversation I had with someone who works on machine learning models in healthcare. They told me that when you're accounting for patient privacy or FDA compliance, you learn to treat these regulations as a constraint in the design process. They're not "something extra"—they're just another product requirement, like 10ms latency or 99.9% uptime. 

And in electronics, the authors point out, you're expected to do this as part of creating a new component. MSDS requirements for hazardous chemicals are similar. These requirements are often strict, and certainly time-consuming, but compliance is part of the process.

Maybe we should start treating datasets the same way. 





