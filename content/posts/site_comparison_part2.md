+++
title = "Comparing my old and new sites, part 2"
date = 2020-01-21
draft = false
categories = ["general"]
+++

In a [previous post]({{<ref "site_comparison.md" >}}), I compared the features of my old and new site. This is part 2 of that post, focusing on things that I missed then that have only come up after a few weeks of using the site.

<!--more-->

## Feature comparisons that I missed

**Post templates**: officially called [Archetypes](https://gohugo.io/content-management/archetypes/), I haven't found a ton of use for these beyond generating the front-matter keys I need, but that's still time saved from my old site where all I had was a [template.md](https://github.com/tuchandra/sitev1/blob/master/content/papers/template.md) that I made copies of.

**Deployment**: deployment to Github Pages was, in both cases, a little awkward. Previously, I had the content and generated site in the [same repo](https://github.com/tuchandra/sitev1), which meant that the homepage https://tusharc.dev had to [redirect](https://github.com/tuchandra/sitev1/blob/master/index.html) to https://tusharc.dev/site.html, and this made some things, like relative links, unnecessarily annoying. Now, I have the [content](https://github.com/tuchandra/sitev2) and [generated site](https://github.com/tuchandra/tuchandra.github.io) in separate repos, so links work the way I expect, but deployment is more challenging. This can be seen in the [Makefile](https://github.com/tuchandra/sitev2/blob/master/Makefile), where `make deploy` cd's into the generated subdirectory repo and automates a commit and push.

**Less clear diffs**: when pushing to Github, I get *enormous* commits; [here's an example](https://github.com/tuchandra/tuchandra.github.io/commit/df56a8947e6ffe4689d9895b85c4cfe38c05f95c). This is because new posts update the "recent posts" on the sidebar of *every* page, so it's impossible to tell at a glance what a new commit did and which post(s) it affected. This is necessary for it to be a static site, but it's more unwieldy than single-page changes before.

**Decoupled source and target repos**: strictly speaking, this isn't a problem because the generated site is the only one that others see. It also theoretically enables me to make the source repo private, if I want. But it does mean that I have to commit twice when I want to make changes, and it's easier for them to get out of sync.

**Less portable**: the new setup is harder to recreate on a new computer. Previously, I had to clone the repo and create an environment with Python 3.7 + a markdown parser. Now, the generated site repo being inside the main repo means that I have to clone both and I have to install Hugo. This isn't really a problem long term, since I just have to do this once, but it was still a headache the first time around, because I didn't know what the steps would be in advance.

**Faster deployments**: I'm not sure why this is the case, but my site appears to build faster now than it did before. Github Pages is pretty opaque, so it's difficult to know why this would be happening, if it is at all.

**More complexity**: I addressed this last time, but I've come to believe that complexity is the single biggest challenge in software systems. The new site is significantly more complex than the old site, in editing, source code, building, and deployment. While I've come to appreciate the benefits more complexity offers, it still feels like there's a lot of bloat (and within that bloat a lot of potential bugs).
