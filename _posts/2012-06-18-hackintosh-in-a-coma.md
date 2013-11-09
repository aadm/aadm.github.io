---
layout: post
title:  "hackintosh in a coma"
description: ""
category: 
tags: [apple, tech]
---



I was very happy about [my hackintosh](2012-05-03-my-new-mac-is-a-hack.html), everything going smooth and easy... until it all broke down and I was left with no computer for almost a month. 

And what was even stranger was that also Filippo's hackintosh, built at the same time as mine, went down only a few days after mine. If computers were organic, I would have thought about some sort of mortal sickness. 

Ok let me say that there's a happy ending to this story: the motherboards were not dead but only in a coma. It was necessary to reinstall the bios and use an external graphic card to redirect the display because for some reasons the integrated HD3000 gpus were not working.

##details of a hackintosh entering  a coma ##

So I built [these two hackintosh](http://aadm.github.com/2012-05-03-my-new-mac-is-a-hack.html), one for me (A) one for a friend (B). 

component | hackintosh (A)                | hackintosh (B)               
--------- | ----------------------------- | -----------------------------
CPU       | Intel Core i5-2500K 3.3GHz    | Intel Core i3-2105 3.1Hz   
M/board   | Gigabyte GA-H61N-USB3         | Gigabyte GA-H61N-USB3        
ram       | Corsair 2x4Gb XMS             | Corsair 2x4Gb Value            
hd        | Corsair SSD 115GB             | Corsair ssd 115GB
case      | Silverstone SST-SG05B         | Nilox / Apex MI-10


As you can see, fairly standard builds following the [hackmini example by tonymac](http://tonymacx86.blogspot.it/2011/09/building-sandy-bridge-customac-customac.html).

I updated the bios to F7 (h16nusb3.f7 from Gigabyte website), installed Lion 10.7.3 through Unibeast Lion 10.7.3.

Hackintosh A was the first one to die (alas, to enter a coma); it worked great for an entire week then one day I switched it on, could hear the fans whirring away, the hard drive starting up, but no output on the screen, so I couldn't even get to the BIOS screen and do something. I had the cpu replaced from amazon.it because I thought that was the only thing that could have failed, but when I tried the new one nothing changed.

Then I went to Filippo's house (owner of hackintosh B), replaced my motherboard with his, and blam, the hack is alive! So I'm happy because I know that it's the motherboard that doesn't work.

And then the next day Filippo calls, the same thing happened to his computer! Stuck on a black screen, the system doesn't even load the BIOS.

Two motherboards, same model, different CPUs but really this should not matter, different cases. No idea about how this could happen. A defective batch of these two motherboards even if they are very common (and recommended to build hackintosh)? My case (a rather expensive Silverstone SG05) burning something on the board?

I sent my motherboard to the online shop's customer service (in the meantime, a month goes by) and rather unexpectedly they said that nothing was broken, that my m/b was running ok, only thing they did was to upgrade the BIOS.

Wait a second, how did you do that if there's no display output whatsoever? "Oh well we used an external graphic card". So that's it? I was still a bit skeptical but then I decided to buy an external graphic card; I knew from internet discussions that this should speed up video and photo editing so that was an upgrade that I was willing to do. I went to a local shop this time and bought a whatever-ATI-5450 with 2Gb of ram for 45 euros (surely faster than the GPU that Apple puts inside the 2-grand macbook pro I reasoned). And guess what, the customer service guys were right; I could update the BIOS on Filippo's motherboard and that was it. 

Yes I had to play a little bit more to have the graphical card working ok on my hackintosh but now it seems like everything's running smoothly. I am still afraid to close the case (it's still a post-industrial sight my desktop, with all components running and clicking away in the open), but maybe now it's so hot here in Milano that I'll leave the machine like this. 

I just hope Giulia doesn't notice it because you know women want to have clean stuff around, especially if this half-assed mechanical monster happens to live in the baby room (another month and a half to go before my yet un-named babygirl comes into the world).

##sidenotes

When I installed in the PCI-E slot the graphic card I couldn't get any display once OS X was loaded, so I had to use this switch at boot:

    GraphicsEnabler=No

Then I installed ATI5000Injector.kext using Kext Wizard. I did other bits too that I've read [somewhere](http://www.insanelymac.com/forum/index.php?showtopic=260567)  but am not sure about them. Anyway, just in case I need them again: first, find the PCIRootUID of graphic card, by typing in from a terminal window:

    ioreg -l | grep -15 "AppleACPIPCI" | grep "_UID"

What this command does is giving you this UID number which you have to put into `/Extra/org.chameleon.Boot.plist` by adding the following lines:

    <key>PCIRootUID</key>
    <string>1</string>

Finally I also added these other two lines (to have the card identified as a 5400 series instead of a 5000):
    
    <key>AtiConfig</key>
    <string>Eulemur</string>

##a magical QE/CI world ##

Trying to find information to make the graphic card work I stumbled once more on some acronyms that these nerds in the forums use a lot. Let me write those down so I will remember them:

* QE = Quartz Extreme (<http://www.apple.com.../quartzextreme/>)
* CI = Core Image (<http://www.apple.com...ures/coreimage/>)
* Q2DE = Quartz 2D extreme 

Other acronyms that are probably worth remembering can be found at <http://www.tonymacx86.com/viewtopic.php?f=7&t=2789>.

These are things that make the graphical magic happens in OS X; sometimes a card will work but with no magic (i.e., no rippling water effects, no transparencies, etc.); and how do you know if the magic is not there?:

> If the Finder menu-bar is transparent, if a water ripple effect appears when you add a desktop widget and if you can zoom in/out on the desktop by holding ctrl while moving the mouse wheel then you have QE/CI.

##update to lion 10.7.4

Since everything was working I wanted some more troubles so I updated my system to 10.7.4 using the [Combo package](http://support.apple.com/kb/DL1524).

Then, not unexpectedly, OS X crashed on restarting and had to boot from the unibeast USB disk, selecting to boot from the drive with the newly installed system using these switches:

	-v GeneratPStates=No DropSSDT=Yes

I then ran Multibeast 4.5.2 using the [updated DSDT for my motherboard](http://tonymacx86.blogspot.it/2012/05/dsdt-database-update-gigabyte-h67.html) and selected these options:

![](https://dl.dropbox.com/u/179731/hackintosh%20multibeast%20update%201.png)

It all worked out in the end except for the graphic card which was not recognized as a 5400; I edited again the `/Extra/org.chameleon.Boot.plist` and added the AtiConfig/Eulemur strings (see above) so I reckon the correct way to install this card is just to use the `ATI5000Injector.kext` and these two lines in the `chameleon.Boot.plist`.


##final results

So this is the updated list of components and total price for my hackintosh:

component | details                       | price [€]   | notes  
--------- | ----------------------------- | ----------- | -----------
CPU       | Intel Core i5-2500K 3.3GHz    | 185.25      | amazon.it  
M/board   | Gigabyte GA-H61N-USB3         | 78.36       | stele.it  
ram       | Corsair 2x4Gb XMS             | 41.24       | stele.it  
hd        | Corsair ssd 115GB SATAII F115 | 108.50      | stele.it  
case      | Silverstone SST-SG05B 300W    | 101.30      | stele.it  
wifi      | TP-Link USB TL-WN727N         | 7.66        | stele.it  
bluetooth | Belkin Bluetooth USB adapter  | 8.54        | amazon.it  
gpu       | Sapphire Radeon HD5450 2GB    | 45          | local shop
total     |                               | 575.85      |


And this is the new benchmark comparison against other macs (small improvement in 10.7.4 using dedicated DSDT for the F8 Gigabyte m/b BIOS):

computer     | geekbench      | xbench   
------------ | -------------- | ------------  
hack-mini    | 9029           | 330
mb air       | 2087           | 117  
macmini      | 3744           | 215  
mb pro i7    | 9608           | --  

Xbench ran with no thread test otherwise it would lock up, and geekbench is the 32-bit tryout mode.
