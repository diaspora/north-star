---
title: diaspora* Pod Installation
nav_title: Installation
title_tag: ""
subtitle: Take your data into your own hands!
---

**Welcome to the world of diaspora\***! You have made your way into the world of our official installation guides. Before we can get started, please allow us to say some words in the beginning.

**You do not need to install diaspora\* to use diaspora\***. Hosting a pod is one way to join the network, [but there are alternatives][join] for you if that is not an option for you. If you are a user of an already existing diaspora\* pod, then these instructions do not apply to you. All the installation and update work is done by your podmin, so you can just sit back and relax.

<%= row_start("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "far fa-home" %>

#### Install a new pod

If you are new to the world of diaspora\* and want to set up your own pod, this is the way to go.

[Install a pod](<%= url_to("install", "new_pod") %>){: class="btn btn-success btn-block text-left"}

<%= col_new("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "far fa-sync" %>

#### Update an existing Pod

If you already have a running pod and want to update to the latest diaspora\* version, check these instructions.

[Update a pod](<%= url_to("install", "update") %>){: class="btn btn-success btn-block text-left"}

<%= row_end %>

[join]: <%= url_to "site", "join" %>
