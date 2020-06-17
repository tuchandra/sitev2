+++
title = "Spark Summit 2020: an early look at the schedule"
date = 2020-06-16
draft = false
categories = ["spark"]
+++

<style type="text/css" rel="stylesheet">.main .content { max-width: none; overflow-x: scroll; }</style>

[Spark + AI Summit](https://databricks.com/sparkaisummit/north-america-2020) is happening virtually next week, and I will be spending the second half of next week watching talks from there. I went through the [schedule](https://databricks.com/sparkaisummit/north-america-2020/agenda) to make a preliminary list of the talks that sound interesting to me. And just like [last year]({{< ref "spark/spark_overview.md" >}}), I'll be writing about them here.

<!--more-->

## My interests (what I'm filtering for)
I'm certain that all of these talks will provide value to someone out there; but I obviously can't watch them all, nor do I want to! I'm looking out for (1) talks that might be interesting to me, (2) talks that might be useful to my organization in data science (broadly, researchers developing new methodologies), and (3) talks that might be useful to my company (large and very enterprise-y, but committed to Spark). 

This means there are a few kinds of things I'm not interested in:
 * "how our company transitioned to Spark" talks, because I'm not in a position where that's relevant to me, and we're already heavily invested in Spark
 * A lot of technical deep-dives (e.g., about Spark internals), which go over my head
 * Spark + \<other tool>, like Delta Lake, HorovodRunner, other Apache software, or Kubernetes, which are usually too specialized for me
 * Some adjacent fields (security, data engineering and warehouseing, streaming, etc.), which I'm typically not interested in

Even though Spark Summit will be virtual, it's still easy to get burnt out at conferences. This one has hundreds of talks over three days, and realistically I'm probably not going to watch more than four or five each day besides the keynotes.

What follows is my pared-down list of the [full talks schedule](https://databricks.com/sparkaisummit/north-america-2020/agenda). I'm definitely interested in other suggestions, though, so feel free to send them to me@tusharc.dev.

One final note: **all times listed are in CDT,** since I'm in Chicago. The talks website lists everything in PDT, and a lot of my colleagues are in New York, so convert accordingly.


## Wednesday, June 24
The [morning keynotes](https://databricks.com/session_na20/wednesday-morning-keynotes) (10:30 AM - 12:30 PM CDT) are probably worth watching:
 * *Realizing the vision of the data lakehouse* by Ali Ghodsi (CEO and co-founder of Databricks)
 * *Introducing Apache Spark 3.0: A retrospective of the last 10 years, and a look forward to the next 10 years to come* by Matei Zaharia (creator of Spark) and Brooke Wenig (ML Practice Lead at Databricks)
 * *How Starbucks is achieving its ‘Enterprise Data Mission’ to enable data and ML at scale and provide world-class customer experiences* by Vishwanath Subramanian (director of data & analytics engineering at Starbucks)

Here are some interesting-looking talks from the first half of the day:

<table>
<thead>
  <tr>
    <th style="min-width: 120px">Time (CDT)</th>
    <th>Title and link</th>
    <th>Speakers</th>
    <th>Why I'm interested</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>1:00 - 2:00 PM</td>
    <td><a href="https://databricks.com/session_na20/deep-dive-into-the-new-features-of-apache-spark-3-0">Deep Dive into the New Features of Apache Spark 3.0</a></td>
    <td>Xiao Li and Wenchen Fan (Databricks)</td>
    <td>Mostly in the <a href="https://databricks.com/blog/2020/05/20/new-pandas-udfs-and-python-type-hints-in-the-upcoming-release-of-apache-spark-3-0.html">new UDFs</a>, since Spark UDFs have been a pain point for my teams for a while.</td>
  </tr>
  <tr>
    <td>1:00 - 1:30 PM</td>
    <td><a href="https://databricks.com/session_na20/portable-scalable-data-visualization-techniques-for-apache-spark-and-python-notebook-based-analytics">Portable Scalable Data Visualization Techniques for Apache Spark and Python Notebook-based Analytics</a></td>
    <td>Douglas Moore (Databricks)</td>
    <td>I'm really into data viz! Headless rendering sounds really interesting, as does generally scaling up your visualizations and integrating with Spark.</td>
  </tr>
  <tr>
    <td>1:00 - 1:30 PM</td>
    <td><a href="https://databricks.com/session_na20/power-of-visualizing-embeddings">Power of Visualizing Embeddings</a></td>
    <td>Pramod Singh (Bain & Co.)</td>
    <td>My team is getting started with embeddings for one of our models; visualizing and undersatnding them sounds interesting.</td>
  </tr>
  <tr>
    <td>1:35 - 2:05 PM</td>
    <td><a href="https://databricks.com/session_na20/productionalizing-models-through-ci-cd-design-with-mlflow">Productionalizing Models through CI/CD Design with MLflow</a></td>
    <td>Mary Grace Moesta & Peter Tamisin (Databricks)</td>
    <td>I love MLflow and have gotten a lot of value out of it, plus I'm interested in learning more about CI/CD for model deployment.</td>
  </tr>
  <tr>
    <td>1:35 - 2:05 PM</td>
    <td><a href="https://databricks.com/session_na20/tuning-ml-models-scaling-workflows-and-architecture">Tuning ML Models: Scaling, Workflows, and Architecture</a></td>
    <td>Joseph Bradley (Databricks)</td>
    <td>I don't really care about hyperparameter tuning, but it's a common enough topic that I figured someone might.</td>
  </tr>
  <tr>
    <td>2:10 - 2:40 PM</td>
    <td><a href="https://databricks.com/session_na20/how-not-to-scale-deep-learning-in-6-easy-steps">How (Not) To Scale Deep Learning in 6 Easy Steps</a></td>
    <td>Sean Owen (Databricks)</td>
    <td>The "here are common pitfalls" talks are often interesting because they open my eyes to problems I'd never considered before. The talk description features the line "deep learning sometimes feels like sorcery," which, well, yeah.</td>
  </tr>
</tbody>
</table>

Then there are the [afternoon keynotes](https://databricks.com/session_na20/wednesday-afternoon-keynotes):
 * *Racism and policing: the path forward* by Dr. Phillip Atiba Goff from the Center for Policing Equity
 * *Science vs Covid, lessons from Covid19Primer.com* by Amy Heineike, an author and professor at Loyola
 * *The Signal and the Noise: the Big Lessons from 20 years of Data Analysis* by Nate Silver from FiveThirtyEight

None of these have descriptions (?), and I'm not really sure what the first two have to do with Spark or AI, but I'm interested in hearing about them regardless. There are more talks that follow these keynotes---

<table>
<thead>
  <tr>
    <th style="min-width: 120px">Time (CDT)</th>
    <th>Title and link</th>
    <th>Speakers</th>
    <th>Why I'm interested</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>4:30 - 5:00 PM</td>
    <td><a href="https://databricks.com/session_na20/a-production-quality-sketching-library-for-the-analysis-of-big-data">A Production Quality Sketching Library for the Analysis of Big Data</a></td>
    <td>Lee Rhodes (Verizon)</td>
    <td>This is one of the "I've never heard of this but it sounds cool!" talks, which is about real-time stochastic streaming algorithms. These are needed when your data is too big for exact queries (e.g., count distinct), and "sketches" are the only option.</td>
  </tr>
  <tr>
    <td>4:30 - 5:00 PM</td>
    <td><a href="https://databricks.com/session_na20/an-approach-to-data-quality-for-netflix-personalization-systems">An Approach to Data Quality for Netflix Personalization Systems</a></td>
    <td>Preetam Joshi & Vivek Kaushal (Netflix)</td>
    <td>I love hearing about what Netflix has to deal with at their scale. This appears to be a talk about how they maintain data quality across hundreds of terabytes of data and several machine learning models that are frequently retrained.</td>
  </tr>
  <tr>
    <td>4:30 - 5:00 PM</td>
    <td><a href="https://databricks.com/session_na20/koalas-making-an-easy-transition-from-pandas-to-apache-spark">Koalas: Making an Easy Transition from Pandas to Apache Spark</a></td>
    <td>Takuya Ueshin (Databricks)</td>
    <td>Koalas was released last year, and it seemed promising but incomplete. What's it like now?</td>
  </tr>
  <tr>
    <td>4:30 - 5:00 PM</td>
    <td><a href="https://databricks.com/session_na20/zipline-a-declarative-feature-engineering-framework">Zipline – A Declarative Feature Engineering Framework</a></td>
    <td>Nikhil Simha (Airbnb)</td>
    <td>The "here is our custom ML platform" talks give me a glimpse into how other companies do ML, and what they view as their biggest problems. Airbnb has made a lot of cool stuff before, so this could be good.</td>
  </tr>
  <tr>
    <td>5:05 - 5:35 PM</td>
    <td><a href="https://databricks.com/session_na20/preventing-abuse-using-unsupervised-learning">Preventing Abuse Using Unsupervised Learning</a></td>
    <td>James Verbus (LinkedIn)</td>
    <td>Unsupervised learning is a pretty big gap of mine, and I've heard about isolation forests from one of my coworkers.</td>
  </tr>
  <tr>
    <td>5:40 - 6:10 PM</td>
    <td><a href="https://databricks.com/session_na20/pandas-udf-and-python-type-hint-in-apache-spark-3-0">Pandas UDF and Python Type Hint in Apache Spark 3.0</a></td>
    <td>Hyukjin Kwon (Databricks)</td>
    <td>The new UDFs are one of the most exciting parts about Spark 3.0, and this talk seems like it'll be a good technical overview of what's new.</td>
  </tr>
</tbody>
</table>

Wow, that was a lot; I am starting to feel burnt out just from writing it.


## Thursday, June 25
The [morning keynotes](https://databricks.com/session_na20/thursday-morning-keynotes) are from 11 AM - 12:30 PM:
 * *Simplifying Model Development and Management with MLflow* by Matei Zaharia and Sue Ann Hong
 * *How Credit Suisse is leveraging open source data and AI platforms to drive digital transformation, innovation and growth* by Anurag Sehgal (meh)
 * *Introducing the next generation Data Science Workspace* by Clemens Mewald and Lauren Richie (this looks like a new product announcement from Databricks)
 * *Responsible ML - bringing accountability to data science* by Rohan Kumar and Sarah Bird from Microsoft (yes! thank you!)

And here are the talks I'm looking at---

<table>
<thead>
  <tr>
    <th style="min-width: 120px">Time (CDT)</th>
    <th>Title and link</th>
    <th>Speakers</th>
    <th>Why I'm interested</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>1:00 - 1:30 PM</td>
    <td><a href="https://databricks.com/session_na20/artificial-lawyers-will-your-next-attorney-be-a-machine">Artificial Lawyers. Will Your Next Attorney be a Machine?</a></td>
    <td>Fernando Ortega Gallego & Eduardo Matallanas de Ávila (Plain Concepts)</td>
    <td>This sounds like an interesting application that I don't know very much about. What's going on in AI + law?</td>
  </tr>
  <tr>
    <td>1:00 - 1:30 PM</td>
    <td><a href="https://databricks.com/session_na20/continuous-delivery-of-ml-enabled-pipelines-on-databricks-using-mlflow">Continuous Delivery of ML-Enabled Pipelines on Databricks using MLflow</a></td>
    <td>Michael Shtelma & Thunder Shiviah (Databricks)</td>
    <td>Maybe I'm getting too many MLflow talks, but this sounds interesting; automation, continuous retraining, and deployment are blind spots of mine.</td>
  </tr>
  <tr>
    <td>1:00 - 1:30 PM</td>
    <td><a href="https://databricks.com/session_na20/everyday-probabilistic-data-structures-for-humans">Everyday Probabilistic Data Structures for Humans</a></td>
    <td>Yeshwanth Vijayakumar (Adobe)</td>
    <td>I don't know anything about probabilistic data structures, but one of our teams is using bloom filters for a certain application. This sounds like a nice high-level overview of these tools.</td>
  </tr>
  <tr>
    <td>1:30 - 2:00 PM</td>
    <td><a href="https://databricks.com/session_na20/scaling-quantitative-research-on-sensitive-data">Scaling Quantitative Research on Sensitive Data</a></td>
    <td>Slava Frid (Worldquant Predictive)</td>
    <td>This sounds like an interesting challenge - buliding models and managing data while minimizing the number of eyes that see the data itself, and ensuring transparency and audits.</td>
  </tr>
  <tr>
    <td>1:30 - 2:30 PM</td>
    <td><a href="https://databricks.com/session_na20/women-in-unified-data-analytics-panel-discussion">Women in Unified Data Analytics Panel Discussion</a></td>
    <td>Ali Vanderveld (ShopRunner), Franziska Bell, Ph.D (Toyota Research), Rama Assaf-Smith (Comcast)</td>
    <td>This is a panel by three female leaders in analytics, and it for sure looked worth including.</td>
  </tr>
  <tr>
    <td>2:10 - 2:40 PM</td>
    <td><a href="https://databricks.com/session_na20/on-improving-broadcast-joins-in-apache-spark-sql">On Improving Broadcast Joins in Apache Spark SQL</a></td>
    <td>Jianneng Li (Workday)</td>
    <td>I learned about broadcast joins last year and found them to be a great trick to have up my sleeve; this sounds like a good place to learn more.</td>
  </tr>
  <tr>
    <td>2:10 - 2:40 PM</td>
    <td><a href="https://databricks.com/session_na20/the-2020-census-and-innovation-in-surveys">The 2020 Census and Innovation in Surveys</a></td>
    <td>Zack Schwartz (U.S. Census Bureau)</td>
    <td>The intersection of traditionally-small-data surveys with the scale of the US Census creates interesting problems (according to the talk description).</td>
  </tr>
  <tr>
    <td>2:10 - 2:40 PM</td>
    <td><a href="https://databricks.com/session_na20/using-bayesian-generative-models-with-apache-spark-to-solve-entity-resolution-problems-dedup-merging-uniqueness-at-scale">Using Bayesian Generative Models with Apache Spark to Solve Entity Resolution Problems (DeDup, Merging, Uniqueness) at Scale</a></td>
    <td>Charles Adetiloye & Timo Mechler (MavenCode)</td>
    <td>Bayesian modeling! How does that work with Spark?</td>
  </tr>
  <tr>
    <td>2:10 - 2:40 PM</td>
    <td><a href="https://databricks.com/session_na20/using-machine-learning-to-evolve-sports-entertainment">Using Machine Learning to Evolve Sports Entertainment</a></td>
    <td>David Cunningham (DataFactory) & Young Bang (Atlas Research)</td>
    <td>I guess Nielsen is in entertainment. The talk description poses interesting quesitons.</td>
  </tr>
</tbody>
</table>

The Thursday afternoon [keynotes](https://databricks.com/session_na20/thursday-afternoon-keynotes) are from 3 - 4 PM:
 * *Deep Learning: It’s Not All About Recognizing Cats and Dogs* by Kim Hazelwood, who is the head of engineering at Facebook AI Reserch, talking about how recommendation systems can be problematic.
 * *Creating, Weaponizing, and Detecting Deep Fakes* by Hany Farid, a Berkeley professor, which appears to be an overview of deepfakes and emerging techniques for detecting them.

I'm losing steam on the reason that I find talks interesting---it's hard to pin down why I want to watch one beyond "this sounds cool." But here are the Thursday afternoon talks.

<table>
<thead>
  <tr>
    <th style="min-width: 120px">Time (CDT)</th>
    <th>Title and link</th>
    <th>Speakers</th>
    <th>Why I'm interested</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>4:30 - 5:00 PM</td>
    <td><a href="https://databricks.com/session_na20/automated-and-explainable-deep-learning-for-clinical-language-understanding-at-roche">Automated and Explainable Deep Learning for Clinical Language Understanding at Roche</a></td>
    <td>David Talby (Pacific AI), Vishakha Sharma & Yogesh Pandit (Roche)</td>
    <td>I saw "explainable" and got excited. It looks like embeddings, transfer learning, and post-hoc explanations.</td>
  </tr>
  <tr>
    <td>4:30 - 5:00 PM</td>
    <td><a href="https://databricks.com/session_na20/building-identity-graphs-over-heterogeneous-data">Building Identity Graphs over Heterogeneous Data</a></td>
    <td>Sudha Viswanathan & Saigopal Thota (Walmart Labs)</td>
    <td>Identity graphs are an interesting problem, and relevant to a few folks at my company.</td>
  </tr>
  <tr>
    <td>5:05 - 5:35 PM</td>
    <td><a href="https://databricks.com/session_na20/geospatial-analytics-at-scale-analyzing-human-movement-patterns-during-a-pandemic">Geospatial Analytics at Scale: Analyzing Human Movement Patterns During a Pandemic</a></td>
    <td>Joel McCune & Jim Young (Esri)</td>
    <td>Human movement during COVID sounds like a really interesting quesiton, so I picked this talk because I just wanted to learn about the subject.</td>
  </tr>
  <tr>
    <td>5:40 - 6:15 PM</td>
    <td><a href="https://databricks.com/session_na20/automatic-forecasting-using-prophet-databricks-delta-lake-and-mlflow">Automatic Forecasting using Prophet, Databricks, Delta Lake and MLflow</a></td>
    <td> Perry Stephenson (Atlassian)</td>
    <td>This seems like a nice end-to-end talk, covering how they build forecasts, train models, and deploy them with a robust pipeline. (Ugh, though, the self-promotion in the description---"the demand for our legendary support continues to grow." I know that these are partially for branding, but come on.)</td>
  </tr>
</tbody>
</table>


## Friday, June 26
One more day! The [morning keynotes](https://databricks.com/session_na20/friday-morning-keynotes), from 11 AM to 12:30 PM CDT, include:
 * *PyTorch: a modern machine learning research and production platform* by Adam Pazske, which seems mostly like a pitch for PyTorch.
 * *Rapid Response Research for COVID-19 and other challenges: Machine Learning and Data Science at Cal* by Prof. Jennifer Chayes. This will describe the vision of Berekey's division of computing, data science, and society (CDSS), especially in the context of COVID. Sounds great!


<table>
<thead>
  <tr>
    <th style="min-width: 120px">Time (CDT)</th>
    <th>Title and link</th>
    <th>Speakers</th>
    <th>Why I'm interested</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>12 - 12:30 PM</td>
    <td><a href="https://databricks.com/session_na20/democratizing-pyspark-for-mobile-game-publishing">Democratizing PySpark for Mobile Game Publishing</a></td>
    <td>Ben Weber (Zynga)</td>
    <td>I went to Weber's talk at Spark Summit last year, and it was fantastic (see <a href="/spark/automated_modeling.html">my notes!</a>); this is on my list because he's back, and also because the idea of democratizing analytics sounds quite cool.</td>
  </tr>
  <tr>
    <td>12:35 - 1:05 PM</td>
    <td><a href="https://databricks.com/session_na20/automated-testing-for-protecting-data-pipelines-from-undocumented-assumptions">Automated Testing For Protecting Data Pipelines from Undocumented Assumptions</a></td>
    <td>Eugene Mandel & Abe Gong (Superconductive)</td>
    <td>This is a talk about testing <i>data</i> and data pipelines, instead of just code; they introduce a framework they built for capturing undocumented assumptions and validating new data against them.</td>
  </tr>
  <tr>
    <td>12:35 - 1:05 PM</td>
    <td><a href="https://databricks.com/session_na20/chromatic-sparse-learning">Chromatic Sparse Learning</a></td>
    <td>Vladimir Feinberg (Sisu Data)</td>
    <td>This is another "what the hell is this? woah!" talk. They demonstrate "a chromatic approach to sparse learning" which uses approximate graph coloring to reduce the cardinality of a large (here, 3.2M) feature space.</td>
  </tr>
  <tr>
    <td>1:10 - 1:40 PM</td>
    <td><a href="https://databricks.com/session_na20/generalized-seir-model-on-large-networks">Generalized SEIR Model on Large Networks</a></td>
    <td>Amir Kermany (Databricks)</td>
    <td>Discussing SEIR models for simulating the spread of infectious diseases, and how these can be implemented in Spark.</td>
  </tr>
  <tr>
    <td>1:45 - 2:15 PM</td>
    <td><a href="https://databricks.com/session_na20/designing-the-next-generation-of-data-pipelines-at-zillow-with-apache-spark">Designing the Next Generation of Data Pipelines at Zillow with Apache Spark</a></td>
    <td>Derek Gorthy & Nedra Albrecht (Zillow Group)</td>
    <td>This goes over how Zillow data engineers identified pain points and tech debt, then turned around to build more robust Spark pipelines.</td>
  </tr>
  <tr>
    <td>1:45 - 2:15 PM</td>
    <td><a href="https://databricks.com/session_na20/from-idea-to-model-productionizing-data-pipelines-with-apache-airflow">From Idea to Model: Productionizing Data Pipelines with Apache Airflow</a></td>
    <td>Daniel Imberman (Astronomer, Airflow committer)</td>
    <td>Many of our teams are starting to use an Airflow-based tool (though not me), and this seems relevant for learning more about that. The author is an Airflow maintainer.</td>
  </tr>
  <tr>
    <td>1:45 - 2:15 PM</td>
    <td><a href="https://databricks.com/session_na20/scoring-at-scale-generating-follow-recommendations-for-over-690-million-linkedin-members">Scoring at Scale: Generating Follow Recommendations for Over 690 Million LinkedIn Members</a></td>
    <td>Emilie de Longueau & Abdulla Al-Qawasmeh (LinkedIn)</td>
    <td>I chose this because it sounds like a fun problem; how does LinkedIn generate recommendations for nearly 700 million users to follow any of 10s of millions of entities? They developed a new join algorithm that reduces shuffling and talk about its impact on downstream metrics.</td>
  </tr>
</tbody>
</table>

And that's all! If there are any talks that you feel like I missed, please feel free to send them along to  me@tusharc.dev. I'll be back next week with notes from some of these.
