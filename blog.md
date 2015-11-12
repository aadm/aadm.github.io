---
layout: page
title: /blog/
search_omit: true
---

<ul class="post-list">
{% for post in site.posts limit:100 %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span></a></article></li>
{% endfor %}
</ul>


_For older articles please browse through the [ARCHIVE](archive.html) or [TAGS](tags.html) page._
