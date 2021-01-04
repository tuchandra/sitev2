+++
title = '"Everybody Lies", part 3'
date = 2020-04-01
categories = ["books"]
draft = false
+++

A group of data scientists in my office decided to start a (now virtual) book club; our first book is *Everybody Lies: Big Data, New Data, and What the Internet Can Tell Us about Who We Really Are* by [Seth Stephens-Davidowitz](http://sethsd.com/everybodylies). In this book, the Google data scientist turned NYT writer talks about what we can learn from "Big Data"---and why the results might be surprising.

<!--more-->

## Data can be misleading
The premise of *Everybody Lies* is that there are a number of unsuspecting data sources out there that reveal surprising truths about humans. Surveys are notoriously unreliable for certain kinds of data, and we have to turn to others out of necessity.

Take, for example, the question of how often people have sex. According to the [General Social Survey](https://gssdataexplorer.norc.org/) (and the author, who I assume isn't misrepresenting these numbers out of context), heterosexual women say that they have sex an average of 55 times a year, and use a condom 16% of the time, adding up to 1.1 billion condoms used. Among heterosexual men, that stat is 1.6 billion. Nielsen, meanwhile, says that 600 million condoms are sold annually (this is from the book; I don't have access to this data). Something's wrong!

The irony of this example is that this isn't something we can correct with big data. We can try to tease out the truth in other ways---perhaps by modeling the probability that someone will overstate or understate their sexual activity or condom use, and validating those models on other experiments with inventive question design---but the actual human behavior we're interested in is, fundamentally, hard to measure. That's fine, but I suspect it wasn't the author's point.


## The familiar parts
This book was pretty easy to read, and part of this was because I'm already largely familiar with the material. I know what big data is, and I know how companies make sense of (and make money from) it. Knowing this is part of my job. Simplified explanations of PageRank or a rehash of the Google Flu study, while useful to some, are not really interesting to me anymore.

The book is also quite repetitive: there are several chapters whose primary data source is Google Search. It's not until Chapter 6 that the authors talk about A/B testing and randomized controlled trials as a way that big data can inform decision making, and shortly thereafter they talk about why you *shouldn't* rely on big data.

That the lessons about the dangers of big data are relegated to the end of the book feels a little like a bait and switch. "Let me show you about how Google Search can uncover things that decades of social science cannot! We don't have to rely on what people tell us! Google shows the truth!" the author proclaims. (This is not a direct quote, but also not an exaggeration: see the book's [homepage](http://sethsd.com/everybodylies)) "Oh, but it's not always accurate and we still need the social scientists," reads the eighth chapter.


## The provocative parts
Two topics are rehashed multiple times throughout the book, too: sex and racism. In the introduction, the author spends several pages discussing the condom usage question from earlier. He also discusses how Google Search data might be used to uncover hidden racism (surprise, southern states search for n-word jokes and things like "obama kkk" more). Both come back in later chapters.

This feels tired. These are certainly interesting questions, but in my view they're much better studied by sociologists *collaborating* with data scientists than data scientists alone. Instead, though, it feels like we have paragraph after paragraph of the author citing a survey or statistic, asking a suggestive question about penis size or porn categories in unnecessary detail, then explaining how Google can answer it.

There is no concern for the biases inherent in Google Search, nor any desire to adopt an academic tone. There is little discussion of the nuances associated with sexuality or racism in America beyond the assumption that Google Search is an unfiltered view of what people are thinking. Bluntly, the chapter reads like a teenage boy wrote it---from unnecessarily naming porn categories and no fewer than four separate porn sites to calling out searches which add nothing to the book besides a betrayal of some people's flagrant racism.

Section after section of "the truth about XXX" makes me feel like these were written primarily as attention grabbers for [marketing material](http://sethsd.com/everybodylies)---that Big Data can suddenly answer the hardest questions society is facing. Perhaps the author used Google Search to figure out that sex sells, and decided to dedicate pages and pages of his book about it!


## An obsession with measurement
One of my favorite parts of the book, though it was painfully short, was a section titled "The Overemphasis on What Is Measurable." The central point is that the things we can measure are not always (rarely, in fact) the things that we care about: test scores are not a measure of critical thinking, as educators are quick to point out and administrators equally quick to ignore, nor is [time spent using a game a measure of engagement](https://old.reddit.com/r/TheSilphRoad/comments/f5yeg9/niantic_the_problem_with_using_time_of_use_to/).

There's not a ton of content in this section of the book, though, which disappointed me. One of my favorite quotes is [Goodhart's Law](https://en.wikipedia.org/wiki/Goodhart%27s_law): "when a measure becomes a target, it ceases to be a good measure." I see this unintentionally applied time and time again personally and professionally. Big data amplifies this phenomenon: the data, along with its structure and characteristics, defines what questions you can ask of it. It can often lead to asking the wrong questions because those are the only questions you *can* ask it.


## Closing thoughts
This was a nice, easy read that gave me a fresh perspective on the utility of large data sources. It took an evening to speedread the majority of this book while occasionally zoning out for Animal Crossing, and I don't regret the time I spent on it. I would recommend it with the caveat that you should reduce the intensity of any claims made about big data's power to "uncover the truth," as reality is far messier than the first few chapters would lead you to believe.
