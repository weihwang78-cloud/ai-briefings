---
layout: default
title: "金融市场简报"
---

# 📈 金融市场每日简报

最新金融市场动态和投资趋势分析。

## 最新更新
{% for post in site.categories.finance %}
- [{{ post.date | date: "%Y-%m-%d" }}]({{ post.url }}) {{ post.title }}
{% endfor %}