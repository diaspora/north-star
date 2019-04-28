---
title: "What kinds of content can I share on diaspora*? How do I format posts?"
category: User guides
---

## How can I publish posts?

Sharing content in diaspora\* is done via the publisher, which is located at the top of the middle column on most pages in the diaspora\* interface. It's that rather small box labelled with "Start a conversation..." – but once you click inside this box, it will expand and you'll see a range of buttons and icons. This publisher interface is the same whether you are writing a new post, a comment on a post or a private conversation.

If you simply want to send a text status message, you can ignore all those buttons. Just type your text and hit the *Share* button. And you’ve shared a message with your contacts!

You can add tags in your post to make your post show up in the streams of those who are interested in the topics you're writing about. You can also use these tags to find your posts again at later times.

And if you want to notify some specific person, you can mention them. Type "@" and the first few letters of their name, and a dropdown will appear where you can select the person who you want to mention. 

## What are those buttons all about?

diaspora\* offers you many more options than only sending text!

### How can I format my posts?

For post formatting, diaspora\* uses a simplified system called Markdown. You can find the full Markdown syntax [here][markdown]. But don't worry, you don't have to remember all of those: The publisher has buttons to make it easy to format your text. Simply mark the text that you want to format and press the corresponding button. At the top, there are formatting options like bold, italic, headings, insert links, bulleted and numbered lists, code and quoted text. 

The preview tab means you can see how your message will look before you share it. Remember that you can’t edit it once posted, so use the preview to make sure it’s perfect before pressing *Share*!

## What else can I share?

If you want to include a photo or image stored on your computer in your post, click the little camera icon at the bottom of the publisher. You can also drag and drop an image, or multiple images, from your computer onto that icon. If you want to insert an image from the web into your post, click the image button on the top of the publisher, which will create the Markdown code for you.

You can also include polls in your post by clicking the graph icon. Type a question and at least two answers. Don’t forget to make your post public if you want everyone to be able to participate in your poll.

Sharing your location is also a simple task: Click the pin icon next to the camera in the publisher. This will insert your location from OpenStreetMap.

If you want to embed video or audio files from media sites such as YouTube, Vimeo, Soundcloud and others, you can usually just paste the URL (e.g. http://www.youtube.com/watch?v=nnnnnnnnnnn ) into your post and the video or audio will be embedded automatically. The sites supported include: YouTube, Vimeo, SoundCloud, Flickr and a few more. diaspora* uses oEmbed for this feature. If you post a direct link to an audio or video file, diaspora* will embed it using standard HTML5 player.  
We’re supporting more media sources all the time. Remember to always post simple, full links – no shortened links; no operators after the base URL – and give it a little time before you refresh the page after posting for seeing the preview. You don't see embedded content in the post preview as it is only added after you published your post.

Link previews for URLs in your post are created automatically. diaspora\* uses OpenGraph for displaying previews. It will always be only the first link of your post that will be displayed as preview. You cannot influence how this preview looks like; it just uses the details provided by the site you link to. Like for embedded content, you don't see these link previews in your post preview, only after publishing your post and reloading your stream.

You can write as much as you want. There is a character limit, but it will be hard for you to reach it. The character limit is 65,535 characters. That’s 65,395 more characters than you get on Twitter! ;) 

If you have conntected your diaspora\* account to your accounts on other services, clicking on one or more of the icons for those services below the publisher means your message will appear on those networks as well. 
When you start writing a message with one of more of these icons highlighted, a character counter will show how many more characters are available to you: 280 for Twitter, 1000 for Tumblr. The counter will always display the number of characters remaining for the service selected which allows the fewest characters; so, if you highlight both the Twitter and Tumblr logos, it will count down from 280 characters. You can still post to these services if your post is longer than their limit, but the text will be truncated on those services with a link to the post on diaspora\*.

Before publishing a post, think about who you want to share it with. Underneath the publisher, next to the *Share* button you can find your aspects selector. You can select all aspects that you want to share your content with before publishing your post. Posts sent to aspects are always private and cannot be reshared. Once you have published your post, you can't change aspects anymore. People who were not in your aspect when you published your post won't receive it, even if you add them to that aspect later. You can set your default aspect to share posts with in your account settings.

You can read more about the differences between private and public posts at "[How does diaspora\* give me control over publishing my data?][control_over_publishing_data]"

[control_over_publishing_data]: <%= url_to("guides", "users/control_over_publishing_data") %>
[markdown]: <%= url_to("site", "formatting") %>
