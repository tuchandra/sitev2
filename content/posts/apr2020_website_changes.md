+++
title = "Recent website changes"
date = 2020-04-29
draft = false
categories = ["general"]
+++

I made a couple more changes to my website: giving more credit to the authors of the papers I read and adding a new category.
<!--more-->

## Changes to the homepage
It's important to give authors credit for their work. When writing paper summaries, I always made it a point to call out the authors of the paper at the top of the post. But I recently started thinking that I could do more.

On my website's [homepage]({{< ref "/" >}}), you couldn't quickly see which posts were paper summaries and which were original. You also couldn't always see the authors of the papers that I was reviewing. I don't think I was hiding credit from them, but it wasn't as obvious as it could have been.

I've now added a list of authors to the homepage in the post preview, and prepended `[Paper]` to the start of every post title instead of `Paper:`. This should be apparent because of how much I've been reading lately; it looks like this:

{{< figure src="apr2020_website_changes_img1.png" >}} &nbsp;

In Hugo, this was easy to do (but tedious). I added an `authors = ["person1", "person2"]` tag to the TOML front matter (example [here](https://github.com/tuchandra/sitev2/blob/master/content/papers/finsta_authentic_disagreebale_taber.md)), then changed the template for the post preview to include all of the author names. There were a lot of pages that already had the `authors` tag---I started adding it about a month ago, but didn't do anything with it until now---but I had to go back through 20ish ones that didn't.

## Changes to the archives
Just like above, I added papers' authors below the links within the [archives]({{< ref "/posts" >}}) and [categories]({{< ref "/categories" >}}) pages:

{{< figure src="apr2020_website_changes_img2.png" >}} &nbsp;

I rarely use these pages, but I wanted to make sure the authors' names were displayed alongside their work wherever possible.

## Adding a CHI 2020 tag
I'm quite thankful that I'm in a position where quarantine has given me time to read, rather than throwing me into a situation where I have to care for family members, work longer hours, or put my health at risk. I've used this time to read more, and I'm hoping to work through a lot of CHI 2020 papers in the coming weeks. I've already done a few posts:
 * [Interpreting Interpretability: Understanding Data Scientists' Use of Interpretability Tools for Machine Learning]({{< ref "papers/interpreting_interpretability_kaur.md" >}}) by Harmanpreet Kaur et al.
 * [Data Everyday: Data Literacy Practices in a Division I Sports Context]({{ ref "papers/data_literacy_sports_clegg.md" >}}) by Clegg et al.
 * ['On Finsta I can say Hail Satan': Being Authentic but Disagreeable on Instagram]({{< ref "papers/finsta_authentic_disagreebale_taber.md" >}}) by Taber and Whittaker
 * [Random, Messy, Funny, Raw: Finstas as Intimate Reconfigurations of Social Media]({{< ref "papers/intimate_reconfigurations_finsta_xiao.md" >}})

I have many more listed on my [reading list]({{< ref "/reading_list" >}}), so I added a tag for [CHI 2020]({{< ref "/tags/chi2020" >}}).

## Future changes
Eventually, I want to make the author names clickable links that take you to an author's page, where one could view all of the papers I've written about by that author. That shouldn't be too hard---I think it'd be a similar treatment to how "categories" works now, but I will eventually have to work out how to do this.

I also need to come up with a better way of organizing content locally. I think it's fine on the website (for now?), but as I write more, the number of posts in each directory on my computer is increasing rapidly. The ["/content/papers" folder](https://github.com/tuchandra/sitev2/tree/master/content/papers) has 42 items in it, which makes finding the exact paper that I'm looking for a little challenging right now. This will only get harder.

I would like to further streamline deployment of the site; right now I have to commit posts to my [sitev2 repo](https://github.com/tuchandra/sitev2) first, then use a Makefile to generate the static site and toss it into my [tuchandra.github.io repo](https://github.com/tuchandra/tuchandra.github.io). I would love to be able to set up Github Actions to handle deployment for me---building every time I push and building nightly (for when I finish posts in advance).

Finally, I would like to be more consistent about using the Dr. honorific in front of the names of those researchers who have PhDs. This is hard to do: it's not always apparent from an ACM DL entry, and including it can add visual clutter to a long list of author names. But female scientists in [particular](https://twitter.com/SarahEBond/status/1199057767631400961) often [have](https://twitter.com/jenheemstra/status/1244287273136422912) their [credentials](https://twitter.com/iLemmon/status/1255139478714253315), erased, and so I will try to err on the side of including it too often.
