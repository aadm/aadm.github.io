---
layout: page
title:  Home/Blog
---
{% include JB/setup %}


<!-- ![]( {{site.url}}/assets/aadm-github-com-banner-_D7K6490.jpg) -->
<!-- ![]( {{site.url}}/assets/aadm-github-io_D7K7197.jpg) -->
![]( {{site.url}}/assets/aadm-github-io_D7K7197-bn.jpg)


<ul class="posts">
  {% for post in site.posts limit: 40 %}
    <li><span>{{ post.date | date_to_string }}</span>: <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a>
    <!-- </br> <em>{{ post.excerpt }} </em> -->
	</li>
  {% endfor %}
</ul>

_...and [many more](archive.html)!_

Check the [archive](archive.html) for a chronological list of all the things I've written, and the [tags page](tags.html) to see all the articles grouped for subject.

[![](http://i.creativecommons.org/l/by-nc-nd/3.0/80x15.png)](http://creativecommons.org/licenses/by-nc-nd/3.0/deed.en_US)
