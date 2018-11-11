---
title: Development Index
---

Welcome, traveler. This site should only ever be visible during development, as this is the default index site, shown when we do not know what we actually want to display. :) You are probably interested in looking at one of the following sections:

| URL segment | Domain in production | Description |
| - | - |
<% @config[:sections].each do |section_name, section| %>
| [`/<%= section[:directory] %>/`](/<%= section[:directory] %>/) | <%= section[:domain] %> | <%= section[:description] %> |
<% end %>
{: class="table"}
