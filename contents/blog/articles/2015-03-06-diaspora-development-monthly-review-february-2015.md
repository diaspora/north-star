---
title: diaspora* development monthly review, February 2015
date: 2015-03-06 17:19:27
---

These are the changes made to diaspora\*'s codebase during February. They will take effect with the release of **diaspora\* v0.5.0.0**.

Say a big thank you to everyone who has helped improve diaspora* this month!

This list has been created by volunteers from the diaspora* community. We'd love help in creating a development review each month; if you would like to help us, get in touch via the [related thread on Loomio](https://www.loomio.org/d/rcQeDaEf/monthly-development-review).

-----

### **Akash Agrawall** [@aka001](https://github.com/aka001)
* Added a dynamic change of the user's minimum age from the pod's config for the settings page [#5639](https://github.com/diaspora/diaspora/pull/5639)
* Added the ability for podmins to lock / unlock accounts [#5643](https://github.com/diaspora/diaspora/pull/5643)
* Improved the help section [#5706](https://github.com/diaspora/diaspora/pull/5706)

### **arlo gn** [@arlogn](https://github.com/arlogn)
* Improved the styling of the photo stream on the profile page [#5521](https://github.com/diaspora/diaspora/pull/5521)

### **Augier** [@AugierLe42e](https://github.com/AugierLe42e)
* Removed the header from the sign-in page for the mobile view [#5623](https://github.com/diaspora/diaspora/pull/5623)
* Added the ability to link to a specific help page [#5667](https://github.com/diaspora/diaspora/pull/5667)
* Added a help section for chat [#5665](https://github.com/diaspora/diaspora/pull/5665)

### **Dennis Schubert** [@denschub](https://github.com/denschub)
* Removed the file extensions for SCSS imports [commit](https://github.com/diaspora/diaspora/commit/ab4e04e8c459164c2933c401b2c928abc5bd7877)

### **Dumitru Ursu** [@dimaursu](https://github.com/dimaursu)
* Added checks for the database collation and added a line to the example config for podmins [#5624](https://github.com/diaspora/diaspora/pull/5624)

### **Faldrian** [@Faldrian](https://github.com/Faldrian)
* Fixed the position of moderation buttons (remove/block/report) on reshares [#5601](https://github.com/diaspora/diaspora/pull/5601)
* Added keyboard shortcuts for reshare (`r`), expand post (`m`), follow first link in a post (`o`) [#5602](https://github.com/diaspora/diaspora/pull/5602)
* Improved the avatar error handling which displays a default avatar if the original one isn't found on the server [#5638](https://github.com/diaspora/diaspora/pull/5638)
* Add the ability to add contacts in mobile version [#5594](https://github.com/diaspora/diaspora/pull/5594)

### **Flaburgan** [@Flaburgan](https://github.com/Flaburgan)
* Removed the sign-up button from the header when registrations are disabled [#5612](https://github.com/diaspora/diaspora/pull/5612)
* Unified the design of sign-up, sign-in and forgot password pages [#5391](https://github.com/diaspora/diaspora/pull/5391)
* Unified the post control icon tooltip by using the tooltip plugin for the post report icon [#5713](https://github.com/diaspora/diaspora/pull/5713)

### **James Kiesel** [@gdpelican](https://github.com/gdpelican)
* Added the creation dates of posts to the JSON export [#5597](https://github.com/diaspora/diaspora/pull/5597)

### **Aurélie Giniouxe** [@giniouxe](https://github.com/giniouxe)
* Fixed the text of the change button on the privacy settings page [#5671](https://github.com/diaspora/diaspora/pull/5671)

### **goob** [@goobertron](https://github.com/goobertron)
* Standardized capitalization throughout the UI [#5588](https://github.com/diaspora/diaspora/pull/5588)

### **Jonne Haß** [@jhass](https://github.com/jhass)
* Updated the locale files [commit](https://github.com/diaspora/diaspora/commit/02071fcf517672c3a4e351be181cec6f9c64b0d8)
* Updated Spring [commit](https://github.com/diaspora/diaspora/commit/e9179e33eaa25cf8b6e2ba1a9b185a71913bbfe6)
* Added a missing translation [commit](https://github.com/diaspora/diaspora/commit/f980eba0a3142722c6d11c4b4e2ac19804a77bfc)
* Added editorconfig to the codebase so all developers are able to agree on the same config for their editors (trailing whitespaces, etc.) [#5666](https://github.com/diaspora/diaspora/pull/5666)
* Added a feature which removes Unicode format characters from posts, fixing unwanted behavior of the markdown renderer [#5680](https://github.com/diaspora/diaspora/pull/5680)
* Updated Rails to version 4.2 [#5501](https://github.com/diaspora/diaspora/pull/5501)
* Updated a lot of rubygems [#5709](https://github.com/diaspora/diaspora/pull/5709)
* Removed the .css extension from SCSS files [#5710](https://github.com/diaspora/diaspora/pull/5710)

### **Marc Burt** [@MarcBurt](https://github.com/MarcBurt)
* Added a spec to make sure that closed accounts don't change the total user figure in pod statistics [#5351](https://github.com/diaspora/diaspora/pull/5351)

### **Sam Radhakrishnan** [@sam09](https://github.com/sam09)
* Added length validation to profile location, fixing an error thrown by the server when a user tried to enter a location longer than 255 chars [#5614](https://github.com/diaspora/diaspora/pull/5614)
* Made the website show the correct error message when the profile data validation fails [#5619](http://github.com/diaspora/diaspora/pull/5619)

### **SansPseudoFix** [@SansPseudoFix](https://github.com/SansPseudoFix)
* Fixed overflow of formatted code in comments for the mobile website [#5675](https://github.com/diaspora/diaspora/pull/5675)

### **Steffen van Bergerem** [@svbergerem](https://github.com/svbergerem)
* Fixed the aspect dropdown on the people search page, which wasn't working when users were added after fetching them from another server [#5632](https://github.com/diaspora/diaspora/pull/5632)
* Removed 'photo export' link from the settings page, which wasn't working [#5634](https://github.com/diaspora/diaspora/pull/5634)
* Removed some unused files and fixed the syntax in some jasmine tests [#5635](https://github.com/diaspora/diaspora/pull/5635)
* Added the JSHint javascript linter which looks for errors in our javascript codebase [#5637](https://github.com/diaspora/diaspora/pull/5637)
* Fixed the timeagos for the notifications page and the notification dropdown. Added a 'no notifications yet' message when the user has no notifications [#5417](https://github.com/diaspora/diaspora/pull/5417)
* Fixed a typo in a helper function [#5647](https://github.com/diaspora/diaspora/pull/5647)
* Updated the jasmine testing framework [#5649](https://github.com/diaspora/diaspora/pull/5649)
* Added hovercards for mentions [#5652](https://github.com/diaspora/diaspora/pull/5652)
* Fixed the badge count and automatic scrolling for unread conversations [#5646](https://github.com/diaspora/diaspora/pull/5646)
* Updated the sanitizer for markdown-it, which removes unknown html tags from posts before displaying them [#5661](https://github.com/diaspora/diaspora/pull/5661)
* Fixed a pending spec for the tag stream [#5663](https://github.com/diaspora/diaspora/pull/5663)
* Removed the unused function last_post from PeopleController [#5664](https://github.com/diaspora/diaspora/pull/5664)
* Improved the integration test for hovercards [#5650](https://github.com/diaspora/diaspora/pull/5650)
* Added a invitation link to the contacts page [#5655](https://github.com/diaspora/diaspora/pull/5655)
* Added the ajax spinner and improved the comment box for Bootstrap streams [#5672](https://github.com/diaspora/diaspora/pull/5672)
* Add the year as a separator to notifications page and fixed a bug with notifications which were displayed in the wrong order [#5676](https://github.com/diaspora/diaspora/pull/5676) and [#5677](https://github.com/diaspora/diaspora/pull/5677)
* Updated jasmine-ajax [#5679](https://github.com/diaspora/diaspora/pull/5679)
* Added transistions for opacity changes of post control icons [#5682](https://github.com/diaspora/diaspora/pull/5682)
* Fixed notifications for new conversation which where broken on the develop branch [5686](https://github.com/diaspora/diaspora/pull/5686)
* Fixed a bug on the notifications page: the conversation button was only displayed when you had less than 20 contacts. Now it depends on the number of contacts in the specific aspect [#5691](https://github.com/diaspora/diaspora/pull/5691)
* Fixed the style of the 'show more posts' button for the mobile website [#5683](https://github.com/diaspora/diaspora/pull/5683)
* Updated markdown-it-diaspora-mention and markdown-it-sanitizer which fixed a bug: mentions no longer add a trailing whitespace [#5711](https://github.com/diaspora/diaspora/pull/5711)

### **Piotr Klosinski** [@WebDevFromScratch](https://github.com/WebDevFromScratch)
* Update the stream when resharing a post [#5699](https://github.com/diaspora/diaspora/pull/5699)

### **Zach Rabinovich** [@zachrab](https://github.com/zachrab)
* Disabled sending emails for deleted accounts. Previously, the server tried to send an email to an arbitrary address [5640](https://github.com/diaspora/diaspora/pull/5640)

### **Lukas @Zauberstuhl** [@Zauberstuhl](https://github.com/Zauberstuhl)
* Added the ability to link to remote user profiles [#5659](https://github.com/diaspora/diaspora/pull/5659)
* Updated JSXC, the javascript xmpp client [#5648](https://github.com/diaspora/diaspora/pull/5648)
