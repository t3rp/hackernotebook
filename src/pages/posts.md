---
title: All Posts
permalink: /posts/index.html
eleventyNavigation:
  key: Posts
  order: 2
---

# Posts

{% for post in collections.posts %}
    - [{{ post.data.title }}]( {{ post.url }}) on {{ post.data.date | htmlDateString }}
{% endfor %}