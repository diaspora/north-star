---
title: diaspora* version 0.7.14.0 released!
date: 2020-06-14 00:30:00
---

**Surprise**! You may have noticed that we didn't push a regular release for a while. As we are currently focusing on polishing the next major release, we have paused our regular release schedule for now. However, we have some small things we wanted to release, so here we are. This is a small release, but it still contains **77 commits** made by **6 contributors**, although most of the commits are just internal maintenance.

A huge thanks to all the contributors from diaspora\*'s amazing community! If you want to help make diaspora* even better, please [check out our getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing). Please [see the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.7.14.0) for a complete list of changes made in this release.

### Notable Changes

* We updated the suggested Ruby version to 2.6. If you run into trouble during the update and you followed our installation guides, run `rvm install 2.6`!
* Deleted users will no longer have a link to their non-existing profiles in the admin dashboard.
* Attempting to fill a profile's gender field with more than 255 characters now results in a proper error message instead of an undescriptive server error.

### Updating

For podmins, update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating#Updating_a_production_install_to_a_new_minor_version).
