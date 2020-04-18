+++
title = "A variety of talks from ACM FAT* 2020"
categories = ["papers"]
draft = false
date = 2020-04-19
+++

I sat down to watch a handful of talks from ACM FAT* 2020, picked from a survey of the [Accepted Papers](https://facctconference.org/2020/acceptedpapers.html#sess1) list. I found this to be a good way to consume a variety of papers that I probably wouldn't have ordinarily read.

<!--more-->

## The Case for Voter-Centered Audits of Search Engines during Political Elections
**Authors**: Eni Mustafaraj, Emma Lurie, Claire Devine

**Links**: [YouTube](https://www.youtube.com/watch?v=qS_huJIKYBo), [ACM digital library](https://dl.acm.org/doi/abs/10.1145/3351095.3372835)

Typically, when auditors audit search engines in regards to political elections, they center their analysis on the *politicians* who are the subject of results, rather than the *voters* doing the searching. The authors make the case that auditors should consider adopting a voter-centric perspective, focusing on the question of how potential voters use search engines and what information they're looking for.

In a voter-centric perspective, it's easier to identify semantically biased searches ("<female politician> husband" or "<democratic senator> lies"). Meanwhlie, other queries might be "pragmatically biased" and lead to data voids, where search engines can only surface low-quality results. Voters are also increasingly interested in information cues, like stances on certain issues. Audits need to take these into account to be effective in understanding the role that search engines have.

This is a really interesting reframing! I'm always interested in reading human-centered perspectives on algorithmic issues, and this is one that I'd never heard of before. Centering search engine audits from the perspective of the voters conducting searches seems like an important part of understanding their impact.


## Whose tweets are surveilled for the police: an audit of a social-media monitoring tool via log files
**Authors**: Glencora Borradaile, Brett Burkhardt, Alexandria LeClerc

**Links**: [YouTube](https://www.youtube.com/watch?v=cVJNDRbpAf4), [ACM DL](https://dl.acm.org/doi/abs/10.1145/3351095.3372841)

There is increasing use of social media monitoring software by law enforcement, and this work audited the tool's use via log files. The researchers were provided log files of tweets collected by their local (in Corvallis, OR) police department. They did not find statistically significant differences in the racial makeup of users surveilled compared to the general population.

One of the more interesting findings was on the low quality of software use. There were attempts to filter the results by county ("Benton", which is the county where Oregon State is located, but the results instead were for anywhere named Benton); predefined keywords for marijuana-related terms, when it had been legal for recreational use for the entire time the tool was used; and the report results were not continuous and sometimes stopped after 100 results.

This raises interesting questions on data use. Do users understand the reach of their (public!) tweets? Is this tool even useful, given that a lot of the tweets are completely innocuous and also protected by free speech? The police department in question made an arrest in response to a threatening tweet, but the tweet wasn't even picked up by this software. What, then, is the purpose of social media monitoring?


## Explaining Machine Learning Classifiers through Diverse Counterfactual Explanations
**Authors**: Ramaravind Kommiya Mothilal, Amit Sharma, Chenhao Tan

**Links**: [YouTube](https://www.youtube.com/watch?v=zj2NliGD0Lg), [ACM DL](https://dl.acm.org/doi/abs/10.1145/3351095.3372850)

There are many techniques to explain ML predictions, most of which are feature-importance based methods. These do not, however, tell a "decision subject" what they *should* do to reach a desired outcome. These are "what-if" explanations that simulate different scenarios to understand how an outcome could change.

The authors posit requirements for counterfactuals: they must be actionable for users, so that they can make decisions based on the explanations. This requires feasibility (respecting causal constraints, being actually attainable, etc.) and also *diversity*, that users should be provided with a diverse set of options for what to do. They propose an optimization framework to generate actionable, diverse counterfactuals, and implement it in a library called [DICE](http://github.com/microsoft/dice).

I was confused by this paper at first---haven't counterfactual explanations been around for a long time? I think the novelty comes from the "diversity" constraint and the implementation in the library. I also wish that the researchers had studied the impact on a real dataset, instead of just the toy adult income one.


## Recommendations and user agency: the reachability of collaboratively-filtered information
**Authors**: Sarah Dean, Sarah Rich, Benjamin Recht

**Links**: [YouTube](https://www.youtube.com/watch?v=B93qUouaZnw), [ACM DL](https://dl.acm.org/doi/abs/10.1145/3351095.3372866)

This work is a study of digital recommender systems; the author motivates the question of what *can* happen in a recommendation system if you change "inputs" to the system (user actions, ratings, etc.), and they study this through the lens of "reachability." Defined for every user and item in a system, the *reachability problem* is whether or not you can find some set of actions to take such that a particular item will be reachable to that user.

Taken at face value, anyone can find any given item by searching for it. But the "amount of recourse" is the percentage of reachable items given some actions, and that's where the interesting questions lie. The authors propose a computationally efficient way to audit linear recommender models by computing recourse, and demo it on the MovieLens dataset. One of the key findings is that SOTA preference models can inadvertently obscure a large proportion of the content to many users.

I like this perspective on algorithmic auditing. Taking a dataset with lots of known models, and then changing the commonly used inputs and see what happens. There are interesting sociotechnical questions in the space of "interactive and dynamic properties of algorithmic systems" that this work raises!


## Bias in word embeddings
**Authors**: Orestis Papakyriakopoulos, Simon Hegelich, Juan Carlos Medina Serrano, Fabienne Marco

**Links**: [YouTube](https://www.youtube.com/watch?v=K4_Vrq0n6HU), [ACM DL](https://dl.acm.org/doi/abs/10.1145/3351095.3372843)

Word embeddings are a widely used technique for mapping words to a vector of real numbers, and they encode the biases of the corpus on which they are trained. The authors trained word embeddings on biased datasets and demonstrated "bias diffusion," in which existing biases are transferred to models that use these embeddings. They then demonstrate that existing "bias mitigation" efforts are insufficient; instead, they distort the geometry of the biased vectors, rather than removing it.

This work, like many others, treats gender and sexuality as binaries (men/women, homosexual/heterosexual). Noting that they are multidimensional spectra, I think there's a huge gap in the machine learning literature about how handling gender & sexuality features differently would affect downstream models.

Another interesting question would be how different sets of word vectors affect model predictions; take different pretrained embeddings, from biased datasets and from datasets where there has been an effort to debias them (noting that no dataset is unbiased), train different models making use of these embeddings, and see how the models perform differently. The authors showed an interesting (and kind of funny) result that the use of gender-biased word embeddings was better at predicting sexism (in some canned dataset) than other embeddings.

