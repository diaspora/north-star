---
title: Welcome to diaspora*
title_tag: ""
subtitle: The online social world where you are in control
---

![The diaspora* earth][diaspora-earth]{: class="img-fluid mx-auto mb-5 d-block"}

<%= partial "components/headline_divider",
  id: "principles",
  headline: "diaspora* is based on three key principles"
%>

<%= row_start("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "far fa-globe" %>

### Decentralization

Instead of everyone’s data being held on huge central servers owned by a large organization, diaspora\* exists on independently run servers ("pods") all over the world. You choose which pod to register with, and you can then connect seamlessly with the diaspora\* community worldwide.

[Find out more][get-involved]{: class="btn btn-primary"}

<%= col_new("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "far fa-lock-open" %>

### Freedom

You can be whoever you want to be in diaspora\*. Unlike some networks, you don’t have to use your real identity. You can interact with people in whatever way you choose. The only limit is your imagination. diaspora\* is also Free Software, giving you liberty over how you use it.

[Find out more][get-involved]{: class="btn btn-primary"}

<%= col_new("col-lg") %>

<%= partial "components/feature_fa_icon", icon: "far fa-eye-slash" %>

### Privacy

In diaspora\* you own your data. You don’t sign over rights to a corporation or other interest who could use it. In addition, you choose who sees what you share, using Aspects. With diaspora\*, your friends, your habits, and your content is your business ... not ours!

[Find out more][get-involved]{: class="btn btn-primary"}

<%= row_end %>

<%= partial "components/headline_divider",
  id: "get_started",
  headline: "Want to get started?",
  subline: "It’s as easy as 1, 2, 3 ..."
%>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer diam nibh, placerat ut imperdiet in, efficitur sit amet purus. Maecenas ac iaculis erat. Fusce scelerisque tristique nisl vitae laoreet. Quisque eu urna euismod, posuere nunc sit amet, euismod diam. In posuere ligula et ante accumsan malesuada. Proin quis tellus elementum, feugiat urna sit amet, placerat eros. Suspendisse porta, est et finibus dapibus, lorem ex ullamcorper leo, mattis condimentum erat lorem ut augue. Duis consequat finibus orci nec commodo. Donec at lacus ultricies, congue ligula ullamcorper, malesuada sapien. Nullam quis arcu ac eros dignissim feugiat. In pellentesque imperdiet finibus. Cras imperdiet, risus in venenatis lobortis, enim velit dictum sem, a viverra tellus ipsum et erat. Aliquam tincidunt viverra fringilla. In pellentesque magna ac neque sagittis scelerisque.

[diaspora-earth]: <%= static_url("site/earth.png") %>
[get-involved]: <%= url_to("site", "get_involved") %>
