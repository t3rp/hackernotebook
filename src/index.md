---
layout: layouts/base.njk
title: Home
eleventyNavigation:
  key: Home
---

# Recently Posted

{% assign latest_six = collections.posts %}
{% for post in latest_six limit:100 %}
    - [{{ post.data.title }}]({{ post.url }}) posted on {{ post.data.date | htmlDateString }}
{% endfor %}