---
layout: default
title: "AI技术领域"
---

# 🤖 AI技术领域

{% assign ai_posts = site.posts | where: "categories", "ai" %}
{% for post in ai_posts limit:10 %}
<div class="post">
    <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
    <p class="post-date">{{ post.date | date: "%Y年%m月%d日" }}</p>
    {{ post.excerpt }}
</div>
{% endfor %}