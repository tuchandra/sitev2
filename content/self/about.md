+++
title = "About Me"
date = "2019-01-01"
draft = false
categories = ["self"]
url = "/about"
hidden = "true"
+++

Hi, I'm Tushar. I'm a senior data scientist at Nielsen in Chicago, IL. I have an interest in human-computer interaction and how technology & new media are affecting our lives. On this site, I write summaries of papers that interest me along with other articles or talks.

I can be reached at:

 * Github: [tuchandra](https://github.com/tuchandra)
 * Email: me [at] tusharc [dot] dev


## Projects

I take pride in identifying problems and building tools to fix them. I believe that small projects, when carefully designed and targeted, are capable of having outsized impacts. I choose my personal projects with this in mind.

### Zebra puzzle generator
When I was a kid, I really loved the grid-style logic puzzles, where you're given clues like "the tea drinker owns a cat" and "the coffee lover does not live in the red house." After watching a Raymond Hettinger [talk](https://www.youtube.com/watch?v=_GP9OpZPUYc) from PyCon 2019, I was inspired to write a program that could create these puzzles for me.

This involved figuring out how to solve these puzzles, creating sensible data structures for representing them, and designing my own custom algorithm to generate them from scratch. The project was written in barebones Python with the help of a SAT solver. Anyone can find it on [Github](https://github.com/tuchandra/zebra).

### CI-Doku
CI-Doku as my first foray into continuous integration. I love playing Sudoku, and a website [SudokuExchange.com](https://sudokuexchange.com) came out a couple months ago which has the best online puzzle interface that I'd seen. I vastly preferred solving Sudoku puzzles from the NY Times, Chicago Tribune, and other places in SudokuExchange, but this required manually entering the puzzles into the SudokuExchange website.

I wrote a family of web scrapers in Python and NodeJS to go to these daily puzzle sources, scrape their puzzles, and put them into SudokuExchange. I also automated this to run daily using CI on Github Actions. The end result is [CI-Doku](https://github.com/tuchandra/sudoku/), which, every morning at 8AM, creates a Github issue with that day's puzzles. 

### Tech for Campaigns
I volunteer with [Tech for Campaigns](https://www.techforcampaigns.org/), a group of tech-focused volunteers trying to help Democrats get elected at the state and local levels (recognizing that there's far less investment in these races than national ones). I help as a data scientist, data engineer, and software engineer. 

I've helped build a model to predict the outcomes of state & local elections. I've improved the robustness of our data ingestion pipeline with better CI and more unit tests. I've written scripts to download, parse, and ingest messy electoral data from state election boards. And I've analyzed downstream "diffs" of model predictions to introspect why it's making the decisions that it is.


### Pokemon Mystery Dungeon Rescues
One of my favorite video games, Pokemon Mystery Dungeon: Rescue Team DX, was released for the Switch in March 2020. One of the core elements of the game is rescuing other players when they are defeated. However, this feature isn't always accessible (you need to know someone with the game, join an online forum, or pay for an online subscription). I wrote a [web app](https://tusharc.dev/rescue/) to solve this problem.

Using my rescue tool, you can both revive yourself when you're defeated in-game and create bespoke, custom missions to go on if you run out of content. The tool was built using vanilla JavaScript, [Tailwind CSS](tailwindcss.com/), Python, and [Pyodide](https://github.com/iodide-project/pyodide). I also wrote a series of blog posts:
 * [My newest project: a Pokemon Mystery Dungeon password tool]({{< ref "password_tool_1.md" >}})
 * [Attempts at cracking a rescue password]({{< ref "password_tool_2.md" >}})
 * [A data scientist builds a web app]({{< ref "password_tool_3.md" >}})
 * [Hacking together Python and JavaScript]({{< ref "password_tool_4.md" >}})
 * [PMD password tool: making it all work]({{< ref "password_tool_5.md" >}})
 * [PMD password tool: should I do this?]({{< ref "password_tool_6.md" >}})

### Red Tweet, Blue Tweet
This was a course project for Brent Hecht's [Algorithms and Society](http://www.psacomputing.org/algsoc/basics/). I found a paper studying [political polarization on Twitter](https://journals.sagepub.com/doi/abs/10.1177/0956797615594620), so I decided to [replicate the results](https://github.com/tuchandra/red-tweet-blue-tweet/). 

The experience of reimplementing a paper's methods, working with messy Twitter data, and all the database management and administration for storing the tweets made this a very fulfilling project. I used an equal mix of R and Python for the project.

### Northwestern IT Footprints Helper
When I worked at Northwestern IT as an undergrad, we had to fill out a "location" field on every single ticket we completed. It wasn't a mandatory field, though, so tickets could still be saved without it being filled out. (This was because of office politics---the non-student employees didn't want to do this, and because they have leverage and power, we were stuck with having to remember it.)

I recognized that something like 1 in every 10 tickets was missing this field. Inconveniently, I was one of the people who had to go back and fix them, too. I decided to write a [Chrome extension](https://github.com/tuchandra/footprints-selector/) for all the student employees, which would detect their location and fill out this field for them. This reduced the number of incomplete tickets to zero

### Sleep Analysis
One of my earliest projects was done during a summer in college, when I was first learning about data science. I didn't know what APIs were, had only heard of pandas offhand from a classmate, and had never seen matplotlib or seaborn. This was back in 2016 and 2017, and so it's this project that was my first foray into data science.

In the spirit of "find a question you're interested in and solve it," I decided to analyze the sleep data coming out of my Fitbit. I extracted two years of minute-by-minute sleep data from the Fitbit API, then answered some questions I had (how much do I sleep? when am I most likely to nap? what days of the week are the worst?) about my sleep habits.
