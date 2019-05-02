Title: relocating to linux
Date: 2019-05-02
Slug: relocating-to-linux
Tags: computer
Lang: en

*These are my notes on a radical move. The first draft was written in August 2017. I added a few notes in December 2018; then finally edited and completed the post in May 2019.*

The radical move is leaving the Apple world for good and moving (back) to Linux.

I already left the iPhone world a few years ago, after getting annoyed by the slowness of my iPhone 4S (back when the 4S was only a couple of years or so outdated). I moved to Android, enjoying the very low price of good devices (first a Motorola Moto G and then a Huawei P9 lite, so nothing too fancy) and not regretting anything about the iPhone/Apple ecosystem. 

And now after having realized how little I use native apps on my Macbook, I want to go back to a simpler/more honest world of computing.

<!-- PELICAN_END_SUMMARY -->

My computing needs are simple: Lightroom for photography; iMovie to edit home videos; Python for work and scientific investigation/hacking; a friendly, configurable and cross-platform text editor to write code, blog posts, articles and thoughts. My website is entirely on github and I only need Python, git and a text editor to maintain it. I use markdown to write everything, from blog posts to notes and scientific papers.

I also sometimes may need some Excel or Word but Google productivity apps are enough for me (and then there's always Open Office if I don't want to use a browser-based apps; but honestly, browser-based email has been my only email client for ages now and I don't feel like I'm missing out on anything).

Quite simply, I enjoy the pure hacking with unix-based tools like `ffmpeg`, `sed`, `grep` or `graphicsmagick`.

Some additional apps related to my photography that I have used are Hugin (to do panoramas and assembling together multiple photos) and Blurb's Bookwright (to put together photography books).

## status update circa end of 2017

So, which one of these apps are *not* available on Linux?

* Lightroom
* iMovie
* Blurb's Bookwright

In order of increasing complexity/difficulty, this is what I am planning to do.

**making photobooks**: Scribus instead of Bookwright.

Mastered the app in a few days, still need to check the output, submit a book to Blurb as pdf and see how it comes out.

Pros: much more precise than Bookwright; the complexity does not bother me.

Cons: does not have pre-made templates for the kind of publications and formats provided by Blurb.

**editing videos**: Tried Blender, Shotcut, Davinci Resolve.

After trying Resolve last year I gave up because it did not run smoothly on my macbook. Tried the latest release (v 14.3) again a few days ago and now it runs much better. Also, after the terrible experience of Blender (too complicated, difficult to understand even how to move clips around and do very basic editing in a few nights of study and following youtube tutorials), I find it very easy and user-friendly. And back when I tried it the first time it definteltly did not seem user-friendly to me -- quite the opposite in fact!

I am now using DR for my editing and I'd be happy to continue using that on Linux, but it seems that Linux support is limited and requires specific hi-end hardware (like dedicated audio cards). Without audio you can't really use a video editor so that means that if I were to switch right now, pre-summer 2018, I would have to use something else. But I still hope that Davinci will make the Linux port a litte bit more friendly for enthusiasts and with simpler requirements in the near future.

There is however another solution: Kdenlive. It may be simple enough to pick it up to do basic editing.

**photography**: That's the hardest part. I have Darktable installed and have tried to use it for some time now but the problem is just the tremendous loss of all the edits done in the past.

Having been already once through the experience of moving from one system to another (Aperture to Lightroom) I know very well the amount of work involved just to keep the database intact.

Apart from this, I don't have first-hand knowledge on the application itself, if it is as fast as Lightroom -- and perhaps more importantly, if it feels like it. The "feeling" of being fast also relies on the keyboard shortcuts that you learn almost by accident after years of usage, and that surely could not be translated to a new one.

There is however a primary advantage of all open source software, that is that almost invariably they offer a level of customization that is not present on commercial application.

## making it happen

Almost a year and a half after having written the notes above, I am now a happy and content Linux guy.

Back in April 2018 I made the first move; bought a cheap second-hand Lenovo Thinkpad to test Linux and get acquainted with the various applications while continuing to use my Macbook as the main platform. I understood quite quickly that the transition was possible, and that Linux was a perfect companion. I tried first to install Manjaro but that didn't go very well, so I resorted to the obvious choice: Ubuntu. It is the most common Linux distribution which means lots of help and support readily available online. The Lenovo was a good choice as I understood back then, because they are supported very well by the Linux community. However, when testing Darktable I also realized that the lack of a secondary GPU was necessary (this was a Lenovo X260 with an Intel Core i5-6300 Skylake processor, 8 Gb of ram and 250 Gb of solid state storage; it would have been perfect for programming, writing and general productivity but not for creative applications, e.g. photo or video editing).

