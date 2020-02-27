+++
title = "OpenAI Unease"
date = "2020-02-18"
categories = ["general"]
draft = true
+++

Early last week, an article was posted at the MIT Technology Review: [the messy, secretive reality behind OpenAI's bid to save the world](https://www.technologyreview.com/s/615181/ai-openai-moonshot-elon-musk-sam-altman-greg-brockman-messy-secretive-reality/) by Karen Hao. As well-written as it is long, I started thinking about what OpenAI stands for and why it makes me increasingly uneasy.

<!--more-->

I first saw this on Twitter, and then started putting thoughts into a weekly "what I read" post. But they quickly grew too big for that post, and so here we are. This post will contain both summarized material from the article and my thoughts about OpenAI.

## Growing unease
I've thought a lot about OpenAI, and discussed the organization with many of my friends, but nowhere have I seen such a comprehensive account of the company's history. They've made the news several times, and each has made me progressively more uneasy:

 * capping investor profits at 100x the investment: the ROI on an investment in Google would have been 20x. While OpenAI's goal is considerably more ambitious, this is, practically speaking, an unlimited cap for now.
 * the GPT-2 staged release: it's not unreasonable to suggest that OpenAI was upselling GPT-2 and language models more generally. I think most of the coverage about this was negative, which is a little unfair (I'll get to this later). But I also think that the media campaign was a little bit too polished to suggest that this wasn't planned all along to generate hype.
 * the gradual change to more and more secrecy, which ostensibly is because their work is getting progressively more dangerous, but in practice seems contradictory to their branding about openness and transparency.

Hao addresses the last bullet directly in the piece:

> In the beginning, this level of secrecy was never the intention, but it has since become habitual. Over time, the leadership has moved away from its original belief that openness is the best way to build beneficial AGI. Now the importance of keeping quiet is impressed on those who work with or at the lab. This includes never speaking to reporters without the express permission of the communications team. **After my initial visits to the office, as I began contacting different employees, I received an email from the head of communications reminding me that all interview requests had to go through her. When I declined, saying that this would undermine the validity of what people told me, she instructed employees to keep her informed of my outreach.** A Slack message from Clark, a former journalist, later commended people for keeping a tight lid as a reporter was “sniffing around.”

This is nicely put, and I appreciate Hao's excellent journalism here. It's reasonable, in my opinion, to ask that you don't speak to reporters without permission; I'd never speak on behalf of Nielsen at the risk of royally fucking myself over and opening myself to all kinds of liability. This seems to go a step further, though, to the point where it's almost antagonistic to the media.


## On safety and security
I've also been worried about OpenAI's approach to safety and security. It's discussed in the article that OpenAI did not release GPT-2 at first, citing the need for "more nuanced discussions about model and code release decisions in the AI community."

I don't deny that such a need exists; I think that were GPT-2 to be weaponized and misused, OpenAI would share (a small portion of) the responsibility for it. My contention is that OpenAI used this announcement to hype up GPT-2 without addressing the real, substantive issues with releasing a potentially dangerous model.

The [blog post on it](https://openai.com/blog/better-language-models/) certainly appears this way: why devote the majority to showing off the model, then relegate the release strategy (at the time, to not release) to the bottom?

The article addresses this, too. According to a spokesperson for OpenAI:

> Each of our releases is run through an infohazard process to evaluate these trade-offs and we want to release our results slowly to understand potential risks and impacts before setting loose in the wild.

I argue that OpenAI should release this "infohazard process", too. Given their commitment to building *safe* A(G)I, the research community would benefit from being able to evaluate and iterate on this process. A shared set of standards for evaluating these tradeoffs would be great---and OpenAI had (still has) the chance to create this.

If the focus were truly on the policy (or safety, or research) implications, OpenAI would do well to discuss them in more depth. Release perspective pieces arguing for different approaches. Bridge the gap between ML researchers and policy researchers. That, to me, is truly "open" AI research: helping to shape the discourse around the very real issues, rather than (in my view) contributing to the AI hype cycle.


## On diversity
This is my last point, and perhaps one of the most bold claims I've made on this blog. But here we go. From the article:

> But if diversity is a problem for the AI industry in general, it’s something more existential for a company whose mission is to spread the technology evenly to everyone. The fact is that it lacks representation from the groups most at risk of being left out.

I suspect that this point---near the bottom of the article, after many paragraphs about the technical strategy and research direction---will be underappreciated. But I would take this a step further and say that **a company so homogenous is incapable of building AGI that truly works for everyone.**

I also suspect that many will disagree with me on this. I've lost track of how many people fight back against diversity in tech (or anywhere), instead clinging to their "objective" (and biased) assessments or "reverse discrimination" arguments for programs favoring minoritized groups.

But, to me, it couldn't be clearer: technology alone cannot solve social problems. I've read and written about this before: see civic hacker Josh Tauberer's ["So you want to reform democracy"](https://medium.com/civic-tech-thoughts-from-joshdata/so-you-want-to-reform-democracy-7f3b1ef10597) which states "technology often excludes segments of our society with the least power and who are in need of the most help," or the [No, AI is not for social good](https://venturebeat.com/2019/11/23/no-ai-is-not-for-social-good/) article that I [summarized]({{< ref "what_i_read/20191214.md" >}}) in December. Without care, AGI will go the same way.

For OpenAI to build AGI that "is used for the benefit of all," they need more than (exceptionally talented, to be clear) ML researchers in San Francisco. People from around the world, of varying ages, experiences, and backgrounds, with research in not only ML but also social sciences, are essential to this cause.


## To OpenAI's credit
I want to make sure that this article is not entirely critical of OpenAI. There are several things that I think they are doing well that I admire them for:

 * AGI is *hard*. No one knows when it will happen, and dedicating your entire organization to its pursuit is a risky choice.
 * It is not uncommon for research labs to be secret about their work (though research labs don't make money and generate publicity by touting their openness, either)
 * Research is expensive, and the computational cost of ML research in particular is skyrocketing

More broadly, I *do* think that OpenAI believes in the benefit of humanity (to the extent that an institution can believe in anything, I guess). There appear to be cracks, but their job is hard. I commend them for the work they're doing here.
