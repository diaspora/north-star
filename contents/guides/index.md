---
title: Guides
nav_title: Guides
title_tag: ""
subtitle: Get answers to frequent questions, and simple how-to's
---

<%= row_start("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "fas fa-users" %>

### For users

<%= partial "components/guide_list", items: @top_guides[:users] %>
[See all](<%= url_to("guides", "users") %>){: class="btn btn-success btn-block text-left"}

<%= col_new("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "fas fa-server" %>

### For podmins

<%= partial "components/guide_list", items: @top_guides[:podmins] %>
[See all](<%= url_to("guides", "podmins") %>){: class="btn btn-success btn-block text-left"}

<%= col_new("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "fas fa-tools" %>

### For developers

<%= partial "components/guide_list", items: @top_guides[:developers] %>
[See all](<%= url_to("guides", "developers") %>){: class="btn btn-success btn-block text-left"}

<%= row_end %>
