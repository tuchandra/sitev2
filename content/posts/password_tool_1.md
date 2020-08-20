+++
title = "My newest project: a Pokemon Mystery Dungeon password tool"
date = 2020-04-26
categories = ["projects"]
tags = ["password tool"]
draft = false
+++

In this series of blog posts, I'll be covering my newest personal project: a tool for the Pokemon Mystery Dungeon video games that help to make sense of otherwise-uninterpretable passwords. This post covers my motivation for the project and the choice of technologies.

<!--more-->

## Background
Pokemon Mystery Dungeon is my favorite video game series of all time. The charming art style, surprisingly gripping story, unusual mechanics, and infinite replayability all contribute to my love for the series. In 2015, the game [Pokemon Super Mystery Dungeon](https://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_Super_Mystery_Dungeon) was released, and widely speculated to be the last game in the series.

But on January 9th, Nintendo [announced](https://bulbapedia.bulbagarden.net/wiki/Nintendo_Direct#January_2020) a remake of the [first games in the series](https://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_Mystery_Dungeon:_Red_Rescue_Team_and_Blue_Rescue_Team) for the Nintendo Switch. This announcement, breathing life into a series that fans thought was forgotten, immediately put the game onto my "must-buy" list. And on March 6th, I finally started Pokemon Mystery Dungeon: Rescue Team DX.

{{< figure src="pmd_images/calendar_event.png" >}}

&nbsp;

The core game loop consists of playing as a Pokemon and exploring "mystery dungeons," where you encounter randomized floor layouts and have to find the stairs to the next floor. Along the way, you'll encounter enemy Pokemon and traps that can cause you to faint.

That's where the "rescue team" part of the game comes in: if you faint in a dungeon, you can send out a "rescue password" that encodes all of the information about where you fainted. Another player can enter this into their game, and go through the *same dungeon* on their system. If they reach the point where you fainted, they can "rescue" you. They issue a "revival password," which the fainted player enters in their game, and magically they can continue on their journey.

This is what a password looks like:

{{< figure src="pmd_images/example_password.jpg" width="800px" >}}

&nbsp;

And this is what it represents:

```
Team Name: Ice Cream
Dungeon: Purity Forest
Floor: 38F
Timestamp: 2020-04-13 20:51:25
... etc ...
```

My original goal was to build a decoder for these passwords. This would take a rescue password, like the one you see above, and figure out what data it represented. Ideally, I'd figure out how to generate revival passwords too, so that people wouldn't have to rely on others to rescue them.

Why did I believe this to be possible? Because the password process happens completely offline. Since you can also distribute your rescue password over e.g., social media, and have someone else enter it into their game, the decoding & encoding processes *must* happen on-device. This is easily verified by putting your Switch into airplane mode and observing that everything works fine.

This means that there has to be a deterministic algorithm which takes a password and decodes it into the rescue that it represents, and likewise for encoding rescues as passwords. That doesn't mean it's simple, though!


## Three goals
The three goals of this project are (were) all related to understanding the structure of rescue passwords. I wanted to be able to:

1. Decode a rescue password into human-readable data (dungeon name, floor #, team name, etc.)
2. Encode human-readable data into a rescue password
3. Given a rescue password, generate a revival password

(1) and (2) are inverses of each other. We need (1) to know how the passwords work, and (2) would allow us to generate a large number of rescues for players to go on. This would allow players to farm the (very generous!) rewards from these fake rescues.

(3), meanwhile, is the most player-focused. If someone dies in a dungeon and sends out a rescue password, being able to automatically get a revival password would save a great deal of time waiting for a rescuer. This is especially important near the end of long dungeons, when potential rescuers might be less inclined to spend over an hour on a rescue. It might also become more important as the game drops off in popularity.


## Naive ideas
My first idea was to make use of the PMD Discord server, where people would post rescue passwords to call for help. I planned to gather a large number of rescue passwords and revival passwords, then to inspect them for similarities.

Another idea was to have many players rescue the same person and compare the structure of the revival passwords to see what was different. These might all give me clues into how to generate revival passwords.

I never did this. It was mostly due to a hunch that it wouldn't work---or maybe that's just hindsight talking, and it was just laziness. Then Animal Crossing came out, and I put this game aside for a few weeks in favor of the debt- / stalk-market- / deserted-island-simulator, which is now the  most-played game on my Switch.


## Adventures in Purity Forest
After a while playing Animal Crossing, I started craving more structure in my video games. So I opened up PMD and tried out the hardest dungeon in the game, named "Purity Forest." I died on floor 32 of 99, and posted a password in Discord for rescue. While waiting, I returned to this problem.

I found a reference API at 136.144.185.148/pmdrtdx/. This let me enter a password and get out the decoded information and a revival password. That seemed like it was exactly what I wanted---and indeed, that's goals #1 and #3 above---but the website provided no information about what was going on under the hood.

That is, the *only* way I could interact with the website was "provide password -> get decoded information." I looked at the sources---just the HTML index and a barebones CSS file. I looked at the network---nothing. At that time, there wasn't even information about what format I had to enter the password in (this, thankfully, has since changed).

A couple hours later, someone rescued me, and I continued through the dungeon. Some fifty floors later, I died again. Now 80+ floors into the hardest dungeon in the game, I chose to try out the password generator instead of posting another password. And it worked! A while later, the dungeon had been cleared.

{{< figure src="pmd_images/celebi.jpg" width="800px" >}}


## What's next?
I returned to the mysterious website, now more curious than anything. But that's where this post ends: I'm already at 1000 words, and this moment marked a reasonable break between "motivation" and "first steps at an implementation." The next steps include my first attempt at a solution, then a sharp turn into building a web app.

As a side note, this post didn't have much to do with anything that I usually write about---programming, data science, HCI, ... nothing. But I felt it important to write about my motivation for this project, and this is my own website, after all.

Work on this project has taken up the vast majority of my spare time, and I'm thankful to (1) have that time, (2) have that time to myself, and (3) have the mental capacity to build something that I find personally fulfilling during it.
