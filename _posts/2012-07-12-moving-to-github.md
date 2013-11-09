---
layout: post
title: "moving to github"
description: ""
category: 
tags: [apple, tech]
---

If somebody would actually read these posts he'd start thinking something like "what a loser".

Here I am, a fairly old [git](http://en.wiktionary.org/wiki/git), waiting for his [first baby](http://aadm.github.com/2012-02-20-five-months-to-go.html), with too many things to do at work (and off-work), losing precious sleep hours to relocate his blog on GitHub. 

And what the hell is GitHub, asks the non-geek. Well, [GitHub](http://www.github.com) is basically a VCS (Version Control Systems[^1]) that allows programmers and hackers to exchange and host their coding efforts; but it does more than that, such as the possibility to host also personal blogs for free.

Only a nerd would now understand and nod approvingly, thinking "oh this is classy".

Normal people -- don't run away; what you should know is that GitHub is a place that not only gives me space to publish my blog, but also run it the way I want thanks to an engine called [Jekyll](http://jekyllrb.com/).

This engine (a "static blog generator") is something that works also on my computer at home. What it means is that I have full control on the looks and the content of my blog; it stays entirely on my computer and every time I change something the differences are uploaded to the server.

This allows me to play with it, preview it even if I have no internet; it means that I have all the writing I've done in a simple text format (it's actually Markdown, a markup language which is easy to read even with in its raw format -- unlike HTML), it means that I don't rely on a proprietary platform/host (Blogger, Wordpress, Tumblr) that keeps all my data detached from my computer's filesystem and gives me only a cumbersome web interface to manipulate what I've written.

And did I mention that it's all free? GitHub has infinite space for my site and Jekyll is open source. 

So yes, I'm an old git playing with [Git](http://git-scm.com/).

##the reason behind

I guess it all started when I wanted to free myself from the "chains" of [Tumblr](http://aadm.tumblr.com/) and [Wordpress](http://aadm.wordpress.com/).

I first tried [calepin.co](http://aadm.calepin.co/) then [scriptogr.am](http://scriptogr.am/aadm). Both were based on this concept of static site generation (i.e., I guess they are running some sort of Jekyll-like engine underneath).

After a while, I was enjoying the tinkering but wanted something more -- more control of what my blog would look like I think; Calepin didn't allow that, scriptogram did but to see the results you always had to go through the internet and what I wanted was a copy of my blog living its life on my computer. So I discovered the possibility to blog like a pro; free hosting on GitHub, a local installation of the static site generation engine (Jekyll), keeping track of endless modifications via this version control system.

I started converting all my posts in a format suitable for Jekyll. I was already far ahead in this process since I already did all the heavy work (pulling my stuff from Wordpress and Tumblr, convert their xml -- or whatever format their exporter used -- in Markdown) when [I switched to Calepin/scriptogr.am](http://aadm.github.com/2012-01-23-moving-to-calepin.html).

What was left was just some more tinkering with the local installation of Jekyll, but the [instructions I followed](http://jekyllbootstrap.com/) were very well made and I had very few problems (worth reminding that I'm a 60% nerd myself, so for my brother or computer-challenged people I would still recommend Tumblr). 

##you got the look

I spent *far* more time customizing the CSS, i.e. what my blog looks like, but that's because I don't know CSS. I started with a minimalist, white on black, all-Helvetica style based on [mark-reid's theme](http://mark.reid.name/) because:

* I did not want to spend too much time fiddling with `#FEFEFE` and `{ font-size:16px; }`
* I am not [a designer](http://craigmod.com/journal/gf1-fieldtest/) 
* I actually like simple, terse websites such as [Zero Distraction](http://zerodistraction.com/)

Then only a few days ago I wanted something different, probably inspired by these two photography blogs (which also happen to have very good content): [photo.rwboyer.com](http://photo.rwboyer.com/) and [gabrielponzanelli.com](http://www.gabrielponzanelli.com/blog/). 

Looking at these two sites (and countless others) I realized that pure black and pure white is not cool. Shades of grey, they're cool. So I aimed at building a not-so-white page floating on a darker background. And while I was at that I also played with fonts a little bit; I kept Optima as the main one, Helvetica for headers and then chose Futura for the title, navigational texts and copyrights. Does it work? For now it does. I have the majority of my readers agreeing with me (it's just two friends actually).

I was trying to get the same experience when viewing the blog on Mac and PCs, but [this is for another time](http://aadm.github.com/2012-07-17-fonts-on-my-blog.html). How the blog looks is very important to me and to countless other freaks.

Incidentally, I think the best looks that I've ever got was this one on my Wordpress blog:

![](https://dl.dropbox.com/u/179731/aadm_wordpress_blog_heading.png)

[^1]: read a brief history of VCS in [this chapter of the official Pro Git book](http://git-scm.com/book/en/Getting-Started-About-Version-Control).
