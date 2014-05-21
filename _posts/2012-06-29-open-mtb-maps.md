---
layout: post
title: "open mtb maps"
description: ""
category: 
tags: [cycling, apple, tech]
---


A short recap on how to build and install open mtb maps under OS X.

Essentially, a shorter version of the [detailed instructions given on mtb-forum.it](http://www.mtb-forum.it/community/forum/showpost.php?p=4901077&postcount=1), written for my own convenience -- but I thought somebody could find it useful especially to see the result of using different 'styles'.

##tools

* [gmapbuilder](http://wiki.openstreetmap.org/wiki/Gmapibuilder/New_version): to convert the OpenMtbMaps into the `.gmapi` format.
* [MapInstall/MapManager](http://www8.garmin.com/support/download_details.jsp?id=3825) to install the `.gmapi` files into the system, ready to be used by Basecamp and/or copied into a Garmin gps.
* [Basecamp](http://www.garmin.com/us/products/onthetrail/basecamp) (also available on the AppStore): the main application to view and plan routes.

##data ##

The latest version of the [openmtb maps](http://openmtbmap.org/) for Italy are here[^1]: [http://openmtbmap.org/donate/odbl/download_italy_en.html
](http://openmtbmap.org/donate/odbl/download_italy_en.html)[^2].

[^1]: available as a self-decompressing .exe file, use Unarchiver to unzip them on a Mac.

[^2]: This links to <ftp://ftp5.gwdg.de/pub/misc/openstreetmap/openmtbmap/odbl/mtbitaly.exe?>

##what next ##


Launch gmapbuilder, select the TDB file `mapsetc.tdb`, then the TYP file and then click `convert`.

The TDB file can be:

* mapsetc: map + contourlines (default)
* mapsetx: map only
* mapsetz: contourlines only

The TYP files specify the graphical format of the map:

* easy: simple layout with no extra information
* hike: 'hiking' map(?)
* thin: optimzed for Gpsmap60/76 and Dakota
* wide: high contrast style optimzed for Oregon and Colorado
* clas: 'classic' version, optimized for Vista, Legend, Edge 705
* trad: 'traditional'(?), my preferred choice


![](https://dl.dropbox.com/u/179731/openmtbmaps-00.png)

![](https://dl.dropbox.com/u/179731/openmtbmaps-01.png)

![](https://dl.dropbox.com/u/179731/openmtbmaps-02.png)

![](https://dl.dropbox.com/u/179731/openmtbmaps-03.png)

![](https://dl.dropbox.com/u/179731/openmtbmaps-04.png)

![](https://dl.dropbox.com/u/179731/openmtbmaps-05.png)


This is the result of creating the map with contour lines embedded (i.e. using `mapsetc.tdb`; I highly recommend using this style as contour lines may be switched off in Basecamp and they don't add too much data to the final map):

![](https://dl.dropbox.com/u/179731/openmtbmaps-06.png)

For example, here I have selected `mapsetc` to have both vector maps and contour lines available; the style file is `trad`:

![](https://dl.dropbox.com/u/179731/gmapibuilder.png)

###openstreetmaps ###


A simpler procedure exists if you're looking for the basic OpenStreetMaps (which are more clear and easier to use for road and city navigation, expect very little detail off the beaten path though). Just go to [garmin.openstreetmap.nl](http://garmin.openstreetmap.nl/) and you can build your own customized map in `.gmapi` format. An email with a link to 3 versions of the selected maps (Windows, OS X and Garmin gps formats) will be in your inbox usually after a few hours.

![](https://dl.dropbox.com/u/179731/openstreetmaps.png)
