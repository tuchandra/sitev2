+++
title = "[Paper] Computing Students' Learning Difficulties in HCI Education"
categories = ["papers"]
tags = ["chi2020"]
draft = false
date = 2020-04-30
authors = ["Alannah Oleson", "Meron Solomon", "Amy J. Ko"]
+++

Why is it so hard for students to learn about HCI? Oleson et al. try to find out in this paper, interviewing computing students about difficulties they experienced in HCI design education.

<!--more-->

**Authors**: Alannah Oleson, Meron Solomon, Amy J. Ko

**ACM DL link**: https://dl.acm.org/doi/abs/10.1145/3313831.3376149

## Why this matters
The researchers have a simple goal:

> The goal of this paper is to understand what computing students struggle with when learning to design software interfaces in order to inform HCI pedagogy

I really love the motivation for this paper:

> Unfortunately, partly because many developers lack design literacy, software still routinely fails to be usable for diverse populations (e.g. [5, 13, 28, 43, 53]). Professional software engineers still struggle with design-related tasks like requirements elicitation [2] and interface creation [56]. **Since design choices are not value-neutral, poorly designed software can unintentionally perpetuate harmful stereotypes** [10, 11, 62] or disadvantage already-marginalized populations [13].

This is a wonderful, principled motivation. Design choices have consequences, and these choices affect users differently. I'm reminded of a great quote by [Joshua Tauberer](https://medium.com/civic-tech-thoughts-from-joshdata/so-you-want-to-reform-democracy-7f3b1ef10597):

> If you’re trying to use technology to help people build power, keep in mind that **technology often excludes segments of our society with the least power and who are in need of the most help.** Technology is something only available to those who can afford it (and the time to use it). If your target audience is people like you, your idea could easily exacerbate problems for people less well off than you.

This, I think, is closely related to the idea from yesterday---that [users are designers, too]({{< ref "papers/intimate_reconfigurations_finsta_xiao.md" >}}). If I'm designing a piece of software, I have to recognize that my users will themselves be designers in the ways they use my software.

Given this, I---the designer---must make sure that the future designers---my users---are themselves empowered to redesign and reconfigure the software in their own image. Poorly designed software can perpetuate harmful stereotypes, as the authors note. It can also disempower users' own ability to themselves be designers.


## Study results
The authors surveyed HCI students at two universities to elicit their learning difficulties. They also conducted interviews with people learning design informally.

The following is a laundry list of results:

 * **WHAT**: What is design?
 * **WHY**: Why do we do this design activity in this way?
 * **HOW**: How do I perform this design method?
 * **INFO**: How/where do I find a design resource?
 * **ADAPT**: How do I adapt parts of this design into my design?
 * **SYNTH**: How do I interpret this feedback?
 * **TEAM**: How do I work with my teammates effectively?
 * **STAKE**: How do I work with clients and stakeholders effectively?
 * **LIMIT**: How do I design with limited resources?
 * **SCOPE**: How do I scope this design problem?
 * **STAGE**: When should I move to the next design stage?
 * **EVAL**: How can I choose between options?
 * **BIAS**: How can I avoid biasing my design?
 * **DIVRS**: How do I design for diversity?
 * **ID**: Am I the kind of person that can or should do design?

**Why** is interesting from a general pedagogy perspective. In my experience, helping students to understand why things are done the way that they are is one of the most important parts of teaching. Usually, this comes from trying out ideas, understanding how they fail, and helping them land at the right ones.

**Adapt** is a common software issue: "how do I make use of this thing that I've found." Whether it's a code snippet on StackOverflow or a component of a UI from somewhere, knowing how to adapt it to one's use case can be challenging.

**Scope** is so wicked, in my experience. Knowing what is in scope and what's out of scope is hard for all kinds of problems, not just design ones. It's tough to figure out what the minimum viable design is, and it's related to **stage** in knowing when your design is "good enough."


## Designing for diversity
I think **Bias** and **Divrs** (diversity) are two of the most important categories of concerns the authors documented, and for complex reasons. I know that designing for different groups of people is hard, and that you should avoid letting your own biases impact design decisions. But I don't know *how*, in practice.

> P8: I don't think I've actually ever been told how things should be or how things should look ... I just judge based on things I've seen that I like. I kind of evaluate everything as *I* look at it. But I have no idea how other people will interact with it.

This, and the questions around designing for diversity, have come up a lot. What does it mean for a web app to be accessible? How can I design my app in a way that internationalization is possible? How do different groups of people look upon usability differently?

I know that this is hard. I know that the discourse around designing for diversity and accessibility is rapidly changing. But those are two of the things I struggled with as an HCI student, and I continue to struggle with them as I work on my [current project]({{< ref "posts/password_tool_2.md" >}}).

I appreciate this paper for simply *recognizing* that these problems are hard. I believe that my HCI professors were doing the best they could, and it's not their fault that I never learned these concepts very well. But research on the problems students face can only help; it's only through this kind of work that we can improve how students learn.


## Thoughts
*Wow*, do I ever relate to this paper. HCI was one of my least favorite CS classes at Northwestern, and it has taken a lot of reflection to figure out why. I [wrote in October]({{< ref "posts/hci_directions.md" >}}) why I'm interested in HCI, and it took me overcoming a lot of the struggles that the authors described students facing.

When I took my HCI class, I got the sense that HCI was interface design, and more particularly, interface *programming*. (I also didn't have a great idea of what an interface was, and thought it was the same as a front end ... while true for that class, I know now that's not the case!) It felt like the people who "did" HCI sat around trying to get `div`s to line up or buttons to look good!

It's not even that I didn't like front-end development; I just didn't have a great conception of what that was, *either*. Changing my attitude towards front-end, JS, CSS, web programming, and more has been a long process, and the problematic attidues were rooted in the problems that the authors describe here.


## Closing thoughts
Design matters. Inferface design matters perhaps more than other design issues, like API design; a bad API might make the code difficult to work with or make maintenance challenging, but a bad interface might lock users out of an app entirely. 

What does a world with better software design look like?

> Developers will be empowered to design usable, accessible, ethical, and inclusive software interfaces, allowing more diverse populations to engage with various technologies and participate in today's computing-infused world.

As [software eats the world](https://a16z.com/2011/08/20/why-software-is-eating-the-world/), we must be mindful of what this software looks like and who it's designed for. I appreciate this paper for helping us to take steps towards more usable and more inclusive designs. 
