+++
title = "My favorite Python 3.9 feature isn't a 3.9 feature"
date = 2020-10-07
draft = false
categories = ["general"]
+++

Python 3.9 was released this week, and with it come a few incremental features. But my favorite feature isn't just in Python 3.9---it's usable in 3.7 and up.

<!--more-->

## Type hinting generics
If you're using type annotations in Python, you've surely had to write `from typing import List` before. And you've probably made the mistake of writing `def f(d: dict[str, int])` and getting a `TypeError`.

No more! Starting in Python 3.9, the following code will all just work, thanks to [PEP 585](https://www.python.org/dev/peps/pep-0585/):

```python
def f(d: dict[str, int]):
    ...

x: list[int] = ...
y: tuple[int, int] = ...
```

No more annoying imports from `typing`! No more (totally understandable) questions from beginners about the difference between `list` and `List`.

To be clear, I understand why the `typing` module was designed this way. Adding `List` in typing made type hinting compatible with previous versions of Python. And more generally, the design of annotations and type hinting were constrained by not wanting to change the core language without knowing how the feature would be received.

With all this said ... it was still annoying. 🙂 

## Enter: `__future__`
Despite this great addition, I'm not going to be using Python 3.9 yet. Maybe for a new project, but I don't have any planned. And we certainly won't be upgrading our codebase at work for a while.

My favorite part of Python 3.9, though, is that this is **available from 3.7 onwards**. This is all thanks to `__future__`.

Last week, this code failed on 3.7:

```python
def f(x: list[int]):
    return sum(x)

f([1, 2, 3])
```

But today, adding a `from __future__ import annotations` at the top, it works perfectly fine.

Goodbye, `from typing import List`!
