---
title: diaspora* version 0.4.1.0 released!
date: 2014-09-14 18:25:04
---

We're pleased to announce the release of diaspora* v0.4.1.0, which includes lots of bug fixes, changes and also new features. This release has already been tested as a release candidate by some community pods, so we don't expect too much difficulty for podmins when upgrading.

Here are the changes within this release:

* The admin user search has been improved and admins can also close accounts directly from the admin panel. Project founder [Maxwell Salzberg](https://github.com/maxwell) helped to add the account close feature, while [Florian Staudacher](https://github.com/Raven24) did the admin UI tweaks.
* [Mikael Nordfeldth](https://github.com/mmn) improved the federation layer by referencing the Salmon endpoint in Webfinger XRD. This change was made to allow GNU Social and other decentralized networks to integrate with diaspora* more easily than before.
* [Brandon](https://github.com/theatre-x) made it possible to enter birth years from 1910 onwards on signup. Our more elderly users shouldn't have to lie  about their birth year!
* The 'lightbox' image viewer has been fixed by [Faldrian](https://github.com/Faldrian). Now you can view a large number of photos without having the thumbnails block the actual photo.
* Also from Faldrian, the in-app Help feature now has a section about keyboard shortcuts. Check them out from your user settings menu.
* Poll creation was made easier by [Damz](https://github.com/damzcodes) and [lianne](https://github.com/op48) from WeGotCoders by automatically adding a new poll answer field without requiring an additional mouse click.
* A new Terms of Service/Privacy Policy feature is available thanks to [Jason Robinson](https://github.com/jaywink). Podmins can now enable either a template ToS (provided in the code) or write their own. Users will be asked to agree to the ToS on signup.
* Jason also provided a Rake task to enable podmins to send an email to all or a specific group of users.
* Damz from WeGotCoders added external crosspost services to the statistics.json output of pods. This allows pod lists to show which services are enabled for which pods, allowing new users to better choose a pod that matches the features they need.
* [Jaiden Gerig](https://github.com/jaideng123) tweaked the notifications page 'Mark All Read' button to not mark all notifications as read, but mark those notifications as read that are visible in the current filter.
* [Petru Hincu](https://github.com/hpetru) and Florian Staudacher improved the way ignoring a user from the stream works. Now all visible posts from that user are hidden from the stream immediately.
* It is now possible to delete previously uploaded photos from the photos stream. Thanks Lianne and [Daniel Sun](https://github.com/dan-mi-sun) from WeGotCoders for this much-requested addition.
* Most of the remaining Blueprint CSS framework pages have now been ported to Bootstrap. This includes the admin, help, getting started, people search, settings and contacts done during this release. For this important work we thank Florian Staudacher, [Pablo Cúbico](https://github.com/pablocubico) and [Błażej Pankowiak](https://github.com/blase).
* The login page has been completely redesigned by [Steffen van Bergerem](https://github.com/svbergerem) to fit the rest of the UI.

Bug fixes to old functionality;

* Petru Hincu fixed a problem with the poll creation elements not being hidden after submission of the post.
* [kpcyrd](https://github.com/kpcyrd) helped patch a self-XSS in the aspect rename functionality.
* [Jonne Haß](https://github.com/jhass) fixed Catalan JavaScript translations, which were breaking the new conversation contact search.
* [Dennis Schubert](https://github.com/denschub) fixed mobile signups, which had been broken by a regression in 0.4.0.0.
* [Erwan Guyader](https://github.com/taratatach) fixed two bugs with notifications. Now "mentioned" and "started sharing" notifications are correctly marked as read on clicking the notification.
* [Utah K Newman](https://github.com/theutahkate) and [Lyz Ellis](https://github.com/lyzellis) fixed UI issues with input element borders.
* Florian Staudacher fixed a particularly annoying bug where the hovercards got hidden in some situations under other UI elements.

Under the hood, there have been some non-visible changes, including;

* Petru Hincu refactored some of the notifications code.
* [Goob](https://github.com/goobertron) helped to clarify the configuration defaults and explanations in the application configuration files.

As always, [Jonne Haß](https://github.com/jhass) has done a huge amount of work in maintaining the code base, making sure dependencies are up to date and helping our contributors improve their code. A big thanks also to [Steffen von Bergerem](https://github.com/svbergerem) and [Florian Staudacher](https://github.com/Raven24) in helping land the UI changes.

Several new contributors pushed code this release, including Mikael Nordfeldth, Damz, Daniel Sun, Jaiden Gerig, Lianne, kpcyrd, Utah K Newman and Lyz Ellis. Big thanks to all of them for joining our effort, and a special mention to WeGotCoders, who have chosen diaspora* as a project to help their students learn Ruby on Rails.

A huge thank you to all the contributors from the whole community! If you want to help make diaspora* even better, please [check out our getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing).

Podmins, please [read the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.4.1.0) for information about the manual steps necessary to upgrade to this release. For those of you who have been testing the release candidate, to get back to the stable  release branch, run `git checkout master` before the update.
