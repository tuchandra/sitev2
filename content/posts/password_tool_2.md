+++
title = "Attempts at cracking a rescue password"
date = 2020-04-27
categories = ["projects"]
tags = ["password tool"]
draft = false
+++

In my [last post]({{< ref "posts/password_tool_1.md" >}}), I discussed what led me to this Pokemon Mystery Dungeon password project. This post dive into my first attempt at creating something real, followed by an unexpected turn into building a web app.

<!--more-->

## Recap: motivation and goals
Pokemon Mystery Dungeon is my favorite video game series of all time. In my [last post]({{< ref "posts/password_tool_1.md" >}}), I walked through how a particularly hard dungeon motivated me to build a tool for working with "rescue passwords." Players can send out these passwords to others when they faint in dungeons, and a second player can embark on a rescue to save them. At the end, the second player sends a "revival password" to the first.

My goals were to:
1. Decode a rescue password into human-readable data (dungeon name, floor #, team name, etc.)
2. Encode human-readable data into a rescue password
3. Given a rescue password, generate a revival password

While making my way through the aforementioned dungeon, I found a barebones password generator at 136.144.185.148/pmdrtdx/. It took a couple of hours just to figure out what input format to use---but after lots of trial and error, I did.

This website was magical: there was absolutely no information on who built it or how it worked, and yet ... it did. But I put it in the back of my head as I made my way through the dungeon.


## Curiosity, magic, and some brute force
A couple of days later, I returned to the mysterious website, now curious more than anything. "Okay," I said, "well, if all I can do is use this website as a black box, then let's just hit it a few times and see what happens." I wrote a script to take my rescue password and permute one character at a time, hit the website with it, and download the decoded information.

I had to be careful, for I had no idea who owned this website. I didn't want to hit it over and over in case the owner took it down. If they did, I'd be *very* stuck! I made sure to leave a few seconds between requests, write my data to a file as soon as it arrived, and not run this more often than I needed to.

The results were almost entirely worthless.

I could see that changing some characters changed obvious things in my output, like the team name "Ice Cream" to "Icf Cream". But changing other characters turned the entire request into garbage. Most codes were invalid, too: the game was running some kind of checksum consistency test to validate the codes, and changing one character of a valid code usually invalidated it.

So that's no good. I looked around the internet more---this isn't a very popular game, and so while there are several well-known dataminers for Animal Crossing, I had far less luck here.

As a last resort, I searched Github for phrases like "PMD" or "Mystery Dungeon." I was stunned to find a single [Github Gist](https://gist.github.com/zaksabeast/fed5730156e26fb3e805e234fcbea60b#) that claimed to have datamined documentation on how the passwords worked. There it was---step by step instructions about how to decode passwords and how to encode rescue data---a Rosetta Stone!


## Back to bits and bytes
I spent a few days trying to implement what I essentially treated as a spec. I asked the author a few questions that you can see in the comments, and got helpful advice at each step (thanks, zazkabeast!).

Eventually, though, I got stuck. I could tell that I was *probably* making some mistakes, just due to how tricky the details were. I had to re-implement the [C# PRNG](https://referencesource.microsoft.com/#mscorlib/system/random.cs) in Python and [verify its correctness](https://github.com/tuchandra/pmdrtdx/blob/master/rescues/test.py). The decoding process involved a lot of bit twiddling that I hadn't messed with since my computer architecture class sophomore year of college. All of this left a lot of room for error in a process that was already considerably outside my expertise.

The Gist author informing me that the Switch uses [little endian](https://en.wikipedia.org/wiki/Endianness) was the nail in the coffin. By my understanding, I had to:
 * take 30 6-bit characters (fine),
 * shuffle them according to a table found in the datamine (probably fine, but I may have done it backwards),
 * pack them into a bitstream (fine),
 * seed a PRNG with the first two bytes (didn't realize this was little endian until the Gist author informed me),
 * for each byte, subtract the next value from the PRNG from it (relies on the correctness of the PRNG, which ... uh oh),
 * calculate some kind of hash (not really fine because I couldn't find the hashing details anywhere, but this was just to verify correctness, so I skipped it),
 * and read off 32, 1, 1, 88, 7, 7, 11, 2, and 2 bits in little endian order (*definitely* not fine!)

At this point, I realized this was never going to be correct, and was ready to cut my losses. It was still a good learning exercise---refreshing my memory about a lot of the bitwise arithmetic was good, and reimplementing a PRNG was a fun exercise. I was disappointed, but that's okay.

Until ...


## The cryptic website returns
As a last resort, I searched the internet once again for the URL of the mysterious website from earlier. I found a *single* thread on *4chan*, of all places, where some anon placed a link to the website ... and then said they had published the code on Github. (The 4chan comment was made after I had done a lot of work to reimplement the spec---the day before I did this search---so it wasn't that I missed it before!)

Behold: [pmdrtdx_passwords](https://github.com/mid-kid/pmdrtdx_passwords). Incredible---the source for everything, wrapped in a simple Flask app. The README made me laugh, too:

> This tool has been wrapped into a web interface, written in Flask, given my ineptitude at writing javascript.

Me too, anon, me too. Guess what part 3 of this project is?


## Learning from the reference
I dove into the reference implementation, and found that my implementation had two major flaws in it.

The first was in my implementation of the C# PRNG. Both of my sources for the PRNG code---the [Microsoft docs](https://referencesource.microsoft.com/#mscorlib/system/random.cs) and an [ActionScript implementation](https://forum.kirupa.com/t/as3-seeded-pseudo-random-number-generator/322651) ---suggested that a certain value started at 31, and this is what I did. Indeed, my test cases agreed with [reference values](https://docs.microsoft.com/en-us/dotnet/api/system.random.-ctor?view=netframework-4.8#System_Random__ctor_System_Int32_) on Microsoft's website. But this implementation started the value at 21, and this caused drastically different results.

{{< figure src="pmd_images/code_differences.png" >}}

*Author's implementation on the left, Microsoft docs in the middle, and an ActionScript port on the right; look at the values of `i2` or `inextp`.*

That was a week ago, and I'm still not sure why I'm wrong. But their implementation works, and mine doesn't, so I accepted it. Without the mysterious reference, this bug alone would have been a showstopper.

The second issue (well, set of issues) arose from the fact the Switch uses little endian. For those who are unfamiliar, [little endian](https://en.wikipedia.org/wiki/Endianness) defines how the bytes that make up a number are ordered in a computer's memory. In little endian, the least significant byte is at the end---so the hex number `0x1234` would be represented in memory as `0x34` at some address, and `0x12` at the subsequent one.

This had far-reaching implications: the most obvious was that I was generating the seed for the PRNG incorrectly, as I was using the first two bytes of a bytearray, but in the wrong order. Less obviously, I had to grab arbitrary-length strings of bits from the bytearray: starting at offset X, get 32 bits, then 1, 1, 88, 7, etc. ... this was highly nontrivial, but with the help of the reference implementation I got it to make sense to me.


## But now what?
Finding this reference implementation left me with an important question: what do I do with this project? Yeah, the original goals were feasible now, but those original goals had been *exactly* completed by someone else. I'd be copying from, or at least drawing heavy inspiration from, their code at every step of the way, and that wouldn't be nearly as satisfying.

Could I still build something interesting or useful, though? The author mentioned challenges building a front end, and I thought that'd be an interesting problem to take on. As a data scientist, I have minimal experience with front end development (though more than most), so building a web app for this would certainly challenge me. Building a web app that other people could use would be *really* cool.


## Enter Pyodide
The next question was what tools I would use. The reference implementation was all written in Python, so to make it run online I'd need to either serve a backend in Flask or Django, or port it to JavaScript. Neither of those options sounded appealing.

But then I remembered: I had heard a year back about a Mozilla project called [Pyodide](https://github.com/iodide-project/pyodide) whose goal was to "bring the Python scientific stack to WebAssembly." In principle, this project would allow you to run Python in your browser by precompiling CPython to WebAssembly and loading that in.

Pyodide (again, in principle) worked through the essential technical constraint of needing to keep the core logic in Python. This project was the perfect excuse to try out this new technology; rather than trying out a toy problem in Mozilla's (still very cool!) [version of notebooks](https://github.com/iodide-project/iodide), I had a problem that could *only be solved* (given my self-imposed restrictions) by running Python in the browser.


## Next up: flirting with a frontend
The next post will discuss my experience building a front end. The first step was buliding a POC of Pyodide which loaded Python and imported my own library. After verifying that this was at least *possible*, I took the simple, backend-less design from [turnipprophet.io](https://turnipprophet.io) and modified it to fit my needs. More on this later!
