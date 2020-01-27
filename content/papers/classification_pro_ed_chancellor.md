+++
title = "Paper: Multimodal Classification of Moderated Online Pro-Eating Disorder Content"
date = 2020-01-26
draft = "false"
categories = ["papers"]
+++

This is another social computing paper that develops a deep learning classifier for pro-eating disorder content on Tumblr. This work bridges the gap between deep learning and social computing, contributing context-sensitive DL approaches for identifying deviant content.

<!--more-->

**Authors**: Stevie Chancellor, Yannis Kalantidis, Jessica Pater, Munmun De Choudhury, and David Shamma

**Link**: on Chancellor's [website](http://steviechancellor.com/wp-content/uploads/2019/03/multimodal-classification.pdf) (published in CHI 2017)

## Summary
From the abstract:

> We develop a deep learning classifier that jointly models textual and visual characteristics of pro-eating disorder content that violates community guidelines ... Our approach uses human sensitivity throughout to guide the creation, curation, and understanding of this approach to challenging, deviant content. We discuss how automation might impact community moderation, and the ethical and social obligations of this area.

The problems are similar to ones we've seen on other platforms, like [Instagram]({{< ref "removed_pro_ed_chancellor.md" >}}). There's lots of content in pro-ED communities, but it's not all dangerous. The content that is dangerous, however, shows "unique social contagion-like effects on those who are exposed to this content." Communities are designed to minimize the likelihood that outsiders will report them. And, of course, people in these communities are unlikely to report the very places that they often go to for support (often in "maintaining disordered behaviors").

**Dataset creation**: The authors curate a dataset of ~900K pro-ED posts on Tumblr (this work happened while the lead author was at Yahoo! Research). This was done by finding public posts with seed tags ("#anorexia", "#pro ana", "#thighgap", etc.), snowball sampling to collect more posts, filtering out sexual or recovery-related tags, identifying posts that were removed by moderators, and finding non-pro-ED posts that are similar to the pro-ED ones.

**Handling nuance**: certain pro-ED posts are challenging for human moderators to assess, and there's no way to know which posts were borderline but allowed to stay up. The authors' classifier uses 3 labels: posts that are clearly fine, posts that are difficult to assess, and posts that are clearly deviant content. Studying the classifier's performance on the second class leads to interesting insights about its performance at the class boundary. Three "raters" labeled posts into these classes and then created a shared set of rules for ratings.

**Model details**: this is super cool. The authors use the AlexNet CNN on the images in the posts directly, reducing each to a 128-dimensional vector. They also use a skipgram model (in word2vec) on the text in the posts; after learning 128-dimensional embeddings of each tag, the tags within a post are averaged together. These two vectors are concatenated, and a final neural network outputs the probability that a post is deviant. The model outperformed SVM baselines and had 85% recall, and they tuned hyperparameters, layer size, and other model attributes.

The paper concludes with a lengthy discussion about how this method could impact human moderators on Tumblr. This could potentially be used as a first pass for human moderators, as part of an online learning system, or to help train new moderators. Of course, adding automation to moderation is certain to impact the communities being moderated, and there are various tensions here. "Rampant automated moderation of content perceived to be deviant by a human-machine system could additionally discourage user participation on a platform" is a nice way of saying that bad mods make users leave communities.


## Thoughts, connections, and questions
The central ethical challenge of this paper is whether social networks have an obligation to curate content on their platforms, and this is even trickier in the case of health-impacting pro-ED behavior. Earlier research showed that after banning certain tags on Instagram, the pro-ED community became *more* focused on dangerous ideas. But keeping pro-ED content can lead to contagion-like effects, and exposure to it can encourage dangerous behavior in others. There's no right answer, and research in this space has to be especially sensitive to the [health of the humans]({{< ref "who_is_human_chancellor.md" >}}) behind these posts.

One of the questions I had about the [Instagram paper]({{< ref "removed_pro_ed_chancellor.md" >}}) was whether the authors had tried training a CNN on the image posts, rather than a text classifier on the tags associated with them. I suspect they didn't because (1) I don't believe Instagram makes downloading the images easy, and (2) the focus of that paper wasn't on the classifier. It is great to see this approach used here.

I am surprised that the authors chose to report recall as the metric of interest, not precision. Recall is more important for moderation at scale, I guess, so that one identifies as much deviant content as possible. But as a user of these platforms I value high precision; I don't want ML models to have many false positives and remove posts that are within the guidelines. This approach would have a lot of value when used as a first pass for human moderators.

I've also thought about how automated moderation seems to be a cat-and-mouse game sometimes. Systems like AutoModerator on Reddit will remove content according to certain criteria (usually keyword matches, but with application of this work potentially more complex methods). Users will write posts in a way to get around the mod, but then the automod will be updated to account for this. I could imagine the same thing happening in this case, but with less transparency, and I suspect that many machine learning models would be too brittle to handle the creativity of internet users trying to get around the rules. For example, how does this model respond to posts with totally unseen tags?

This was a great paper, and I loved how quickly it went from talking about eating disorders and deviant content to SOTA performance and details of neural nets (then back again!). The foray into the deep learning world requires speaking that field's language, I guess, and so we see tables of metrics and grid searches just pages after discussions of what pro-ED content is. This is the kind of paper that opens my mind to the type of research that's possible.

