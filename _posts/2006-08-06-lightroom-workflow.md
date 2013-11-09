---
layout: post
title: lightroom workflow
Date: 2006-08-06 20:43:00
tags: [apple, photo]
---
 

Thanks to Lightroom and its beta status (which for me translates as 'free') I now have finally found a nice way to organize all my photos.  

This is an attempt to illustrate my workflow; I will try to add in the future some more things with a litte bit more detail.  

I shoot with a Nikon D70s, and I've set up the color mode II (i.e., Adobe RGB color space).  

In this way all the jpegs and raw images that I shoot are tagged as being in Adobe RGB color space, but there is actually no color profile attached to the files. So I have to manually attach the proper color profile once I download the files to my computer.  
  
###Hardware  

The computer I'm using is an iMac with intel core duo processor 1.83Ghz with 1.5Gb of ram; I use an external 200Gb lacie firewire hard disc for backups.  
  
###Software  

I've always tried to stick with non-commercial software, even though I have to admit it's hard not to use Photoshop. Gimpshop is a free alternative to Photoshop; it's the well-known gimp (which many linux users may be familiar with) but with a redesigned interface which makes it similar to Photoshop; it's also intel-native for mac users, so I think it's a good alternative to Photoshop even if it's not as polished as the real thing.  

Other nice command-line applications are Imagemagick and jhead. They could be perfect for fast batch processing, but I'd like something more visual.  
Of course all the macs have iPhoto installed, and even if it's a nice piece of software especially in the latest release, I still find it too basic for my needs. 
 
So here comes this new product from Adobe, Lightroom; as far as I'm concerned this is the best piece of software to quickly sort, organize, rank a long shooting session; and on top of this it has some basic retouch capabilities which are everything that the average Photoshop user might ever need.  
  
It also feels lively with my hardware configuration (which is not exactly top of world); having struggled with an old G3 iBook and a mere 384Mb of ram first, then with a G4 macmini 1.25Ghz, this is by far the best system that I've ever had, which allows me to really work through a 100+ shoots in a breeze.  
  
###The workflow  

1) import with image capture, I've set the option to automatically assign to all the downloaded files the Adobe RGB profile.  
  
2) copy all the files in an appropriate directory under the Pictures folder. I have setup a directory structure which I'm comfortable with, but not sure whether it's worth sharing. Let me know if somebody wants to know.  
  
3) Import photos in Lightroom referencing from their original location; I usually assign the same shoot name of the subfolder name created in step (2).  
  
4) in the library module I quickly scan all the photos, marking with 1 star (key "1") the photo that I want to keep. At the end I activate the filter to show only the pics with 0 stars, select everything and then delete them all. At the emd I have only the 1-star rated photos (1 star means for me: worth keeping it !).  
  
5) I go through the remaining photos a second time now, shifting between the library and the develop module (alt-1, alt-2) if I need to straighten or crop the photo or fix the colours, brightness etc. At the same time I also increase the star rating to the pics that I really like (but so far I tend to use as little stars as possible; 2 stars are for the ones that I want to upload to flickr o print, 3 for the really good ones).  
  
6) I move back to the library module and now I assign some keywords; the following is an example of the keywords that I'm using -- you may notice that even here I tend not to over-create (too many keywords are just plain useless, and you may be better off finding your photo just by scrolling through the library).  


* `d70s`: photos taken with my Nikon D70s  
* `coolpix`: photos taken with the small Coolpix  
* `moto`: everything related with motorbikes  
* `ale`: photos featuring me !  
* `panorama`, `water`, `rocks`, `climbing`: self-explanatory  
* `flickr`: the ones that I want to upload on flickr  
* `print`: the ones to print

  
And then I'm ready to export the photos; I should add a few notes on the only bit of processing done externally (the evergreen Unsharp Mask, folks !), but since I'm still experimenting with a way to automate it with gimpshop, that's gonna be for the next time. 
