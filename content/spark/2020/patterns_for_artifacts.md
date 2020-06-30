+++
title = "Patterns And Anti-Patterns For Memorializing Data Science Project Artifacts"
date = 2020-06-25T17:00:00
draft = false
categories = ["spark"]
+++

So you need to save your work for future data scientists; how do you do this? This talk discusses best practices for saving artifacts from data science projects.

<!--more-->

**Speaker**: Derrick Higgins and Sonjia Waxmonsky, from Blue Cross / Blue Shield of Illinois


## Your project is not a folder
Projects are not folders. People treat folders like projects. Ugh.

"This person has left, and they had a bunch of stuff on their computer; can you look through and figure out what's important?" is a horrible way to transition projects. Projects, though, aren't file folders! They lack versioning (and if they have it, like Google Drive, they lack metadata related to changes). They have a single point of failure in the computer. They create obstacles to collaboration (project not being discoverable, project not supporting multiple people working on it).

That's all a really long way to say **use git!** But ... there's more.


## Your project is not a git repo
Git is great---but it's not meant for everything. The TensorFlow repo is 500 MB and takes 10 minutes to clone, which fine, it's a huge project. But there are tons of projects out there which are nowhere *near* as complex as TensorFlow, but they put raw images in the repo ... taking 40 minutes to clone 2.1 GB of data.

Code belongs in Git; so do config, experimental scripts, and documentation. Trained models, input data, executables, and intermediate files do *not*. Notebooks are somewhere in the middle.

What problems does this cause? Obstacles to colaboration, when pulling a repo takes half an hour. Obstacles to deployment, when all of these file types are probably not needed for prod (or could have sensitive info). Challenges integrating with upstream data sources when they're literally *stored in the repo*.

**Better options** include Git LFS, versioned buckets in S3 or other blob storage, things like Delta Lake, the MLflow model registry, and lots more. 

## Explaining decisions
There are all kinds of hidden configuration in modeling: model parameters (`n_jobs`, `n_subtrees`, etc.), thresholds, output formats, etc. This, the speaker asserts, is what makes data science different from software engineering. You don't always know what you're going to need up front, and your final code is always going to based upon the exploratory analysis that you do.

The speaker suggests treating discoveries and EDA as a *first class product*: that these are the first pieces that you deliver, and these can help inform future data scientists working on the project.

## Support reproducibility
"Store configuration, artifacts, and results," they suggest. 

With notebooks alone, locally, you can *show* that you built a successful model with visualizations and such. But reapplying models to other settings mandates something more centralized; yeah, you can copy the parameters from a trained logistic regression to another setting, but ... don't.

Modeling objects might include hyperparameters, the model binary, test metrics, charts, datasets, and more. They use MLflow, but that's just one tool; what's really important is thinking about what future data scientists might want.

**Parameterize your code**: by anticipating configuration that users might need (date ranges, filenames, hyperparameters, where to record output, etc.), and put them in a configuration file. Command line arguments are also okay if there's not very much configuration, but in general using a config file and anticipating their future needs is a better idea.

**Closing thoughts**: this is a reasonable talk, but I was hoping it'd be a little more advanced. I think this is a super important topic, and it wasn't long ago that my company was at the "projects are folders" stage (some pockets still are!). I'd recommend this to a pretty broad audience.

