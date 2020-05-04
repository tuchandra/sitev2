+++
title = "[Paper] Re-Shape: A Method to Teach Data Ethics for Data Science Education"
date = 2020-05-03
draft = "false"
categories = ["papers", "chi2020"]
authors = ["Ben Rydal Shapiro", "Amanda Meng", "Cody O'Donnell", "Charlotte Lou", "Edwin Zhao", "Bianca Dankwa", "Andrew Hostetler"]
+++

Imagine that a week of your personal location data were made public. What would strangers be able to learn about you? The authors use this question to motivate Re-Shape, a method for teaching students about the ethics of data collection and use, building on the feminist idea of "cultivating care."

<!--more-->

**Authors**: Ben Rydal Shapiro, Amanda Meng, Cody O'Donnell, Charlotte Lou, Edwin Zhao, Bianca Dankwa, Andrew Hostetler

**Link**: [ACM Digital Library](https://dl.acm.org/doi/abs/10.1145/3313831.3376251)

## Background
Data ethics are increasingly important, but there is little ethics education in computer science and limited research on the subject. This paper makes the suggestion that "teaching data ethics should be a more cnetral issue for HCI researchers," and designs and studies a tool to do so (available online at https://www.benrydal.com/re-shape). From the introduction:

> Particularly, **we present and analyze Re-Shape, a method to teach about the ethical implications of data collection and use.** Re-Shape, as part of an educational environment, builds upon the idea of *cultivating care*, a feminist approach to ethics that aims to engage students with a concept of **responsibility to the other, interdependence, and attentiveness to vulnerability and inequality in the socio-technical systems we design.** Re-Shape utilizes existing open-source data collection and processing tools, a version of a geovisualization tool called the interaction geography slicer (IGS) that we have built and also make open-source in this paper, and a set of learning activities that bring feminist care ethics to undergraduate computer science courses.

This work builds upon the idea of **"an ethic of care"**, which is a feminist approach consisting of the second bolded part above (shared responsibility and attentiveness to vulnerability and inequality). "Care brings a notion of belonging or attachment as well as responsibility to decision-making that extends beyond oneself," the authors write. Sounds like I have some reading to do from feminist science and technology scholars!

> Seminal feminist science and technology theorist, Puig de la Bellacasa, writes in *Matters of Care* that in order to think with an ethic of care, we must engage in “thinking-with,” which she describes as a relational way of thinking that creates new patterns and layers of meaning out of previous multiplicities [39].

Helping students to engage in "thinking-with" is the goal of Re-Shape.


## Re-Shape
Re-Shape, and the case study the authors describe in this work, has four steps:

 1. **Personal data collection**: using a transparent GPS collecting app, record physical movements for up to a week.
 2. **Data processing**: convert the GPS data to a CSV for readability.
 3. **Collaborative visualization**: in small groups, use a custom-built visualization tool to view data through space and time, sometimes overlaid over other digital maps (e.g., a map of historical redlining)
 4. **Reflect**: using the questions below.

The reflection questions are really interesting:

 > The discussion questions for computer science include: Describe what it felt like to collect and be able to see and interact with your own physical movement data? What does your physical movement data tell you about you? What things had power over your movement - increasing your mobility or decreasing it? What is your relationship to your local geographic context? **What other forms of data about you might be more informative and why? Finally, to what extent are you your data?**

This is a powerful idea---reducing people to their own data, then asking them what it tells and (importantly!) what it does not. 


## Student experiences
**Novelty**: Most students found the experience of collecting their own data to be novel in some way. Some mentioned how, despite their location data being collected by Google, Apple, weather apps, etc., they never tried to study it themselves. Others noted how the data allowed them to "scrutinize [their] life in a very intimate, personal way." Most students noted that these realizations came after seeing their data in comparison with and alongside other students' data---that's the "thinking with" from the design principles.

**Empowering and unsettling**: Students were both empowered and unsettled by these activities. Consider the following quotes:

> Taking the wheel and encharging myself with my own data gave me not only an interesting outlook on data collection as a whole but also gave me a chance to introspect a portion of my life.

vs.

> As I observed and was able to extrapolate patterns from the tracking data I was looking at **I felt more and more vulnerable to the strangers whom I trust with my data** as I realized that tens if not hundreds of software applications out there similarly manipulate data about my life with a potential to learn things that are actually very personal and that I would be reticent to hand out details about to friends.”

This dichotomy highlights the importance of personal data; were it unimportant or unremarkable, it's unlikely students would be interested in studying it nor feel uneasy about sharing it. This activity revealed how it's possible for students to feel both empowered and burdened by data, a complex dynamic.

**Privacy**: this activity shaped students' views on data privacy. Some found that it revealed issues they had not previously considered (e.g., how much it's possible to learn from their personal lives). Another wrote "it feels unnatural to have access to this" when considering how deeply personal location data was, despite having previously believed that people who use the internet have no real privacy.

> Notably, both the process of collecting and visualizing data through novel tools was critical to embodying personal data in ways that led to unique and meaningful experiences with data privacy. This theme demonstrates how students engaged in care for technologies and for users through the concerns they attached to questions like who gets to know when I am home and who gets access to my data.

**Situated knowledge & responsible caring**: students' reflections here were quite interesting:
 * thinking they should study in the library more, instead of home, so they "look like a better student"
 * realizing the extent to which other, less transparent apps are tracking their location
 * recognizing how this data could be used in predatory ways on vulnerable populations

> We submit that Re-Shape offered an explicit process for students to explore their situated knowledge through personal data collection and visualization of their physical movement data. Subsequently, students were able to explore and discuss their visions and insights into ethical computing and consider technical tools as modes of responsible caring.


## Reflections and future work
The idea behind this work is quite powerful: having students engage with their own data head-on can help them to develop an understanding of data collection practices and data ethics. The authors described wanting students to feel like they are the "other" in a data setting---that their needs are potentially not being met, that they are not being cared for. While dangerous (the protective classroom setting is *critical* here), I think there's more to be done here, and the authors seem to agree:

> First, **we see significant value to developing assignments and activities that allow students to see others’ data that is very different than their own.** In our current work for example, we have begun to partner with local high schools to allow both our students and high school students to simultaneously collect and collaboratively visualize their physical movement data in ways that highlight similarities and dramatic differences in their data [10]. This in turn leads to richer and more diverse understandings of how surveillance technologies and data science systems differentially impact people (e.g., college students, historically minoritized populations) who live in the same geographic context.

One of my ideas might be to (with permission, with the expectation that anything learned stays in the classroom, and with any other precautions deemed necessary) have students try to see what they can infer about another student's life through their location data. This could also feasibly be done using synthetic location data that doesn't belong to any real person.

My biggest desire for future work in this space is that it make more explicit the connection from personal data ethics to design implications. Having students confront some of the issues with personal data collection is great, and it clearly helped them to develop their views on data ethics and privacy. The authors note this:

> Third, future work needs to develop ways to translate students’ experiences with data to **imagined futures of work concerning ethical computing and technical tools as modes of responsible computing.** Namely, activities and reflection should be further designed to allow students to examine, for example, how technologies they are developing in other courses or encounter in their daily lives consider or do not consider ethical values and qualities of caring practices.

Given these experiences, how can one build systems that protect their classmates? That protect minoritized groups? That protect children? These are the questions that I think a deeply personal experience with data collection can help to answer. I'm really excited to see how this develops.

