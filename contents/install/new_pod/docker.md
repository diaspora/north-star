---
title: Docker
subtitle: Get a local development instance up and running easily
---

Docker allows you to set up diaspora\* and get it running with some relatively simple steps. Instead of installing all dependencies like Ruby and services like the database on your own machine, we provide a setup that runs them within something closely related to a virtual machine. This makes the setup simple for developers and people who just want to have a look at diaspora\*, and it leaves almost no traces on your system.

<%= partial("components/install_guide_version_note") %>
<%= warning_box_start("warning") %>
Please note that **this setup is intended for development purposes**, or for people who want to give diaspora\* a try on their local machine. It is **not suitable for production environments**, and data loss inside the diaspora\* environment may occur at any time.
<%= warning_box_end %>

## Prepare your system

Before we can do anything, we need to make sure `Git` is installed on your system to obtain a version of the current source code.

<% if @guide_data.dig(:guide, :manual_notes, :packaging) %>
<%= warning_box_start %><%= @guide_data[:guide][:manual_notes][:packaging] %><%= warning_box_end %>
<% end %>

Install `git` on your system by running the following command in a terminal

~~~
<%= package_install_command(%i[git]) %>
~~~

### Install Docker

Please check [this documentation][docker-install] for detailed instructions on how to get Docker set up on your machine.

## Obtain the source code

In a directory of your liking, for example in your home directory or on your desktop, run


~~~
git clone https://github.com/diaspora/diaspora.git
cd diaspora
~~~

to obtain the latest source code and switch into that directory.

## Initialize and run diaspora\*

Once you have completed the steps above, you can simply run

~~~
./script/diaspora-dev setup
~~~

to start the automatic setup process. This will download needed packages, install everything diaspora\* needs and gets the database up and running. This command can take **several minutes**, because it has to run quite a few tasks that you usually would have to do by hand. As soon as the setup is done, you can run


~~~
./script/diaspora-dev start
~~~

to start the diaspora\* server. If you open your webbrowser and point it to `http://localhost:3000`, you should be greeted by a running diaspora\* development pod. Note that the first request can be quite slow, as diaspora\* has to compile all assets first, but it will get faster on subsequent requests.

Happy developing! If you want to learn more, please check out guides for [Podmins][podmin-guides] and [Developers][developer-guides], which contain additional information on what you can do with this setup.

[developer-guides]: <%= url_to("guides", "developers") %>
[docker-install]: <%= @guide_data[:guide][:docker][:install_url] %>
[podmin-guides]: <%= url_to("guides", "podmins") %>
