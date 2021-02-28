---
title: How does diaspora* work?
nav_title: How does it work?
subtitle: diaspora* is simple to use – here’s how
---

<%= partial "components/headline_divider",
  headline: "What is decentralization?"
%>

diaspora\* is completely different from most networks that you use. It is completely decentralized, with no central "hub". Even so, it’s very easy to connect and communicate with people. Here’s how.

<%= row_start %>

### This.

![diaspora* consists of many nodes][img-distributed]{: class="mx-auto d-block img-fluid"}

diaspora\* is a true network, with no central base. There are servers (called "pods") all over the world, each containing the data of those users who have chosen to register with it. These pods communicate with each other seamlessly, so that you can register with any pod and communicate freely with your contacts, wherever they are on the network.

<%= col_new %>

### Not this.

![Traditional social networks are under a central control structure][img-centralized]{: class="mx-auto d-block img-fluid"}

Most social networks are run from centralized servers owned and run by a corporation. These store all the private data of their users. This information can be lost or hacked, and like any system with a bottleneck, any problem at the central servers can make the whole network run very slowly, or not at all. It is also more easy for governments to "listen in."

<%= row_end %>

diaspora\* uses open web standards and well-documented protocols to make this kind of connection possible. [Read more][federation-doc].

<%= partial "components/headline_divider",
  headline: "How do I connect?"
%>

Even though diaspora\* is made up of many pods all over the world, you will experience it as one integrated network. You don’t need to be on the same pod as your contacts in order to communicate freely with each other - communication happens seamlessly across all the pods in the diaspora\* universe. When you’re using diaspora\*, you can easily forget that it’s actually made up of many pods. Connecting with someone in diaspora\* is actually really simple:

<%= row_start %>

<%= partial "components/feature_fa_icon", icon: "fas fa-search" %>

### 1. Find them

All you need to do to connect to someone is find them and add them to an aspect. (See below for more on aspects.) Find them using the search field in the black bar, or hover over their name in your stream and a hovercard will appear. If you know their diaspora\* ID (yourname@podname.com), you can use that.

<%= col_new %>

<%= partial "components/feature_fa_icon", icon: "fas fa-plus" %>

### 2. Add them

Then it’s just a matter of clicking the "Add contact" button and choose which aspect you want them to be part of. You’re now connected and can share with them as you would on any other network. Or, if they’re part of different aspects of your life, add them to multiple aspects. You’re now connected. It’s as easy as that.

<%= row_end %>

<%= partial "components/headline_divider",
  headline: "Freedom",
  subline: "diaspora* doesn’t try to limit you"
%>

<%= row_start %>

### Be who you want to be

A lot of networks insist that you use your real identity. Not diaspora\*. Here you can choose who you want to be, and share as much or as little about yourself as you want. It really is up to you how you want to interact with other people.

<%= col_new %>

### Be creative

You’re not limited to how you can interact. You can just follow fascinating people to see what they have to say, or you can share world with everyone. Share your photos, artwork, videos, music, words - whatever you want. Let yourself fly.

<%= col_new %>

### Free as in freedom

diaspora\* is completely Free Software. This means there are no limits on how it can be used. You can even take the source code and change it to make it work in the way you want to, and help us improve the network. We’d love to have you on board.

[Find out more][get-involved]{: class="btn"}

<%= row_end %>

<%= partial "components/headline_divider",
  headline: "Privacy",
  subline: "Total control over what is yours"
%>

<%= row_start %>

### Own your own data

Many networks make money by analysing your interactions and using this to advertise things to you. diaspora\* doesn’t use your data for any purpose other than allowing you to connect and share with others. Only the admins of pods you interact with can access your data, and you can choose which pods you interact with.

<%= col_new %>

### Host it yourself

Choose where your data are stored by choosing a pod you’re happy with. If you want to be really secure, you can set up and host your own pod on servers you control, and interact only with pods you trust, so no one can get at your personal data.

[Find out more][host-a-pod]{: class="btn"}

<%= col_new %>

### Choose your audience

diaspora\*’s aspects allow you to share with just those people you want to. You can be as public or as private as you like. Share a funny photo with the whole world, or a deep secret just with your closest friends. You’re in control.

[Find out more][Aspects]{: class="btn"}

<%= row_end %>

<%= partial "components/headline_divider",
  headline: "All about aspects",
  subline: "The key to privacy in diaspora*"
%>

<%= row_start %>

### Aspects of your life

Your life is made up of lots of different aspects, involving different people. Why should your online life be any different? With diaspora\*’s aspects you can organize your online life as much as you want and share things only with the people you want to.

<%= col_new %>

### Organize your life

For example, you might have aspects for your family, for your closest friends, for work colleagues and for a sport or hobby you’re involved in. Your work colleagues don’t need to know about your family reunion, do they? With aspects, they won’t.

<%= col_new %>

### Tell the whole world

Of course, some things are so important that you want to tell the whole world about them. You can easily share something with the whole world by making it public. Using appropriate hashtags means it’ll reach people who are likely to enjoy it.

<%= row_end %>

<%= partial "components/headline_divider",
  headline: "Features our community loves",
  subline: "We think you’ll love ’em too"
%>

<%= row_start %>

<%= partial "components/feature_fa_icon", icon: "fas fa-hashtag" %>

### Hashtags

Hashtags allow you to flag and follow your interests, and help your posts reach like-minded people. They’re also a great way to meet fun and interesting new people on diaspora\*.

<%= col_new %>

<%= partial "components/feature_fa_icon", icon: "fas fa-retweet" %>

### Reshare

Why not reshare a post you love with others? diaspora\* makes it easy to spread ideas via reshare. Just press the button to share the message.

<%= col_new %>

<%= partial "components/feature_fa_icon", icon: "fas fa-at" %>

### Mentions

Want to get someone’s attention? Just @mention them! It’s an easy way to alert one of your contacts to something you think they need to know about.

<%= col_new %>

<%= partial "components/feature_fa_icon", icon: "fas fa-heart" %>

### Love

Show your appreciation for something you love by ♥ing it. Because sometimes words just aren’t enough to say what you feel.

<%= row_end %>

<%= partial "components/headline_divider",
  headline: "Host a community pod",
  subline: "Be one of diaspora*’s stars"
%>

![diaspora* consists of many nodes - be one of them!][img-distributed]{: class="img-thumbnail float-left"}

diaspora\* depends on its community members to host and run pods which are open to anyone who wants to take part. If you have some server space and a little bit of technical knowledge, we’d love it if you’d set up a pod which is open to registrations. The more pods, the better diaspora\* works - be part of the future of the decentralized social web!

* Read the [Pod installation instructions][installation-guides] and set up your own community pod.
* View a list of community pods at [Pod Uptime][poduptime]

[img-centralized]: <%= static_url("site/network-centralized.png") %>
[img-distributed]: <%= static_url("site/network-distributed.png") %>

[aspects]: #aspects
[federation-doc]: https://diaspora.github.io/diaspora_federation/
[get-involved]: https://diasporafoundation.org/get_involved
[host-a-pod]: https://diasporafoundation.org/about#host
[installation-guides]: https://wiki.diasporafoundation.org/Installation_guides
[poduptime]: https://diaspora.podupti.me/
