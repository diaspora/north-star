---
title: diaspora* version 0.6.1.0 released!
date: 2016-11-02 22:07:40
---

As scheduled, a new minor release is now released. Over the past six weeks, we have managed to collect **184 commits** made by **11 contributors** for this minor release.

A huge thanks to all the contributors from diaspora\*'s amazing community! If you want to help make diaspora* even better, please [check out our getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing). Please [see the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.6.1.0) for a complete list of changes made in this release.

### Notable Changes

* Added OpenGraph video support
* We no longer federate to pods that have been offline for an extended period of time
* Added In-Reply-To and References headers to notification mails, which means you can collapse threads in your mailclient
* Added support for an optional `Content-Security-Policy` header
* Add user setting for default post visibility, allowing people to set their default aspects for posting

### Updating

Update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.
