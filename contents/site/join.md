---
title: Join diaspora*
subtitle: We have freedom, choice, and kittens.
---

diaspora\*, as a decentralized system, works across multiple servers. Just like the eMail system you know already, diaspora\* allows you to choose a "home pod" and exchange data with the entire world from there. This introduction needs more text, but as I am only prototyping the site at the moment, I am not going to spend more time on it. However, I wanted to make the point of having only one "Join" button in the header, that explains the process for both podmins and users alike. And that's about how long the introduction should be, maybe.

<%= row_start("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "fas fa-users" %>

### Join an existing pod

There are a lot of pods already out there. Pick one that suits your needs, and get started immediately!

[Help me pick a pod!][find-a-pod]{: class="btn btn-success"}

<%= col_new("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "fas fa-server" %>

### Host a diaspora\* yourself

If you have a Linux server with some free ressources running, basic administration skills, and a little bit of time, running your own pod is not too hard.

[Bring me to the installation guides!][install-guides]{: class="btn btn-success"}

<%= row_end %>

[install-guides]: <%= url_to("install", "") %>
[find-a-pod]: <%= url_to("guides", "users/find_a_pod") %>
