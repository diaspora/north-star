---
title: Finally!
subtitle: Making sure your pod is ready for production
---

You are almost done! In this last section, we will make sure your server is set up correctly, so that the outside can reach our diaspora\* pod, and to ensure your pod automatically starts up again if you restart your server.

## Setting up your reverse proxy

Diaspora\* is not designed to be directly connected to the internet. Instead, a reverse proxy is used to proxy requests to the application, and to serve static files without having to involve the backend at all.

You did select <%= @guide_data[:params][:proxy].capitalize %> as your reverse proxy of choice. Please note that this guide does not actually install the server for you, and we assume you can do that on your own. Check your distribution's documentations if in doubt. When the server is set up and running, you can find the relevant configuration directives for diaspora\* [here][reverse-proxy-<%= @guide_data[:params][:proxy] %>]. Please make sure to note the instructions and comments there.

If you run into any issues or would like to get some addition assistance, [we are happy to help out][get-help].

## Automatically start your pod on system boot

To start diaspora\* automatically if your server boots, you can use a service like systemd. We provide [a ready-to-use systemd unit file][systemd-unit] for you to use. If your distribution uses something like SysVinit, you have to cr aft your own unit, but feel free to use the systemd example as an idea.

## Backing up your data

It is cruical to back up your pod's data. The database contains encryption keys that, if lost, render a diaspora\* ID useless, meaning that if you loose access to your database, all existing users would have to pick a new username, or the pod has to be stared over on a new domain. A good backup consists of, at least:

- A full dump of diaspora\*s database.
- The `public` folder inside the diaspora\* directory, which contains user uploads.
- The `config` folder inside the diaspora\* directory, which contains relevant configs and encryption/session keys.
- It is recommended to back up the entire `diaspora` directory, as that makes recovery a lot easier.

Whe cannot give you detailed advise on how to set up a backup strategy, as that is too individual for us to document. In any case, we recomment that you regularly verify the backup is running, and even more important, that you know how to restore a backup in the case of emergency.

[get-help]: <%= url_to("site", "get_help") %>
[reverse-proxy-apache]: <%= url_to("guides", "podmins/apache-configuration") %>
[reverse-proxy-nginx]: <%= url_to("guides", "podmins/nginx-configuration") %>
[systemd-unit]: <%= url_to("guides", "podmins/systemd-unit") %>
