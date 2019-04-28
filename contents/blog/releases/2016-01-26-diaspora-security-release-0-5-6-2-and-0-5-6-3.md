---
title: diaspora* security release 0.5.6.2 and 0.5.6.3
date: 2016-01-26 14:30:04
---

We just released diaspora\* version 0.5.6.2 and 0.5.6.3 which fixes

* [CVE-2016-0751](https://groups.google.com/forum/#!topic/rubyonrails-security/9oLY_FCzvoc) - Possible Object Leak and Denial of Service attack in Action Pack
* [CVE-2015-7581](https://groups.google.com/forum/#!topic/rubyonrails-security/dthJ5wL69JE) - Object leak vulnerability for wildcard controller routes in Action Pack
* [CVE-2015-7576](https://groups.google.com/forum/#!topic/rubyonrails-security/ANv0HDHEC3k) - Timing attack vulnerability in basic authentication in Action Controller
* [CVE-2016-0752](https://groups.google.com/forum/#!topic/rubyonrails-security/335P1DcLG00) - Possible Information Leak Vulnerability in Action View
* [CVE-2016-0753](https://groups.google.com/forum/#!topic/rubyonrails-security/6jQVC1geukQ) - Possible Input Validation Circumvention in Active Model
* [CVE-2015-7577](https://groups.google.com/forum/#!topic/rubyonrails-security/cawsWcQ6c8g) - Nested attributes rejection proc bypass in Active Record
* [CVE-2015-7579](https://groups.google.com/forum/#!topic/rubyonrails-security/OU9ugTZcbjc) - XSS vulnerability in rails-html-sanitizer
* [CVE-2015-7578](https://groups.google.com/forum/#!topic/rubyonrails-security/uh--W4TDwmI) - Possible XSS vulnerability in rails-html-sanitizer

The hotfix-hotfix 0.5.6.3 fixes a regression caused by one of the security fixes which we did not notice at first.

### Updating

Please update as soon as possible. Update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating).
