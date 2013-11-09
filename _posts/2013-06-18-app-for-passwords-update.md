---
layout: post
title: "app for passwords update"
description: ""
category: 
tags: [apple, tech]
---



I have been using iAccounts, a simple iPhone app to keep track of my passwords and other sensitive information, since 2011 (I also [wrote a short note](http://aadm.github.io/2011-02-17-an-app-to-store-my-passwords.html) about it).

Recently David Pogue [published an enthusiastic review of Dashlane](http://www.nytimes.com/2013/06/06/technology/personaltech/too-many-passwords-and-no-way-to-remember-them-until-now.html); I tried it, got quickly pissed off because of the way it's priced (sync between devices for a $30 annual fee? Are they nuts?), so what this review has done for me was only to renew my interest in finding a free, open-source alternative to keep my passwords.

I should say that my life has changed [dramatically](http://aadm.github.io/2012-08-04-valentina.html) since 2011 but what is unchanged is my attitude towards these things, which means (1) I'm definitely not a paranoid geek and (2) I have actually reduced my online presence so the number of passwords and sites that I visit have not increased.

What I need is a simple solution to have readily available (i.e., on my iPhone) my sensitive information protected by a password, and maybe have it in sync with a desktop app.

It seems like KeePass remains the only free and robust solution, stil ugly as hell on a Mac. But what I have found is a native OS X version which is still in alpha but works pretty well ([KeePassX](http://www.keepassx.org)) and a free iOS version ([MiniKeePass](http://minikeepass.github.io)).

So what I did was start from scratch (i.e., a CSV file with all my passwords, easy to create and update with Excel or Numbers; in my case it was output by [iBackup](http://www.venticentostudio.it/site/iBackup.htm) -- the little companion app distributed for free by the creators of [iAccounts](http://www.venticentostudio.it/site/iAccounts.htm), for my wife's passwords I created the table from scratch as it was easy to manage her five or so accounts). I had to go through the ugly [KeePass](http://keepass.info) running with [Mono](http://keepass.info/help/v2/setup.html#mono) on OS X (if it was just ugly then  it would not have been such a nightmare, but it's also slow and prone to crashing) just because it's the only application that allowed to import csv files (KeePassX does not). I then saved it to a KeePass 2.x database file (`.kdbx`) which you can open in KeePassX and MiniKeePass.

What about the syncing? Well there's no 'real' sync but if you store the `.kdbx` file in your dropbox then you have the possibility to load it directly from MiniKeePass on your iPhone[^1], use it as you wish, then if you make some modifications you can save it back to your drobox and then you can open it from your mac with KeePassX. Since a password database is not like a notebook that you frequently make changes across devices then I don't see this as a major inconvenience.

What's important is that MiniKeePass is a simple but efficient application, offering you an extra layer of security given by the possibility of a numeric keycode to activate the app; it also gives you the possibility to access multiple .kdbx databases so that's interesting too. A nice touch is that if you tap on a field it automatically copies the content in the clipboard, ready to be pasted back in some website. The KeePass database then is sufficiently freeform that you can store pretty much any information you want (there is no restriction on the fields like password, user id, etc., nor on the content of these fields i.e. you don't have to choose in advance if a field is only numeric).

So that's my open-source solution to store my passwords and keep them 'synced' between my iPhone and my main computer. Hope somebody else finds this useful.

[^1]: well not really _directly_ because youhave to open it with the Dropbox app and then choose the option to "open the file" with MiniKeePass.
