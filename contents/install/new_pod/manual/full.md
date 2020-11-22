---
title: The diaspora* installation guide
subtitle: From A to 🐈
bodyclass: no-guided-only-content
---

Welcome to the full diaspora\* install guide, with everything on a single page, as you requested!

<% @step_contents.each do |step| %>

<div class="pb-2 mt-5 mb-4 border-bottom">
  <h1>
    <%= step[:frontmatter][:title] %>
    <small class="text-muted"><%= step[:frontmatter][:subtitle] %></small>
  </h1>
</div>

<%= mderb_inline step %>

<% end %>
