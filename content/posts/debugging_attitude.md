+++
title = "Improving my debugging attitude"
date = 2020-04-12
draft = false
categories = ["general"]
+++

Today, I noticed myself doing something I've done many times before: running into an error, Googling it, finding code snippets, and making random changes in hopes that they'd work. In this post, I try to understand why.


<!--more-->

Some time last week, I read a great post by [Julia Evans](https://jvns.ca/) titled [When debugging, your attitude matters](https://jvns.ca/blog/debugging-attitude-matters/). Evans walked through a problematic attitude that she'd noticed herself having while debugging some problems: an attitude that "this is too hard for me to understand." This results in a debugging experience which amounts to hitting your head against the wall, rather than doing anything methodical or logical:

> While I was debugging my CSS, I noticed myself doing some bad things that I normally would not! I was:
>
> * making random changes to my code in the hopes that it would work
> * googling a lot of things and trying them without understanding what they did
> * if something broke, reverting my changes and starting again
>
> This strategy was exactly as effective as you might imagine (not very effective!), and it was because of my attitude about CSS! I had this unusual-for-me belief that CSS was Too Hard and impossible for me to understand. So let’s talk about that attitude a bit!

I'm certainly guilty of this too; the reason I'm writing this post is because I caught myself doing this just a few minutes ago.


## How it started
I volunteer with a group called [Tech for Campaigns](https://www.techforcampaigns.org/), which attempts to build technology to help progressives at the state and local levels. I'm part of a team working to build models of state-level elections to help the broader organization decide how to allocate resources; there are many such models for national race, but the lower levels are lacking.

We have a Postgres database of election results, and a script to refresh it every time we cut a new data release. I ran this, and got an obscure error about PostGIS not loading.

```
(tfc) tushar@computer:~/work/build-the-list$ ./refresh_dev_db.sh --use_cache
Deleting old database
dropping database buildthelist_development
Creating new database
creating database buildthelist_development
ERROR:  could not open extension control file "/usr/share/postgresql/9.6/extension/postgis.control": No such file or directory
```

Shell scripts are one of those things that, when they break, my instinctual reaction is "oh no." I immediately noticed myself feeling like I had *no idea* how to solve this.


## Descent into "debugging"
Well, the first step is to Google the error message, right? I did that, and came to a handful of [StackOverflow](https://stackoverflow.com/questions/18696078/postgresql-error-when-trying-to-create-an-extension) / [posts](https://stackoverflow.com/questions/18696078/postgresql-error-when-trying-to-create-an-extension). What do you do then? Try out random code snippets and see what works, of course!

So began a sequence of "debugging" that is all too familiar to many developers. This went about as well as you'd expect!

Some time later, I decided to run one of our setup scripts again, (irrationally) hoping that this would make my problems go away. The script was idempotent, so if everything was installed correctly, nothing bad would happen. I ran it ... and got an error saying that I had the wrong version of Postgres installed. What?

This is where the breakthrough happened---if you can even call it that. I realized that this was never going to work if I continued this random walk through code-snippet space. I took a step back and started thinking about the problem more methodically.


## Debugging the right way
Things worked before, and now they don't; this is related somehow to my Postgres installation. At some point, I managed to install the wrong version, 12 instead of 9.6. That either means I installed another version and set it as the default, or wiped out the old one.

How can I check what versions I have? Running `ls /etc/postgresql/` showed folders for both 12 and 9.6. I first tried just removing the folder for v12, but it wasn't enough.

So I turned to Google. This [AskUbuntu question](https://askubuntu.com/questions/32730/how-to-remove-postgres-from-my-installation) was helpful, and this time I actually *read* the question and answer carefully. I saw that the second of three code snippets would show me all the Postgres-related packages that I had, so after running that I was able to remove the ones related to v12.

Now back to the original problem---the error was referring to a file calle `postgis.control` not existing. Presumably that means that PostGIS isn't installed; but I didn't think we were using PostGIS ...

Then I remembered one team member's work having something to do with shapefiles. I wasn't in the core loop of people on that workstream, so I only heard about it at weekly team meetings. Could it be related to this?

Yup---a look at the commit history showed a few PRs related to adding some district-level shapefiles to our database. And I saw a change to our setup script that told me *exactly what I needed to install*. Two packages: `postgresql-9.6-postgis-2.4-scripts` and `postgresql-9.6-postgis-2.4`. A `sudo apt-get install` of those two, then the original command, and suddenly everything was fine.


## What happened?
In hindsight, it is obvious why I had messed up my installations. When I was copy/pasting code snippets and installing and uninstalling things simply *hoping* that they would work, there was, of course, no hope. What else would have happened?

And yet this attitude is all too common. Evans' post above has helped me to identify when I'm feeling this way debugging something new. Being aware of it helps me to reign that instinct in.

I also now realize what the source of the "breakthroughs," when I feel like I truly understand something, actually is. They happen when I can overcome this attitude that the tools are just too complex for me to understand, and when I start reasoning about the system logically instead.

Put otherwise, **it's not breaking through technology---it's breaking through a *mental block*** which gets in the way of systematic debugging.


## Connections to teaching
I think this is also one of the reasons I get so much satisfaction out of helping and teaching people. People will come to me with attitudes just like the one I had above:
 * "I don't know what's going on"
 * "I don't know where to start"
 * "It just doesn't work"
 * "All the StackOverflow answers mentioned something about <thing they've never heard of>"
 * "Something's wrong but I don't know what"
 * etc ...

I try to remember those breakthrough moments---when something finally clicks, when I understand how something *really* works, when I realize that the system is not, in fact, too hard for me to understand. Passing those on to others---helping them to realize "yes, I *can* do this"---is immensely satisfying.

I think that our field makes it easy to feel like you're in over your head or that everyone around you is smarter than you. Maybe it's because tech moves so fast; maybe it's because there are so many posturing men out there; maybe it's because reasoning about abstractions is hard. Whatever it may be, I enjoy helping people to break down those barriers, and to learn how to solve problems without flailing like I did here.

