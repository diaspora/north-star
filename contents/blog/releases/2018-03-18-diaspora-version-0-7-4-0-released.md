---
title: diaspora* version 0.7.4.0 released!
date: 2018-03-18 22:20:23
---

Once again we’ve reached the end of a development cycle! Over the past six weeks, **30 commits** made by **7 contributors** were added to ship in this minor release.

Thanks to all the contributors to that version. Remember, diaspora\* is built and managed solely by volunteers – and you can be one of them! Check out our [getting started guide](https://wiki.diasporafoundation.org/Getting_started_with_contributing) if you want to contribute as a developer. If you're not familiar with programming, there are [many other ways you can help](https://wiki.diasporafoundation.org/Other_ways_to_contribute), as important as writing code. 

### Notable Changes

The most notable change in this release is the ability to **embed audio and video content in a post!**

Thanks to [Senya](https://socializer.cc/u/senya), diaspora\* now detects direct links to audio and video files and displays them at the end of the post using your browser’s native HTML5 player. Just use the normal Markdown syntax for links – `[text](http://url/to/file.mp3)` – and include the URL of an audio or video file, and it will be embedded when you share the post. If there are multiple audio/video links in the post, they will be displayed in order.

This is an improvement for privacy as you now can avoid third-party widgets (like YouTube, Dailymotion, Vimeo) and their tracking to embed media content.

Notes:

- Video and audio files can **not** be **uploaded** to diaspora\* yet. To be displayed in diaspora\*, media files must be hosted elsewhere and have a direct URL to the file.
- It won’t be possible to embed this native media player anywhere inside a post until a unique syntax for media embedding has been included in the CommonMark standard.
- This feature is only available on browsers that support the `<audio>` and `<video>` HTML5 tags.
- You will only see players for media formats (mp4, mp3, ogg, ogv, flac, etc.) that are supported by your browser.

The other notable changes are:

 - The back-to-top button is now displayed on all pages.
 -  Image urls proxied by camo are not indexed by search engines.
 - Compatibility with Hubzilla and SocialHome users discovery has been fixed.
 - Fix a bug that caused some posts to be missing from the stream.

Please [see the changelog](https://github.com/diaspora/diaspora/releases/tag/v0.7.4.0) for a complete list of changes made in this release.

Is the feature you dream about not listed in these release notes? You can [add a bounty](https://www.bountysource.com/teams/diaspora/issues) to the GitHub issue you'd like to see solved, to increase developers' interest. Read more about bounties and diaspora\* in [this blog post](<%= url_to("blog", "articles/2015-03-27-support-diaspora-development-via-bountysource") %>).

### Updating

Podmins can find update instructions available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating). For those of you who have been testing the release candidate, run `git checkout master` before the update to get back to the stable release branch.
