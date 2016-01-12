Title: My super title
Category: Python
Tags: tech

This is the content of my super blog post.

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
