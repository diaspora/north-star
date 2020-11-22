---
title: Update your diaspora* pod
nav_title: Update
subtitle: Get the latest diaspora* changes.
---

**If you're not hosting your own pod, you do not need to do anything**! These instructions are meant for people running their own diaspora\* pods. If you are using diaspora\* without hosting your own pod, there is no need for you to do anything. You will get all the new stuff automatically as soon as your podmin updates their instance.

**Please always refer to the update documentation**, regardless of how long you have been running a pod. Usually, updates are fairly simple and mostly follow the same steps. However, sometimes updates do require extra steps or special instructions, so please always check these instructions before running an update, or you might damage your setup.

**Make sure you always have a backup ready**. We do our best to test the update instructions in as many environments as we can, but we might miss something. Having a backup ready is crucial if something goes wrong and you just want to get your pod back up.

**If something goes wrong, we are here to help**. If something goes wrong with your update, do not worry, [we are here to help][get-help] if you need us. If something goes wrong, or you have additional questions, please do not hesitate to reach out and we will do our best to get your pod back up and running!

## Major releases

For major versions of diaspora\*, manual steps are neccessary. If you skipped a major version and want to update now, for example from 0.5 to 0.7, please follow each of the major update steps one after another.

<%= partial "components/major_updates_list", items: @major_guides %>

## Regular minor updates

Minor updates are released in a regular interval and are designed to be quick and easy. These updates do not contain any long-running operations and podmins should be able to complete them within a couple of monites.

[Update to a new minor version](<%= url_to("install", "update/minor") %>){: class="btn btn-light btn-block text-left"}

## Local development setup

To update a local development system, where data integrety and continuity is not a real concerns, a simplified version of the update guide can be used.

[Update your development setup](<%= url_to("install", "update/development") %>){: class="btn btn-light btn-block text-left"}

[get-help]: <%= url_to("site", "get_help") %>
