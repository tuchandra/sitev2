+++
title = "Password Tool: making it all work"
date = "2020-05-23"
categories = ["projects"]
draft = true
+++

After clearing up unexpected challenges and removing roadblocks, all that was left was to *build*. A full evening of coding later, the Pokemon Mystery Dungeon rescue tool *works*, which is huge! This post reflects on the last few steps of the process.

<!--more-->


## Simplifying the UI
The second part of the app, which generates a custom mission for you, was the most challenging for me. I was struggling to create an interface that displayed all of the different things that made up a mission:
 * the dungeon
 * the floor
 * the team name
 * the species of Pokemon that fainted, and its gender
 * the reward type ("regular", "special", or "deluxe")
 * the timestamp
 * a couple other flags that---legitimately---no one understands

I eventually realized that the only features that really mattered were the dungeon and floor. Everything else was cosmetic---the Pokemon you were rescuing and team name for the rescue didn't change the mechanics of the mission. The Deluxe rewards were a superset of the other two rewards, so there's no reason anyone would want Regular or Special.

I decided to simplify things by only having users select the dungeon and floor, and making the team name optional. The Pokemon will be selected randomly, and the mission will always give a Deluxe reward. The timestamp can be the current time.

This decision freed me from working on UI-related stuff that I only vaguely enjoyed. More importantly, it unblocked the rest of the project, because it solved the problem of "how do users input rescue parameters?"---maybe not perfectly, but done is better than perfect.

Interestingly, this part was the easiest to *implement* once I had designed it. I had already established my core data structures and Python / JS interoperability patterns with this use case in mind. This planning made the implementation painless, and it wasn't subject to any of the roadblocks I had run into during previous parts.


## New tools and old
I learned about (or used for the first time) several new tools from this project, including:
 * Tailwind CSS, which made CSS way less painful
 * PostCSS, PurgeCSS, and autoprefixer, which Tailwind made use of
 * NPM scripts, which more or less work as a Makefile for my frontend
 * Prettier, which is an autoformatter for JS code
 * live-server, which let me autoreload my app when the code changed

I hadn't used any of these before. I was impressed by how beginner-friendly the JS ecosystem appeared to be; to an experienced data scientist, but novice front-end developer, like me, this was quite helpful.

I also took the opportunity to use some of my favorite Python tooling:
 * black, for autoformatting
 * mypy, for type checking (and forcing me to write code in a cleaner, type-safe way)
 * dataclasses, which removed a ton of boilerplate around creating objects

All of these have only appeared in the last couple of years, but they're staples of every Python project I start. I'm grateful for such useful tooling in the Python ecosystem.


## Keeping the Python / JS interface clean
Debugging the Python / JS interface was one of the most challenging parts of this project. When you call Python code from JavaScript, you are essentially `exec`ing a string of code; this means that you can't set breakpoints (in either language) or use the browser debugger. This essentially forced me to use print debugging.

Because these Python snippets were just being passed to Pyodide, none of my normal tools work. I couldn't format, lint, or typecheck them using black or mypy. The only way to diagnose an error was to run it.

The consequence of this was that I kept the Python / JS interface as simple as possible. In `script.js`, I have one function that initializes Pyodide and just three others that touch Python. These snippets make use of high-level APIs defined by Python to keep them short. Python never manipulates the DOM itself, though in principle this is possible.

I found this to be essential to managing the complexity of this application. Keeping the boundary between the two clear required me to clearly distinguish the tasks Python should do---validate an entered rescue password, generate a revival password from a rescue password, and generate a rescue password from some user input.


## What's left?
The app is at a place that I'm satisfied with. All the core functionality is there (barring bugs, which are extremely likely), and it's live on my website. Anyone can rescue themselves or generate new rescue missions to go on.

There are few things left on my todo list, though:
 * Generate the Pokemon being rescued randomly (right now it's hardcoded as [Spheal](https://bulbapedia.bulbagarden.net/wiki/Spheal_(Pok%C3%A9mon)) because it's one of my favorites)
 * Test that the possible dungeons all work
 * Test it with my actual game!

And a few nice-to-haves:
 * Freeze the interface before Pyodide has loaded
 * Clean up some duplicated code in `script.js`
 * Make the top Pelliper dialog box look nicer
 * Add hover effects to the submit buttons
 * Add a favicon

And finally, things that I probably won't do, but I would if I started this over:
 * Unit tests on the Python code---it's a mess and there's so much converting between different data formats that should really be tested
 * TypeScript---I just have never used it, and learning it for this project when I'm *already* a JS novice would have been an additional challenge


## The remaining posts
I have three more posts on this planned:
 * *Should we have done this?*, which will talk about the ethical implications of this work (yeah, I know how silly that sounds---it's a video game!---but this is actually quite personal to me)
 * *Reflections on Pyodide*, which will be a high-level post discussing my experiences using Pyodide and my recommendations to future users
 * *What I learned*, another high-level post about what I got out of this project

For now, it's time to sleep. Play around at [tusharc.dev/rescue](https://tusharc.dev/rescue).



