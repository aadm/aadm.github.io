---
layout: page
title: recent posts
---
{% include JB/setup %}

<ul class="posts">
  {% for post in site.posts limit: 25 %}
    <li><span>{{ post.date | date_to_string }}</span>: <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a>
    <!-- </br> <em>{{ post.excerpt }} </em> -->
	</li>
  {% endfor %}
</ul>

![](https://dl.dropbox.com/u/179731/aadm-github-com-banner-_D7K6490.jpg)

Check also the [archive](archive.html) for a chronological list of all the things I've written, and the [tags page](tags.html) to see all the articles grouped for subject.

[![](http://i.creativecommons.org/l/by-nc-sa/3.0/80x15.png)](http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US)


