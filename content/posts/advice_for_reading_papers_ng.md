+++
title = "Andrew Ng's advice for reading research papers"
date = 2020-02-15
draft = false
categories = ["general"]
+++

I spent half an hour watching one of Andrew Ng's [deep learning lectures](https://www.youtube.com/watch?v=733m6qBH-jI), this one focusing on reading research papers and career advice. This post is a summary of what I learned. <!--more-->

## On bouncing around papers
Keep a list of different papers that you're thinking about reading ([mission accomplished!]({{< ref "/reading_list.md" >}})). Skip around this list, and read enough to understand ~10% of each paper. While doing so, you might think that paper #3 is the one to read in depth, and while doing that you see new papers from the citations that you also want to read, and for those you do the same thing.

He continues about volume: "If you read 15 - 20 papers, I think you have a basic understanding of an area" followed by "if you read 50 - 100 papers to an area ... that's probably enough to give you a very good understanding of the area," being careful not to call anyone an "expert" or say that they've mastered an area.


## On reading one paper
Ng states confidently: "The bad way to read a paper is to go from the first word to the last word." Rather, he suggests taking multiple passes:

 1. read the title, the abstract, and the figures (especially in deep learning--sometimes, the entire paper will be summarized in a couple of figures, like the architecture and results).
 1. read the intro, conclusions, spend more time on the figures, and skim the rest, skip related work.
 1. read the whole thing, but skip / skim the math.
 1. read the whole thing, but skip the parts that don't make sense.

Ng notes that the abstract, intro, and conclusion are where the authors write very carefully to make a case for why their paper should be accepted for publication. Reading those sections can give you a good idea of what the paper is about.

The **related work** section is only sometimes worth reading. It can be useful if you're already familiar with the literature, or if you do really want to get a sense for what other work exists. But other times, it's when authors try to cite everyone who could possibly be relevant. And it's almost entirely useless if you don't know much about the field.

He finally suggests asking the following questions when you read a paper:

 * What are the authors trying to accomplish?
 * What were the key elements?
 * What can you use yourself?
 * What other references do you want to follow?


## On understanding a paper deeply
For understanding **math** (e.g., for batch norm, backpropogation, etc.): read through the paper, take detailed notes, and see if you can rederive it from scratch. If you can do so, then it's a great sign you deeply understand the paper. Your ability to rederive this type of math, Ng argues, helps give you the ability to generalize the ideas to create novel ones yourself.

For understanding **code**: the simple way is to download and run any open-source code, if available. The deeper way is to reimplement it from scratch.


## Summarized advice
Ng primarily provided strategies for reading papers *efficiently*, which is a large part of being a researcher. I summarize it as a quick reference here:

 * Keep a list of papers you're hoping to read
 * Don't commit to one paper at once; look through a few and bounce around them
 * Read papers in multiple passes, instead of start to finish
 * Ask certain questions to help guide your understanding
 * For understanding math & code, reimplement it yourself


## Reflections
At one point, Ng opened his manila folder of unread papers that he keeps in his backpack all the time. I've kept such a folder for a couple of months now, and it's validating to see that I had the right idea this whole time. More broadly, I'm now more confident in my goal [of consistently reading and summarizing papers]({{< ref "why_papers.md" >}}), which is the main reason I have this blog.

Ng also mentioned how reading 2 or 3 papers a week for a year is a lot better than trying to cram lots of them at once. In education, spaced repetition works far better than cramming, and the same applies here. There's no way to get around sustained effort in research, which rewards persistence.

One of the classes I took for my master's degree at Northwestern was a [research seminar on the Internet of Things](http://users.eecs.northwestern.edu/~josiah/eecs395_495/). The professor for that course linked to [this advice](https://blizzard.cs.uwaterloo.ca/keshav/home/Papers/data/07/paper-reading.pdf) for reading papers, and a lot of that rings true here. It's where I first heard of the three-pass approach, and he also suggests the "five C" questions (category, context, correctness, contributions, clarity) to guide your understanding of the paper.

I expect this advice to be quite useful as I continue reading papers in the next year and beyond. I'm excited to keep learning!
