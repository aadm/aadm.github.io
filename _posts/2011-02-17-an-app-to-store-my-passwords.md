---
layout: post
title: an app to store my passwords
Date: 2011-02-17 21:32
tags: [apple, tech]
---
 

**What I was looking for: an app to store my passwords**

I stuck with Lockbox Lite for a long time on my iPhone. Then I got fed up
about not being able to have the same data available also on my two Macs (not
to mention the stupid ads). So I started looking for something that had these
features:

* quick 4-digits general password to access all the rest
* sync between iPhone and mac

About the first point, I know that it's a weak point and raises the question
"why using AES 256-bit encryption if you rely on a 4-digit number to secure
all your confidential data". Well, I'm not overly paranoid about this stuff --
and then the alternative is to keep my passwords in a text file somewhere on
my computer.

It seems that there is lots of apps and systems to do this, and most of them
come with a price. Hefty price for some, more reasonable for others.

**Overkill: 1password**

Option number one was [1password](http://agilewebsolutions.com/onepassword).
Wonderful program, very effective, easy to use, lots of options but:

* it's expensive
* it's supposed to ease your life by making 1-click logins to ebanking sites and stuff like this but it doesn't work so well with Chrome (I can't even do the 1-click thing with Gmail !)

So I got fed up pretty quickly (it was an all-in-a-night research), especially
considering that I had to shell out how much ? -- about $35 for the Mac app
and another $5-6 for the iPhone app. And on top of that, i don't even have
that many passwords or bank accounts. So it was like using napalm to fry a
fly.

**The alternatives**

Then I looked at other options. Well it's actually hard to find _any_
alternative to 1password on the net. Everybody seems to have bought that
friggin' app, so if somebody asks: "Hi, can you recommend a cheap alternative
to 1password", everybody replies like this: "Hey no you MUST get 1password".
Thanks (you moron), but I did just say that I was looking at an _alternative_?

Anyway, after another couple of hours of googling around, I've found that the
options out there are the following:

1. free but just for 30 days
2. free but just if you use the computer app
3. free but just if you use the mobile app
4. free but butt-ugly and no sync ([Password Safe](http://passwordsafe.sourceforge.net/))
5. free but too complicated and no apps ([KeePass](http://keepass.info/))

**The italian route: iAccounts**

So I went down the italian route; I mean I chose this app programmed by fellow
italians; smooth, simple, with a neat little Mac application which is free and
gives you the ability to do basic records editing, backup/restore and
import/export of data in csv format.

It's called [iAccounts](http://www.venticentostudio.it/site/iAccounts.htm) and
I thoroughly recommend it. Only 4 euros, and it works like a charm. The free
Mac companion is [iBackup](http://www.venticentostudio.it/site/iBackup.htm),
it gets the job done and the only thing I don't like about it is the name.

**Some nerdy stuff to make it work between Macs**

But the reason why I started writing about this is that I had to geek around a
little bit, first to import the data, then to try and setup a sort of sync
between computers (I have a macmini and a macbook air, and I wanna be able to
access the same database from both computers). And I thought this could be of
interest to somebody out there.

So what I did is simply to create a symbolic link on both computers that
redirect iBackup to use the same database; such database is of course stored
on my Dropbox (I know you were all expecting it; I mean, who does _not_ use
Dropbox these days ?).

For you guys who are command line-impaired, here's how to do it:

	$ ln -s ~/Dropbox/iBackup2.data ~/Library/Application Support/iBackup/iBackup2.data`

Oh and the the import of csv data ? It's great, I played around a little bit
with awk and Textmate to adjust the file exported from Lockbox, and at the end
I created two .csv files, one for web passwords and various logins and the
other for my credit/debit cards.

This is a sample of the main .csv:

    
    Group Name,Record Name,Username,Password,Note
    Websites,photo.net,dummy@gmail.com,1234,better when there was Greenspun
    Computers,macbookair,genius,qwerty,login to my macbook air 11"

And this is the second file to import credit cards details:

    
    Group Name,Record Name,Issuer,Number,Holder,Valid From,Valid To,PIN,Note
    Cards,Pig VISA,Pig Bank,4444 3333 2222 1111,NAME,01/10,01/13,0000,CCV=999  

That's it, have fun with your passwords (me, I'm going to do some proper
mountain biking this weekend).
