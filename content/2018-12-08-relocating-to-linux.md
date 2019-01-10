Title: relocating to linux
Date: 2018-12-08 23:45:55
Slug: relocating-to-linux
Tags:
Lang: en
Status: draft


Notes on a radical move
================
First draft: Date: 2017-08-03 18:07:36


Which means leaving the Apple world for good and moving (back) to Linux.

I already left the iPhone world a few years ago, after getting annoyed by the slowness of my iPhone 4S (back when the 4S was only a couple of years or so outdated). I moved to Android, enjoying the very low price of good devices (first a Motorola Moto G and then a Huawei P9 lite, so nothing too fancy) and not regretting anything about the iPhone/Apple ecosystem. 

And now after having realized how little I use native apps on my Macbook, I want to go back to a simpler/more honest world of computing. 

The "now" I'm referring to is actually the past couple of years. My computing needs are simple: Lightroom for photography; iMovie to edit home videos; Python for work and scientific investigation/hacking; Atom to write code, blog posts, articles and thoughs.

My website is entirely on github and I only need Python, git and a text editor to maintain it.

I use markdown to write everything which then gets converted to HTML or LaTex (via pandoc or the Atom plugins) depending on the final use.

I also sometimes may need some Excel or Word but Google productivity apps are enough for me (and then there's always Open Office if I don't want to use a browser-based apps; but honestly, browser-based email has been my only email client for ages now and I don't feel like I'm missing out on anything).

I just like working in a unix-based shell and I do lots of stuff using command line tools like `ffmpeg` and `graphicsmagick`.

Some additional apps related to my photography that I have used are Hugin (to do panoramas and assembling together multiple photos) and Blurb's Bookwright (to put together photography books).

So, which one of these apps are *not* available on Linux?

* Lightroom
* iMovie
* Blurb's Bookwright

In order of increasing complexity/difficulty, this is what I am planning to do:

### assembling photobooks 

Scribus instead of Bookwright.

Mastered the app in a few days, still need to check the output, submit a book to Blurb as pdf and see how it comes out. 

Pros: much more precise than Bookwright; the complexity does not bother me.

Cons: does not have pre-made templates for the kind of publications and formats provided by Blurb.

## editing videos

Tried Blender, Shotcut, Davinci Resolve. After trying Resolve last year I gave up because it did not run smoothly on my macbook. Tried the latest release (v 14.3) again a few days ago and now it runs much better. Also, after the terrible experience of Blender (too complicated, difficult to understand even how to move clips around and do very basic editing in a few nights of study and following youtube tutorials), I find it very easy and user-friendly. And back when I tried it the first time it definteltly did not seem user-friendly to me -- quite the opposite in fact!

I am now using DR for my editing and I'd be happy to continue using that on Linux, but it seems that Linux support is limited and requires specific hi-end hardware (like dedicated audio cards). Without audio you can't really use a video editor so that means that if I were to switch right now, pre-summer 2018, I would have to use something else. But I still hope that Davinci will make the Linux port a litte bit more friendly for enthusiasts and with simpler requirements in the near future.

There is however another solution: Kdenlive. It may be simple enough to pick it up to do basic editing. 

## photography

That's the darkest part. I have Darktable installed and have tried to use it for some time now but the problem is just the tremendous loss of all the edits done in the past.

Having been already once through the experience of moving from one system to another (Aperture to Lightroom) I know very well the amount of work involved just to keep the database intact.

* being fast and learn keyboard shortcuts

* the app is it fast as LR?


>enable one instance of the NR module, set up to remove chroma noise (wavelets, colour blending)
then you apply a second instance of the same module, to reduce luma noise (bilateral, luma blending)
If it is not enough, you can stack additional ones to fix specific problems and reach awesome results

's the procedure for dt on Windows, if anyone's interested:

Create a lua folder in this directory: %LOCALAPPDATA%\darktable
Copy the gimp.lua script to the folder. You can either copy all the lua scripts from this place on GitHub or just go to the "contrib" folder on that site and simply copy the gimp.lua file.
Create a file called "luarc" in %LOCALAPPDATA%\darktable. Just right-click on an empty space in that darktable folder, choose create a new txt file, call it luarc and remove the .txt extension. Then open that file in the text editor and paste this line: require "contrib/gimp"
Note that if you copied only the gimp.lua to the "lua" folder (and not the entire pack of lua scripts) you should paste: require "gimp".
Now save/close that luarc file.
Start darktable. When in the lighttable view, go to the "export selected" module. In storage options there should be an item "Edit with GIMP". Underneath it there's "select gimp executable". Click on the folder icon and navigate to the .exe file of your external editor (e.g. Nik Viveza, etc.). Set up your other export options (e.g. tiff, 16- bit, ProPhoto RGB, etc.) and export your file to test. After you've finished editing. save changes to the file and it'll appear alongside your raw file in the lighttable part of dt.

https://encrypted.pcode.nl/blog/wp-content/uploads/2011/10/22/darktable-spotremoval.ogv


to Darktable Styles. I've started by improving the first conversion of the Fuji film styles (https://blog.sowerby.me/fuji-film-simulation-profiles/) and we are now working on Pat David' styles (https://patdavid.net/2015/03/film-emulation-in-rawtherapee.html) which offer a very high standard (on par with DXO and C1P styles which I own, and much better than VSCO on LR). We currently include all the G'MIC emulations (http://gmic.eu/). Our point is to provide the community with an extensive and HA pack of film styles expressed a

dt capture sharpening
https://www.dpreview.com/forums/post/60562600?image=0

dt strcuture/clarity
https://www.dpreview.com/forums/post/60562788?image=0


<!-- PELICAN_END_SUMMARY -->



## Other notes on distros etc

* distro: mint cinnamom, ubuntu mate
* photography: darkroom
* video editing: kdenlive, blender
* photobooks: scribus
* text editor: atom
* graphics: inkscape
* simplenote/nvalt alternative
