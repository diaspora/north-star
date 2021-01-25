---
title: The diaspora* blog
title_tag: ""
nav_title: Blog
subtitle: Official announcements and news
---

<%= partial "components/blog_header", item: @latest_blog %>
<%= mderb_inline @latest_blog %>

<%= row_start %>

<%= partial "components/headline_divider", headline: "Latest releases" %>
<%= partial "components/blog_list_teaser", items: @latest_releases, all: url_to("blog", "releases") %>

<%= col_new %>

<%= partial "components/headline_divider", headline: "Articles" %>
<%= partial "components/blog_list_teaser", items: @latest_articles, all: url_to("blog", "articles") %>

<%= row_end %>
