---
title: diaspora* version 0.7.0.0 released!
date: 2017-08-19 15:37:26
---

August 27th marks five years since diaspora\*, the open, privacy-oriented social network, was placed into the hands of its community by its founders. One year ago the community released diaspora\* version 0.6, the result of a huge effort of refactoring the old code to make it perform better, as well as redesigning diaspora\*'s interface and introducing new features. One year later, we are proud to announce the release of **diaspora\* version 0.7**. Since the last major release, 28 contributors have added 28675 lines of code and removed 20019 lines, which marks the release of diaspora\* version 0.7 as one of the biggest versions diaspora\*’s community has ever released.

![diaspora* version 0.7.0.0 released](<%= static_url("blog/2017-08-19/diaspora-0700.png") %>){: class="mx-auto d-block img-fluid"}

Our latest release contains some important changes, particularly ‘under the hood’.

* It is now possible to mention people in comments as well as in posts – a long-awaited feature.
* The markdown editor, with previews, is available on comments and conversations, bringing them into line with the publisher and making it a lot easier to add formatting, links and images to comments and conversations.
* This markdown editor is now also available on the mobile version of diaspora\*, for posts, comments and conversations!
* It includes **[Federation v0.2.0](https://github.com/diaspora/diaspora_federation)**, which is amazing enough that it got its [own blog post](<%= url_to("blog", "articles/2017-07-31-our-federation-protocol-just-got-bigger-and-better") %>).
* And, last but certainly not least, this new release will include the first of the two steps towards a full account migration feature!

[Version 0.2.0](https://github.com/diaspora/diaspora_federation/blob/65483774e120dde20b21dcba44979be21bba987f/Changelog.md) of our federation protocol, created by Benjamin Neff ([SuperTux88](https://github.com/SuperTux88)) with help from Senya ([cmrd-senya](https://github.com/cmrd-senya)), has started the process of including new functionality. It also provides underlying support for secure and reliable account migration. 

**Important reminder to podmins**: This new federation protocol is incompatible with versions of diaspora\* older than 0.6.3.0. If you are still running an earlier version, your server will no longer be able to fully communicate with servers running the latest software.

Senya has also been hard at work creating the first stages of the much-needed account migration feature! With the release of this version, it will be possible to fully export your account data which will become importable in a future diaspora\* release. We also started working on implementing federation methods to enable pods to correctly handle account migrations. The next step will be to create this secure account importing, which can be introduced once the majority of pods in our network have updated to version 0.7. These steps cannot be introduced in the same release as the network first needs to upgrade so when the first users start to import their archives, a maximum of pods will be able to understand the migration message.

### Since last year's launch of version 0.6.0.0, we achieved a pretty impressive list of changes!

Additions and enhancements **since version 0.6.0.0**:

* Automatically pull new notifications every 5 minutes
* Add a user setting for default post visibility
* Use `guid` instead of `id` in permalinks and in single-post view
* Links to streams of posts I have liked or commented on
* Access to "My aspects" and "Followed tags" pages on mobile
* Improve color themes and add a "Dark" color theme
* Enable collapsing of notification threads in your mail client
* OpenGraph video support
* Improve error handling on mobile
* Admin pages for mobile users
* NodeInfo 2.0
* Stop communication with pods that have been offline for an extended period of time
* Support for an optional `Content-Security-Policy` header
* Support for [Liberapay](https://liberapay.com/) donations

* [Community guidelines](https://diasporafoundation.org/community_guidelines)
* Links to our [Discourse](https://discourse.diasporafoundation.org/) forum

Here’s a quick round-up of the major changes coming your way in **version 0.7**:

#### Interface

* Mentions in comments
* Improve Mentions: display @ before mentions; simplify mentions in the publisher
* Internationalization for color themes
* Refactoring single-post view interactions
* Update help pages
* Simplified publisher preview
* Add markdown editor for comments and conversations
* Support cmd+enter to submit posts, comments and conversations

#### Account migration

* Update the user data export archive format
* Reset stuck exports and handle errors
* Add support for receiving account migrations

#### Federation
* Switch to new federation protocol
* Fix order of comments across pods

#### Mobile

* Always link comment count text on mobile
* Include count in mobile post action links
* Support direct links to comments on mobile
* Improve responsive header in desktop version
* Add markdown editor for posts, comments and conversations on mobile
* Mark as "Mobile Web App Capable" on Android

#### Internals

* Upgrade to jQuery 3 and Rails 5.1
* Send public profiles publicly
* Change sender for mails
* Add some missing indexes and clean up the data base if needed
* Improve stream when ignoring a person who posts a lot of tagged posts

## Updating

Update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating#Updating_diaspora.2A_0.6_to_diaspora.2A_0.7). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.
