---
title: Guides
nav_title: Guides
title_tag: ""
subtitle: Get answers to frequent questions, and simple how-to's
---

diaspora\* is different, and can be quite difficult or confusing sometimes. We aim to collect frequently asked questions and easy to follow guides for our users, and we really hope they help you out. Keep in mind that [we are here to help][get-help] if you need us!

<%= row_start %>

<%= partial "components/guide_list", items: @top_guides[:users] %>
[See all](<%= url_to("guides", "users") %>){: class="btn btn-success btn-block text-left"}

<%= row_end %>

## Not a user, but still have questions?

Even working on diaspora\* can be hard sometimes. Here are some resources, we hope they help you out!

<%= row_start %>

#### Podmins

<%= partial "components/guide_list", items: @top_guides[:podmins] %>
[See all](<%= url_to("guides", "podmins") %>){: class="btn btn-success btn-block text-left"}

<%= col_new %>

#### Developers

<%= partial "components/guide_list", items: @top_guides[:developers] %>
[See all](<%= url_to("guides", "developers") %>){: class="btn btn-success btn-block text-left"}

<%= row_end %>

[get-help]: <%= url_to("site", "get_help") %>
