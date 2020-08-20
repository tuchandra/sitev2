+++
title = "[Paper] Modeling Organizational Culture with Workplace Experiences Shared on Glassdoor"
date = 2020-05-11
draft = false
categories = ["papers"]
tags = ["chi2020"]
authors = ["Vedant Das Swain", "Koustuv Saha", "Manikanta D. Reddy", "Hemang Rajvanshy", "Gregory D. Abowd", "Munmun De Choudhury"]
+++

Glassdoor is a valuable source of data on what life is like at different companies, and in particular the *organizational culture* there. To what extent can organizational culture be modeled using word embeddings? Is it useful for predicting job performance. This paper, from the De Choudhury lab at Georgia Tech, investigates.


<!--more-->

**Authors**: Vedant Das Swain, Koustuv Saha, Manikanta D. Reddy, Hemang Rajvanshy, Gregory D. Abowd, Munmun De Choudhury

**Link**: [ACM Digital Library](https://dl.acm.org/doi/abs/10.1145/3313831.3376793)

I'm hoping to timebox this paper review to an hour, because these are fulfilling but are taking way more of my time than I'd like, so here goes. 

## Background
*Organizational culture* (and in this paper, the culture of a workplace) "encompasses the underlying beliefs, values, and practices" of an organization. Glassdoor is one source of insight into OC, and this paper makes use of Glassdoor data to operationalize and quantify OC. From the abstract:

> We use multiple job descriptors to operationalize OC as a word vector representation. We validate this construct with language used in 650k different Glassdoor reviews. Next, we propose a methodology to apply our construct on Glassdoor reviews to quantify the OC of employees by sector. We validate our measure of OC on a dataset of 341 employees by providing empirical evidence that it helps explain job performance. We discuss the implications of our work in guiding tailored interventions and designing tools for improving employee functioning.

I'm glad that the abstract mentions their validation, as that was the first question I had; it also (hopefully) means that it will play a large role in the paper.

Companies have a variety of strategies for attempting to understand their own culture---employee engagement surveys are the most common. (And I actually worked on Qualtrics' EE platform, used by many large and small organizations, in 2017!) Naturally, these aren't always accurate, as questions of confidentiality or retailiation may underlie them.

Glassdoor is another source of information on organizational culture; it can be harder to understand, and also biased (people with negative opinions may be more likely to leave a review), but certainly valuable.

> Take for instance a review that states, "*[Company] work was horrible, and upper management is poor at recognizing achievement, but the opportunity to work with my colleagues kept me coming in daily.*" The language in this shared experience reflects an organizational culture where recognition is not prioritized but concern for others and cooperation is upheld. In fact, through the affordance of descriptive text, platforms like Glassdoor provide an accessible, scalable and flexible medium to express cultural and ecological differences.

The goals of this paper are (1) to operationalize and validate OC as a multidimensional construct (word vector), and (2) to model OC of a sector and see if it can explain job performance. Super interesting!


## Operationalizing organizational culture
The authors take a three-step approach: (1) identifying the multiple dimensions of OC (2) transforming descriptions into word vectors (3) comparing the word-vector-based OC with posts qualitatively, and use this to establish validity.

**(1)**: the authors took the 189 job descriptors from Occupational Information Network (O\*Net), by the US Department of Labor. They had two raters decide which were related to organizational culture (and not to characteristics of the job itself), based on four existing OC frameworks, leaving 41 descriptors. This domain-driven approach makes sure that their idea of OC is valid from the start.

**(2)**: the 41 descriptors were transformed into a 50-dimensional word vector using pretrained GloVe embeddings. Easy enough.

Category | Organizational Culture Dimensions
---------|------------------------------------
Interests | Conventional, Enterprising, Social
Work Values | Relationships, Support, Achievement, Independence, Recognition, Working Conditions
Wk. Activities | Assisting & Caring for Others, Establishing & Maintaining Relationships, Guiding & Motivating Subordinates, Monitoring & Controlling Resources, Training & Teaching Others, Coaching & Developing Others, Developing & Building Teams, Resolving Conflicts & Negotiating
Social Skills | Instructing, Service Orientation
Struct. Job Characteristics* | Consequence of Error, Importance of Being Exact, Level of Competition, Work Schedules, Frequency of Decision Making, Freedom to Make Decisions, Structured versus Unstructured Work
Work Styles | Concern for Others, Leadership, Social Orientation, Independence, Integrity, Stress Tolerance, Self Control, Adaptability, Cooperation, Initiative, Achievement
Interpersonal Relationships* | Frequency of Conflict Situations, Face-to-Face Discussions, Responsibility for Outcomes & Results, Work w. Group or Team

*Table* (reproduced from the paper): the 41 descriptors used to model organizational culture.

**(3)**: validation! First, the authors scraped reviews of the top 100 companies of the *Fortune 500*. They created word vectors for each sentence, then computed the cosine similarity between the sentences and each of 41 OC vectors, and kept sentences that had an 0.9 similarity or higher with any dimension. This was to keep sentences relevant to OC.

> We draw upon the validity theory [87], to establish face and construct validity of contextualizing OC in Glassdoor data by qualitatively examining the importance of the keywords in the OC dimensions.

I know that this is well-studied and trust that social scientists know what they're doing, but I don't know how these methods came to be. Perhaps ([87])[https://www.microsoft.com/en-us/research/publication/social-data-biases-methodological-pitfalls-ethical-boundaries/] is future reading for me. I trust the authors writing "The evidence we have provided indicates that the OC construct built from curated O\*Net job aspect descriptors can capture the OC-related language used in Glassdoor reviews."


## Modeling OC and studying its impact on job performance
The authors obtained a ground-truth dataset of job performance from the Tesserae project. It contained individual attributes (demographics, Big Five personality indicators, executive function measures) and two job performance metrics (in-role behavior & organizational citizenship behavior). Participants were grouped into 18 sectors based on role ("business and financial operations," "computer and mathematical," generic "management," "healthcare practitioner," etc.). 

> Since culture is a collectively experienced and manifested, we consider experiences expressed by employees who share a common basis, such as a team, department or sector in an organization. Such an approach facilitates a robust and replicable mechanism to study OC both between and within organizations – as prior work investigated the phenomenon on varying levels of organizational granularity [40, 114]. **In as much, we are motivated by recent social media language analyses that use word embeddings [104, 105] to model OC.**

Using the same word embeddings, the authors take reviews from Glassdoor for each company / sector combinatino. They apply the cosine similarity to each dimension of OC, multiply the similarity by +1 or -1 depending on if the sentence was listed as a "pro" or "con" within the Glassdoor review, and construct a 41-D vector of that company & sector's culture.

**Modeling**: The authors build two models of job performance---one using just individual attributes (age, gender, tenure, executive function, personality, org. sector), and one using all those plus the 41-dimensional culture vector. They tested linear regressions (lasso, ridge, and elastic net, i.e., L1, L2, and L1 + L2), an SVM, and a random forest.

The model including culture features performs better than the model without. They test another baseline, using only the mean rating within a sector instead of OC features, and it barely outperforms the original, indicating that language (and its multidimensional representation) was indeed helpful here.


## Discussion
The most interesting implication for me is in going beyond numerical surveys. There's a lot of promise in being able to automatically use text reviews to better understand OC in the cases where the data volume is too large for manual review. The multidimensional nature of OC is important, too.

That the authors just used pretrained word vectors speaks to how much information is packed into those! I also wonder what kinds of biases are present in those embeddings. That's of course out of scope for this paper, but are there companies whose Glassdoor reviews are more aligned with other biased text sources than others? Are there ways that these reviews could hint at internal biases within companies?

The authors discuss how companies might apply this data:

> Our approach helps to quantitatively assess OC. Moreover, its multi-dimensional nature can allow a company unpack the atmosphere developing within the workplace through questions like: “Does our culture support work-life balance? Does our organization enhance employee creativity? Or is it concentrated only on productivity? Do we celebrate, incentivize, reward, recognize individual efforts well enough? Do we have enough collaboration? Do employees enjoy doing that?” **Importantly, with an ability to quantitatively gauge OC, companies can inspect how well leadership structures model behaviors that embody the company culture,** how important events (e.g., IPOs, product releases), may impact the culture, and what steps might address issues of unhealthy culture.

**Ethical implications** (wow, I'm glad this was included!): is Glassdoor data meaningful? Probably, based on verification processes and their TOS, but it can still be a target of abuse. Dissatisfied employees might be more likely to leave a review, which is my single biggest question about the *entire* paper: to what extent is Glassdoor actually representative of an organization's culture, and not just the culture of the people who are motivated to post there?

There are also questions about how, if companies were to use methods like this, smaller companies might be the target of disgruntled employees or malicious actors intentionally tanking their culture reviews. There are other potential harms with crowdsourced data, too, like that the Glassdoor platform norms are not considered here. This type of quantitative modeling could be an attack vector.

This was a good read! I'm glad to have knocked it off my list, and I came *close* to finishing it in an hour. But these used to take me an afternoon, so we'll get there.

