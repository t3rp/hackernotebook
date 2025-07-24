---
layout: layouts/base.njk
title: Home
eleventyNavigation:
  key: Home
---

Hacker Notebook is an extension of my interest in tinkering with technology. Blogs have been a cornerstone of my learning journey and this website is part of an effort to provide value back to others in a similar manner. Take a moment to [browse the archives](/pages/posts/), read more about the [little red dot](/pages/dot/), subscribe to the [RSS feed](feed.xml), or connect on [social media](/pages/contact).

# Recent Additions

{% assign latest_six = collections.posts %}
{% for post in latest_six limit:6 %}
    - [{{ post.data.title }}]( {{ post.url }}) on {{ post.data.date | htmlDateString }}
{% endfor %}