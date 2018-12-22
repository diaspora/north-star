---
title: System requirmenets
---

We currently support production and development installations of diaspora\* on some Linux distributions, as well as development setups on macOS. Setting up a pod on Windows is not supported at the moment.

## General requirements

To run diaspora\*, we recommend having at least

* a *somewhat* decent **multi-core CPU**,
* at least **1.5 GiB of memory**, and
* **1 GiB of Swap** memory, because asset precompiling can be quite demanding.

You need ***some* amount of storage**, but that highly depends on your pod's usage. If your pod only houses yourself and you never post any media content, you are fine with some GiB of disk storage, but if you host more users posting lots of photos, you need... more. :)

You *could* run diaspora* on a Raspberry Pi 2 and newer, but it is not a pleasant experience.

## For production pods

If you want to run a productive diaspora\* pod, you need, in addition to the above:

* A **valid SSL certificate**. While you technically could run diaspora\* without SSL at all, you should not. Self-signed certificates do not work, and using them will prevent you from receiving contents. We highly recommend [Let's Encrypt][letsencrypt].
* An **always-online server** with a always-reachable domain name. While diaspora\* has *some* mechanisms for redelivering contents built in, it is not suitable to run a pod on your home internet connection, unelss it is a static dialup. Federation will become very weird if your pod is down at random times, and since user media (like profile pictures, uploaded photos, ...) is not distributed, but always hot-linked from the source pod, your pod has to be reachable.

[letsencrypt]: https://letsencrypt.org/
