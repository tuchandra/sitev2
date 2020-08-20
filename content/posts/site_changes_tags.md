+++
title = "Minor website addition: tags and anchors"
date = 2020-08-21
draft = false
categories = ["general"]
tags = ["site"]
+++

I've added tags to my site! You might notice that this post is tagged 'site', and some of the papers I read are tagged by conference. I also added anchors to make linking to sections easier.

<!--more-->

## Tags!
I added tags as another [taxonomy](https://gohugo.io/content-management/taxonomies/) (to use the Hugo term) within my website. Tags are functionally identical to categories, but semantically different. Most websites talk about these in the context of SEO, and I'm not sure anyone has ever reached this blog from a search engine ... but alas. That's fine.

**Why?** I wanted to start labeling ICWSM papers, but creating a category for them didn't make sense. On most websites, "categories" represent the genre of the post (paper summary, project write-up, etc.) and "tags" are other descriptors of the post. 

Right now, I'm using tags to label some of the common conferences I've read from---[CHI 2020]({{< ref "/tags/chi2020" >}}) is the main one, but I'm also reading a lot of [ICWSM papers]({{< ref "/tags/icwsm2020" >}}) as well.

**How?** Adding tags was easy. Since they are functionally the same as categories, I copied the templates for tags and categories and made some minor changes, and that was it!


## Anchors!
To the left of the heading above, you can see a little <i class="fa fa-link"></i> link icon. This is a garden variety HTML anchor; clicking it will get you the link to that specific header within the page.

Previously, you could only link to entire pages, and not sections within them. This makes it easier for me to link to the [ICWSM section of my reading list]({{< ref "/reading_list.md#icwsm-2020" >}}), or to [the section that you're reading right now]({{< ref "/posts/site_changes_tags.md#anchors" >}}).

This was a harder change to make: I looked on the [Hugo forums](https://discourse.gohugo.io/t/put-a-header-link-before-all-h2-elements/17966/6) for help and found a nasty regular expression to automagically add anchor icons to next to my headers. This is all done at site-generation time, which makes it complicated! I felt a little uneasy about copy-pasting code without fully understanding it, but the result is too nice to pass up.


## Closing thoughts
That's all for now. It's nice to use a framework that has such strong community support; adding tags was easy because Hugo makes extending your site easy, and adding anchors was confusing, but still easy because of the kind folks on the Hugo forums.

I also am glad that I can iterate so quickly on my website. Having [taken control of the layout]({{< ref "posts/another_new_layout.md" >}}) myself in June was tough at the time, but has paid off in how easy it is for me to make tweaks to my layouts now. I know my site inside and out, instead of relying on a tenuous understanding of someone else's code. That's a great feeling.

