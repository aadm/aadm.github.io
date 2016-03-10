Title: get those flickr urls
Date: 2016-01-19 23:47:21
Slug: get-those-flickr-urls
Tags: tech, python
lang: en

Warning: this is serious nerdy stuff. Not for the faint of heart. Carry on reading if:

* you know what Python is
* you have a blog, but not the easy kind like Tumblr or Blogger, something that allows you to write in HTML (or Markdown), e.g. Pelican or Jekyll
* you have a Flickr account and want to post links to photos or albums in said blog

<!-- PELICAN_END_SUMMARY -->

What these two scripts do is simply to print out to console a nicely formatted `<figure>` tag with the static URL of a 1600 px (long side) version of your original photo and a caption with all the common shoot data (aperture, shutter speed, etc, like you used to have in the old times before artists got fancy and began shooting with iPhones; I know I used to record on a little paper notebook these data long before Exif was born). If that's not available (for older photos I know flickr did not create such versions) the script will fall back to a standard "Large" size (1024 px long side).

The first script (`flickr_foto.py`) will work on a single photo, the second (`flickr_album.py`) will work on all the photos contained in an album. You obviously need albums with a reasonable number of photos (10-20 sounds good to me; if I had an album with 100 photos I wouldn't want to post them all at once).

Why would you use it over the usual web interface that Flickr has (the little curvy arrow that brings out a form to copy HTML or BBcode pointing at the desidered version)? Because it's faster. And I like to geek out a little.

This is an example of how to call `flickr_foto.py` from the command line and its output:

    :::bash
    $ python flickr_foto.py 7932925194

    ---BEGIN---

    <figure>
    <a href="https://www.flickr.com/photos/aadm/7932925194" title="2012-08-31_D7K6251"><img src="https://farm9.staticflickr.com/8312/7932925194_c031aa4eb0_h.jpg" width="800" height="530"></a>
    <figcaption>1/125 sec. at f/5.6, ISO 100, 52 mm (AF-S DX Nikkor 35mm f/1.8G, NIKON D7000).</figcaption>
    </figure>

    ---END---

More in detail, the only parameter to pass are:

    :::bash
    $ python flickr_foto.py PHOTO_ID
    $ python flickr_album.py ALBUM_ID

where `PHOTO_ID` is the numerical code you see in the URL of a Flickr photo (for [`https://www.flickr.com/photos/aadm/24465904520/`](https://www.flickr.com/photos/aadm/24465904520) it is 24465904520), while `ALBUM_ID` is the  code of a Flickr album, (for [`http://www.flickr.com/photos/aadm/albums/72157656289357513`](http://www.flickr.com/photos/aadm/albums/72157656289357513) it is 72157656289357513).


Here's `flickr_foto.py`:

    :::python
    #**********************************************************
    # flickr_foto.py
    # (C) 2015-2016 aadm
    #**********************************************************

    import sys
    import flickrapi

    api_key = u'INSERT_API_KEY_HERE'
    api_secret = u'INSERT_API_SECRET_HERE'
    flickr = flickrapi.FlickrAPI(api_key, api_secret, format='parsed-json')

    VV=sys.argv

    aa=flickr.photos.getInfo(photo_id=VV)
    fotoID=aa['photo']['id']
    title=aa['photo']['title']['_content']
    url_page=aa['photo']['urls']['url'][0]['_content']

    aa=flickr.photos.getSizes(photo_id=fotoID)
    flag1600px=None
    for i in aa['sizes']['size']:
        if i['label'] == 'Large 1600':
            url_src=i['source']
            xx=int(i['width'])
            yy=int(i['height'])
            flag1600px=True
    if not(flag1600px):
        for i in aa['sizes']['size']:
            if i['label'] == 'Large' :
                url_src=i['source']
                xx=int(i['width'])
                yy=int(i['height'])

    aa=flickr.photos.getExif(photo_id=fotoID)
    metad = dict.fromkeys(['exp','ape','iso','foc','len','cam','day'], None)
    for i in aa['photo']['exif']:
        if i['label'] == 'Exposure':
            metad['exp'] = i['raw']['_content']
        if i['label'] == 'Aperture':
            metad['ape'] = i['raw']['_content']
        if i['label'] == 'ISO Speed':
            metad['iso'] = i['raw']['_content']
        if i['label'] == 'Focal Length (35mm format)':
            metad['foc'] = i['raw']['_content']
        if i['label'] == 'Lens':
            metad['len'] = i['raw']['_content']
        if i['label'] == 'Model':
            metad['cam'] = i['raw']['_content']
        if i['label'] == 'Date and Time (Digitized)':
            metad['day'] = i['raw']['_content'][:10].replace(':','-')


    print('---BEGIN---\n')
    print('<figure>\n<a href="{0}" title="{1}"><img src="{2}" width="{3}" height="{4}"></a>\n<figcaption>{5} sec. at f/{6}, ISO {7}, {8} ({9}, {10}).</figcaption>\n</figure>'.format(url_page,metad['day']+title,url_src,xx,yy,metad['exp'],metad['ape'],metad['iso'],metad['foc'],metad['len'],metad['cam']))
    print('\n---END---')

And this is `flickr_album.py`:

    :::python
    #**********************************************************
    # flickr_album.py
    # (C) 2015-2016 aadm
    #**********************************************************

    import sys
    import flickrapi

    api_key = u'INSERT_API_KEY_HERE'
    api_secret = u'INSERT_API_SECRET_HERE'
    flickr = flickrapi.FlickrAPI(api_key, api_secret, format='parsed-json')

    VV=sys.argv
    ff = flickr.photosets.getPhotos(photoset_id=VV, extras='views,tags')

    elencofoto=[]
    for foto in ff['photoset']['photo']:
        fotoID=foto['id']
        title=foto['title']
        views=foto['views']

        aa=flickr.photos.getInfo(photo_id=fotoID)
        url_page=aa['photo']['urls']['url'][0]['_content']

        aa=flickr.photos.getSizes(photo_id=fotoID)
        for i in aa['sizes']['size']:
            if i['label'] == 'Large 1600':
                url_src=i['source']
                xx=int(i['width'])
                yy=int(i['height'])
                flag1600px=True
        if not(flag1600px):
            for i in aa['sizes']['size']:
                if i['label'] == 'Large' :
                    url_src=i['source']
                    xx=int(i['width'])
                    yy=int(i['height'])

        if xx>yy:
            ori='landscape'
        elif xx<yy:
            ori='portrait'
        else:
            ori='square'
        print 'titolo={0}, id={1}, views={2}, orientation={3}'.format(title,fotoID,views,ori)

        aa=flickr.photos.getExif(photo_id=fotoID)
        metad = dict.fromkeys(['exp','ape','iso','foc','len','cam','day'], None)
        for i in aa['photo']['exif']:
            if i['label'] == 'Exposure':
                metad['exp'] = i['raw']['_content']
            if i['label'] == 'Aperture':
                metad['ape'] = i['raw']['_content']
            if i['label'] == 'ISO Speed':
                metad['iso'] = i['raw']['_content']
            if i['label'] == 'Focal Length (35mm format)':
                metad['foc'] = i['raw']['_content']
            if i['label'] == 'Lens':
                metad['len'] = i['raw']['_content']
            if i['label'] == 'Model':
                metad['cam'] = i['raw']['_content']
            if i['label'] == 'Date and Time (Digitized)':
                metad['day'] = i['raw']['_content'][:10].replace(':','-')

        elencofoto.append('<figure>\n<a href="{0}" title="{1}"><img src="{2}" width="{3}" height="{4}"></a>\n<figcaption>{5} sec. at f/{6}, ISO {7}, {8} ({9}, {10}).</figcaption>\n</figure>'.format(url_page,metad['day']+title,url_src,xx,yy,metad['exp'],metad['ape'],metad['iso'],metad['foc'],metad['len'],metad['cam']))

    print '---BEGIN---\n'
    print '\n'.join(elencofoto)
    print '\n---END---'


The required information to fill in the scripts above are `api_key`, `api_secret` (more information here: <https://www.flickr.com/services/api/misc.urls.html>). The first two will be available after you [request an API key](https://www.flickr.com/services/api/keys/).

If you want the link to other versions of the photo you need to change the `'Large 1600'` string in the code above; valid formats are listed [here](https://www.flickr.com/services/api/misc.urls.html) but the actual name to fed to the comparison above who knows where it's written. You can use this little extra piece of Python to get all the sizes (as the other two, save it with a name like `get_sizes.py` and run it with `$ python get_sizes.py 24643653612`):

    :::python
    import sys
    import flickrapi

    api_key = u'INSERT_API_KEY_HERE'
    api_secret = u'INSERT_API_SECRET_HERE'

    flickr = flickrapi.FlickrAPI(api_key, api_secret, format='parsed-json')

    fotoID=sys.argv
    aa=flickr.photos.getSizes(photo_id=fotoID)
    for i in aa['sizes']['size']:
        print('{0}: {1}x{2}'.format(i['label'],i['width'], i['height']))
