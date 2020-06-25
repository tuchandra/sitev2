+++
title = "Everyday Probabilistic Data Structures for Humans"
date = 2020-06-25T13:00:00
draft = false
categories = ["spark"]
+++

When your data gets extremely large, real-time queries can become expensive and slow. Yeshwanth Vijayakumar from Adobe discusses how *probabilistic data structures* can help to solve these scaling problems efficiently.

<!--more-->

**Speaker**: Yeshwanth Vijayakumar (Adobe)

Consider an e-commerce company collecting data on the sales funnel. An "event" might include the product ID, user ID, event type, etc., and suppose this generates a TB of data each day.

Some product questions might include:
 * has this user visited this product today?
 * how many unique users bought items A, B, C?
 * how many items has seller X sold today?

Because the data volume is so large, we enter a cost/latency/accuracy tradeoff. Vijayakumar focuses, in this talk, on the latency.

## Bloom filters
These answer "set membership" in a probabilistic way; they're a replacement for normal `if x in set` lookups, and answer "Is the element I'm looking for possibly here? With what possibility?" (with the note that if they answer "No," they're 100% correct).

**Monoids**: a monoid is a set `M` and an operation `op`:
 * has *closure* (that if you do `x op y` if `x`, `y` are both in `M`, is the result in M?)
 * has *associativity* (`x op y op z` = )
 * has *identity* (there exists `e` such that `e op e = e`)

Bloom filters, he asserts, are monoids. Why? Uh oh, I'm getting lost. This creates the nice property that you can combine Bloom filters from multiple sources and maintain their nice-ness at solving this problem. What?

OK, I don't know how they work; but being able to combine them arbitrarily means that they're great for *streaming*. Just process microbatches and write them to some external data store, then you can consume those probabilistically. Or something.

Ingestion workflow:
 * for each ingestion microbatch (e.g., every 30s), we will get a DataFrame with a tractable amount of rows
 * create a BloomFilter for every Product
 * Map(): add userIDs to the BloomFilter
 * Reduce(): eventually, for each key (product), merge the BloomFilters together

I'm lost. Here comes a demo! OK, basically:
 * ordinarily, we would query an events DataFrame for the product and user we're interested in
 * with a BloomFilter, we can quickly ask "did this user view this product?" and get "yes, with X probability."

Why not just use a hash set? I asked this question, and the answer is because the hash set will grow linearly, but the bloom filter wil be constant. Oh!

## Hyper log log
This lets you estimate super high cardinalities within 2% error. Here, we'd use it to answer the question "how many unique users bought items A, B, and C?".

The monoid property comes into play here, too, because you can split up your ingestion into any number of threads / workers and have HLL operating on each one sending data to a centralized store (he's a big Redis fan). 

The demo:
 * ordinarily, we'd have a DataFrame of views and groupby product ID and collect distinct users
 * with HLL, we get cardinality estimates without having to keep track of all the distinct users

Even in the toy example, the DataFrame generation took ~30 seconds and a lookup 2 seconds; the HyperLogLog queries each took a constant 0.15 seconds. Crazy!

The time and space complexity is huge here, right, okay. I found [this blog post](https://odino.org/my-favorite-data-structure-hyperloglog/) as a good intro to hyperloglog.


## Count Min Sketch
This is a "space efficient frequency table," or vaguely dumbed down a hash table replacement. Here, space efficient means sublinear. It might lead to overcounting, but it happens, and this is the logical extension of a Bloom Filter.

The question: how many items has seller X sold today? In SQL, this would mean groupby the seller and count the sales; but that's expensive.

On an ingestion microbatch, create a CountMinSketch for each seller for each date; merge them together and send to an external store. What? I got lost here.


## Closing thoughts
Using these patterns and data structures, you can optimize questions that you know will be asked really often. If you need real-time responses, trading off accuracy for cost and latency can be a relaly great idea. The speaker uses these three quite often, but there are lots of other probabilistic data structures out there.







