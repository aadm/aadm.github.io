---
layout: page
title: aadm.github.io
image:
  feature: D7K7197-banner.jpg
  credit: Alessandro Amato del Monte
  creditlink: http://www.flickr.com/photos/aadm/
---

<ul class="post-list">
{% for post in site.posts limit:50 %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span></a></article></li>
{% endfor %}
</ul>


_For older articles please browse through the [ARCHIVE](articles.html) or [TAGS](tags.html) page._


