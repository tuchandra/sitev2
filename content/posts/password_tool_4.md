+++
title = "A data scientist builds a web app"
date = "2020-05-11"
categories = ["projects"]
draft = true
+++





<!--more-->

## Recap: first steps with Tailwind

The best part of Tailwind, which I don't think I made clear in the last post, was that I didn't have to maintain a sprawling CSS file anymore. This *couples* the layout and the styling, which I find desirable. It means that there's no difference between how things are *arranged* and how they *look*.

If I want to change the color of an element, I find the element in the HTML and change the utility class for its color. That's it! With normal CSS, I'd have to look at all of its classes, decide which one to modify, find it, change the class definition, then hope that nothing else changed. This feels *much* more maintainable, because I don't have to remember what every class does.


## Simplifying decisions
The second part of the app---that generates a custom mission for you---was the most challenging for me. I was struggling to create an interface that displayed all of the different things that made up a mission:
 * the dungeon
 * the floor
 * the team name
 * the species of Pokemon that fainted, and its gender
 * the reward type ("regular", "special", or "deluxe")
 * the timestamp
 * a couple other flags that---legitimately---no one understands

When thinking about this, I realized that the only features that really mattered were the dungeon and floor. Everything else was cosmetic---the Pokemon you were rescuing and team name for the rescue didn't change the mechanics of the mission. The Deluxe rewards were a superset of the other two rewards, so there's no reason anyone would want Regular or Special.

I decided to simplify things by only having users select the dungeon and floor. The Pokemon will be selected randomly, and the mission will always give a Deluxe reward. The team name can be hardcoded, and the timestamp can be the current time.

I might come back to this later. But for now, this decision simplifies the UI and frees me (temporarily) from working on layout-related stuff that I only somewhat enjoy.


## Packaging and deployment



