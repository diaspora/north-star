---
title: The diaspora* blog
title_tag: ""
nav_title: Blog
subtitle: "Official announcements and news"
---

<%= partial "components/blog_header", article: @latest_blog %>
<%= mderb_inline @latest_blog %>

<div class="row"><div class="col-lg" markdown="1">

<%= partial "components/headline_divider", headline: "Latest releases" %>
<%= partial "components/blog_list_teaser", articles: @latest_releases %>

</div><div class="col-lg" markdown="1">

<%= partial "components/headline_divider", headline: "More articles" %>
<%= partial "components/blog_list_teaser", articles: @latest_articles %>

</div>
