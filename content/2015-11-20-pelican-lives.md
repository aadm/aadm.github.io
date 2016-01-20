Title: pelican lives
Date: 2015-11-20 0:40
Tags: tech

Well it seems I have successfully ported my blog to [Pelican](http://blog.getpelican.com/). After hacking my way through jekyll [to make the site look like I wanted it to look]({filename}2015-11-12-last-iteration.md), I had the irresistible urge to try out Pelican.

And I liked it so much it seemed logical to spend a few more sleepless nights to make it work. Honestly though, that was easier than Jekyll; not sure this is due to the familiarity I have with Python, but it's probably more to do with approaching the whole thing more organically, without switching this on and that off and see what's the results.

Let me say this however: from the point of view of an outsider who just wants to set up a static web site, I find utterly convoluted all these CSS preprocessor (less and sass and what-the-hell) and in general the modern web-development tools.

What I think saved me was the decision to use [pelican-bootstrap](https://github.com/DandyDev/pelican-bootstrap3) as template; it is based on another hyper-complicate entity that is knowns as BOOTSTRAP; what is that, I have no idea -- is it a template? why is it sometimes called Twitter-Bootstrap? If it's a template, what is it for? I mean, is it something that works for Wordpress? Or Jekyll? Or Mordor? You see, I was utterly confused. Everything and every nerd on the web seem to share the love for this BOOTSTRAP thing but I'm too old for this shit.

So I decided to skip for once the usual half-assed attempts at understanding (activity that leaves me with days or months less to live and no real benefit because I'm also prone to forget stuff) and see what good this BOOTSTRAP god could give me. And I have found these two incredibly useful pages that allowed me to modify very easily the look of the site without sweating too much (I mean I just had to modify a few lines in the HTML files stored in `themes/pelican-bootstrap3/templates`):

* <http://bootswatch.com/journal>
* <http://getbootstrap.com/css>

Before the archetypal nerdy-cool-I-know-it-all (tatooed obviously, and sporting an obligatory hipster beard) starts busting my balls -- I know!, bootswatch and bootstrap are two different gods but hey, I told you I didn't care too much about the details didn't I? It just works man, that's good enough for me. I do have a life after all, and I certainly don't waste my time trimming a stupid beard or have a masochistic bonehead drawing frivolous shapes on my naked skin.

Anyway, what I did was essentially to strip bare the template and make it look exactly like I wanted: a blank white page, clean fonts, no _social_ bullshit or buttons to make it easy to share stuff (is there somebody so illiterate that really doesn't know how to share a link to a page?).

I will keep the old Jekyll site active on this secondary page, [The Liquid Steppe](http://aadm.github.io/the-liquid-steppe)[^not-active], because the plan here is to get rid of all the useless ramblings I have written over the years.


[^not-active]: Not active yet! It will be in a few days. ...Now that I think of it, this may be the most useless note ever, since who the fuck is going to check my _old_ site if nobody ever checks out my _main_ site?
