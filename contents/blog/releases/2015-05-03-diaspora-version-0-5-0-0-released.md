---
title: diaspora* version 0.5.0.0 released!
date: 2015-05-03 15:32:34
---

## diaspora* version 0.5.0.0 released!

After a long wait we are really happy to announce that **a new major version of diaspora*, v0.5.0.0, has been released today!** This is the biggest release the community has ever done, and includes many of the large features and improvements you have been waiting for.

**IMPORTANT for podmins**: Before upgrading, **Please** make sure to read and understand in full the specific [0.4.x to 0.5 upgrade guide](https://wiki.diasporafoundation.org/Updating#Updating_diaspora.2A_0.4_to_diaspora.2A_0.5). **You will run into problems during the upgrade if you do not follow the instructions carefully!**

Here is a list of the main improvements, with links to the relevant pull requests:

### User experience

- Redesign the contacts page, drop the “facebox” viewer and enable search for contacts directly on the page [#5153](https://github.com/diaspora/diaspora/pull/5153) & [#5473](https://github.com/diaspora/diaspora/pull/5473)
- Redesign the profile page, including automatic update after an action without reloading the page [#4657](https://github.com/diaspora/diaspora/pull/4657) & [#5180](https://github.com/diaspora/diaspora/pull/5180)
- New display for photos on the profile page [#5521](https://github.com/diaspora/diaspora/pull/5521)
- Improved notification dropdown [#5129](https://github.com/diaspora/diaspora/pull/5129) & [#5237](https://github.com/diaspora/diaspora/pull/5237)
- Improved parser for Markdown formatting code [#5526](https://github.com/diaspora/diaspora/pull/5526)
- Added/moved hide, block user, report and delete icons in the single-post view [#5547](https://github.com/diaspora/diaspora/pull/5547)
- Show hovercards on mentions [#5652](https://github.com/diaspora/diaspora/pull/5652)
- Allow users to enable/disable notifications for a post [#5511](https://github.com/diaspora/diaspora/pull/5511) & [#5722](https://github.com/diaspora/diaspora/pull/5722)
- Display poll results on reshares of the post [#5782](https://github.com/diaspora/diaspora/pull/5782)
    
### Privacy

- Exclude the content of non-public posts from notification emails [#5494](https://github.com/diaspora/diaspora/pull/5494)
- Allow users to export their profile, posts and comments in JSON format [#5499](https://github.com/diaspora/diaspora/pull/5499)
- Allow users to export their uploaded photos [#5685](https://github.com/diaspora/diaspora/pull/5685)
- Strip EXIF data from newly uploaded images (user configurable) [#5510](https://github.com/diaspora/diaspora/pull/5510)
- Allow podmins to set up a proxy to avoid external requests on images embedded with Markdown, by OpenGraph or from other pods [#5386](https://github.com/diaspora/diaspora/pull/5386)
    
### Mobile

- New profile page design with hashtags [#5084](https://github.com/diaspora/diaspora/pull/5084)
- Add “\#Followed tags” to the mobile menu [#5468](https://github.com/diaspora/diaspora/pull/5468)
- Enable users to add/remove contacts from an aspect [#5594](https://github.com/diaspora/diaspora/pull/5594)
    
### Under the hood

- Federation improvements [#5209](https://github.com/diaspora/diaspora/pull/5209)
- Major version updates to Ruby (2.1), Rails (4.2) and Sidekiq (3.3)
    
### Admin

- Make reported posts/comments accessible from the Report tab [#5337](https://github.com/diaspora/diaspora/pull/5337)
- Add maintenance feature to automatically expire inactive accounts [#5288](https://github.com/diaspora/diaspora/pull/5288)
- Give admins the ability to lock/unlock accounts [#5643](https://github.com/diaspora/diaspora/pull/5643)

In total this release closes [156](https://github.com/diaspora/diaspora/issues?q=is%3Aissue+milestone%3A0.5.0.0+is%3Aclosed) issues or feature tickets. A total of 20 contributors contributed code to this release in a total of 785 commits.

This release has been in release candidate status since the 30th of March and has been tested on pods during that time. As such, we are confident this release will not have major issues left. However, this release does contain many manual steps for podmins when upgrading. **Please follow [the steps](https://wiki.diasporafoundation.org/Updating#Updating_diaspora.2A_0.4_to_diaspora.2A_0.5) carefully and to the letter!** If in doubt, please [visit our IRC channel](https://wiki.diasporafoundation.org/How_we_communicate#IRC) #diaspora on Freenode and **ask** before continuing. Not following the instructions closely could result in unnecessary downtime for your pod.

**MySQL/MariaDB pods**: please note this release contains long running database migrations for these databases. Large pods should expect at least 30-60 minutes downtime due to migrations.

Please provide feedback about the release via the [normal channels](https://wiki.diasporafoundation.org/How_we_communicate). We are aiming to move to releasing minor upgrades faster in the future, so bug fixes and small features can be pushed out without pods having to wait for a major release.
