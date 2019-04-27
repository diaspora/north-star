---
title: Guides for Users
nav_title: Users
subtitle: Get to know diaspora*
---

<% @guides.each do |section, items| %>

<%= partial "components/guide_list", items: items %>

<% end %>

## Other question?

If you have a question that is not answered here, no worries! [We are here to help][get-help] if you need us. Please do not be shy, asking questions can help us improve these contents, so everyone can benefit!

[get-help]: <%= url_to("site", "get_help") %>
