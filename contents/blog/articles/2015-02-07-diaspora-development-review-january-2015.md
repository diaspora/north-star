---
title: diaspora* development review, January 2015
date: 2015-02-07 15:05:34
---

These are the changes made to diaspora\*'s codebase during January. They will take effect with the release of **diaspora\* v0.5.0.0**.

Say a big thank you to everyone who has helped improve diaspora* this month!

This  list has been created by volunteers from the diaspora* community. We'd  love help in creating a development review each month; if you would like  to help us, get in touch via the [related thread on Loomio](https://www.loomio.org/d/rcQeDaEf/monthly-development-review).

-----

### **Augier** [@AugierLe42e](https://github.com/AugierLe42e)
* fixed the style of the header for the new statistics page: [#5587](https://github.com/diaspora/diaspora/pull/5587)
* fixed the information about available services and open registrations, which wasn't correctly displayed on the new statistics page: [#5595](https://github.com/diaspora/diaspora/pull/5595) and [#5599](https://github.com/diaspora/diaspora/pull/5599)

### **Marco Colli** [@collimarco](https://github.com/collimarco)
* fixed a bug that linked a profile image from facebook instead of downloading it to the pod for the diaspora* profile: [#5493](https://github.com/diaspora/diaspora/pull/5493)
* fixed the translation of timestamps on the mobile website: [#5489](https://github.com/diaspora/diaspora/pull/5489)

### **Dumitru Ursu** [@dimaursu](https://github.com/dimaursu)
* added a autoprefixer for CSS vendor prefixes: [#5532](https://github.com/diaspora/diaspora/pull/5532), [#5535](https://github.com/diaspora/diaspora/pull/5535) and [#5536](https://github.com/diaspora/diaspora/pull/5536)
* converted MySQL fields to 4-byte unicode which improves the range of supported chars in posts on pods using MySQL: [#5530](https://github.com/diaspora/diaspora/pull/5530)

### **Faldrian** [@Faldrian](https://github.com/Faldrian)
* added an environment variable to specify the Firefox version for our test suite: [#5584](https://github.com/diaspora/diaspora/pull/5584). The test suite sometimes has problems with recent Firefox versions, which can lead to failing tests when running the test suite on your own computer.
* added buttons to the single-post view to hide/remove a post and to ignore a user: [#5547](https://github.com/diaspora/diaspora/pull/5547)

### **Fla** [@Flaburgan](https://github.com/Flaburgan)
* added a currency setting to Paypal donations and allowed unhosted donation buttons for podmins: [#5452](https://github.com/diaspora/diaspora/pull/5452)
* added followed tags to the mobile menu: [#5468](https://github.com/diaspora/diaspora/pull/5468)
* removed the truncation for notification emails: [#4830](https://github.com/diaspora/diaspora/pull/4830)
* fixed the active users count on the new statistics page: [#5590](https://github.com/diaspora/diaspora/pull/5590)

### **François Lamontagne** [@flamontagne](https://github.com/flamontagne)
* added a missing link in the FAQ: [#5509](https://github.com/diaspora/diaspora/pull/5509)

### **James Kiesel** [@gdpelican](https://github.com/gdpelican)
* improved the profile export feature. The export is now generated in the background and the user receives a notification mail as soon as the export is done: [#5499](https://github.com/diaspora/diaspora/pull/5499) and [#5578](https://github.com/diaspora/diaspora/pull/5578)

### **Jason Robinson** [@jaywink](https://github.com/jaywink)
* refactored javascript code for the mobile website to get rid of console errors: [#5470](https://github.com/diaspora/diaspora/pull/5470)
* added some missing configuration for the profile export background job: [#5570](https://github.com/diaspora/diaspora/pull/5570)

### **maliktunga** [@maliktunga](https://github.com/maliktunga)
* improved the README: [#5550](https://github.com/diaspora/diaspora/pull/5550)

### **Marcelo Briones** [@margori](https://github.com/margori)
* added the ability to strip privacy-sensitive EXIF data when uploading images: [#5510](https://github.com/diaspora/diaspora/pull/5510)

### **Sakshi Jain** [@sjain1107](https://github.com/sjain1107)
* removed the community spotlight setting from the settings page if it has not been enabled on the pod: [#5562](https://github.com/diaspora/diaspora/pull/5562)

### **SansPseudoFix** [@SansPseudoFix](https://github.com/SansPseudoFix)
* fixed the style of the profile exporter on the settings page: [#5582](https://github.com/diaspora/diaspora/pull/5582)
* added a statistics page. We already had statistics before but now they are more readable for non-technical users: [#5464](https://github.com/diaspora/diaspora/pull/5464)

### **Steffen van Bergerem** [@svbergerem](https://github.com/svbergerem)
* removed unused code from the ProfileHeaderView: [#5472](https://github.com/diaspora/diaspora/pull/5472)
* ported the contacts page to Backbone.js: [#5473](https://github.com/diaspora/diaspora/pull/5473). This implements client-side rendering of the contact list, which should speed up page load times.
* replaced the markdown renderer pagedown by markdown-it: [#5526](https://github.com/diaspora/diaspora/pull/5526), [#5541](https://github.com/diaspora/diaspora/pull/5541), [#5543](https://github.com/diaspora/diaspora/pull/5543), [#5545](https://github.com/diaspora/diaspora/pull/5545) and [#5574](https://github.com/diaspora/diaspora/pull/5574)
* added plugins for the markdown-it markdown renderer: [#5551](https://github.com/diaspora/diaspora/pull/5551)


