---
layout: page
title: recent posts
---
{% include JB/setup %}

<ul class="posts">
  {% for post in site.posts limit: 20 %}
    <li><span>{{ post.date | date_to_string }}</span>: <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a>
    <!-- </br> <em>{{ post.excerpt }} </em> -->
	</li>
  {% endfor %}
</ul>


Check also the [archive](archive.html) for a chronological list of all the things I've written, and the [tags page](tags.html) to see all the articles grouped for subject.

<!-- Follow me on twitter: [@aadmtwi](http://twitter.com/aadmtwi). -->

© 2005–2012 Alessandro Amato del Monte (aadm).
