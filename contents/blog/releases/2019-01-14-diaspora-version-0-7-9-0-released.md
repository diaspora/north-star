---
title: diaspora* version 0.7.9.0 released!
date: 2019-01-14 02:20:24
---

As scheduled, a new minor release is now released. Over the past six weeks, we have managed to collect **11 commits** made by **4 contributors** for this minor release.

A huge thanks to all the contributors from diaspora\*'s amazing community! If you want to help make diaspora* even better, please [check out our getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing). Please [see the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.7.9.0) for a complete list of changes made in this release.

### Notable Changes

* The `/public` stream should be much faster now if you are using PostgreSQL. This is just the first step of many to come to improve the performance of all streams and tag pages.
* The recent change to support full-resolution photos introduced issues with the thumbnails. This issue has been addressed.
* The mobile-optimized interface now supports ignoring users.

### Updating

For podmins, update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating#Updating_a_production_install_to_a_new_minor_version). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.
