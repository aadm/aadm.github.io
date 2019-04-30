# aadm.github.io

This repo contains my site/journal, [aadm.github.io](http://aadm.github.io), all made with [Pelican](https://blog.getpelican.com/).

### instructions


Assuming to have `conda` installed, first create environment for writing/blogging:

~~~
$ conda create --name writer
$ conda activate writer
$ conda install pip
$ pip install pelican Markdown typogrify ghp-import flickrapi
~~~

Install themes:

~~~
$ git clone https://github.com/getpelican/pelican-themes.git
~~~

Edit `pelicanconf.py`:

~~~
THEME = "pelican-themes/pelican-bootstrap3"
JINJA_ENVIRONMENT = {'extensions': ['jinja2.ext.i18n']}
~~~