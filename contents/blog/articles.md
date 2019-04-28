---
title: diaspora* team articles
nav_title: Articles
subtitle: Tales from the engine room
---

<div class="blog-list" markdown="1">

<% @items.each do |item| %>
<%= partial "components/blog_header", item: item %>
<% end %>

</div>
