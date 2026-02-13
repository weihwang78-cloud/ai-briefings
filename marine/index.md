---
layout: default
title: "海洋工程领域"
---

# ⚓ 海洋工程领域

海洋工程领域的最新动态、技术创新和行业发展趋势。

## 最新文章

{% for post in site.posts %}
  {% if post.categories contains "marine" %}
    <div class="post-preview">
      <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
      <p class="post-meta">{{ post.date | date: "%Y年%m月%d日" }}</p>
      <p>{{ post.excerpt | strip_html | truncatewords:30 }}</p>
    </div>
  {% endif %}
{% endfor %}

[返回首页](/)