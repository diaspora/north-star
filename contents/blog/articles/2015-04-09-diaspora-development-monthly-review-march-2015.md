---
title: diaspora* development monthly review, March 2015
date: 2015-04-09 07:45:34
---

These are the changes made to diaspora\*'s codebase during March, with 75 pull requests / commits from 14 different contributors. They will take effect with the release of **diaspora* v0.5.0.0**, which is coming really soon. We created a release candidate for this new version at the end of March; read [this message](https://joindiaspora.com/posts/ff21ff60bb5c0132aa721e4fdb37c9f1) to find out more about this.

Say a big thank you to everyone who has helped improve diaspora* this month!

This list has been created by volunteers from the diaspora* community. We'd love help in creating a development review each month; if you would like to help us, get in touch via the [related thread on Loomio](https://www.loomio.org/d/rcQeDaEf/monthly-development-review).

-----

### **Augier** [@AugierLe42e](https://github.com/AugierLe42e)

* Darkened the border of the active comment input field [#5724](https://github.com/diaspora/diaspora/pull/5724)
* Ported the notification dropdown, notification badge and global search to backbone.js [#5707](https://github.com/diaspora/diaspora/pull/5707) [#5761](https://github.com/diaspora/diaspora/pull/5761) [#5788](https://github.com/diaspora/diaspora/pull/5788)
* Added a button to the single-post view to activate/deactivate notifications for the post [#5722](https://github.com/diaspora/diaspora/pull/5722)

### **Flaburgan** [@Flaburgan](https://github.com/Flaburgan)

* Removed markdown code from the heading of a post [#5730](https://github.com/diaspora/diaspora/pull/5730)
* Removed a superfluous border on the conversations page [#5744](https://github.com/diaspora/diaspora/pull/5744)
* Replaced the 'Make Something' text on the registration page by the diaspora seed ball [#5743](https://github.com/diaspora/diaspora/pull/5743)

### **Aurélie Giniouxe** [@giniouxe](https://github.com/giniouxe)

* Moved the registration form to its own file [#5764](https://github.com/diaspora/diaspora/pull/5764)

### **goob** [@goobertron](https://github.com/goobertron)

* Added tests for liking/unliking posts [#5741](https://github.com/diaspora/diaspora/pull/5741)

### **Jonne Haß** [@jhass](https://github.com/jhass)

* Explicitly set the log level for pods running in the production environment [commit](https://github.com/diaspora/diaspora/commit/c9729d66d662889edc8e891dbbc1e0d5c0c0e3bd)
* Dropped a hack for embedding youtube videos which is now working without this hack [commit](https://github.com/diaspora/diaspora/commit/dd45b79a9840d24e43342ebda92ff875bc8f8b0f)
* Tried to make our tests faster by using DatabaseRewinder instead of DatabaseCleaner to clean the database between test runs [#5719](https://github.com/diaspora/diaspora/pull/5719)
* Removed a few unused files [commit](https://github.com/diaspora/diaspora/commit/25364893b94338f81d428e8690a8021b0cf6027e)
* Made the photo and profile export features use the same queue on the server to generate files [commit](https://github.com/diaspora/diaspora/commit/e7b92c15e27109002a3ebd76b6b5c7dd1427505b)
* Fixed a possible bug in the photo export feature: now we check if the original file for a photo really exists before adding it to the export [commit](https://github.com/diaspora/diaspora/commit/c2dab008abca5243e3641779acc7713cf930abb7)
* Reduced the gap between publisher and stream [#5740](https://github.com/diaspora/diaspora/pull/5740)
* Updated jsxc, the JavaScript XMPP client [commit](https://github.com/diaspora/diaspora/commit/679eca6f03862bc20d102d97a38317c874a648da)
* Updated OpenGraphReader [#5759](https://github.com/diaspora/diaspora/pull/5759)
* Added Ruby 2.0 support to a database migration [commit](https://github.com/diaspora/diaspora/commit/414cfbdae09b380e49938bfb1532147ed8865bfa)
* Modified a database migration to shorten indexes for tweet IDs [commit](https://github.com/diaspora/diaspora/commit/6b217c32f24c1af3e535455de24f7a6545eba723)
* Added a Ruby styleguide and enabled Ruby linting [commit](https://github.com/diaspora/diaspora/commit/69285b955c11504e7dcd7c9b6875b518c18014cc) [commit](https://github.com/diaspora/diaspora/commit/dcfe9757aa2a177d865391eb232b7b388cd5e561)
* Updated Rails [#5802](https://github.com/diaspora/diaspora/pull/5802)
* Updated the translations [commit](https://github.com/diaspora/diaspora/commit/cb1203d36eb654fc7d0378ed0d30a78ea712ed0b) [commit](https://github.com/diaspora/diaspora/commit/d4d68b10cc1c607d9b6a55b5243f42fd8cee260e) [commit](https://github.com/diaspora/diaspora/commit/42977333c4449efcada11e006a4d94e7caf59808)
* Made the website use the reshare received by the server instead of the one cached on the client side when adding a newly reshared post to the stream [commit](https://github.com/diaspora/diaspora/commit/73b6c7527881de2d8631a1aa34017bfc63fe0769)
* Updated a lot of Ruby gems [#5812](https://github.com/diaspora/diaspora/pull/5812)
* Refactored the error pages (400, 422, 500), which used to embed images from non-existing URLs. Now the error pages are precompiled after each update. [#5817](https://github.com/diaspora/diaspora/pull/5817)
* Replaced the default home page with a regular view. Before, the page had been static and contained embedded images from non-existing URLs. [#5822](https://github.com/diaspora/diaspora/pull/5822)

### **Lisa P** [@lislis](https://github.com/lislis)

* Improved the hover effect to show additional participants of a conversation [#5776](https://github.com/diaspora/diaspora/pull/5776)

### **Marcelo Briones** [@margori](https://github.com/margori)

* Fixed the photo export feature [#5685](https://github.com/diaspora/diaspora/pull/5685)
* Added rounded corners to avatars [#5733](https://github.com/diaspora/diaspora/pull/5733)

### **Martha Thompson** [@MothOnMars](https://github.com/MothOnMars)

* Added specific error messages when an attempt to change password fails [#5580](https://github.com/diaspora/diaspora/pull/5580)
* Added tests for roles (admin, etc.) that a user may have [#5792](https://github.com/diaspora/diaspora/pull/5792)

### **Pablo Cúbico** [@pablocubico](https://github.com/pablocubico)

* Ported the remaining stream pages to Bootstrap [#5715](https://github.com/diaspora/diaspora/pull/5715)

### **Sam Radhakrishnan** [@sam09](https://github.com/sam09)

* Unified margins for lists in posts [#5721](https://github.com/diaspora/diaspora/pull/5721)

### **SansPseudoFix** [@SansPseudoFix](https://github.com/SansPseudoFix)

* Fixed the color of focused links in the header [#5728](https://github.com/diaspora/diaspora/pull/5728)
* Fixed content overflowing containers in the desktop version [#5731](https://github.com/diaspora/diaspora/pull/5731) [#5752](https://github.com/diaspora/diaspora/pull/5752) [#5767](https://github.com/diaspora/diaspora/pull/5767)
* Fixed the pagination design on the conversations page [#5791](https://github.com/diaspora/diaspora/pull/5791)

### **Selman Ercan** [@S-Ercan](https://github.com/S-Ercan)

* Stopped hovercards from flickering[#5714](https://github.com/diaspora/diaspora/pull/5714)

### **Steffen van Bergerem** [@svbergerem](https://github.com/svbergerem)

* Removed some unused CSS files [#5734](https://github.com/diaspora/diaspora/pull/5734)
* Updated the markdown-it markdown renderer [#5736](https://github.com/diaspora/diaspora/pull/5736) [#5814](https://github.com/diaspora/diaspora/pull/5814)
* Improved the style of the stream [#5735](https://github.com/diaspora/diaspora/pull/5735)
* Added a missing http:// to links in posts and comments [#5746](https://github.com/diaspora/diaspora/pull/5746)
* Changed the icons in the stream selection nav to entypo icons [#5747](https://github.com/diaspora/diaspora/pull/5747)
* Fixed the char counter in the publisher [#5749](https://github.com/diaspora/diaspora/pull/5749)
* Fixed the photo count on user profiles [#5751](https://github.com/diaspora/diaspora/pull/5751)
* Fixed the mobile sign-up after an invitation [#5754](https://github.com/diaspora/diaspora/pull/5754)
* Updated and removed vendor JavaScript files [#5755](https://github.com/diaspora/diaspora/pull/5755) [#5758](https://github.com/diaspora/diaspora/pull/5758)
* Refactored some templates to use helper functions [#5763](https://github.com/diaspora/diaspora/pull/5763)
* Changed the post control icons to use entypo [#5762](https://github.com/diaspora/diaspora/pull/5762)
* Fixed the notifications page on mobile devices [#5766](https://github.com/diaspora/diaspora/pull/5766)
* Removed some unused CSS code and reduced the size of blockquotes [#5769](https://github.com/diaspora/diaspora/pull/5769)
* Added rounded corners and improved the readability of the participants count on the conversation page [#5777](https://github.com/diaspora/diaspora/pull/5777)
* Improved the style of the 'getting started' elements [#5781](https://github.com/diaspora/diaspora/pull/5781)
* Added polls to reshares [#5782](https://github.com/diaspora/diaspora/pull/5782)
* Refactored and improved the style of the sidebar [#5786](https://github.com/diaspora/diaspora/pull/5786)
* Removed unnecessary steps from the test suite [#5789](https://github.com/diaspora/diaspora/pull/5789)
* Uncommented some jasmine tests that were still succeeding [#5793](https://github.com/diaspora/diaspora/pull/5793)
* Added guard-jshintrb to check the JavaScript code style on the fly [#5794](https://github.com/diaspora/diaspora/pull/5794)
* Removed an unused layout [#5798](https://github.com/diaspora/diaspora/pull/5798)
* Unified the style of the invite code [#5799](https://github.com/diaspora/diaspora/pull/5799)
* Refactored the CSS code for post contents and unified the margins of lists in comments [#5809](https://github.com/diaspora/diaspora/pull/5809)
* Removed the footer from stream pages [#5816](https://github.com/diaspora/diaspora/pull/5816) [#5821](https://github.com/diaspora/diaspora/pull/5821)
* Fixed different front-end regressions [#5818](https://github.com/diaspora/diaspora/pull/5818)
* Added a message to the contacts page when there are no contacts in an aspect yet [#5819](https://github.com/diaspora/diaspora/pull/5819)

### **visualsayed** [@visualsayed](https://github.com/visualsayed)

* Added an error message when sharing a post which contains tag whose names are too long [#5783](https://github.com/diaspora/diaspora/pull/5783)
* Fixed the missing reshare count on the mobile stream [#5790](https://github.com/diaspora/diaspora/pull/5790) [#5805](https://github.com/diaspora/diaspora/pull/5805)
