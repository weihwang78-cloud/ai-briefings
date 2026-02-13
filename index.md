---
layout: default
title: "三领域每日简报"
---

# 🌊 三领域每日简报

欢迎访问AI技术、海洋工程、金融市场三大领域的每日简报！

## 📅 最新简报

{% for post in site.posts limit:10 %}
<div class="post">
    <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
    <p class="post-date">{{ post.date | date: "%Y年%m月%d日" }} 
    <span class="domain-tag">{{ post.categories | first | capitalize }}</span></p>
    {% if post.content contains '<!-- more -->' %}
        {{ post.content | split:'<!-- more -->' | first }}
        <a href="{{ post.url }}">Read more...</a>
    {% else %}
        {{ post.excerpt }}
    {% endif %}
</div>
{% endfor %}