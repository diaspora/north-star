---
title: Guides for Developers
nav_title: Developers
subtitle: Frequent development tasks explained
---

<% @guides.each do |section, items| %>

## <%= section %>

<%= partial "components/guide_list", items: items %>

<% end %>

## Other question?

If you have a question that is not answered here, no worries! [We are here to help][get-help] if you need us. Please do not be shy, asking questions can help us improve these contents, so everyone can benefit!

[get-help]: <%= url_to("site", "get_help") %>
