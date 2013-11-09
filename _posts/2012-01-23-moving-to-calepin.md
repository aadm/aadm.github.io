---
layout: post
title: moving to calepin
Date: 2012-01-23
tags: [misc, tech]
---
 


I moved my tumblr log to calepin. 

The reasons for doing it ? I like the idea of having finally all my posts under control and not having to resort to a web interface. It's faster and cleaner. I might do the same with my other blog, [aadm.wordpress.com](aadm.wordpress.com), where I keep longer and more articulated posts.

I also like the interface, simple and pure; you can't mess with so little nor you have the tentation to do so. You are kind of forced to stick to words and photos. What I don't like: that all Calepin blogs look the same (but hey, also books look the same, all black words on white paper); that there's no possibility to put photos into the abstracts; that there's no next/previous buttons to navigate between posts.

And that's how I did it:

1. Used the [tumblr backup application](http://staff.tumblr.com/post/286303145/tumblr-backup-mac-beta) to create a copy of all my posts in html.
2. Converted all html files in markdown with [html2text.py](http://www.aaronsw.com/2002/html2text/).
3. Did some low-tech shell and python to batch convert all these markdown files in a format that calepin understands (i.e., added `Title` and `Date` tags, added the abstracts too, renamed the files with the dates according to the suggestions given in the [Calepin guide](http://jokull.calepin.co/calepin-guide.html), etc.) 

For the nerds out there, here's the two scripts I have used. First is a generic shell script that I've called `script.sh` (stroke of genius!). It iterates on all html files and first converts them to generic markdown before fixing them in a Calepin-friendly format using the second script, `tumblr2calepin.py`, a simple Python script that I've put together over the weekend.

**script #1**

	:::bash
	#!/bin/sh
	for n in *.html
	do
		rm -f temp.txt
	    echo "==> processing" $n
	    ./html2text.py $n > temp.txt
	    ./tumblr2calepin.py temp.txt
	done

**script #2**

	:::python
	#!/usr/bin/python
	# Usage: tumblr2calepin.py <input-markdownd-file>
	import sys
	from datetime import datetime

	file1=sys.argv[1]
	f1 = open(file1, "r")
	data = f1.readlines()
	f1.close()

	d=datetime.strptime(data[0][:-1],'%B %d, %Y, %I:%M %p')
	day_string_corto = d.strftime('%Y-%m-%d')
	day_string       = d.strftime('%Y-%m-%d %H:%M')

	nn1=str(data[2][:-1])
	nn1=nn1.replace("#","").strip()
	nn2=str(data[3][:-1])
	nn2=nn2.strip()

	linea1='Date: '+day_string+'\n'
	if data[2][0:3] != '![]' and data[2][0 ] != '[':
	    linea2='Title: '+nn1+'\n'
	else:
	    linea2='Title: '+day_string+'\n'
	linea3='Tags: misc\n'
	linea4='Abstract: '+nn1+' '+nn2+'...\n'

	nn1file=nn1.lower().replace(' ','-')
	nn1file=nn1file.replace('""','')

	if data[2][0:3] != '![]' and data[2][0 ] != '[':
	    markdownfile = day_string_corto+'-'+nn1file[0:30]+'.md'
	else:
	    markdownfile = day_string_corto+'.md'

	out = open(markdownfile, "w")

	out.write(linea1)
	out.write(linea2)
	out.write(linea3)
	if data[2][0:3] != '![]' and data[2][0 ] != '[':
	    out.write(linea4)

	for x in data[1:-1]:
	    out.write(x)

	out.close()

There's so many things that don't work (such as the necessity to relink all images that were stored on tumblr by copying them to Dropbox's Public folder and then copying their public link) but I have fixed all my 70 posts in a few hours so I guess these scripts are not gonna be updated.
