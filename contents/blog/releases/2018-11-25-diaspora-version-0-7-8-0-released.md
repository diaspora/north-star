---
title: diaspora* version 0.7.8.0 released!
date: 2018-11-25 21:45:27
---

As scheduled, a new minor release is now released. Over the past six weeks, we have managed to collect **86 commits** made by **8 contributors** for this minor release.

A huge thanks to all the contributors from diaspora\*'s amazing community! If you want to help make diaspora* even better, please [check out our getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing). Please [see the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.7.8.0) for a complete list of changes made in this release.

### Notable Changes

* If you enlarge a photo inside a post by clicking on it, you will now receive the full resolution version.
* If `libjemalloc` is installed on your server, diaspora\*s memory consumption should be reduced by a fair bit, and stay more stable at a lower level. For Debian and Ubuntu, you can install the `libjemalloc1` package, and while it might be called slightly different for other distributions, you can probably figure it out. :) If you don't use `script/server` to start diaspora, have a look at the [pull request](https://github.com/diaspora/diaspora/pull/7919) and adopt your solution to use `libjemalloc` by setting `LD_PRELOAD` accordingly.
* Podmins can now assign administration and moderation roles with a simple click from within diaspora\*s admin panel.

### Updating

Update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating#Updating_a_production_install_to_a_new_minor_version). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.
