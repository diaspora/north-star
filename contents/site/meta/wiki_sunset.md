---
title: "diaspora* wiki sunset"
subtitle: The information you requested has been relocated.
---

<%=
  partial "components/inline_image",
  alt: "We are vewwy sowwy.",
  src: static_url("site/mr_abdoun_the_scottish_cat.jpg")
%>

In Spring 2019, we decided to discontinue the diaspora\* project wiki and to merge the information it contained with the project site and our dedicated installation guides. This makes maintenance of the project's infrastructure far easier, as well as streamlining content. While we attempted to keep old URLs working by setting up redirects, we could not redirect all wiki articles to pages on our new site. If you are reading this, it means you followed a link to an old wiki resource that we could not reallocate directly. Sorry about that.

To help you find what you are looking for, here is a list of resources available to you:

* If you need help using diaspora\*, maintaining a pod or have development related questions, check out our [user guides][guides].
* If you are interested in general information on what diaspora\* is and why we are doing what we do, check out the [project website][project-site].
* If you want to install your own pod and are looking for instructions, check out our [installation guides][install].

If you are unable to find what you are looking for or if you still have questions, check out how you can [get help][get-help]. Sorry for the inconvenience.

(*Photo: Mr Abdoun the scottish cat by [Mashhour][commons-cat], [CC BY-SA 3.0][cc-by-sa]*)

[cc-by-sa]: https://creativecommons.org/licenses/by-sa/3.0/deed.en
[commons-cat]: https://commons.wikimedia.org/wiki/File:Mr_Abdoun_the_scottish_cat.jpg
[get-help]: <%= url_to("site", "get_help") %>
[guides]: <%= url_to("guides", "") %>
[install]: <%= url_to("install", "") %>
[project-site]: <%= url_to("site", "") %>
