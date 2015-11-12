---
layout: page
title: /blog/
search_omit: true
---

_The following is a list of all the posts I have written since 2005. For a somewhat more organized index see the [TAGS](tags.html) page._

<ul class="post-list">
{% for post in site.posts %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span></a></article></li>
{% endfor %}
</ul>
