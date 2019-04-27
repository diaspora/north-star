---
title: diaspora* security release 0.5.7.1
date: 2016-03-08 22:15:09
---

We just released diaspora\* version 0.5.7.1 which disables post fetching for relayables. Due to an insecure implementation, fetching of root posts for relayables could allow an attacker to distribute malicious/spoofed/modified posts for any person.

Disabling the fetching will make the current federation a bit less reliable, but for a hotfix, this is the best solution. We will re-enable the fetching in 0.6.0.0 when we moved out the federation into its own library and are able to implement further validation during fetches.

### Updating

Please update as soon as possible. Update instructions are available as usual [in the wiki](https://wiki.diasporafoundation.org/Updating).
