+++
title = "[Paper] Fragile Masculinity: Men, Gender, and Online Harassment"
date = 2020-06-15
draft = "false"
categories = ["papers", "chi2020"]
authors = ["Jennifer D. Rubin", "Lindsay Blackwell", "Terri D. Conley"]
+++

What motivates gendered harassment online? This paper surveys young, white, heterosexual men to reveal how anxieties about masculinity can explain endorsement of harassment towards women. Put otherwise, the online world copies the imbalances and power dynamics of the offline one.

<!--more-->

**Authors**: Jennifer D. Rubin, Lindsay Blackwell, Terri D. Conley

**Link**: [ACM Digital Library](https://dl.acm.org/doi/abs/10.1145/3313831.3376645)


## Motivation
Online harassment remains a pervasive problem across social media platforms. A 2017 Pew study found that "66% of adult internet users in the US had witnessed online harassment," and honestly I'm wondering if the other 34% just have their head buried in the sand.

Women are disproportionately affected by online harassment, both in frequency (reporting it more often) and intensity (including stalking, sexual harassment, or physical threats). "Gendered experiences of online harassment are 'both reflective of and inextrictable from systems of structural oppression,'" the authors write (and quote).

This paper studies "the role of masculinity anxieties in men's endorsement of online harassment." Their research questions, loosely speaking, are:
 * whether men who perceive themselves as insufficiently masculine are more likely to endorse gendered harassment
 * whether these anxieties are correlated with attitudes about the woman's competence
 * whether these anxieties are correlated with willingness to engage in toxic behaviors


## Background: on harassment
The authors list some examples of gendered online harassment:
 * an analysis of chatroom text found women's names received 25x more abusive messages than men's names
 * an analysis of Guardian comments found articles written by women received more blocked comments than those written by men
 * women receive more attacks demeaning competence and appearance
 * the entire "men's rights activism" (MRA) movement (related: see [Auditing Radicalization Pathways on YouTube]({{< ref "papers/auditing_radicalization_youtube_ribeiro.md" >}}) by Ribeiro et al.)

The affordances of social media can make online harassment different than offline. Social media amplifies the visibility of content, and harassment targets are often powerless to control it. Anonymity can exacerbate harassment. In the absence of authority figures or consequences, people are more likely to misbehave.

I usually skip writing about the related work section, though reading a lot of these sections helps me to better understand the state of the field. Here, though, I chose to write about it because it's important to know that online harassment is a gendered experience, and that platforms aren't neutral for choosing to do nothing about it.


## Methods
The authors surveyed 264 white, heterosexual men between 18 - 25 from the US. They were targeted because "critical scholars have argued that whiteness and heterosexual masculinity signify the prototypical man in the US." Definitely valid---but it makes me (and the authors!) wonder, naturally, about the extent to which this applies to men of color, queer men, or older men.

Participants were shown three fake Twitter profiles. The first two were fillers / controls, and the third was what the researchers were actually interested in:
 > * Jonathan Miles, a journalist who writes about travel;
 > * Kara Michaels, a journalist who writes about public health;
 > * and Erin Griffith, a journalist who writes about creating an equitable environment for women

They rated each user on four traits (intelligent, trained, expert, informed), which are validated measures of how people view a public figure's competence (hooray for measurement validity!). They evaluated five tweets (one positive, four inflammatory and sexist) made in response to the female equality journalist:

> 1. “Just ran across your article. I give you props for speaking out in public which is never easy” (positive);
> 2. “The awkward moment in an all-female board meeting when you realize no one has made you sandwiches” (negative);
> 3. “Stop about how you get treated. Go find someone who will listen or go back to the kitchen. It's better than you bitching” (negative);
> 4. “You complain about damsels in distress in the media, but you do it all the time for attention whore” (negative);
> 5. How can you be against hot female characters. Is it because you are an ugly bitch?”

(yikes!)

Participants then responded to questions about their age, ethnicity, education, social media use, and various gender-related characteristics. This included Likert-scale questions like "I am less masculine than the average guy," questions about online disinhibition ("It is easy to write insulting things online because there are no reprecussions"), and conformity to masculine roles ("It feels good to be important").


## Results
The paper's results mostly consist of a bunch of regressions and p-value analyses---ugh. But here we go:

> We found that for some young men, masculinity anxieties play an important role in their attitudes. **Young men who perceived themselves as less masculine than the average man and who experienced distress about this violation reported lower competence ratings and greater harassment endorsement directed at a woman who advocated for gender equality on social media;** additionally, these men also reported greater toxic online disinhibition.

These are all (statistically) significant effects, and it doesn't *feel* surprising to me. I might have expected the opposite conclusion, too, though; that men who believe themselves to be overly (toxic-ly) masculine might be more likely to endorse harassment. (Though this toxicity would probably be rooted in a deeper anxiety about masculinity, too.)

> When considering mechanisms linking masculinity anxieties to harassment endorsement, results show that young men's adherence to masculine norms (e.g., aggression, dominance) and toxic online disinhibition fully mediated this relationship. That is, **one reason that young men who experience masculinity anxieties more readily endorse gender harassment is that they are more likely to adhere to normative masculine norms and in turn, engage in toxic online disinhibition.**

The women's equality journalist was rated as significantly less competent than the others, too---ouch. 


## Misc. standalone thoughts
**Interviews**: I came into this paper expecting interviews to have been part of this work, and was a little disappointed to find out that they weren't. The results here are still valuable, but drilling down into what men experiencing this anxiety say sounds interesting.

**Intersectionality**: The authors highlight how intersectionality can cause women to experience overlapping forms of harassment online; women of color will be harassed in different ways than white women (ugh, I feel so sad writing that). Incorporating the ideas from, for example, [Critical Race Theory for HCI]({{< ref "papers/critical_race_theory_ogburu.md" >}}) sounds like a great future direction for this work.

**Political figures**: I'd be interested in seeing how the behaviors discussed here differ when considering harassment directed at political figures (or celebrities). From my experience on Twitter, harassment at politicians is much more normalized, and I wonder about the characteristics of people who are openly hostile towards politicians.


## More coherent reflections
I think this paper's greatest value is not in demonstrating how online harassment is different than offline, but in how it *isn't*. (This sounds stupid, but a first reading of the title sounds like this is studying online harassment on its own, not relative to offline harassment.) Men with anxieties about masculinity are more likely to be aggressive or engage in harassment offline---this is a result from psychology---and this holds online, too.

The authors discuss possible interventions, and caution against moderation alone as being too reactive. Prior research suggested "empathy-based interventions" might be promising; e.g., accounts sanctioned by a white male avatar with many followers were less likely to tweet out racist slurs later.

I also like how this paper refers to "the facade of neutrality," or the idea that there's no such thing as a neutral platform. "Gendered experiences of online harassment are 'both reflective of and inextricable from systems of structural oppression,'" the authors write and quote. Online platforms, and harassment on them, exist in the context of gender imbalances, and not acknowledging these imbalances perpetuates them.

> This research suggests that instead of viewing the proliferation of online gender harassment as solely an outcome of technological advancements, there is a “particular political purpose of male [hostile] behavior: the silencing of women who dare to speak in the online public sphere" [66]. We must work to develop more empirically informed policies that consider the intersection between gender dynamics and technology.