So I continued to test the various software solutions and in the meantime search for another laptop. I was back then approaching the end of my 3-years stay in Norway. Over the summer I settled on a Dell XPS 15 laptop because it was powerful, well built, not that much bigger than the Lenovo or the Macbook 13" I was using, and according to internet experts, also well supported on Linux.

In September I finally found an incredible opportunity on finn.no (the norwegian equivalent to craigslist or subito.it); an almost-new XPS 15 with exactly the same specs I was looking for; HD screen instead of 4K, topped-up cpu (Intel Core i7 2.8Ghz Kabylake), ram (16 Gb) and storage (512 Gb ssd). What's more, it even had a US keyboard layout instead of the crazy nordic layout I had to live with for too many years.

I bought it from this student that, as all norwegian students do, had very good spending power and wanted to upgrade his laptop before even getting his first job out of university (unbelievable but that's Norway). The good thing of doing online transactions in Norway is that people are trustworty and reliable. So I got the package right after returning from my Svalbard trip and had a few long nights where I used the experience ammassed on the Lenovo to quickly install the operating system and all the apps required before my final trip back home, a week later.

## status update at the beginning of 2019

So the situation is now this:

* the python scientific stack, as predicted, is the easiest thing to do. No real differences between Mac and Linux, when using the rock-stable [conda](https://docs.conda.io/en/latest/miniconda.html) solution.

* my main text editor has become, quite unexpectedly, Microsoft's VSCode. It was recommended to me by hard-core hackers at the [hackathon](https://agilescientific.com/blog/2018/9/24/machine-learning-goes-mainstream) I helped to organize (and won first prize too! thanks to excellent partners obviously) in Stavanger, and I have been hooked ever since. Similar to Atom, the editor from github I was using back then, but with a little bit more features that make life easier. And open source! From Microsoft! Honestly, once you're happy with a text-editor and you use it all the time, the reasons to switch are less and less relevant. I have now built my little house in this text editor, with all the features I need, and I don't see myself ever abandoning it. User support is great, I don't see a reason for the programmers to ever pull the plug, and if they do -- well the source code is open so I expect other people to adopt it (the great thing of open source).

* Kdenlive is a good and fast video editor, less slick and professional than Davinci Resolve but quite more serious than iMovie.

* I have moved all my notes and to-do lists from Simplenote to Standard Notes. The basic, free, option is good enough for me; it offers, like Simplenote, easy sync between computers and smartphones. Linux and Windows apps are a bit heavy but they work just fine. Unlike Simplenote, they are committed to open source, so no fear of locking-in and losing your data sometime in the future.

* Scribus is still work in progress; I intend to use it mainly for photobooks (creating PDFs according to Blurb specs, and getting the real thing printed back from Blurb). So far I haven't got around to finish the one I have been planning for months. So I will have to give and update on that.

* Zotero has remained my scientific papers/books library-app. No real differences between platforms; works great with Google Drive to keep PDFs synced across computers.

* Double Commander is my latest find; a double-panel file manager similar to the old Norton Commander. Open source, available on all platforms, I finally have the same tool on both home and work computers (before this I used to run FreeCommander on Windows at work and use Finder on Mac, and I was against my will more comfortable at work than at home).

* Inkscape and Gimp are other apps I keep installed but rarely use.

* Turboprint is the printer driver for my Canon Pro-100 (a photo printer). It may be the only commercial software I have on Linux! Works great, but besides that I did not have any other option to use my Canon printer.

* KeepassXC with its latest browser integration works great for passwords, secrets and sensitive information. I save the encrypted database on Google Drive and have it available also on my Android smartphone using Keepass2Android. I wonder why people use all those expensive solutions like Lastpass or 1Password. Well I know why: because Keepass doesn't *look* trendy!

* Syncthing is a great backup solution for my photo archives; I have a second Linux box at home that I used as media player, and via Syncthing I have a dropbox-like solution entirely running on my local network to keep on this other computer a backup copy that runs in background without me even noticing it. I also have a second solution, which is a [proper incremental backup solution](https://github.com/laurent22/rsync-time-backup) based on strict unix philosophy (rsync and cron jobs), which every night makes a backup of important directories.
 
* Finally, the massive elephant in the room: Darktable, the alternative to Lightroom. It has made me work very hard, but finally I got there. Months of works (well, it was mostly tens of minutes stolen from my sleep hours) to transfer the entire library of more than forty thousand images, trying to keep edits or at least metadata. Even more time to understand the philosophy of the program, trying to keep up to date with frantic developments (very active community! maybe too active!), understanding what modules to use, how to edit and process the photos. I still have much to learn but I think I'm fluent now, and despite some aspects where Lightroom wins, I see only Darktable in the distant future. My story with Darktable would really need a separate post, which maybe will get written sometime. For the moment, head up to [discuss.pixls.us](https://discuss.pixls.us/) if you want to chat on the subject.
