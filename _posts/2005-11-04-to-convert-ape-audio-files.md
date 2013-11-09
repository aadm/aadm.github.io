---
layout: post
title: to convert ape audio files
Date: 2005-11-04 21:16:00
tags: [apple]
---
 

Lots of sites nowadays offer digital music as .ape or .flac files; what's wrong with mp3s ?  
  
I should include a technical note here together with a bit of history, but since I'm not the most qualified for this sort of thing I'll keep it short and simple: mp3 is a format that stores music in compressed format, therefore with some quality degradation (high compression=high degradation=low quality music=small file); wav/aiff is the format that is used for audio CDs, highest quality, uncompressed, large files (size ratio is 10:1 for CD-quality files versus mp3 files). So a bunch of people came up with some new formats for digital music, such as ape and flac. These are lossless compression formats -- which means that they have exactly the same quality of the input CD music, but they're half the size. So if you don't want to trade on quality, go for ape/flac.  
  
What if you just want to play this music and convert it in mp3, add it to iTunes, etc ? The answer is **xACT**. This is a little Mac OS X wrapper for a set of command-line tools available also for Linux and Windows..  
  
So here we go:  


  

  1. make sure you have both the music.ape and the music.ape.cue file (the .cue file contains the split points and the name of the tracks).
  

  2. launch xACT, go to the "shntool" tab
  

  3. select the "split" option; select the output format (usually I'd use aiff, then leave the conversion to mp3/aac format to iTunes)
  

  4. drag the music.ape file in the drop area on the left
  

  5. click the "Call Shntool" button; the app will now ask for the location of the file with split point data; that's you music.ape.cue file ! Just select the .cue file, choose an output folder and the splitting/conversion process will begin.
  
  
A few notes to finish up:  


  

  * the cue file should begin with the "FILE" line; if it doesn't then delete the first lines (they could have other information such as performer and title of the album).
  

  * there's very little information about what xACT is doing; if you're worried that it might be stuck just have a look at the output folder, where you should see the output aiff files being created. Or just fire up the Activity Monitor, and look at processes called "sox", or "mac" (usually with a fairly high degree of cpu usage).
  
  
xACT has lots of other options which can be helpful (you can, for example, create an .ape file with its .cue info sheet), but unfortunately has no automatic file renaming tool based on the cue files. So you're kinda stuck with a set of music files called "split-track001.aiff", "split-track002.aiff", etc.

It should be simple enough to put together a perl or ruby script which has as input the cue file and does the job for you. 
