---
title: All Tags
permalink: /tags/index.html
---

# All Tags

<ul>
  {%- for tag in collections.tagList -%}
    <li>
      <a href="/tags/{{ tag | slug }}/">{{ tag }}</a>
    </li>
  {%- endfor -%}
</ul>