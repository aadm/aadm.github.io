---
layout: post
title: "my new mac is a hack"
description: ""
category: 
tags: [apple, tech]
---


![](http://dl.dropbox.com/u/179731/IMG_4551_hackintosh.jpg)

And so I have waited a long time for a new macmini to replace my old one[^1]. Apple did have something for me in the store, which was the 2011 server version with Intel Core i7, but it was definitely too expensive (€1000 with 4Gb of ram and not even an SSD or a GPU?).

The reason why I wanted a faster computer? Mainly because of Aperture -- too damned slow (and the Nikon D7000's 16Mp files didn't help either). Having a snappier machine to do some iMovie editing was an added bonus, but apart from that I must say that everyday tasks[^2] are still handled perfectly by my even slower Macbook Air 1.4ghz -- a proof that a computer 'feels' fast not because of the cpu but because you replaced that clunky old drive with an SSD.

One day I discovered the infecting enthusiasm of Thomas Pindelski who wrote [long and passionate pieces about his hackintosh](http://pindelski.org/Photography/category/photography/hardware/hackintosh/) and after about five minutes of internal debate I was already sold on the idea. 

I prepared myself reading a few things on lifehacker and the reference site for all things hackintosh-related [tonymacx86.com](http://www.tonymacx86.com); I will give some pointers to the best resources at the end of this article.

Following the indications given in a [tonymacx86 forum thread](http://www.tonymacx86.com/viewtopic.php?f=168&t=33412&p=209913#p209913) I then ordered (on [amazon](http://www.amazon.it) and [stele.it](www.stele.it)) these components:


| component | details                       | price [€]   | notes  
| --------- | ----------------------------- | ----------- | -----------
| CPU       | Intel Core i5-2500K 3.3GHz    | 185.25      | amazon.it  
| M/board   | Gigabyte GA-H61N-USB3         | 78.36       | stele.it  
| ram       | Corsair 2x4Gb XMS             | 41.24       | stele.it  
| hd        | Corsair ssd 115GB SATAII F115 | 108.50      | stele.it  
| case      | Silverstone SST-SG05B 300W    | 101.30      | stele.it  
| wifi      | TP-Link USB TL-WN727N         | 7.66        | stele.it  
| bluetooth | Belkin Bluetooth USB adapter  | 8.54        | amazon.it  


The total cost is around €531; as you can see I did not go cheap on the case, shelling out a substantial percentage of my budget for a Silverstone SG05B. But the truth is that nothing beats Apple in terms of hardware; so my computer is indeed small and silent -- but only if we're talking PCs! Compared to any macmini this is just an ugly machine, not really silent (but still it's way better than the loud behemoths that I have at work).

The cpu is a middle range quad-core cpu easily overclockable; I've also chosen the more expensive memory sticks because they're supposed to be more reliable when overclocking. I kept a low profile here because I wasn't sure how smooth everything would go, but there is ample space for upgrades. For example the Intel Core i7 is supposed to smoke the i5 for video (and photo?) editing because of _hyperthreading_ which I don't really know what it is but apparently makes a quad-core cpu behave like an eight-core! Sounds fucking awesome, sure women will be impressed.

Also I'm running the stupid HD3000 gpu which is integrated into these Intel Core cpus and at the moment this is working great; I have to say, I have always thought that graphic cards are for gaming nerds but apparently also real applications like Aperture use the gpu to do some serious weight-lifting. So there you go, for now this machine is approximately four times faster than my old macmini and I'm already in heaven. But if I ever feel this ugly box going slower than the speed of light then I will first add an external gpu, then swap the i5 with the i7.

About the wifi USB stick: basically you can buy whatever brand you want, but you need to be aware of the chipset inside to find the correct drivers and make it work. For example this TP-Link TL-WN727N that I bought can either have a Ralink  RT3070 or RT5370 depending on the version (v1: RT3070, v3: RT5370). 

##building the ugly box 

It was fun and easy; the Gigabyte manual is very detailed and there's lots of figures and schematics so you just need to pay attention to the pin layout for the various connectors.

I did not use any thermal paste between the stock Intel fan and the cpu; I hope it's true there's some already there (and in reality the little manual that comes with the cpu does not mention the thermal paste). For now, at normal clock speed, the temperature is perfectly under control and there's no sign of overheating. Some say that you need to replace the stock fan but really, I think Intel engineers know better than us. It's like when you change the exhaust on your Ducati and then realize that all it does is to make it louder and you lose horsepower and smoothness. Or you fit some Maxxis tires on your mountain bike where it's clearly labeled that you need a minimum pressure of two bars and then you put some 1.5 bars because guys on the internet forums say that this makes their tires 'sticky'. Really, do you think you know better than the engineers that have designed these things?

The case is, well, black, big and ugly, but there's lots of space inside, so it didn't feel cramped when putting all things together. All the empty space also helps to keep the temperatures down.

![](http://dl.dropbox.com/u/179731/IMG_4510_hackintosh.jpg)

I don't need no optical disc so I used the only two hard drive connectors to plug in the cheap Corsair SSD and a 2Tb 'green' (5400 rpm, very quiet) hard disk that I previously had in an external USB box.

As I said before, I used two USB sticks for wifi and bluetooth. I could have used an internal wifi card but I wanted to keep the only PCI slot on the motherboard available for a possible upgrade (a graphic card). And this little fucker was the only thing that gave me troubles; more on that later in the software installation.

##installing the system

That was a piece of cake. Until I had to make wifi working, I mean.

I just followed [the instructions on tonymacx86](http://tonymacx86.blogspot.it/2011/10/unibeast-install-mac-os-x-lion-using.html). I'm not sure this is required anymore but I did all the main installation with only one drive attached (the main SSD) and 4Gb of ram. After the installation I've connected the other drive and put the extra ram stick.

The Belkin bluetooth thingy worked out of the box, no problems at all. The TP-link wifi stick on the other hand required some extra work; first an editing of the kext file then I added an extra piece of software to have an airport-like icon. I still don't know why I have such a lousy signal strength and how I can change to the 'other' channel which has a 100% strength. But the network speed (tested with <http://speedtest.net>) is exactly the same as before so I guess it's a non-issue.

Then I restored my old system from a Time Machine backup and there I was, with a hackintosh smoothly[^3] running Mac OS X Lion.

These are the main steps that I've followed and noted down for my own reference:

* update BIOS to F7 (h61nusb3.f7 from Gigabyte website)
* Load Optimized Defaults and reboot
* BIOS setting: On-Chip Frame Buffer Size 480MB 2MB (for 8Gb system)
* BIOS setting: HPET 64 bit mode
* BIOS setting: SATA to AHCI mode
* BIOS setting: change hd/usb boot sequence
* Unibeast to prepare a bootable Lion install USB key (used Lion downloaded from Mac App Store and stored in /Applications)
* reboot, press F12 to select alternative boot device, choose USB-HDD
* ...install Lion
* restart Lion with USB key still inserted, run Multibeast with customized DSDT (check `UserDSDT Install`)
* Multibeast setting: Drivers & Bootloaders/Kext & Enablers/Audio/Realtek ALC8xx/**ALC8xxHD** and **AppleHD Rollback** checked, Non-DSDT HDAEnabler/**ALC889** checked
* Multibeast setting: Disk/**3rdParty SATA** and **TRIM Enabler** checked
* Multibeast setting: System Definitions/**Mac mini** checked

To make the little shit (usb wifi) work that's what I did (see also <http://www.tonymacx86.com/viewtopic.php?f=19&t=37337>):

* install official driver
* patch kext: edit the Info.plist file in `RT2870USBWirelessDriver.kext` (located in System/Library/Extensions) and change values of vendor and device ID in Info.plist to match those of actual USB device listed in System Profiler (note: system profiler shows values in hex format, Info.plist has to be decimal)
* download modded ralink software Ralink-Airport.zip from <http://www.insanelymac.com/forum/index.php?showtopic=168984&view=findpost&p=1168621>
* Unzip Ralink-Airport.zip and move the folder into your Applications folder
* Enter System Preferences > Users & Groups > Login Items
* Remove AwakeRalinkUI/ from the list by selecting it and clicking on the "-" icon
* Add RalinkAirport and Airport Connection to the list (RalinkAirport above the other)
* Click the 'Hide' option for both these apps
* load Airport Connection

![](http://dl.dropbox.com/u/179731/hackintosh%20multibeast%201.png)

*The original settings I checked, but I forgot one little thing, which caused no sound to be heard...*

![](http://dl.dropbox.com/u/179731/hackintosh%20multibeast%202.png)

*...and this is what I forgot. Just remember to check the appropriate Non-DSDT HDAEnabler and you're set.*

![](http://dl.dropbox.com/u/179731/hackintosh%20usb%20wifi.png)

*That's the kind of crap you gotta do to enable the wifi usb stick.*

##results and benchmarks ##

Man, now I have a mac that really flies! Only it's not a mac but a hack!

These are some quick geekbench (v2.3.1 32bit) and xbench results; I have compared the hack-mini to my other two computers (the Air is a 1.4Ghz Core 2 Duo 11" and 4Gb ram, the macmini is a 2.6Ghz Core 2 Duo and 4Gb ram) and to my the mighty macbook pro of my friend Daniele who happens to live in California so of course he screams faster than us (it's a Core i7 running at 2Ghz with 12Gb ram).

computer     | geekbench      | xbench   
------------ | -------------- | ------------  
hack-mini    | 8953           | 336  
mb air       | 2087           | 117  
macmini      | 3744           | 215  
mb pro i7    | 9608           | --  


##references ##

_tonymacx86_ is the place to go. First wet your appetites with the _lifehacker_ guide though. I also suggest if you have time to read the _howtogeek_ guide because it does add some extra bits of information which could be useful if you are in trouble and need to navigate into tonymacx86's forums; as usual these are shady places, full of nerds that speak their own language and it's easy to stumble onto obscure acronyms such as S/L/E[^4].

* <http://lifehacker.com/5841604/the-always-up-to-date-guide-to-building-a-hackintosh>
* <http://tonymacx86.blogspot.it/2011/09/building-sandy-bridge-customac-customac.html>
* <http://tonymacx86.blogspot.it/2011/10/unibeast-install-mac-os-x-lion-using.html>
* <http://www.howtogeek.com/72821/the-how-to-geek-guide-to-hackintoshing-part-2-the-installation/>

If you're curious about the level of nerdiness that you can find on the internet, check out this review of my Silverstone case: <http://www.silentpcreview.com/article968-page3.html>.

![](http://dl.dropbox.com/u/179731/IMG_4552_hackintosh.jpg)


##extra: Filippo's build

My pal Filippo is also following the idea and building another hackintosh, slightly less powerful than mine (he's got a Nikon D100 with 6Mp files after all). The main difference from my setup (apart from the dual-core i3 cpu) is the use of the TP-Link TL-WN951N 300Mbps Wireless PCI Adapter based on an Atheros chip (which should make it easy to have it up and running with no sweating over drivers etc.).


| component | details                       | price [€]   | notes  
| --------- | ----------------------------- | ----------- | -------  
| CPU       | Intel Core i3-2105, 3.10GHz   | 120.65      | amazon.it  
| M/board   | Gigabyte GA-H61N-USB3         | 78.36       | stele.it  
| ram       | Corsair 2x4Gb Value           | 37.21       | stele.it  
| hd        | Corsair ssd 115GB SATAII F115 | 108.50      | stele.it  
| hd        | Seagate Barracuda 1Tb         | 113.90      | stele.it  
| optical   | LG DVD writer                 | 17.25       | stele.it  
| case      | Nilox / Apex MI-10            | 57          | stele.it  
| wifi      | TP-Line TL-WN781ND internal   | 12.31       | stele.it  
| card      | DELOCK Card Reader 3,5"       | 10.19       | stele.it  


##extra: the macmini upgraded to the living room

Another good thing that came out of this is that I now have an incredible media player in my living room. I've stripped down the macmini and installed the free and oustanding [xbmc media player](http://xbmc.org/) (which I knew from the time when I had a hacked xbox doing the job; xbmc was born on the xbox and then migrated to other shores).

This xbmc is fantastic; does a perfect job of scanning your library and acquiring plot synopsis and cover arts for your movies, and then it's fully expandable with small applications to do things like downloading subtitles on the fly and control torrent downloading.



[^1]: Late 2009 model with an Intel Core 2 Duo 2.66ghz, 4Gb ram and a solid state drive.

[^2]: What I mean by everyday tasks: internet browsing, Matlab, hacking with python, office work with the Apple triumvirate (Keynote / Numbers / Pages), text editing and processing with Multimarkdown and LaTeX. You might have a different idea about your everyday tasks and what you really need a computer for. After all, that's why iPads are so common nowadays, because Joe Average just need to read stuff on the internet, check his email, occasionally edit a spreadsheet (oh, and watch pirated movies).

[^3]: Apart from some graphical glitch when watching videos. I've read somewhere it's the HD3000 gpu's fault, but I still need to investigate.

[^4]: Stands for `/System/Library/Extensions` folder.
