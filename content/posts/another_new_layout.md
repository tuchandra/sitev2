+++
title = "Another website redesign"
date = 2020-06-29
draft = false
categories = ["general"]
+++

My homepage has been given a new look---still Hugo, but now powered by my own custom layout and Tailwind CSS. This post is a technical dive into the process of rebuilding it.

<!--more-->

## Why change?
Let me quote myself from six months ago, in my post [Migrating to Hugo]({{< ref "posts/migrating_to_hugo.md" >}}):

> The specific moment when I chose to switch came when I tried redesigning my homepage a few days ago. I wanted to automatically generate my homepage and create a two-column layout (like the one you see on this site now, but without the right side). Sounds simple enough, right? It's easy enough to generate the content by (loosely speaking) iterating over the source directories, pulling the first few sentences from each post, and sorting the posts. **The layout, though, ... ouch! A few hours into experimenting with flexboxes and I was ready to delete my entire website.**

Ouch! I distinctly remember that feeling; it was one of powerlessness and bewilderment. I had no idea where to start, and a day or two fumbling around with CSS left me with little to show for it. I also don't think that'd be any different today.

So what changed?

The answer, at the risk of sounding like a shill, was [Tailwind CSS](tailwindcss.com/). I can honestly say that it feels like what CSS has been missing all this time. I'm sure it has its flaws, and I had some trouble myself that I'll expand upon below. But using Tailwind made making the layout of my site *much* easier than possible before.

(I've read some strong opinions on [the perils of functional CSS](https://www.browserlondon.com/blog/2019/06/10/functional-css-perils/) or [which style of CSS to use](https://old.reddit.com/r/Frontend/comments/8c2mt3/in_defense_of_utilityfirst_css/) or [Tailwind vs. Bootstrap](https://blog.logrocket.com/tailwind-css-is-it-tomorrows-bootstrap-ebe560f9d00b/). And my [roommate](https://joonpark.me/) tells me that Tailwind seems reasonable, but folks in industry will use some kind of CSS-in-JS framework, like [Styled Components](https://styled-components.com/) or [Emotion](https://github.com/emotion-js/emotion) because they integrate better with other tools like React. I'm sure all of these opinions are valid, but the nuances of these different frameworks don't really matter to me, as someone whose primary expertise is in data science!)


## Building the layout
Building the layout itself was just a single weekend's work. I originally timeboxed two days for "messing around": trying out Tailwind, building a mockup of a new layout, and scoping out the effort it would take to move my website over. But by Sunday night, I was 90% of the way done!

One thing that made this easy was **Hugo's organization**. Having all of my site's content live in the `content` directory, independent of any styles or layout, makes sense from a separation-of-responsibilities perspective. But it also made iterating a lot easier, because I already knew what the end goal was (to have all of my posts displayed nicely). It meant that I didn't have to write any lorem ipsum placeholders or worry about how things would look when it was live; my writing was all already there.

Loosely speaking, my process consisted of copying the templates from the [Pure theme](https://github.com/xiaoheiAh/hugo-theme-pure) into a new directory, stripping out the class names and CSS, and rebuilding the CSS from scratch. 

Because of the organization mentioned above, my site built even after I did this; it just looked like garbage. After this, I just iterated:
 * create the top bar that spans the whole page
 * put my name and navigation in the top bar
 * create two sections for main content and the sidebar, using `max-width` utilities
 * style the main content by messing with the templates in `index.html`
 * in that process, style the partials for each post
 * style the sidebar
 * tweak these until I was happy


## Responsiveness
The other reason that I chose Tailwind was because responsiveness is [tightly integrated](https://tailwindcss.com/docs/responsive-design) into the framework. I had messed around with [media queries](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries) before, but writing them manually was not appealing at all.

Tailwind makes this easy. To make an element pink on small screens and blue on large screens, you'd do `class="pink lg:blue"`, which says that "once the screen is past the 'large' size, make the element blue." You'll notice that the sidebar disappears on smaller screens, and the upper navigation bar becomes more compact as well. This took a little bit of fiddling around, but I'm mostly happy with the result.


## Integrating Tailwind with Hugo
This was the hardest part of the whole migration. There are a [couple](https://github.com/dirkolbrich/hugo-theme-tailwindcss-starter) / [resources](https://github.com/pdlug/hugo-tailwind-boilerplate) about how to integrate Tailwind with Hugo, but these were pretty rough to get started with.

Tailwind's own documentation, while amazing for styling, wasn't helpful for this task. The vibe that I get from Tailwind is that there's one "right" way to do everything, and that it's suited for true web applications---not really static sites, and not really sites with Markdown content. That's not that bad; it's okay for tools to be opinionated. But it did make it harder to get started.

The end result is something that you can see in my [`themes/windy`](https://github.com/tuchandra/sitev2/tree/master/themes/windy/) directory. Loosely, `tailwind.config.js` and `postcss.config.js` are boilerplate, `assets/css/app.css` is where the magic happens, and `layouts/partials/head.html` dynamically uses [Hugo Pipes](https://gohugo.io/hugo-pipes/) to figure out what CSS file to call. How these pieces all interact is still a little bit of a mystery to me, so I might write more when I understand it better!


## Typography
This was another pain point. Because almost all of my content is generated from Markdown files (that's how Hugo works), I wasn't able to style it the same way that I was able to style the layouts (that is, directly in the templates).

And nor did I want to! Styling every post would be silly; this is what CSS classes were made for.

I found a [WIP Tailwind plugin](https://github.com/tailwindcss/typography) for sensible defaults for rich text (demo [here](https://pensive-agnesi-f6bc76.netlify.app/)). It isn't ready for actual use, though, and it was highly unclear how to make it work. 

I tried copying down the `index.js` file and importing it in `tailwind.config.js` and my `app.css` files, but neither succeeded. I tried dropping the contents of `index.js` into `tailwind.config.js` directly, and that failed too. Eventually, I went to the demo page and just ripped the generated CSS from there. It lives in my [`app.css`](https://github.com/tuchandra/sitev2/blob/master/themes/windy/assets/css/app.css) file.


## What's next?
There are a couple of improvements that I want to make. I've wanted these for a while, but it's only now that I feel *capable* of making them. I feel this way because I finally have control over the layout and all the different parts of my toolchain!

I'm hoping to add:
 * a dark theme
 * another color scheme (I switched from blue to green for no real reason; mostly because changing the main color gave everything a fresh new look. What about a red/pink one? Purple?)
 * a "projects" page, with a better layout than a normal top-to-bottom article

These all feel attainable now! This is because I finally have control over different parts of my toolchain. Using someone else's theme was great early on, because it allowed me to get started quickly and provided a nice enough setup. Building my own, though, was an instructive experience, and I feel like I understand a lot more about how my site is built.

