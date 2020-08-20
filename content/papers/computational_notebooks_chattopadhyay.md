+++
title = "[Paper] What's Wrong with Computational Notebooks? Pain Points, Needs, and Design Opportunities"
date = 2020-05-09
draft = false
categories = ["papers"]
tags = ["chi2020"]
authors = ["Souti Chattopadhyay", "Ishita Prasad", "Austin Z. Henley", "Anita Sarma", "Titus Barik"]
+++

Computational notebooks are one of the most common tools in the data science world, but they are not without their limitations. This paper studies pain points and design opportunities for notebooks as used by professional data scientists.


<!--more-->

**Authors**: Souti Chattopadhyay, Ishita Prasad, Austin Z. Henley, Anita Sarma, Titus Barik

**Link**: [ACM Digital Library](https://dl.acm.org/doi/abs/10.1145/3313831.3376729)


## Background
Computational notebooks---Jupyter, Databricks, Colab, nteract, etc. ... but mainly Jupyter---are extremely popular in data science. They have flaws: that out-of-order execution is weird and unintuitive, that they don't easily facilitate normal software engineering best practices like version control and dependency management, and more. But the "literate programming" model of having code, text, and visualizations all in the same place is nonetheless powerful. 

This work investigates the pain points and needs of data scientists who work within notebooks; its central contribution is "a taxonomy of validated pain points across data scientists' notebook activities." From the abstract:

> Our findings suggest that data scientists face numerous pain points throughout the entire workflow—from setting up notebooks to deploying to production—across many notebook environments. Our data scientists report essential notebook requirements, such as supporting data exploration and visualization. The results of our study inform and inspire the design of computational notebooks.


## Summary of pain points
The authors observed 5 data scientists at Microsoft and watched them do normal work, and they interviewed 15 others. The survey was sent to 156 data scientists across different companies. The table of pain points is reproduced below:

Pain Point | Description | Example
-----------|-------------|---------
Setup | Loading and cleaning data from multiple sources and platforms is a tortuous, multi-step, manual process. | “If you do a lot of data loading and pre-processing always re-loading the data is time consuming” (IP2).
Explore and Analyze | An unending cycle of copy-paste and tweaking bits of code made worse by feedback latency and kernel crashes. | “I need immediate feedback, like when I am testing slight changes in the model. I don't want to execute everything again” (IP1).
Manage Code | Managing code without software engineering support results in “dependency hell” with ad hoc workarounds that only go so far. | “Debugging is a horrible experience, copying the code over to do the debugging outside [in the IDE], and copying it back” (IP8).
Reliability | Scaling to large datasets is unsupported, causing kernel crashes and inconsistent data. | “Disconnects between browser-server or server-kernel introduce all sorts of lack-of-reliability problems” (IP6).
Archival | Preserving the history of changes and states within and between notebooks is unsupported, leading to unnecessary rework. | “The thing is using any kind of versioning mechanism for notebooks is just a complete and utter failure” (IP2).
Security | Maintaining data confidentiality and access control is an ad hoc, manual process where errors can leak private client data. | “We are missing a more private way of handling credentials. I don't want client credentials be visible to others” (IP13).
Share and Collaborate | Sharing data or parts of the notebook interactively and at different levels—demo/reports, review/comment, collaborative editing—is generally unsupported. | “There are cases where somebody is asking you to review/comment, while other times to go collaborate” (IP6).
Reproduce and Reuse | Replicating results or reusing parts of code is infeasible because of high levels of customization and environment dependencies. | “The fact that somebody could run a notebook on organization A's service but not on organization B's is a serious problem” (IP6).
Notebooks as Products | Deploying to production requires significant cleanup and packaging of libraries—DevOps skills that are outside the core skill set of data scientists. | “Once the code gets a certain level of maturity, it's very difficult to transition that to production code. Everything has to translate to functions and classes” (IP15).


## Highlights
The full paper is worth reading, but the majority of it is essentially a laundry list of already-summarized difficulties, so I'll just pick out a few here.

One interview paricipant mentionded that writing code in notebooks was challenging, since the notebook offered almost no assistance that traditional IDEs do (autocomplete, documentation, etc.). There's likewise no *standard* way to test code in notebooks, so this leads to difficulties and inconsistencies.

Debugging experiences were mixed---on one hand, the shared global state can make debugging easier, since you can throw the contents of a broken function into the top-level global scope and use interactivity to figure out what went wrong. On the other hand, a shared global scope is super dangerous, and `pdb` inside Jupyter is miserable (e.g., not being able to use the up arrow to get the last command!). 

Creating reproducible results is additionally difficult. The idea of notebooks being self-contained clashes with the need for requirements files, neatly factored code, and other pieces of normal software engineering. Mozilla's [Iodide](https://hacks.mozilla.org/2019/03/iodide-an-experimental-tool-for-scientific-communicatiodide-for-scientific-communication-exploration-on-the-web/) takes this idea and attempts to package all the tools in the browser, but it's a very early alpha tool. Databricks helps to solve this problem by creating shared clusters that everyone can work on in the same environment, but that's an enterprise-level solution, not an individual-level one.

Anecdotally, even when my manager shares code with me in a notebook, it's unlikely that it'll work. I can try running snippets of it, but top-to-bottom execution is unlikely because of inevitable differences in our environments (and understandable ones, too---we don't always work on the same stuff). There's opportunity for version control, too:

> In contrast to version control typically found in software engineering systems (git), preserving the history of artifacts is also important to data scientists. Novel innovations in the notebook space are required to support these unique requirements. For example, Head and colleagues [13] found that data scientists do not want to spend up-front effort in managing code versions or organizing their code, and that data scientists prefer automated approaches to version control management. Some notebook environments, such as Nextjournal9, attempt to address this need by automatically and periodically versioning the notebook, data, and full runtime environment.


## The cost of abstraction
I think this paper gets at a tricky balance that notebook developers and users are grappling with: to what extent should notebooks make things "easier" at the expense of them being "incorrect"? 

To use a concrete example: notebooks let you run cells out of order. This is helpful when you make a change and want to re-run previous code. This can also spiral out of control and lead to unmanageable, messy state. But the people who like notebooks probably like them precisely because they facilitate doing things that "normal" tools don't.

Another one is running one notebook inside another using the `%run% magic. This is literally *called magic*--- that might tip you off that you really shouldn't be doing this---but at the same time, it's convenient and reduces the requirement to understand how modules and packages work in Python.

Notebooks do a lot to lower the barrier to entry to programming---"here, just go to this page in Chrome!"---but they introduce a lot of faulty abstractions and incorrect models along the way. To what extent are these acceptable? Do they harm learning in the long run, or are they worth it for making programming more accessible? How much does this depend on the audience (professional data scientists, which this paper studied, vs. people trying to learn programming)?


## Design opportunities
Data scientists reported that proper coding assistance within notebooks was "almost non-existent," as discussed above. The Python for VS Code team has done a great job at [supporting Jupyter notebooks natively](https://code.visualstudio.com/docs/python/jupyter-support) within VS Code, but inconsistency between the VS Code Jupyter and Jupyter itself poses its own challenges. 

Deploying notebooks is a challenge, too; deployment is one of my personal blind spots, and heavy use of notebooks makes it harder to productionalize code. Data scientists, the authors find, generally desire "push-button approaches" for deployment. This sets off alarm bells---running real software is *hard*, and sending a notebook off into the wild seems like a terrible idea. But that's the same question about the cost of abstraction that I wrote about above.

This work focused on professional data scientists (hi!). It may not generalize to hobbyists, educators or students, or other kinds of programmers. This also focused on Jupyter notebooks, since most participants used those, and in my experience when people hear "notebooks" they think of Jupyter ... but there are other notebook ecosystems out there.


## Reflections
It's funny how a paper using interviews and surveys can be called "a systematic mixed-method study using field observations, semi-structured interviews, and a confirmation survey with data science practitioners." Academic writing.

I was pleased to see the authors address construct validity at the end of the paper. The question of "are we studying the right thing?" is a useful one to ask, and the authors are confident that they were from (1) calculating inter-rater reliability, (2) using a survey to link interviews and field results, and (3) discussing findings with a few other data scientists and notebook developers.s

From reading all these papers, I'm also starting to see a lot of common themes in how this kind of research goes: using Cohen's kappa for inter-rater agreement when coding interviews, using Likert scales for surveys, specifying recruitment for study particpiants, and more. The important consequence of this is that it makes reading the papers faster, because I don't have to spend time thinking about those parts anymore. Growth!

It's also interesting to consider how immediately applicable this work is. A lot of the papers I read are more theoretical or aspirational, trying to understand some part of the world or a piece of a complex system or why humans are the way that they are. It's obviously valuable, but the applications are not always immediately clear. Here, though, the questions is astoundingly practical: "how do data scientists' tools limit them?" and "how can we make them better?". This work can inform short-term design.

