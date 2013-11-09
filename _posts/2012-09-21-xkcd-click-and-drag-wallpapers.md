---
layout: post
title: "xkcd click and drag wallpapers"
description: ""
category: 
tags: [misc]
---



_[Click and Drag](http://xkcd.com/1110/)_, the amazing xkcd cartoon that went online a few days ago, was fascinating and threw me back to the worlds I used to explore when I was a kid (through videogames obviously).

I selected a few places and made 1920x1080 captures to use as wallpapers for my 24" monitor. They're clean, not distracting, and inspirationals (the one I use as a backdrop for my writing is [The Cave](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_cave.png)).

I put them here if anybody else wants to use them as well (you can rescale them to fit your desktop as long as it's 16:9 like mine, otherwise something will get chopped off).

I hope [Randall](http://xkcd.com/about/) is cool about this.

*****

![](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_big.png.THUMBNAIL.PNG)
[Wallpaper #1: So big](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_big.png)

![](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_boat.png.THUMBNAIL.PNG)
[Wallpaper #2: The Boat](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_boat.png)

![](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_cave.png.THUMBNAIL.PNG)
[Wallpaper #3: The Cave](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_cave.png)

![](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_island.png.THUMBNAIL.PNG)
[Wallpaper #4: The Island](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_island.png)

![](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_noservice.png.THUMBNAIL.PNG)
[Wallpaper #5: No Service](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_noservice.png)

![](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_rocket1.png.THUMBNAIL.PNG)
[Wallpaper #6: Trees and Rocket 1](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_rocket1.png)

![](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_rocket2.png.THUMBNAIL.PNG)
[Wallpaper #7: Trees and Rocket 2](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_rocket2.png)

![](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_wimp.png.THUMBNAIL.PNG)
[Wallpaper #8: Wimp](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_wimp.png)

****

###technical bits ###

To create your own wallpapers just go to this scrollable/zoomable view of the Click and Drag world: <http://xkcd-map.rent-a-geek.de>. Grab what you like, maybe do some stitching like I did for the [The Boat](https://dl.dropbox.com/u/179731/xkcd_click_and_drag_boat.png) using Pixelmator (because the giant squid was really deeper down in the ocean), and resize/rescale them for your screen size. To create the thumbnails down here I used this bash line (only works under OS X because it relies on [`sips`](https://developer.apple.com/library/mac/#documentation/Darwin/Reference/ManPages/man1/sips.1.html) to resize the image):

    for f in xkcd*.png; do cp $f $f.SMALL.PNG; sips -Z 600 $f.SMALL.PNG; done

If you are an even bigger nerd then you may want to take a look at this: <https://github.com/danielribeiro/xkcd_grab>.
