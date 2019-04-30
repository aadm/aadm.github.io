#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Alessandro Amato del Monte'
SITENAME = u'aadm'
SITEURL = ''
RELATIVE_URLS = True
TIMEZONE = "Europe/Paris"
PATH = 'content'
DEFAULT_LANG = u'en'

ARTICLE_PATHS = [
    '2012-07-31-panasonic-gf1-late-review.md',
    '2015-03-13-black-and-white.md',
    '2016-10-12-fuji-me-too.md',
    '2016-02-02-a-little-camera.md',
    '2017-02-02-late-review-of-the-fuji-xpro1.md',
    '2016-03-29-capturing-things.md',
    '2017-02-19-that-guy-in-cuba.md',
    '2017-07-28-thoughts-on-photography-2.md',
    '2017-07-11-thoughts-on-photography-1.md',
    '2017-07-12-narrative.md',
    '2017-08-03-la-moto-del-prossimo-anno.md',
    '2017-07-05-art-photographers.md',
    '2017-10-06-bari.md',
    '2018-03-05-best-sensor-ever-ita.md',
    '2018-12-07-a-guzzi-miniadventure.md',
    '2018-12-08-relocating-to-linux.md',
    '2018-03-05-best-sensor-ever.md',
    '2018-12-08-curve-in-montagna.md',
    '2019-04-30-motoguzziv7.md']


SUMMARY_MAX_LENGTH = 60
NEWEST_FIRST_ARCHIVES = True
DEFAULT_PAGINATION = 20
# DEFAULT_DATE_FORMAT = '%a %d %B %Y'
DEFAULT_DATE_FORMAT = '%d/%b/%Y'
DISPLAY_PAGES_ON_MENU = False
DISPLAY_CATEGORIES_ON_MENU = False
DISPLAY_ARTICLE_INFO_ON_INDEX = True
SHOW_ARTICLE_AUTHOR = False
SHOW_ARTICLE_CATEGORY = False
SHOW_DATE_MODIFIED = True
FAVICON = 'favicon.png'
PAGE_URL = 'pages/{slug}.html'
PAGE_SAVE_AS = 'pages/{slug}.html'
INDEX_SAVE_AS = 'blog_index.html'
# NOTEBOOK_DIR = '/Users/aadm/GOOGLEDRIVE/PYTHON/geophysical_notes'

MENUITEMS=(
    ('journal', '/blog_index.html'),
    ('projects', '/pages/projects.html'),
    ('about', '/pages/about.html'))

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
THEME = "themes/pelican-bootstrap3/"
BOOTSTRAP_THEME = 'journal'
BOOTSTRAP_NAVBAR_INVERSE = False
HIDE_SIDEBAR = True
STATIC_PATHS = ['images', 'extra']
EXTRA_PATH_METADATA = {
    'extra/custom.css': {'path': 'static/custom.css'},
    'extra/favicon.png': {'path': 'favicon.png'}
}
CUSTOM_CSS = 'static/custom.css'

# THEME = "pelican-themes/pelican-bootstrap3"
# JINJA_ENVIRONMENT = {'extensions': ['jinja2.ext.i18n']}
# BOOTSTRAP_THEME = 'sketchy'
# STATIC_PATHS = ['images', 'extra']
# BOOTSTRAP_NAVBAR_INVERSE = False
# HIDE_SIDEBAR = True
# EXTRA_PATH_METADATA = {
#     # 'extra/custom.css': {'path': 'static/custom.css'},
#     'extra/favicon.png': {'path': 'favicon.png'}
# }
# CUSTOM_CSS = 'static/custom.css'

# from markdown.extensions.codehilite import CodeHiliteExtension
# from markdown.extensions.toc import TocExtension
# MD_EXTENSIONS = [
#     CodeHiliteExtension(css_class='highlight'),
#     TocExtension(permalink=True),
#     'markdown.extensions.extra',
# ]

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
PLUGIN_PATHS = ['pelican-plugins']
PLUGINS = [
    # 'i18n_subsites', 
    'series',
    'neighbors',
    'related_posts',
    'summary',
    'liquid_tags',
    'liquid_tags.youtube',
    'liquid_tags.flickr']
# 'tipue_search'

CLEAN_SUMMARY_MAXIMUM = 2

DIRECT_TEMPLATES = ['index', 'tags', 'archives']
# PAGINATED_TEMPLATES = ['index']
SHOW_SERIES = True
FLICKR_API_KEY = "c637ff05ba2a53f360e0602da9c25588"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
FILENAME_METADATA = '(?P<date>\d{4}-\d{2}-\d{2})-(?P<slug>.*)'
ARTICLE_URL = '{date:%Y}-{date:%m}-{date:%d}-{slug}.html'
ARTICLE_SAVE_AS = '{date:%Y}-{date:%m}-{date:%d}-{slug}.html'
YEAR_ARCHIVE_SAVE_AS = 'posts/{date:%Y}/index.html'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

CC_LICENSE = 'CC-BY-NC-ND'

# Blogroll
# LINKS = (('Motomatters', 'https://motomatters.com/'),
#          ('Pinkbike', 'http://www.pinkbike.com/'),
#          ('Andrew Molitor', 'http://photothunk.blogspot.no/'),
#          ('The Online Photographer', 'http://theonlinephotographer.typepad.com/the_online_photographer/blog_index.html'),)

# Social widget
SOCIAL = (('twitter', 'http://twitter.com/aadmtwi'),
          ('github',  'http://github.com/aadm'),
          ('flickr',  'http://www.flickr.com/photos/aadm'),
          )
GOOGLE_ANALYTICS = 'UA-32354823-1'
TYPOGRIFY = True

# REVERSE_CATEGORY_ORDER = True
# LOCALE = "C"
# DEFAULT_PAGINATION = 4

# code blocks with line numbers
PYGMENTS_RST_OPTIONS = {'linenos': 'table'}
PYGMENTS_STYLE = 'tango'
