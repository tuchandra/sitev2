+++
title = "More minor site changes: cleaning up category pages"
date = 2021-01-04
draft = false
categories = ["general"]
tags = ["site"]
+++

I did some cleanup of the categories and tag listings. This short post discusses why and how!

<!--more-->

## Adding year-separation on category pages
**What changed?** On category pages, like [books]({{< ref "/categories/books" >}}) or [what-i-read]({{< ref "/categories/what-i-read" >}}), I added smaller year headers to break up the otherwise-long lists. I did the same on tag pages, like [site]({{< ref "/tags/site" >}}).

**Why?** I was writing some year in review posts, and I wanted to see which posts were from 2020 quickly! I could search on the page just fine, but a visual indicator was clearer. The same code exists on the [archives]({{< ref "/posts" >}}) page, so I figured it shouldn't be too hard.

**How?** I modified my [category.terms.html](https://github.com/tuchandra/sitev2/blob/master/themes/windy/layouts/_default/category.terms.html) template. Basically, for each post in a category, I get the year of the current post. If it's the first item (the current year) or different from the previous item (an older year), then I display a little year `h4`.


## Displaying tags next to post previews
**What changed?** Also on category pages, like [books]({{< ref "/categories/books" >}}) or [papers]({{< ref "/categories/papers" >}}), I have little <i class="fa fa-tags"></i> tag icons with the tags for each post listed.

**Why?** I wanted the tags to be visible in more places than just individual post pages. But I'm still not sure if I like this! It adds a lot of visual noise that I might remove.

**How?** I modified the [item-post.html](https://github.com/tuchandra/sitev2/blob/master/themes/windy/layouts/partials/item-post.html) template. I used the same code as for listing paper authors, where if there are any tags I display them all. The code for this was a little bit awful; I took it from [this StackOverflow answer](https://stackoverflow.com/a/59565425).


## Closing thoughts
I'm a little more disillusioned with Hugo templates (well, Go templates) than I was before. They're powerful and feature-rich, and that's not always a good thing. Figuring out how to make all of these poorly documented shortcodes interact was not fun; I was lucky that I had examples of what I wanted to do readily available.

I'm thinking a lot about the [Why I built my own shitty static site generator](https://erikwinter.nl/articles/2020/why-i-built-my-own-shitty-static-site-generator/) article that I read a couple weeks ago. But [I've done that]({{< ref "posts/about_website" >}}), too, and I much prefer Hugo. Tradeoffs!

