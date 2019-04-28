---
title: diaspora* version 0.5.10.1 released!
date: 2016-06-28 20:37:48
---

We made a mistake and removed `mysql2` from the `Gemfile.lock` in a recent gem update. Since this could cause some issues for some installations, we decided to release a hotfix.

### Updating

Update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.
