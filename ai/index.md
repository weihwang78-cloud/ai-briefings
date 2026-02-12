---
layout: default
title: "🤖 AI技术简报"
---

# 🤖 AI技术简报

最新人工智能技术动态与行业趋势

## 今日更新 (2026年2月12日)

- [2026年AI十大技术趋势](/daily-briefing-site/_posts/2026-02-12-ai-ai-technology-updates.md)

## 近期简报

{% for post in site.categories.ai %}
  {% if post.date > '2026-02-01' %}
- [{{ post.date | date: "%Y年%m月%d日" }}]({{ post.url }}) - {{ post.title }}
  {% endif %}
{% endfor %}