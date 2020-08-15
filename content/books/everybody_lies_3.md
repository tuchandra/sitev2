+++
title = "My review of 'Weapons of Math Destruction'"
date = 2020-08-16
categories = ["books"]
draft = false
+++

This is my review of *Weapons of Math Destruction* by Dr. Cathy O'Neil. I found it to be a clearly written book, explaining many of the problems with "big data" systems: lack of access to proper data, problems that come from the scale of these systems, and vicious feedback loops.

<!--more-->

## My recommendation: yes, you should probably read this
O'Neil does an exceptional job of explaining complicated technical systems in simple terms. The examples are strongly motivated, and O'Neil explains all of her points clearly. 

Some of these include:
 * that machine learning is really only possible with tons of data (which we now have).
 * but, with rare exceptions, that data is really just a proxy for what we're actually interested in
 * that some algorithms (how she chooses what to make for dinner) are harmless, and it's usually scale that makes them problematic (imagine if her kids were lactose intolerant, so she never bought milk, and suddenly that was applied to all schoolchildren!)
 * that the for-profit college industry, while it's always existed, was able to grow because it preys on the vulnerable
 * and the vulnerable are easily identifiable through digital advertising and segmentation models.

These *weapons of math destruction* are everywhere, she writes, and they're only becoming more prevalent. What, though, are they?


## Breaking down WMDs
O'Neil defines WMDs early on, then spends the book explaining how they are already pervasive in our society. Here, I'll go over some of their characteristics.

**Feedback loops**: One of the characteristics of a WMD is its resistance to feedback. "They define their own reality and use it to justify their results," O'Neil writes. A model to evaluate teachers, like many school districts use, define its own criteria for what constitutes a "good" teacher. The district applies the model to its teachers, fires the low performers, and watches scores go up. Of course they do! These models are "self-perpetuating, highly destructive---and very common."

Meanwhile, "if Amazon.com ... started recommending lawn care books to teenage girls, the clicks would plummet, and the algorithm would be tweaked until it got it right." Those kinds of systems are *better*, though still potentially harmful. (The product in the top recommendation slot will probably sell more, no matter its quality, by virtue of Amazon's scale.)

**Opacity**: WMDs are also notoriously difficult to introspect. In the case of the teacher evaluations, one teacher asked "How do you justify people by a measure for which you are unable to provide explanation?" This, though, is exactly the point. The promises of big data and machine learning too often leave behind interpretability and fairness, as we see in this book.

> You cannot appeal to a WMD. That's part of their fearsome power. They do not listen. Nor do they bend. They're deaf not only to charm, threats, and cajoling but also to logic---even when there is good reason to question the data that feeds their conclusions. ... For the most part, the programs deliver unflinching verdicts, and the human beings employing them can only shrug, as if to say, "Hey, what can you do?"

An algorithm *suggests* that someone might be a bad teacher, a risky borrower, or a lousy employee. That suggestion can turn someone's life upside down. And yet, in order to fight back, you need an ironclad case. This power shift is a key feature of WMDs.

**Runaway scale**: when models scale, they amplify any inherent biases and blind spots to larger populations:

> To create a model, then, we make choices about what's important enough to include, simplifying the world into a toy version that can be easily understood and from which we can infer important facts and actions. We expect it to handle only one job and accept that it will occasionally act like a clueless machine, one with enormous blind spots.

Those blind spots "reflect the judgments and priorities of its creators." This can be fine: the model that Google Maps uses for driving directions ignores buildings, assuming you won't be driving through them. Avionics software models the wind and plane speed, but ignores the streets hundreds of miles below.

Meanwhile, the value-added teaching model evaluates teachers based on students' test scores, ignoring things like classroom management or building relationships with students. "It's overly simple, sacrificing accuracy and insight for efficiency." But to the administrators making use of it, efficiency was precisely the point.

> Our own values and desires influence our choices, from the data we choose to collect to the questions we ask. **Models are opinions embedded in mathematics.**

That, I think, is the most powerful line of the book.


## On predictive policing
I think O'Neil is too kind to predictive policing systems. She correctly calls out several important problems with them:

 * all policing is a model: of where crime will occur, of how dangerous the crime is, of what punishment is appropriate.
 * predictive policing is a WMD because of its scale, yes, but also because of its lack of context (citing an example of how one PD was asked to just _uphold_ a neighborhoods standard of order, rather than impose their own) 
 * that this is an example of the "more data = better" fallacy, where model builders think that including nuisance crimes will make the algorithms better 

These are all correct, but there's only a single paragraph where she writes "geography is a proxy for race," focusing primarily on how it's a proxy for income (and how neither race nor income should be a reason for policing). "We criminalize poverty," she writes, but we also double down on racism, and this important point is confusingly absent.

This is such a small criticism, because it's not like she was wrong; it's just that she felt like she was going too easy on them. Predictive policing has no value.


## Closing thoughts
I don't quite think that I was the intended audience for this book, because I already had been reading about many of the problems discussed herein. But that's not a fault of the book, and I enjoyed reading it nonetheless. I only wish I read it when I was in college!

This book is a must-read for anyone in data science, anyone who has uneasy about the growing role of algorithmic systems in our lives, or anyone who is just starting to think about them. 
