Title: My super title
Category: Python
Tags: tech

This is the content of my super blog post.


## test liquid tags: flickr

{% img images/20150916_AA35566_1000.jpg pixel 1000 wide %}

{% img images/20150916_AA35566_1500.jpg pixel 1500 wide %}

{% img images/20150916_AA35566_1500.jpg 800 pixel 1500 wide at 800 px %}

## test liquid tags: instagrams

{% gram 9grRPpuni5 m %}

{% gram 9grRPpuni5 l %}

{% gram 9grRPpuni5 l 500 %}


{% gram 9gsNyhj8gUWnE1VJBk5qy_6Vfe8OWE0L2ymBw0 l %}

{% gram 9nqK1GD8mR6CoPMkveTL2rwqmObIIeWQx_qk40 l %}


# header 1

See below intra-site link examples in Markdown format.

[eastern turkey]({filename}2014-08-13-eastern-turkey.md)

Esempio di link a un tag: [questo e' un link]({tag}photo)


## subheader

Devo controllare cosa fa questo nell'header:

    Status: draft

## syntax coloring

There are two ways to specify the identifier:

    :::python
    print("The triple-colon syntax will *not* show line numbers.")

To display line numbers, use a path-less shebang instead of colons:

    #!python
    print("The path-less shebang syntax *will* show line numbers.")


Se non funziona, controlla che `MD_EXTENSIONS` in `pelicanconf.py` sia cosi' settato:

    MD_EXTENSIONS = ['codehilite(css_class=highlight)','extra']

 Altre estensioni: [python markdown extension](http://pythonhosted.org/Markdown/extensions/)



 

# {% gram shortcode [size] [width] [class name(s)] [title text | "title text" ["alt text"]] %}
# You can specify a size with t, m, or l.



# {% img [class name(s)] path/to/image [width [height]] [title text | "title text" ["alt text"]] %}
# To insert an IPython notebook into your post, enable the liquid_tags.notebook plugin and add to your document:
#
# {% notebook filename.ipynb %}
# The file should be specified relative to the notebooks subdirectory of the content directory. Optionally, this subdirectory can be specified in the config file:
#
# NOTEBOOK_DIR = 'notebooks'
#

# FLICKR_API_KEY
# {% flickr image_id [small|medium|large] ["alt text"|'alt text'] %}

# To insert youtube video into a post, enable the liquid_tags.youtube plugin, and add to your document:
#
# {% youtube youtube_id [width] [height] %}
# To insert a Vimeo video into a post, enable the liquid_tags.vimeo plugin, and add to your document:
#
# {% vimeo vimeo_id [width] [height] %}

