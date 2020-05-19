+++
title = "Hacking together Python and JavaScript"
date = "2020-05-18"
categories = ["projects"]
draft = false
+++

Alternative title: "Python in the browser console tells us that science has indeed come too far." The fourth post in this series dives into how Pyodide enabled me to hook up Python and JavaScript---sometimes in less-than-clean ways.


<!--more-->

## Recap: more on Tailwind
The best part of Tailwind, which I don't think I made clear in the last post, was that I didn't have to maintain a sprawling CSS file anymore. This *explicitly couples* the layout and the styling, which I find desirable. It means that there's no difference between how things are *arranged* and how they *look*.

If I want to change the color of an element, I find the element in the HTML and change the utility class for its color. With regular HTML+CSS, I'd have to look at all of an element's classes, decide which one to modify (or whether to add a new one), find it, change the class definition, then hope that nothing else changed. Using Tailwind feels much more maintainable, because I don't have to remember what every class does.

A few days later, I did some more reflection on why Tailwind felt like the right choice. At the core, it was because that the idea HTML and CSS should be "separate" had never sat well with me. Sure, they were separate files, but changes to HTML usually required changes to CSS, and changes to CSS usually required changes to the HTML. 

The creator of Tailwind wrote [CSS Utility Classes and "Separation of Concerns"](https://adamwathan.me/css-utility-classes-and-separation-of-concerns/) studied this to build up to the conclusion that "separation of concerns" is a strawman. Either your CSS depends on your HTML (if you have classes that depend on your content, like `.author-bio` or `.navbar`), or your HTML depends on your CSS (if you have content-agnostic classes like `.media-card` or `.list-item`). It wasn't until reading this post that the ideas above clicked!


## Quit rewriting---add value
Another important decision that I made was in deciding to *use other people's code*. This seems silly---open-source is built off other people's code---but until recently, I felt uneasy about blindly copying [mid-kid's implementation](https://github.com/mid-kid/pmdrtdx_passwords) of password encoding and decoding logic. In my head, I was still expecting to use their implementation as a reference as I rewrote it.

When addressing this, the important question became **"what is the value of this app?"** It *could* be to study in-depth how the password logic worked, but at this point I felt that I understood it well enough. The line-by-line details of the bit-twiddling simply weren't important to me, and they'd take more time to understand than I cared to spend.

Once this was clear, I was free to decide I just *didn't have to reimplement it*---I copied the reference code and switched up some of the APIs to better suit my needs (using type hints, adding some hacks to be able to interface with JS, and using dataclasses instead of arbitrary JSON). The mental block of "ugh, I have to rewrite this code" disappeared, because, well, I no longer had to.

This freed me up to spend time on the actually interesting parts: getting JavaScript and Python to work together. This, as I wrote a few posts ago, was the job of [Pyodide](https://github.com/iodide-project/pyodide).


## Hacks
Pyodide is, at best, an early beta; it's more a proof of concept than anything. Coupling Python and JavaScript, separate languages with separate namespaces, object models, and functions, is quite difficult. As a result, parts of idiomatic Python *and* idiomatic JavaScript do not work.

**Importing custom Python scripts**: Pyodide was written for the scientific computing stack. I didn't need these libraries, but instead needed my own modules written in pure Python. These lived in the same repo as my JS files.

It wasn't clear how to do this at first, but it turns out we have to fetch the Python file over the network, then essentially run it top-to-bottom:

```
let rescues = await fetch("python/rescue.py", { mode: "no-cors" }).then((x) =>
    x.text()
);
pyodide.runPython(rescues);
```

This makes sense in hinsight. I'm on the web; to get data, be it a JS file, a JSON dataset, or, yes, a Python script, I have to use web tools. I can't just access `rescue.py` from a filesystem because of browser sandboxing; it has to be served from somewhere, and I have to request it from there.

With that said, the `pyodide.runPython(rescues)` line still doesn't sit right; that's essentially `eval`ing whatever I grabbed over the network, which is dangerous *at best.* But I saw no alternative.

**Importing one Python script from another**: I originally had two Python scripts, `romdata.py` and `rescue.py`, and `rescue.py` imported `romdata`. In the pure-Python world, `romdata` was an interface into messy JSON dumps whose structure I (and mid-kid) didn't want exposed to others. Easy enough, right? 

I couldn't figure out how to do this. Knowing that I had to `fetch` both files with the code above, I tried that, fetching `romdata` then `rescue`. But `pyodide.runPython(rescue)` failed no matter what I did, and the `import romdata` was the offending line in all cases.

It was clear to me that `import` was doing something magical. It wasn't (and still isn't) clear to me what this magic was. My solution was to consolidate the two files together, avoiding the `import` line altogether. It wasn't ideal, and was only really feasible because `romdata.py` was short, but it worked.

**Opening files**: similar to above, the following Python code won't run either:

```
with open("gamedata.json") as f:
    data = json.load(f)
```

This again has to do with browser sandboxing: browsers can't access arbitrary files, and for good reason. The way around this is to use `pyodide.open_url` to open the target file:

```
text = pyodide.open_url("python/gamedata.json").read()
data = json.loads(text)
```

This, while not the most Pythonic, is a necessary part of trying to use Python in the browser. We can't do everything we're accustomed to, and that's okay.


**Passing JS variables to Python functions**: consider the following code---

```
# in Python, defined in a script "imported" like above
def add_one(items: List[int]) -> List[int]:
  return [x + 1 for x in items]

# in JS, in a script.js file
var arr = [1, 2, 3, 4];
pyodide.runPython(`
  print(add_one(arr))
`)
```

This doesn't work. The call `add_one(arr)` will raise `NameError: name 'arr' is not defined`. This is because Python doesn't know what the name `arr` represents---there's no automatic conversion of JS objects to Python objects happening.

Instead, you have to import the JS object into Python explicitly: `import js` then `add_one(js.arr)`. Though surprising at first, that's not unreasonable.

However, this only works if `arr` is defined in the global namespace (i.e., on `window`; note that you could also use `js.window.arr`). If `arr` is defined within a function, or passed to a function as an argument, then the import will fail:

```
f = function(arr) {
  pyodide.runPython(`
    import js
    print(add_one(js.arr))
  `)
}

f([1, 2, 3]);  // fails with AttributeError for arr
```

The only way that I've come up with to get around this is to put `arr` on the `window` yourself, in JS, then read it off in Python:

```
f = function(arr) {
  window.arr = arr
  pyodide.runPython(`
    import js
    print(add_one(js.arr))
  `)
}

f([1, 2, 3]);  // works
```

This is weird and unidiomatic in *both* languages. Assigning things to `window` is an antipattern (that's saying you want your variable to be a global), and importing `js` before I can use any Python code is repetitive. 


## Packaging and deployment
This ended up being far easier than I expected. The app is a static site hosted at [tusharc.dev/rescue](https://tusharc.dev/rescue), so being able to use Github Pages for hosting is already a huge win. Deployment mostly consisted of stripping out the unnecessary Tailwind CSS classes using the built-into-Tailwind PurgeCSS (see [docs](https://tailwindcss.com/docs/controlling-file-size)), and I put this into an NPM target `npm run prod`.

I appreciate the effort that was put into making NPM easy to use. Bundling and deploying my web app was much easier than packaging a Python tool of similar complexity would have been. The Makefile-like syntax of `npm run <x>` is clear and obvious. Having all my build information in `package.json` is [far better](https://www.bernat.tech/pep-517-and-python-packaging/) than the story in Python.

Being able to `npm install` everything is dangerous, of course. This is the same reason that the NPM ecosystem can be a [chaotic hellscape](https://medium.com/commitlog/the-internet-is-at-the-mercy-of-a-handful-of-people-73fac4bc5068), and stories like the one linked are the reason I am still hesitant to `npm install` anything. But, for better or for worse, it's the way things are done in this wacky world of web development.


## We're not done yet!
This isn't the last post---mainly because the app still doesn't work. I wrote all of this in response to working out my "unknown unknowns" for integrating JS and Python. I now know how to---yes, with some hacks---and so the next step is to do it.

