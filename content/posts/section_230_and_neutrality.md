+++
title = "Section 230, the internet, and neutrality"
date = "2020-02-24"
categories = ["general"]
draft = true
+++

TODO: verb tense, clean up links, is there a point?

I've taken a recent interest in Section 230 and the legal basis for the (lack of) responsibility that social media platforms have on their content. I believe that the debate around Section 230 and the neutrality of tech platforms misses the point: neutral platforms cannot exist, and any proposed solutions must recognize this.

<!--more-->

## Jeff Kosseff and "26 words"
I started my journey down this rabbit hole by reading an interview that The Verge did with Jeff Kosseff: [why the internet's most important law exists and how people are still getting it wrong](https://www.theverge.com/2019/6/21/18700605/section-230-internet-law-twenty-six-words-that-created-the-internet-jeff-kosseff-interview). Kosseff is the author of the book [*The Twenty-Six Words that Created the Internet*](https://www.jeffkosseff.com/home). Those words refer to Section 230 of the Communications Decency Act:

> No provider or user of an interactive computer service shall be treated as the publisher or speaker of any information provided by another information content provider.

I continued by watching a [discussion](https://www.cato.org/events/twenty-six-words-created-internet) at the CATO Institute last year featuring Kosseff and other scholars. The introduction was already interesting:

> Regulators have long grappled with the challenge of preventing libel, media bias, radicalization, harrassment without supressing free expression and the positive democratic externalities thereof. There is, however, a tendency, a temptation, to treat these questions as novel, borne of specific political controversies or particular features of currently dominant speech platforms. These tensions ... long predate social media, and the internet itself.

To understand Section 230, we have to go back to the 1950s, and we have to treat these questions with a platform-agnostic view. The following is summarized from the contents of the article and the discussion.


## The history of Section 230
The basis for the law predates the internet; its history goes back as far as 1950, when a bookstore owner was jailed for having an erotic novel in the store, under an LA law that said if you have obscene material in your store you can be held responsible. The Supreme Court struck down this ordinance, saying that there's no way a distributor could review all of their content before selling it.

Fast forward forty years, and early internet services have emerged. One platform (CompuServe) didn't moderate content at all, and another (Prodigy) did; when both were sued for defamation, judges held that the first was not held liable because they, like the LA bookstore, were just a distributor. The second, though, was; they were considered a *publisher* of content, because of the moderation and other curation efforts. **"You get this really weird rule where these online platforms can reduce their liability by not moderating content."**

A couple years later, Congress was beginning to regulate the emerging internet. [Sen. James Exon](https://en.wikipedia.org/wiki/J._James_Exon) proposed that, in order for minors to not be exposed to objectionable content, platforms be penalized for doing so. Tech companies objected, saying that they were better positioned than the government to determine what is appropriate for minors, and that they had a vested interest in doing so because their customers would walk away from their platforms if they were dissatisfied.

The House, meanwhile, created what would become Section 230 of the Communications Decency Act. Proposed by [Rep. Chris Cox](https://en.wikipedia.org/wiki/Christopher_Cox) and [Rep. Ron Wyden](https://en.wikipedia.org/wiki/Ron_Wyden), the "26 words" were passed at the same time as Exon's bill---the latter was struck down by the Supreme Court the next year, and so Section 230 remained.

The first known application of the law was in the case [Zeran v. America Online](https://en.wikipedia.org/wiki/Zeran_v._America_Online,_Inc.). Kenneth Zeran had personal information posted about him on AOL, which was leading to his harassment; Zeran sued AOL, but courts found that AOL was not liable for the content posted there. According to Chris Cox (according to Kosseff), the Zeran interpretation was precisely what was intended by Section 230.


## The debate about moderation
Kosseff continues with how this has framed the present day debate about content moderation:

> And I need to be clear: the platforms are not doing enough to moderate. Also ... there is not going to be a perfect solution, because no matter what you do, unless you ban all user content, some bad content is going to get in.

That's one side of the debate. The other:

> The internet under Section 230, I believe, has held up a mirror to society; to say this is what we look like and ther are some bad people who will do bad things, like defame someone and make these claims that could really ruin someone's life. We have issues like revenge porn, terrorists recrutiing on social media, sex trafficking, harrassment ... and Section 230 does allow the platforms to take a hands off approach.

Koseff makes clear: repealing Section 230, as some (including [Joe Biden]( [suggests](https://www.theverge.com/2020/1/17/21070403/joe-biden-president-election-section-230-communications-decency-act-revoke))) propose, would destroy the modern internet. Today's largest websites, for better or for worse, rely on user-generated content, and on the fact that the websites cannot be held liable for that content. "[Section 230] created the social structure of the internet we know today," he confidently states.

That's not necessarily a problem---one may argue that such a rebuilding of the internet would be a good thing, though I disagree. But if Section 230 is to be repealed or even rewritten, one must approach the discussion with all of the necessary nuance.


## Freedom of speech, freedom of platforms
The CATO Institute book club continued with remarks by [Emma Llansó](https://cdt.org/staff/emma-llanso/), who is the director of the Center for Democracy and Technology’s Free Expression Project. One of the most compelling parts of her talk was the intersection of 230 and the First Amendment:

> A lot of the content that people want to see platforms taking more action against ... we're talking about speech that is protected by the First Amendment ... we're talking about speech that it'd be difficult to compel a platform to take action against, even if 230 didn't exist. You'd be trying to craft a law that required a content host to take down someone's lawful, constitutionally protected speech. That's probably not going to get very far with the Supreme Court.

Content like disinformation or even certain kinds of hate speech, however reprehensible, is constitutionally protected. That doesn't mean that platforms can't moderate it, though: 230 *enables* platforms to moderate however they want. Platforms can restrict speech based on users' viewpoints, if they so choose. There's no provision of "neutrality" required in 230, though this frequently gets lost in the debate surrounding it.

In principle, users who diagree with a platform's moderation choices are free to leave for another. There is evidence to suggest that this happens: when Reddit banned several subreddits in 2015, one study found that this [likely resulted in](http://comp.social.gatech.edu/papers/cscw18-chand-hate.pdf) the migration of users to other sites. One can argue whether or not it helped to combat hate speech, or whether it led to the growth of more extreme communities on other sites; but for Reddit, they decided they didn't want certain content on their platform, and so they banned it.


## On neutrality
This all gets at the crux of what I find most interesting about the 230 debate: the intersection between it and the nebulous idea of "neutrality." I've written [previously]({{< ref "posts/talk_kidd_neurips.md" >}}) that there's no such thing as a neutral platform, at least algorithmically speaking. Meanwhile, Kosseff spoke with the architects of Section 230, who said they didn't intend for platforms to be neutral. "They wanted platforms to feel free to make these judgments without risking the liability that Prodigy faced."

Platforms like Facebook, Twitter, and YouTube are in hot water with both parties, but for different reasons. Democrats seem to believe that they're not moderating enough (by e.g., Facebook allowing false political ads, the rampant spread of misinformation on Twitter, and potential radicalization pathways on YouTube), whereas Republicans believe they're censoring right-wing views.

Both miss the core point: a platform *can't* be neutral, at least when content is shown algorithmically, nor should it be:
 * Twitter choosing not to allow political ads is a decision that likely hurts less well-known candidates; choosing to keep them would likely result in false advertising. Both are decisions with impacts, and neither is "neutral."
 * No one [seems](https://dl.acm.org/doi/abs/10.1145/3351095.3372879) to [know](https://arxiv.org/abs/1912.11211) what YouTube's recommendation algorithm does, but it doesn't matter; *any* recommendation algorithm they use will implicitly assign value judgments to different types of content.

Put otherwise, it's impossible for these platforms to be neutral in the age of algorithmic content curation. Requiring the FTC to "certify" neutrality among big tech platforms (read: Facbeook, YouTube, and Twitter), as Sen. Hawley [proposed](https://www.theverge.com/2019/6/19/18684219/josh-hawley-section-230-facebook-youtube-twitter-content-moderation) last year, therefore, is bound to be a disaster.

There are legitimate criticisms of these platforms, to be sure---the lack of transparency into algorithmic feeds is my primary one---but conflating neutrality, transparency, and accountability misses the heart of the issue.



