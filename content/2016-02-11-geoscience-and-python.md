Title: geoscience and python
Date: 2016-02-11 00:03:25
Slug: geoscience-and-python
Tags: python, geoscience, notes
Lang: en

Since I picked up Python a couple of years ago I have enjoyed my everyday job more and more. It's like being thrown back to my 12-year old self playing with a ZX Spectrum or Commodore-128, when all I wanted was to create videogames or do some other stuff[^fuck-around]; only back then I didn't have the perseverance and the excuses that I have now.

"Excuses" is a fine word for what I do; I am assigned a task (or sometimes I go looking for one), and I see this task only as an excuse to solve the problem in a way that I see fit. So if there's even a hint of repetition I will go and write a for-loop to do that. If I need to use a dumb-ass software that I don't like I will write the dumb-ass piece of code myself[^dumb-ass-code]. Etc.

<!-- PELICAN_END_SUMMARY -->

I work in a rather interesting field even though it is not as glamorous as astrophysics or biotech -- on the contrary it's got a bad rep because it is ultimately linked to a dirty business (drilling for oil). But I am so far removed from actual socio-economic implications (and then, I'm no missionary am I?) that I can just enjoy the intellectual challenge of mixing geology and geophysics. What I do is to basically inject some physics-based quantitative assessment into a rather fuzzy, descriptive science like geology. So you try to be objective but the Earth is so fucking complicated that nobody really knows the truth before drilling a hole in the ground (which it happens, yes, but not that often).

I find it fascinating to realize that in some way this is another way to (brace yourself, boring pretentious sentence coming up) "express my creativity". Because this is a kind of job that you can do in two ways really: the first way is you do as you're told, the second is you do as you're told but you give your angle to it.

Which could mean anything, even applying the same old rules but instead of pushing a button and input some default parameters in the commercial software you ditch the commercial software and create your little routine from scratch in Python.

Yes, it is reinventing the wheel over and over but endless iterations are good somehow.

<!--
If not for the business (but who really cares about the well being of Evil Corp[^evil-corp]) surely for yourself.
[^evil-corp]: You have seen [Mr Robot](https://en.wikipedia.org/wiki/Mr._Robot_(TV_series)), right?
-->

Because I only seem to understand stuff when I write it down or code it up; because it is extremely satisfying (in a visceral way) to create my own tools, code equations found in literature and come up with shortcuts to do the work; because I don't fall asleep doing some mind-numbingly boring stuff; because it keeps my mind fresh; because at the end of the day it feels like I have accomplished something[^other-programmers].

It is also fascinating to realize that you can still enjoy your job when you have passed forty. Try telling that to somebody else who is not a highly-paid sportman or something like that, see what's his take.

I have been doing this for 7-8 years now, but with Matlab I have always felt restricted in the way I was doing stuff. Since I have switched to Python (and it's been a slow switch because I had the obligation of keeping up with the day-to-day job -- I couldn't just jump ship and see where things go) I have found motivation and inspiration from [other like-minded people](http://www.agilegeoscience.com/blog/) and the things they do and talk about[^corso-stavanger]. The beauty of scientific Python is that you quickly realize that many of the problems you need to solve (classification; image processing; plotting; finding relations between datasets) are similar across various disciplines, so ideas and tools to better understand your geological problem could come fron anywhere -- molecular biology, image processing or astronomy.

Last year I have had a tutorial that shows how to do rock physics on well log data [published on The Leading Edge](http://library.seg.org/doi/abs/10.1190/tle34040440.1) and this article is right now the top most-downloaded paper in the past 12 months:

<figure>
<img src="/images/TLE_most_downloaded_2016-02-11.png" width="600" height="514">
</figure>

That was a bit ironic considering that a legend like Pat Connolly with his famous article on Elastic Impedance sits at number 9 of this list; that teaches me never to throw shit again at those crappy photographers that get published despite doing  mediocre work because that's exactly what it is happening here.

Anyway, I felt somehow obliged to give back something to the community, so I also put online [an IPython/Jupyter notebook which goes more in depth than the article](https://github.com/aadm/geophysical_notes/blob/master/seismic_petrophysics.ipynb), and after that I started filling my [_Geophysical Notes_ repository on github](https://github.com/aadm/geophysical_notes) with little hacks and more complete workflows as downloadable notebooks.

<!-- It's all open access, even though I would love to say that it's because I cannot disclose highly confidential work otherwise my company blah blah blah, but really it's because the things I do are all based on published material. And to be blunt, nothing is ever truly original in the particular branch of geoscience that I'm interested in. -->


[^fuck-around]: "Do some stuff with computers" basically means to fuck around for the sheer pleasure of it, like cleaning the bike real good. It has become now more socially acceptable since there are examples of smart guys becoming seriously wealthy with apps and web gizmos -- they surely have started from some fuck-around phase, or else if they truly had a plan for world-domination since the start then hats off to their genius.


[^dumb-ass-code]: I am not good enough to write something like a "complete" piece of code even if it is dumb-ass. But everything I write it's sort of fictional so don't get hung up on words.


[^other-programmers]: Despite the dire state that I see around me (in the so-called "corporate world") where social pressure dictate that the only way to progress is to become a manager of some sort and handle a budget, I am somehow conforted by reading that very clever and successful people (in the socially accepted sense) think that doing actual work and getting one's hand dirty is good: see [this post by Daniel Lemire]((http://lemire.me/blog/2011/06/06/why-i-still-program/)), and a little gem by Paul Graham: [how to avoid turning into a pointy-haired-boss](http://www.paulgraham.com/raq.html) in his RAQ ("Rarely Asked Questions"... brilliant isn't it?). Graham, a programmer, painter and venture capitalist (I would love to have something like this engraved on my tombstone), is a recent discovery I made and I have enjoyed a lot one recent essay, [Life is Short](http://www.paulgraham.com/vb.html), which is a rather interesting take on the issue family vs career.

[^corso-stavanger]: I also happened to be around for a course they held in Stavanger in November last year and [snapped a few photos](http://www.agilegeoscience.com/blog/2015/12/04/coding-kitchen-in-stavanger) for them.
