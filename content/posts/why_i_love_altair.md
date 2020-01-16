+++
title = "Why I love Altair"
date = 2019-01-31
draft = true
categories = ["general"]
+++



<!--more-->

It has changed how I think about visualizations. Before, visualizations were ways to display my data. Now, they are a way to *represent* my data, because I'm thinking in the language of encodings and markings, instead of axes and points. 


The documentation is incredibly comprehensive. There are almost always examples for what I want to do, and figuring out how to extend examples is easy.


One of the things that took me a while to get used to is how many objects there are in the top-level namespace. Once I `import altair as alt`, I find myself using `alt.X`, `alt.Y`, `alt.Legend`, `alt.Color`, `alt.Text`, and more. At first, I wasn't a fan of this; why are there so many objects? Why can't `color` just be a string, like how matplotlib does it? Why do we need an entire class for `text`?

But I love it now. Following the Zen of Python, "explicit is better than implicit." And the documentation for these classes makes it exceptionally clear what you can and cannot do. The [docs page for `alt.Text`](https://altair-viz.github.io/user_guide/generated/core/altair.Text.html) tells you all the ways you can configure Text objects, and if you don't need them then yes, you can just use a string.

The questions people ask always have clear answers, usually by Jake VanderPlas (who is tremendously helpful!)

[One example](https://stackoverflow.com/a/57560902): the reason this doesn't work is because of an issue with how the OP was thinking about encodings. Here's a link to the docs that explains this. 

[Another](https://stackoverflow.com/a/50729946): the error is attempting to tell you this, but I recognize it's not super clear. Here's the solution.

[Here](https://stackoverflow.com/a/53402880) the question is "how do you change the axis size?" The answer is "use the `configure_axis` method," plus a documentation link.



From his [Twitter](https://twitter.com/jakevdp/status/1214785248946319360): 

> Once you go deep enough to absorb the idioms of the new tool or language, though, you find you can express things in ways you’d never have been able to in your familiar one...

> Because here’s the thing: programming languages and tools aren’t merely a means of expressing our thoughts: they subtly change *how* we think.

> ... it's what makes learning that new language or tool so frustrating, and also why it is so worth the effort.




