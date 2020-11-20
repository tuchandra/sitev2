---
title: "[Paper] Decolonial AI: Decolonial Theory as Sociotechnical Foresight in Artificial Intelligence"
date: 2020-11-20
draft: false
categories:
- papers
tags:
- reading club
authors:
- Shakir Mohamed
- Marie-Therese Png
- William Isaac
---

It's no surprise that AI can be harmful, but discussions of AI harm often miss historical context. This paper explores the role of decolonial theories in AI to address this gap.  Through ethical foresight, the authors argue, we can rethink the role of AI in helping and harming people of different societies.

<!--more-->

Judah and I have had this paper on our reading lists for a while. As part of our "one person gives a slate of papers, the other picks one" process, this paper has appeared at least four or five times. I'm excited to finally get around to it.

**Link**: [arXiv](https://arxiv.org/abs/2007.04068)

**Authors**: Shakir Mohamed, Marie-Therese Png, William Isaac


## Values and AI
The abstract poses a familiar warning about artificial intelligence:

> Artificial Intelligence (AI) is viewed as amongst the technological advances that will reshape modern societies and their relations. While the design and development of systems that continually adapt holds the promise of far-reaching positive change, they simultaneously pose significant risks, especially to already vulnerable peoples. **Values and power are central to this discussion.**

I love the last sentence. They later ask "What values and norms should we aim to uphold when performing research or deployment of systems based on artificial intelligence?" implying that having a clear values system can help us to identify failures of AI. 

These values include epistemic values, like internal consistency and falsifiability, but also *contextual values* which "reflect moral, societal, or personal concerns." One of these contextual values might be "reducing overall costs," while another might be "addressing racial inequity."

The authors study the values of modern AI through the lens of critical science, emphasizing "the role of post-colonial and decolonial critical theories." I found it interesting that almost all of their references here were from the past 10—and mostly the past 5—years.

> In this paper, our aim is to guide readers through a brief introduction to decolonial theory, and to demonstrate how this theoretical framework can serve as a powerful lens of ethical foresight.

## Decolonial theory and AI
*Coloniality* refers to the "continuation of power dynamics" between colonisers and colonised. Some refer to its power in terms of authority or knowledge; others in terms of race and gender. In the digital era, Couldry and Mejias in their book [The Costs of Connection: How Data Is Colonizing Human Life and Appropriating It for Capitalism](https://www.sup.org/books/title/?id=28816) discuss it in terms of data relations.

Decolonial theory uses historical hindsight to understand patterns of power and harm:

> Decolonisation refers to the intellectual, political, economic and societal work concerned with the restoration of land and life following the end of historical colonial periods.

There are limitations here: it's possible for decolonial theory to turn into too much of a binary, e.g., "West and the rest" or "powerful and oppressed." These limitations lead the authors to adopt the broader critical science view mentioned earlier.

How does this all relate to AI? Broadly, I think, the idea is that because technological systems exist in a social context, they are subject to the same forms of coloniality as anything else. The authors say this in more words:

> The coloniality of power can be observed in digital structures in the form of sociocultural imaginations, knowledge systems, and ways of developing and using technology which are based on systems, institutions, and values that persist from the past and remain unquestioned in the present. As such, emerging technologies like AI are directly subject to coloniality, giving decolonial critical theories a powerful analytical role.


## Algorithmic coloniality
Building on everything above, the authors use the term *algorithmic coloniality* for data colonialism related to algorithms across societies. The third section of the paper cites several examples of this.

*Algorithmic decision systems* like predictive policing, facial recognition and biometrics, and hate speech detection all perpetuate historical injustices. This isn't new. But the authors argue that contextualising these issues in terms of historical colonialism can be useful.

> A decolonial framework helps connect instances of algorithmic oppression to wider socio-political and cultural contexts, enabling a geographically, historically and intersectionally expansive analysis of risks and opportunities pertaining to AI systems. **Notably, it allows for the analysis to move beyond North American or European identity frameworks or definitions of harms.**

This is a great point; lots of modern discourse on this subject feels like it's written from the American perspective without regard for the rest of the world. 

*Algorithmic exploitation* expands on the idea of data as labor, noting that data labeling often exacerbates historical economic inequalities. *Beta testing* can use marginalized populations or low-income countries to tune software systems. Cambridge Analytica beta tested their algorithms on Kenyan and Nigerian elections (apparently chosen because of weaker data protection laws!) before using them in the US and UK.


## Towards decolonial AI
> By fusing the fields of artificial intelligence and decolonial theories we can take advantage of historical hindsight to develop new tools of foresight and practice. In so doing, we can establish a decolonial AI that can re-create the field of artificial intelligence in ways that strengthens its empirical basis, while anticipating and averting algorithmic colonialism and harm.

The authors put forth *tactics* to open up new research areas; they're not solutions (which don't exist) so much as they are avenues for reform.

**Supporting a critical technical practice of AI**: there is a need to recognize power imbalances and value systems. The authors cite Agre's "Critical Technical Practice of AI" (CTP), which (I think) helps foster context-aware technological progress. 

This critical practice manifests itself in several ways. One is fairness, in which "a true definition of fairness is often a function of political and social factors." Another is in safety, where disconnects between technical safety and social safety should force us to reconsider discussions on AI safety. The authors also suggest that AI might be used to encourage *resistance* (to coloniality) in ways that are not generic techno-solutionism.

**Establishing reciprocal engagements and reverse pedagogies**: "reverse tutelage" seems to mean "learn from colonised peoples." They write: "Deciding what counts as valid knowledge, what is included within a dataset, and what is ignored and unquestioned is a form of power." Intercultural dialogue, documentation, and community-engagded design can inform this.

**Renewal of affective and political community**: how can we create new types of political community to reform historical colonial systems? Supporting grassroots organizations, like Data for Black Lives or Queer in AI, is one way. I personally love this quote, though:

> The decolonial imperative asks for a move from attitudes of technological benevolence and paternalism towards solidarity.

## My thoughts
I'm glad I read this paper. It's quite different from anything I've read before (I said this a couple weeks ago about [The Hardware Lottery]({{< ref "papers/hardware_lottery_hooker.md" >}}) too), and I love reading that stretches my world view.

One of the signs that I've just read something good is that it makes me want to keep reading more and more. Jenny Odell's *How to Do Nothing* led me to check out danah boyd's *It's Complicated*, Malcolm Harris' *Kids These Days*, and Jia Tolentino's *Trick Mirror*. 

Reading this paper further told me that I *really* need to read Ruha Benjamin's [Race after Technology](https://www.ruhabenjamin.com/race-after-technology) and Safiya Noble's [Algorithms of Oppression](https://nyupress.org/9781479837243/algorithms-of-oppression/). I've had them on my reading list for months, but have been reading other books in the meantime! Now, I hope to finish them by the end of the year.

One of the concepts that came up a few times is the idea of ethical foresight. Grounding oneself in the history of colonialism can help predict how an AI system will be used for harm. One of my conversations last week, when reading [*Data and Power*]({{< ref "papers/data_and_power_archival_schoenebeck.md" >}}), was that as a designer you often can't know how a technological system (e.g., photos on Facebook) will be used in practice. I think that's still true. But this paper shows that with appropriate foresight, you *can* see how it can be *misused.*

I'll end with a quote from their conclusion:

> Any commitment to building the responsible and beneficial AI of the future ties us to the hierarchies, philosophy and technology inherited from the past, and a renewed responsibility to the technology of the present. 

This is powerful. I look forward to reading more on this subject.
