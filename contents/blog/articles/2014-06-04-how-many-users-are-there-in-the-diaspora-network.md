---
title: How many users are there in the diaspora* network?
date: 2014-06-04 18:14:42
---

This is a question people often ask us, but it's not an easy one to answer in a decentralized network, as there's no central repository of users.

We want to be able to provide an answer – and we'd like to know as well! – so, with the release of version 0.3.0.0 in January 2014, we enabled pods to share statistics about their user base. This is opt-in, so that no one will share statistics about their pod unless they want to. Once activated, the data are made available at pod.tld/statistics.json.

A member of our community, Jason Robinson, immediately created [a page](http://pods.jasonrobinson.me/) to collate and present the data of the pods which are taking part in charts. [Pod Uptime](http://podupti.me/), a service run by David Morley, has also been updated to present some of these statistics.

Keep in mind when reading these statistics that:

* Not every pod is listed, as some podmins may choose not to list their pod.
* The user stats feature is opt-in, so some pods listed appear to have no users.
* There is currently [a bug](https://github.com/diaspora/diaspora/issues/4734) (fixed in next release v0.4.0.0) which causes the active users counts to be underestimated.

So the most we can say in answer to the question 'how many persons are using diaspora*' is: 'at least this many'.

One thing we have been able to see now that the feature and Jason's statistics page have been in operation for a few months is that the network continues to grow healthily. New users and, just as importantly, new pods are joining diaspora* all the time.

One of the items in our todo-list is to use these statistics and the great work by Jason and David on their sites to provide a list of available pods on our official website, [diasporafoundation.org](https://diasporafoundation.org), especially to help new users find a pod suitable for them to join. You can't wait to see that arriving? Come help us make it [on GitHub](https://github.com/diaspora/diaspora-project-site)!
