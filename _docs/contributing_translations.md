# Contributing translations

So, you want to translate some of the contents? Great! Here are a few important things to now.

## Content quality assurance

Contrary to translations within diaspora\*, we see translations on our project site a bit more critical. The contents on there are not only visible to our users, but are also an important piece of information for interested people, journalists, and other folks who are not on diaspora\* yet. Therefore, we are a bit more careful. In concrete, this means:

* All translations have to be reviewed by a trusted community member before being visible on the production site.
* New languages will only be approved if there are multiple people interested in translating to that language, to ensure we reach a 100% translation relatively quickly.
* Whenever the source contents change, translation of that page will get invalidated and have to be validated by a translator again. We do this to avoid outdated content showing up in certain languages.
* Some contents, especially contents that require a high accuracy or change frequently, are not translateable. See the list below for more information.

### Non-translateable pages

The following contents are **not translateable**:

* All **blog posts**, because coordinating with translators before pushing a post is unrealistic, and translating after the fact is not really worth it for content that expires soon.
* **Installation guides**, because those need to be 100% accurate all the time, every time. Podmins and developers need, at some point, read or write English text either way, so there is no direct benefit from translating it.

## Translation style

### Avoid complex language unless required

We try to be as friendly as possible to all people, so please avoid complex language unless it is absolutely needed. If there is an easier to understand alternative for a technical term, but the meaning is still clear, it is probably better to use that.

### Literal translation is not needed, but keep the meaning

It is not requried to end up with a very literal translation. It is fine to deviate from the original wording if the result sounds nicer. However, make sure the text's meaning does not change.

### Markdown

We use the [Kramdown-variant of Markdown][kramdown] on this site. Please make sure to keep the syntax inact, make sure link URLs are copied properly, do not touch additional image attributes, and most importantly: escape your asterisks in `diaspora\*` :)

### ERB markup

Some sites, especially those with more complex layouts or interactive elements contain ERB markup, for example:

~~~
<%= partial "components/headline_divider",
  id: "principles",
  headline: "diaspora* is based on three key principles"
%>
~~~

In this case, you are free to translate the value of `headline`, but make sure to leave the rest of the syntax. If you are not sure, look at other translations or ask us!

### If in doubt, ask.

If you have any question, or you are unsure about something, please do not translate something. Ask us beforehand, and we will help out.

## Using Transifex

### Joining our team

The official diaspora\* project site is translated on Transifex. You need an account there, so go ahead and [sign up][tx-signup]. When you have signed up and confirmed your eMail address, head to the [project's site][tx-index] and hit the join button:

![][screenshot-join]

**If your desired language is not availble yet**, please do not propose adding it on Transifex. Instead, open an issue on GitHub, so we can have a discussion about that.

### Translating a site

When you are approved as a translator, access the [resources list][tx-content] to see all available sites. The name of the resources there is a representation of the location of the English markdown files in this repository. For example, the file `contents/site/get_help.md` would show up as `contents_site_get_help` on transifex.

The file name itself is related to the URL the site is accessible under. For example, contents for `https://diaspora.software/get_involved` are located at `contents/site/get_involved.md`, the guide visible at `https://guides.diaspora.software/users/are_aspects_groups` is at `contents/guides/users/are_aspects_groups.md` and so on. If you cannot find something, ping us, and we will help.

Once you have found the site you want to translate, you can select a language, and once you picked a language, you are free to edit the contents!

![][screenshot-translate]

### More help with Transifex

Check these official documentation sites for more information:

* [Getting Started as a Translator][tx-doc-getting-started]
* [Translating with the Web Editor][tx-doc-editor]
* [Using the Glossary][tx-doc-glossary]

[kramdown]: https://kramdown.gettalong.org/quickref.html
[screenshot-join]: doc_assets/transifex_join.png
[screenshot-translate]: doc_assets/transifex_translate.png
[tx-content]: https://www.transifex.com/diaspora/north-star/content/
[tx-doc-editor]: https://docs.transifex.com/translation/translating-with-the-web-editor
[tx-doc-getting-started]: https://docs.transifex.com/getting-started-1/translators
[tx-doc-glossary]: https://docs.transifex.com/translation/using-the-glossary
[tx-index]: https://www.transifex.com/diaspora/north-star/
[tx-signup]: https://www.transifex.com/signup/
