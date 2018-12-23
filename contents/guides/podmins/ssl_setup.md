---
title: Do I need a commercial SSL certificate? / Can I use CAcert certificates?
category: Dummy
---

If you plan on running your pod over HTTPS (yes, you should!) then yes you will need a valid commercial SSL certificate. By design, federation will not work with pods that have self-signed or invalid SSL certs installed. We do this to ensure that all users in the network are able to use diaspora* without suffering from constant security warnings related to 'invalid' certs.

For more information see this and this discussion.

There are free commercial certificates around - check Let's Encrypt for example (acme.sh makes the process a bit more simple).
