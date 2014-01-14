---
layout: post
title: "file naming"
description: ""
category:
tags: [photo, tech, apple]
---

File naming has always been a bit of an obsession for me. Recently, after seeing the proliferation of too many duplicate filenames in my photography folder, I decided to solve this problem once and for all.

Something to bear in mind: using programs like iPhoto or Lightroom or Aperture (also known as DAM[^nota-dam]) you should not be worried about how to name your camera files, because these programs are made just for that, i.e. to manage your digital library and forget the intricancies of the filesystem. But for old maniacs who still like to feel like they're in control of their files and not rely on the search tools offered by the new operating systems today (e.g., Spotlight), then carry on reading this because you could find something of use.

# Part 0: assumptions

I will discuss the method as applied to my Nikon camera. Users of other cameras may need to adapt settings and terms accordingly.

I use Aperture to manage my photographs but I'm pretty sure Lightroom users with a little bit of experience will have no trouble adapting my workflow.

# Part 1: setting the camera

First of all you need to set the camera to never reset the sequential numbering. I'm also assuming you shoot raw and in Adobe color space and not sRGB so that the default filenames will have and underscore as first character (e.g., `_DSC0037.NEF`).  

Then I change the naming scheme in the camera, getting rid of the default `DSC` prefix and changing it to `AAn`, where `n` is a number that goes from 0 to 9. Naturally, `AA` are my initials and you may want to change those two characters to whatever you like. 

The numerical code that completes my prefix is the key that guarantees that I will never have files with the same name, an issue that Aperture will solve by modifying it to something messy such as `DSC_0923 (1).NEF`. 

How it works is vey simple: say you have your brand new camera. Your prefix is set to `AA0`, so the first photo taken will have a name like `_AA00001.NEF`. After a year (or a month if you're a prolific shooter, whatever), you will have completed a full cycle of 9999 photographs, so once you get to `_AA09999.NEF` you go back into the camera menu and change the prefix to `AA1`. So now the next photo taken will be called `_AA10000.NEF`, then `AA10001.NEF`, and so on. In this way I have unique filenames all the way up to 99,999 frames which I guess is enough for most people as the shutter in a Nikon D600 is tested for up to 150,000 activations (400,000 for professional bodies like D4). 

This is arguably the only minor annoyance in my setup, the fact that you need to remember to change the code when you approach your 9999th photo taken, but this is likely something that needs to be done only a few times along the lifespan of a camera. 

# Part 2: setting the software

_(You can tell I'm old because I still call Aperture and Lightroom "software" or "programs" and not "apps".)_ 

After setting up the camera I have Aperture renaming automatically my files during import. The renaming scheme is this:

    [image year][image month][image day][original file name]
    
I apply this scheme to my versions (i.e., the virtual copies in Aperture's terminology) as well as to the original files. So that from `_AA10000.NEF` I eventually get to a file named `20131203_AA10000.NEF`.

And that's a file name that tells me all that I need to know when I look into a directory like the nerd I still am. I have the date when that file was captured and I know whether or not it's been taken when my D600 was still young or in its later days. Incidentally, by adding the extra information on capture date, I also have no fear or ever getting duplicate names again, even if I would abuse of my camera and take more than 100,000 photos.


[^nota-dam]: DAM, or Digital Asset Management application, i.e. a program like Aperture or Lightroom or Adobe Bridge. Another one of those stupid acronyms invented to make life harder for non-techie.