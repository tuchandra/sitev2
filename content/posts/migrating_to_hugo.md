+++
title = "Migrating to Hugo"
date = 2020-01-02
draft = false
categories = ["general"]
+++

Hello, Hugo! This post marks the first one written specifically for the new version of my site, built with [Hugo](https://gohugo.io). In this post, I'll outline some of the reasons for switching to Hugo and talk about the process of moving everything over.

## My old setup
Previously, I had written my own static site generator using a modified version of the [makesite.py script](https://github.com/sunainapai/makesite/). I wrote posts in Markdown and used a Python script to render them in HTML. I had one CSS file for the entire site and no JS. The whole thing consisted of the Markdown source files, rendered HTML files, one CSS file, and images that I was using within the posts. All of it lived in one repository, which I've now moved to [sitev1](https://github.com/tuchandra/sitev1). To rebuild the site, I ran `python makesite.py` and committed and pushed the changes.

It was *so* simple, and I was happy with it for a while. Eventually, though, I started wanting more features. These weren't anything crazy: generating the index page automatically, adding tags or folders, ignoring draft posts, etc. ... you can read about those [here]({{< ref features_for_site.md >}}). And that reached a breaking point last week.


## Why I chose to switch
I'd known about the existence of Hugo (and other static site frameworks) for a while, but intentionally chose not to use them when I first built my site back in April. As I thought about features I wanted, though, I knew that I could get all of them by biting the bullet and using an SSG, and I also knew that it'd be difficult to write all of these myself.

The specific moment when I chose to switch came when I tried redesigning my homepage a few days ago. I wanted to automatically generate my homepage and create a two-column layout (like the one you see on this site now, but without the right side). Sounds simple enough, right? It's easy enough to generate the content by (loosely speaking) iterating over the source directories, pulling the first few sentences from each post, and sorting the posts. The layout, though, ... ouch! A few hours into experimenting with flexboxes and I was ready to delete my entire website.

I was so far out of my depth that I knew it would have taken me several days, if not longer, to create something passable here. And all for what, so I could create a worse version of an already nice-looking theme? There's something to be said for what I'd learn in this process, too, but after reflecting I realized I would rather spend that time reading papers and creating *content* for this site.

So I installed Hugo.


## The migration
Getting a simple site up was easy; `hugo -D server` (the `-D` renders draft posts) was all I needed to see something on localhost. I downloaded the [hugo-pure](https://github.com/xiaoheiAh/hugo-theme-pure/) theme as well, and applying this theme just required a change to my `config.toml` (which I translated from `config.yml` because I prefer it over YAML).

Then I had to bring over all of my posts. Stored as plain Markdown files in my old repo, the majority of the work was adding TOML front-matter to every page. This was straightforward, but tedious. I also had to update traditional Markdown links to the (annoying) [syntax](https://gohugo.io/content-management/cross-references/) that Hugo uses. This bothers me a little bit, because adding this makes me a little bit more "locked in" to Hugo, compared to before when I just had normal MD files with no magic, but it isn't that much of a change.

Next, I started stripping out features that I didn't need. I wanted my site to have as little JavaScript as possible, and ideally none, because why on earth do I need a ton of JS to render some words on a screen? I eventually cut it all out, minus one library for syntax highlighting and another for LaTeX rendering, but the site works fine without them.

This led to interesting problems; the main one was that the navigation on mobile disappeared. I solved it in a fairly hacky way, by adding a separate navigation that only showed up if the screen was under a certain width. But if it works, it works.


## Deployment
Deploying the site was interesting, too. Hugo generates the site into a new directory, just like my old SSG did, but last time I committed *everything* (source and generated pages) into one repo. This meant that I had to have my homepage `tusharc.dev` redirect to the homepage of the generated site `tusharc.dev/site`, which was annoying.

This time, I decided to use a Makefile to automate the whole process. Having used it for building Python docs with Sphinx, I saw the opportunity to use it here. I used [this post](https://victoria.dev/blog/a-portable-makefile-for-continuous-delivery-with-hugo-and-github-pages/) by Victoria Drake as inspiration. The commands are:

 * `make clean` to remove the generated site, pretty standard
 * `make serve` to run the Hugo server, including drafts & future posts
 * `make site` to run the Hugo build process
 * `make deploy` to cd into the new directory, commit changes with an optional message in my `tuchandra.github.io` repo, and push the site to be deployed.

In short, Hugo generates my site in the `site` directory, which then gets deployed on Github Pages. This separates the source (the [sitev2 repo](https://github.com/tuchandra/sitev2)) from the built site (the [tuchandra.github.io repo](https://github.com/tuchandra/tuchandra.github.io)). I like this system a lot.


## Cool new features I have
I'll end this post with some of the nice new features that I have, for anyone looking to make the switch themselves.

 * Live reloading with the Hugo server creates a sub-second feedback loop. I save a draft, and by the time I tab over to my browser, the changes have already rendered.
 * Draft posts can be previewed (with `make serve`) but don't get deployed to my public site
 * Posts are automatically organized into categories (paper summaries, general posts, etc.)
 * I can later add tags to different kinds of posts if I want
 * Templates for similar posts (e.g., paper summaries) save a lot of time
 * The site looks way nicer than it did before thanks to people who are much better at design and front-end development than I am

It took a lot of work to get to this point. But hey, that's what free time over the holidays are for, right? My workflow hasn't changed much, and where it has, it's changed for the better. I'm much happier with the new site compared to the old one.
