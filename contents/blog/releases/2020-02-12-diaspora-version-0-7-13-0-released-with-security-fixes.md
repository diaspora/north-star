---
title: diaspora* version 0.7.13.0 released!
date: 2020-02-12 00:30:00
---

This is an unscheduled update **which includes some urgent security fixes**, so please update soon. Since the last release, this release collects **67 commits** made by **4 contributors**. It's only a maintenance release, as you can tell. :)

A huge thanks to all the contributors from diaspora\*'s amazing community! If you want to help make diaspora* even better, please [check out our getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing). Please [see the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.7.13.0) for a complete list of changes made in this release.

### Notable Changes

* **Fixes [USN-4274-1](https://usn.ubuntu.com/4274-1/), a potential Denial-of-Service vulnerability in Nokogiri**. [#8108](https://github.com/diaspora/diaspora/pull/8108)
* Introduces an automatic cleanup job to remove photos that have been uploaded but never got submitted in a post. [#8041](https://github.com/diaspora/diaspora/pull/8041)
* Removes the dependency to `rails-assets.org` to prevent installation or upgrade issues when the service is down. [#8087](https://github.com/diaspora/diaspora/pull/8087)

### Updating

Podmins, please update your pods as soon as possible. Update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating#Updating_a_production_install_to_a_new_minor_version). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.

If you are a user not running your own pod, there is nothing you need to do!
