+++
title = "[Paper] Celebrating Everyday Success: Improving Engagement and Motivation using a System for Recording Daily Highlights"
categories = ["papers"]
tags = ["chi2020"]
draft = false
date = 2020-05-02
authors = ["Daniel Avrahami", "Kristin Williams", "Matthew L. Lee", "Nami Tokunaga", "Yulius Tjahjadi", "Jennifer Marlow"]
+++

Recognizing your own successes is important for cultivating a positive outlook and sense of purpose. Modern work environments often do not offer this, with the idea of there always being more to do standing in the way of reflection that celebrates progress. *Highlight Matome* is a personal online tool for workers to quickly record short, daily highlights with the goal of improving their inner work life.


<!--more-->

**Authors**: Daniel Avrahami, Kristin Williams, Matthew L. Lee, Nami Tokunaga, Yulius Tjahjadi, Jennifer Marlow

**ACM DL link**: https://dl.acm.org/doi/abs/10.1145/3313831.3376369

## Background
From the abstract:

> The demands of daily work offer few opportunities for workers to take stock of their own progress, big or small, which can lead to lower motivation, engagement, and higher risk of burnout. We present **Highlight Matome, a personal online tool that encourages workers to quickly record and rank a single work highlight each day, helping them gain awareness of their own successes.** We describe results from a field experiment investigating our tool's effectiveness for improving workers’ engagement, perceptions, and affect. 

The paper is a story of helping workers to recognize their own successes, as doing so "is a critical ingredient for a positive outlook, motivation, engagement, and a sense of purpose." At work, though, it's easy to fixate on what's next, and not what's been done; there's always more work to do.

The authors develop a tool for "encouraging workers to consider positive progress by recording daily work highlights." The use of the tool daily for 6 weeks---with each use taking only ~30 seconds---resulted in increases in worker engagement, dedication, and positive affect.


## Design considerations
The design of *Highlight Matome* was influenced by past work that has demonstrated journaling being linked to improvements in well-being:

> A study on journaling found that participants who were instructed to write about themselves as working hard and meeting their goals reported greater positive affect than those in other conditions [38]. We draw on these theories and techniques, applying them in the context of the workplace.

The design principles were that:

 * daily interaction should be brief, and shouldn't itself feel like work
 * highlight entries will be open-ended, so the tool should allow broad definitions of what a "highlight" is
 * recording a highlight shouldn't be required, since some days legitimately have none
 * the tool should encourage contemplation
 * the entries should be private
 * the tool should provide near-term value

Another interesting feature is allowing a special weekly highlight; after Tuesday's entry, users would be asked whether Monday's or Tuesday's highlight was bigger. After Wednesday's, they'd be asked the same question about that winner and Wednesday's; likewise throughout the week. This allowed the best highlight to bubble to the top, as a way of encouraging longer-term reflection.


## Experiment and results
The tool was field tested via a 6-week study among two offices, in the US and Japan. Participants used *Highlight Matome* to report daily highlights for 6 weeks. They self-reported ratings of work engagement, self-efficacy, positive & negative affect, perceptions & appraisal of their work environments, job meaningfulness, perceptions of progress, and active reflection. The authors lay out the metrics used for each of these in the paper, and in general they used validated and well-studied scales where possible.

There were significant changes in work engagement, worker dedication, and positive & negative affect (with positive increasing, negative decreasing). This provides initial evidence that such a tool, which increases people's awareness of daily work highlights, can have a positive impact on their inner work lives.

The authors also analyzed the content of highlights (in the cases where participants chose to share them). They coded the responses Some interesting parts:

 * 69% were purely descriptive and 31% included "evaluative content" (good or bad)
 * many focused on breaks in routine: office being empty, having no meetings, etc.
 * half of all highlights mentioned a "material or social element of the work environment," e.g., by portraying coworkers as supportive or supervisors giving praise

A common highlight was relating to other people. I feel that a lot---lots of my highlights from work are social interactions, fun lunches, or other conversations I have.


## Why this matters
My first instinct when reading this was that while the empirical study is useful, it seems surprising that this kind of tool was novel. Doesn't this already exist? Don't the people who would use this kind of tool already know that journaling can be useful?

It only took a bit of reflection for me to dramatically change my view. The major contribution is in how this scientifically informs the design of future tools. It's important for these tools to be studied and validated, so that designers of other tools can learn from this one.

Moreover, I see lots of "health tech" tools that claim to be able to help you with parts of your life---tracking sleep, controlling anxiety, monitoring your mood, practicing mindfulness losing weight---and most of them *haven't* been validated or studied. In some cases, this can be dangerous.

The stakes are lower here, of course. But these experiments and field studies are useful in conjunction with the folks who just "build." Theory and practice.


## Personal connections
I chose this paper because of its apparent similarity to tools that I've found helpful for recognizing my own successes at work. I keep a daily notes document where I write about what I'm doing, what I accomplished, and ideas I have. At the end of the week, I write a "week in review" that takes a higher-level perspective on the same content.

This is helpful when writing self-evaluations and talking during daily standups. I also find that it motivates me and keeps me grounded---it enables reflection and introspection while not being overly forward-looking.

I was glad to see this work that experimentally studied a similar idea, and I will be sure to incorporate some of the learnings into my routine at work. This was a great read.
