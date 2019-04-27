---
title: diaspora* development review, December 2014
date: 2015-01-10 15:44:06
---

Here is a list of the changes made to diaspora*'s codebase during December.

These changes will take effect with the release of **diaspora* v0.5.0.0**.

As usual, please give a big round of applause for everyone who has helped improve diaspora* this month!

This list has been created by volunteers from the diaspora* community. We'd love help in creating a development review each month; if you would like to help us, get in touch via the [related thread on Loomio](https://www.loomio.org/d/rcQeDaEf/monthly-development-review).

-----

### **Marco Colli** [@collimarco](https://github.com/collimarco)
* improved the code of the likes controller by enhancing the readability and using more specific errors [#5491](https://github.com/diaspora/diaspora/pull/5491)

### **Faldrian** [@Faldrian](https://github.com/Faldrian)
* fixed some unwanted behavior of aspect membership dropdowns in combination with hovercards [#5487](https://github.com/diaspora/diaspora/pull/5487)
* fixed the broken markup for aspect membership dropdowns on the people search page [#5488](https://github.com/diaspora/diaspora/pull/5488)

### **James Kiesel** [@gdpelican](https://github.com/gdpelican)
* rewrote the profile exporter so that profile exports will be available in the JSON format. [#5354](https://github.com/diaspora/diaspora/pull/5354)

### **Jonne Haß** [@jhass](https://github.com/jhass)
* fixed an annoying bug for podmins: the sidekiq log (where you may find federation errors) was no longer written to a logfile but came out of the console instead [#5419](https://github.com/diaspora/diaspora/pull/5415)
* replaced Spork with [Spring](https://github.com/rails/spring) which is the recommended application preloader for rails. That change sped up our test suite and makes continuous testing of our code much easier for our devs. [#5443](https://github.com/diaspora/diaspora/pull/5443)
* improved some randomly failing cucumber tests in our test suite [#5458](https://github.com/diaspora/diaspora/pull/5458)
* improved the [Open Graph](http://ogp.me/) tags: when someone adds a link to a diaspora* page on another website, the website can use those tags to display a preview of the linked content. [#5461](https://github.com/diaspora/diaspora/pull/5461)
* fixed a bug where an empty Open Graph description led to a broken front end (only for pods running the development version of our software) [commit](https://github.com/diaspora/diaspora/commit/9d5e1f604d8dc36083acea6a85e92ab971fac098)
* wrote his own [Open Graph Reader](https://github.com/jhass/open_graph_reader) which reads Open Graph tags of other websites and helps diaspora* to show a preview for those websites when someone puts a link into its post. Before this we used OpengraphParser, which is no longer maintained. [#5462](https://github.com/diaspora/diaspora/pull/5462)
* added a cleanup routine for invalid cached Open Graph Data [commit](https://github.com/diaspora/diaspora/commit/ed0005c44d12e51629481f67164d6fee470841c3)
* removed some cleanup routines from our test suite which were no longer needed [#5463](https://github.com/diaspora/diaspora/pull/5463)
* fixed some bugs that were introduced while improving federation (bugfix for [#5209](https://github.com/diaspora/diaspora/pull/5209)) [commit](https://github.com/diaspora/diaspora/commit/6d682d6c39e557810a713aed77c884f5e5539669) [commit](https://github.com/diaspora/diaspora/commit/f4c756cd34bae6bb4f991a1b464b8bf364041c44)
* fixed a bug introduced by [#5461](https://github.com/diaspora/diaspora/pull/5461) which gave users a 500 error page when opening a reshare in the single post view whose original post has been removed. [#5497](https://github.com/diaspora/diaspora/pull/5497)

### **Marcelo Briones** [@margori](https://github.com/margori)
* fixed a bug which allowed users to send private messages to others who weren't sharing with them [#5449](https://github.com/diaspora/diaspora/pull/5449)
* changed conversations behaviour so that a conversation will be deleted from the database when the last participant leaves it [#5478](https://github.com/diaspora/diaspora/pull/5478)
* improved the 'hide a conversation' tooltip on the conversations page [#5477](https://github.com/diaspora/diaspora/pull/5477)
* removed content from notification emails related to limited posts [#5494](https://github.com/diaspora/diaspora/pull/5494)

### **SansPseudoFix** [@SansPseudoFix](https://github.com/SansPseudoFix)
*  fixed and improved the code markup in posts and profile information. The code markup should no longer exceed the boundaries of a column. [#5422](https://github.com/diaspora/diaspora/pull/5422)

### **Steffen van Bergerem** [@svbergerem](https://github.com/svbergerem)
* improved some randomly failing tests in our test suite [#5444](https://github.com/diaspora/diaspora/pull/5444) [#5446](https://github.com/diaspora/diaspora/pull/5446) [#5447](https://github.com/diaspora/diaspora/pull/5447)
* sped up the test suite using [Capybara::SlowFinderErrors](https://github.com/ngauthier/capybara-slow_finder_errors). The cucumber tests are now about 50% faster. [#5451](https://github.com/diaspora/diaspora/pull/5451) [#5455](https://github.com/diaspora/diaspora/pull/5455)
* fixed a bug which had led to content exceeding the profile information sidebar [#5450](https://github.com/diaspora/diaspora/pull/5450)
* changed the contacts page to display the chat icon (which you can use to enable/disable chat for a particular aspect) only if the podmin has enabled chat for users of that pod [#5459](https://github.com/diaspora/diaspora/pull/5459)
* made poll answers appear in the same order when displaying a post as the author chose when creating the poll [#5471](https://github.com/diaspora/diaspora/pull/5471)
* improved the wording of tagged people on the tag pages [#5475](https://github.com/diaspora/diaspora/pull/5475)
* removed some unused code for the stream [#5481](https://github.com/diaspora/diaspora/pull/5481)
