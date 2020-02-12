---
title: diaspora* version 0.7.12.0 released!
date: 2019-06-25 00:00:00
---

As scheduled, a new minor release is now released. Over the past six weeks, we have managed to collect **15 commits** made by **6 contributors** for this minor release.

A huge thanks to all the contributors from diaspora\*'s amazing community! If you want to help make diaspora* even better, please [check out our getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing). Please [see the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.7.12.0) for a complete list of changes made in this release.

### Notable Changes

* Fixed a regression where enabling Two-Factor authentication did not remember logins
* Added info message for people without an account reaching a closed pod
* Made headline sizes more appropriate
* Smaller fixes for some papercuts

### Updating

For podmins, update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating#Updating_a_production_install_to_a_new_minor_version). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.
