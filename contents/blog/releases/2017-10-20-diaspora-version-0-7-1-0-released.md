---
title: diaspora* version 0.7.1.0 released!
date: 2017-10-20 23:35:12
---

With three weeks delay, a new minor release is now released. Over the past nine weeks, we have managed to collect **134 commits** made by **11 contributors** for this minor release.

A huge thanks to all the contributors from diaspora\*'s amazing community! If you want to help make diaspora* even better, please [check out our getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing). Please [see the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.7.1.0) for a complete list of changes made in this release.

### Notable Changes

This release contains many fixes for bugs related to the user data export. These fixes are the reason for our delayed release, but we wanted to make sure the export functionality is working for everyone. As a side effect, we dramatically reduced the amount of memory required for exporting and deleting accounts, so smaller pods will benefit.

Also:

* Add forward compatibility for `diaspora://` links
* Add support to relay likes for comments
* Remove the automatic detection of source code languages, you can set it manually
* Display likes and reshares for posts without login

### Updating

Update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.

This release contains some database migrations to fix data consistency errors. Although most of them are pretty fast, depending on the database size, they still could take 5 minutes longer than usual for a minor upgrade.

We had some issues causing accounts deletions not to be executed properly in some cases. To ensure these are performed properly, please run `RAILS_ENV=production bin/rake migrations:run_account_deletions` after you have upgraded.
