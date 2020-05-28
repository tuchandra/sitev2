+++
title = "Bookmarklet for SudokuExchange"
date = 2020-05-27
categories = ["general"]
draft = false
+++

I've been playing a lot of Sudoku while at home, and today I made a quick tool to make it easier for myself: a bookmarklet to open NY Times Sudoku puzzles on [SudokuExchange.com](https://sudokuexchange.com).

<!--more-->

## Motivation
[SudokuExchange.com](https://sudokuexchange.com) is a new Sudoku web app that has, in my opinion, the best interface for playing Sudoku puzzles:
 * ability to enter your own puzzles
 * two sets of pencil marks (at corners and in the center) and colors
 * keyboard shortcuts and touchscreen support
 * dark mode
 * free to use & open source

I love it so much that I've found that no other interface compares, though some come close. After manually entering the daily NY Times puzzle into SudokuExchange one too many times, I made a bookmarklet to do it for me.


## How to use it
It's really easy!

 1. Go to the NY Times Sudoku at https://www.nytimes.com/puzzles/sudoku/
 2. Bookmark the page (or any page, tbh)
 3. In your browser's bookmarks menu, right-click the bookmark and choose Properties
 4. Paste the following into the location field:

```
javascript:(function() { let labels = []; for (cell of document.getElementsByClassName("su-cell")) { if (cell.classList.contains("prefilled")) { labels.push(parseInt(cell.getAttribute("aria-label"))); } else { labels.push(0); } } let text = "https://sudokuexchange.com/play/?s=" + labels.join(""); window.open(text); }());
```

 5. To use it, click on the bookmarklet while looking at the NY Times Sudoku (any difficulty)
 6. Allow popups if prompted

All this does is grab the contents of each cell (stored in class `su-cell`) and construct a URL to a pre-filled puzzle on SudokuExchange, then take you there. Here's the non-compressed version:

```
(function() {
  let labels = [];
  for (cell of document.getElementsByClassName("su-cell")) {
    if (cell.classList.contains("prefilled")) {
      labels.push(parseInt(cell.getAttribute("aria-label")));
    } else {
      labels.push(0);
    }
  }
  let text = "https://sudokuexchange.com/play/?s=" + labels.join("");
  window.open(text); 
}());
```


## Reflections
This was surprisingly easy! I didn't know anything about bookmarklets when starting, but I remembered that they're a lightweight solution for running lightweight JavaScript anywhere.

The original goal was to write a scraper or API that went through daily Sudoku sources and created URLs for all of them. That might still be in the cards, but this only took 15 minutes!

This is one of the reasons why I'm really glad that I know a fair amount of JavaScript, even though it's not in the standard data science skillset. Because the web is powered on JS, being able to do even simple stuff like parse the document and manipulate data types is really powerful!

