---
title: diaspora* version 0.6.0.0 released!
date: 2016-08-26 22:16:32
---

August 27th marks four years since diaspora\*, the open, privacy-oriented social network, was placed into the hands of its community by its founders. Four years of refactoring, fixing bugs, redesigning the interface and introducing new features. Since the last major release, 42 contributors have added 44221 lines of code and removed 38560 lines, which marks the release of **diaspora\* version 0.6** as the biggest version diaspora\*’s community has ever released.

![diaspora* version 0.6.0.0 released](<%= static_url("blog/2016-08-26/v06_finished.jpg") %>){: class="mx-auto d-block"}

Our latest release contains an enormous number of changes, making huge improvements in user experience and optimizing the ‘under-the-hood’ code.

* The user interface has been transformed, and now has a more modern, easy to use design. It is also customizable, with the introduction of color themes.
* diaspora\* now allows users to make their entire profile public. This way, we hope diaspora\* can be more easily used as a window for organizations, or even be used as a blog.
* It’s now possible to display your posting location on an OpenStreetMap map.
* Although still not fully polished, our real-time chat feature (based on XMPP) has also been improved in this version. Of course, it is completely open so you can chat with any other XMPP user within the integrated chat interface, or even outside diaspora\* with an external XMPP client – convenient for when you’re using your phone!
* Talking of phones, diaspora\*s mobile version hasn’t been forgotten. It has also had an interface upgrade. It now displays polls and post location, and allows users to connect to external services (Facebook, Twitter, Wordpress, Tumblr) and edit their privacy settings. If you don’t find our mobile interface works for you, switch to the ‘desktop’ interface – you’ll find that it’s now fully responsive to screen size and will look good on your phone!
* Last but not least, we’ve been working hard to build the basis of a much-requested feature: an external API to help diaspora\* interact with external applications! We’re proud to announce that the first, important step in this direction has been taken: every diaspora\* server now becomes an OpenID provider! Yes, you can now put a “Connect with diaspora\*” button on your website ;)

Those are some pretty amazing changes, right? Well, wait for it – the best is yet to come. diaspora\*’s federation protocol, which allows every pod in the diaspora\* network to communicate with each other, has finally been extracted in a separated library. This means you can include this code in your application and it will be able to “talk” to diaspora\*! Plus, you wouldn’t believe how many improvements have been made to the protocol. Federation now functions as it should – immediately, reliably and invisibly. What had been diaspora\*’s weakness has now been reborn as it’s biggest strength. The power of decentralized networking is back in everyone’s hands!

Here’s a quick round-up of the major changes coming your way in **version 0.6**:

#### Interface

* Ability to make your entire profile information public for maximum exposure
* You can display your location on an OpenStreetMap map
* New, more modern and easy to use ‘flat’ design
* Port style sheets to Bootstrap 3 for stability and compatibility
* New public index page that describes diaspora\* clearly
* Choice of color themes

#### Mobile

* New, more modern and easy to use ‘flat’ design
* Ability to post polls and your location
* Management of adjustments of the services and private life

#### Administration

* Indication in the admin panel if the pod isn’t running the latest version of diaspora\*
* New page displaying all the pods with which the pod is communicating and the state of the connections
* Redesign of the moderation page

#### Internals

* A huge clean-up of the database
* Chat moves from Vines to Prosody to enable more customization options
* An entirely rewritten federation code, extracted into a separate library
* Improvement of the test suite to ensure a better quality of code
