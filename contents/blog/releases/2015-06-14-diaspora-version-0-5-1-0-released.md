---
title: diaspora* version 0.5.1.0 released!
date: 2015-06-14 16:02:23
---

We did it! Six weeks after agreeing to introduce a fixed release cycle for diaspora* software, we are pleased to announce our next minor release. This is the first diaspora\* release within a fixed release schedule, and we are very happy that everything worked out well.

Over the past six weeks, we have managed to collect **207 commits** made by **21 contributors**. While we are still working on making larger features like chat or the full port to Bootstrap more stable in the `develop` branch of diaspora\*, we wanted to make some small but still awesome features available to the whole community as soon as we could. So here is **version 0.5.1.0**!

A huge thanks to all the contributors from diaspora\*'s amazing community! If you want to help make diaspora* even better, please [check out our getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing). Please [see the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.5.1.0) for a complete list of changes made in this release.

### Notable features

- Aspect sorting is back again! [#5559](https://github.com/diaspora/diaspora/pull/5559)
- Messages can now be sent with Ctrl+Enter. [#5910](https://github.com/diaspora/diaspora/pull/5910)
- It is now possible to follow and unfollow tags within the mobile interface. [#5941](https://github.com/diaspora/diaspora/pull/5941)

This release also includes a lot of fixes and refactorings of the federation modules, which should reduce the amount of failing jobs and increase the overall federation stability.

### Updating

Update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.

### Our new release schedule

As you might have heard, updates to diaspora\* will now be released within a fixed schedule. If you want to know when the next code freeze or the next release will happen, you can subscribe to the [ICS feed](https://mail.0b101010.org/home/mail@diasporafoundation.org/Release.ics). If you do not use a ICS-capable calendar or you just want to have a quick look, an [HTML version](https://mail.0b101010.org/home/mail@diasporafoundation.org/Release.html) is available as well. Our next release, 0.5.2.0, will get a candidate release on 2015-07-19 and should be released on 2015-07-26.
