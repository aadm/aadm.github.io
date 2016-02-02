Title: get-those-flickr-urls
Date: 2016-01-19 23:47:21
Slug: get-those-flickr-urls
Tags: tech, python
lang: en

A word of warning: this is serious nerdy-land. Carry on reading if:

* you know what Python is
* you have a blog, but not the easy kind like Tumblr or Blogger, something that allows you to write in HTML (or Markdown), e.g. Pelican or Jekyll
* you have a Flickr account and arrange your photographs in albums
* you want to post in above blog a bunch of photos from your Flickr albums

<!-- PELICAN_END_SUMMARY -->

You call this script with:

    python flickr_staticurl.py ALBUM_ID

where _ALBUM_ID_ is the numerical code you see in the URL of a Flickr Album, e.g. in the case of `http://www.flickr.com/photos/aadm/albums/72157656289357513` _ALBUM_ID_ is 72157656289357513.

What the script does is simply to print out to console a nicely formatted `<figure>` tag with the static URL of a 1600px (long-dimension) version of your original photo.

Why would you use it over the usual web interface that Flickr has (the little curvy arrow that brings out a form to copy HTML or BBcode pointing at the desidered version)? Well that's because I don't want to do a click-fest wasting time (and bandwidth) to capture the links when I have more than a couple of photos to link.

You obviously need albums with a reasonable number of photos (10-20 sounds good to me; if I had an album with 100 photos I wouldn't want to post them all at once).

Here's the script:

    :::python
    import sys
    import flickrapi

    api_key = u'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn'
    api_secret = u'mmmmmmmmmmmmmmmm'
    user=  'NSIDoooo@ooo'
    format='Large 1600'
    flickr = flickrapi.FlickrAPI(api_key, api_secret)

    albumID=sys.argv

    ff = flickr.photosets_getPhotos(photoset_id=albumID, extras='views,tags')

    photolist=[]
    for ph in ff[0]:
        ii=ph.get('id')
        tt=ph.get('title')
        vv=ph.get('views')


        phdim=flickr.photos_getSizes(photo_id=ii, format='etree')
        for i in phdim[0]:
            if i.attrib['label']=='Large 1600':
                url=i.attrib['source']
                xx=int(i.attrib['width'])
                yy=int(i.attrib['height'])
        print 'titolo={0}, id={1}, views={2}'.format(tt,ii,vv)

        photolist.append('<figure>\n<a href="https://www.flickr.com/photos/{0}/{1}" title="{2}"><img src="{3}" width="{4}" height="{4}"></a>\n<figcaption>{5}</figcaption>\n</figure>'.format(user,ii,tt,url,xx,yy,tt))

    print '---BEGIN---'
    print '\n\n'.join(photolist)
    print '---END---'

The required information are `api_key`, `api_secret` and the user's NSID (more information here: <https://www.flickr.com/services/api/misc.urls.html>). The first two will be available after you [request an API key](https://www.flickr.com/services/api/keys/).

The other thing you may want to change is the format of the requested photo in terms; valid formats are listed [here](https://www.flickr.com/services/api/misc.urls.html) but the actual name to fed to the comparison above (`if i.attrib['label']=='Large 1600'`) it's not reported there and I have found the size I wanted by trial and error.
