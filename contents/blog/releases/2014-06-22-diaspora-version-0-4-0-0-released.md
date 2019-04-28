---
title: diaspora* version 0.4.0.0 released!
date: 2014-06-22 16:42:11
---

We're pleased to announce a new major version of diaspora*, which includes 302 commits from 29 contributors.

Here are the new features in this version:

* It is now possible to add a poll to your message: an easy way to get answers to your questions!
* You can now report a post or a comment to the podmin by clicking the exclamation point icon. Use it to signal inappropriate content, such as spam.
* The notifications page has been completely redesigned. You can now filter notifications by type, and show only read or unread notifications. The notifications dropdown in the header bar has also been improved: it now displays some text from the post and provides a better way to mark notifications as read.
* The mobile view has been improved and now includes a drawer which provides easy access to every page. Icons are more visible and easier to click, and the search field is directly accessible.
* Hovercards are now available on bootstrap pages (currently single-post view, conversations page, notifications page).
* The single-post view and the conversation page designs have been improved.
* There have also been many bug fixes and much refactoring work completed. Find out more about them in [the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.4.0.0).

As all the development of diaspora* is done by community contributors, we would like to express our thanks here to the people who did all the code work. In order of commit count:

* [Jonne Haß](https://github.com/jhass) has done a huge amount of work all around the diaspora* code base. In addition to contributing code and testing updates to gems, Jonne has as always been doing a lot of work reviewing other contributors code and generally helping out with his Rails expertise. Larger contributions from Jonne include the message renderer refactoring.
* [Lukas Matt](https://github.com/Zauberstuhl) contributed the post report functionality that allows users to report spam and inappropriate content to the podmin.
* [Antoine D. (Flaburgan)](https://github.com/Flaburgan) and [Erwan Guyader](https://github.com/taratatach) did some awesome work with the mobile view, including a drawer to make navigation inside Diaspora easier.
* [Steffen van Bergerem](https://github.com/svbergerem) rewrote the notifications page and dropdown and ported it to bootstrap, in addition to various smaller changes.
* [Jannik Streek](https://github.com/JannikStreek) added a much requested poll feature to status messages.
* [Petru Hincu](https://github.com/hpetru) helped finalize the poll feature and also contributed many other fixes.
* [Florian Staudacher](https://github.com/Raven24)  ported the publisher to Backbone.js, in addition to other changes, which clear the way for many other tasks relating to UI changes.
* [Jason Robinson](https://github.com/jaywink) contributed fixes to the new publisher and other components.
* [Fabian Rodriguez](https://github.com/fabianrbz) removed lots of redundant code to clean up the code base.
* [goob](https://github.com/goobertron) fixed various items in the UI level.
* [Anton Ilin](https://github.com/bronislav) contributed some improvements to hovercard functionality.
* [manwithtwowatches](https://github.com/manwithtwowatches) ported the help pages to Backbone.js.
* [Greg Tangey](https://github.com/Ruxton) contributed a change to speed stream loading and helped fix the account deletions bug.
* [arlo gn](https://github.com/arlogn) contributed a fix for the HTTPS YouTube embeds and some visual changes.
* [Darshan Rai](https://github.com/dash-rai) helped with the mentions code.
* [Gabriel Lima](https://github.com/santosgabriel) fixed a bug relating to email content language in invites.
* [Raphael Sofaer](https://github.com/rsofaer) helped lighten background processing relating to post federation.
* [Faldrian](https://github.com/Faldrian) contributed to the atom feed code.
* [Marien Fressinaud](https://github.com/marienfressinaud) helped clean a duplicate settings checkbox.
* [Johannes Brunswicker](https://github.com/MatrixCrawler) contributed a fix for the atom feed relating to deleted reshares.
* [Mehmet Atif Ergun](https://github.com/mehmetaergun) contributed a template fix.
* [Oliver Azevedo Barnes](https://github.com/oliverbarnes) helped fix the problem with the account deletions.
* [Sharif Olorin](https://github.com/fractalcat) contributed a grammar fix to the admin interface.
* [Vittorio Cuculo](https://github.com/vcuculo) contributed some UI fixes.
* [Florian Bigard](https://github.com/Chocobozzz) contributed a script typo fix.

In addition we would like to thank [Dennis Schubert](https://github.com/denschub) for maintaining the project infrastructure, [all the translators](https://webtranslateit.com/en/projects/3020-Diaspora/top_translators) who have helped with localize the application and of course all the community members who have engaged themselves in discussing ideas, filing issues, testing - and of course using diaspora*. Without all of you this project would not exist!

We hope you'll enjoy using this new version of diaspora*!

**Podmins**, before updating to this version please [read the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.4.0.0) for information about the manual steps necessary to upgrade to this release.
