---
title: "How does diaspora* give me control over publishing my data?"
category: User guides
---

## What are my public and my private profile?

Your *basic profile* is always public. Public means, that everybody can see this information, not only within diaspora\* but on the entire internet. Even search engines can show this if somebody searches for the name you use on diaspora. Each profile has a direct URL, so it may be linked to directly from outside sites. Your basic profile contains your name, your profile image, and your profile tags. Profile tags help people get to know you. Your profile picture will appear on the left-hand side of the stream pages of those tags, along with anyone else who has them in their basic profile.

Your *extended profile* contains your biography, location, gender, and birthday. All this information is optional – it’s up to you whether you provide it, and you can make this profile information as identifiable or anonymous as you like. Your extended profile is displayed in the left-hand column of your profile page, under your profile picture.

Your extended profile is set to private by default. This means that only people you are sharing with (meaning, you have added them to one of your aspects) can see your extended profile if you keep it private. However, people following you, but whom you do not follow, will see only your public information. If you want, you can make your extended profile publicly accessible as well by clicking the switch. But keep in mind: Any profile information you make public can be viewed by anyone using the web, and can be indexed by search engines.

You can read more about your profile settings at "[How do I manage my account and data?][manage_account_and_data]"

## What are public and private posts?

diaspora\* distinguishes between public and private posts. You can decide for each of your posts if you want it to be public or private. The default setting is for all posts except of your very first "#NewHere" post is private, so you don't publish some private information publicly by mistake; you can change the default visibility of your posts in your settings.

### Public posts

If you post something publicly, anyone using the internet can potentially see this post, so make sure you really do want your post to be public. However, you should mark your very first post, your #NewHere post, as public because after signing up you don't have any contacts yet. Publishing posts as public is also a great way of reaching out to the world. People who visit your profile will see all your public posts there.

Your public posts will appear in the streams of anyone sharing with you. If you included #tags in your public post, anyone following those tags will find your post in their streams. Every public post also has a specific URL that anyone can view, even if they’re not logged in – thus public posts may be linked to directly from Twitter, blogs, etc. Public posts may also be indexed by search engines.

If you publish a post publicly, any logged-in diaspora\* user can comment on, reshare, or like your post. The exception to this is people you have ignored, who won’t be able to like or comment on your posts. If you comment, like, or reshare someone else's public post, your interactions will also be public. Any logged-in diaspora\* user and anyone else on the internet can see your interactions with a public post.

People can even subscribe to your public posts with a feed reader, but this is not yet a polished feature and the formatting of the results is pretty rough. If you want to try it anyway, go to someone’s profile page and click the feed button in your browser, or you can copy the profile URL (I.e. https://pod.tld/people/somenumber), and paste it into a feed reader. The resulting feed address looks like this: https://pod.tld/public/username.atom diaspora\* uses Atom rather than RSS. 

### Private posts

If you post something privately (meaning, you select one or more aspects to share your post with), only logged-in diaspora\* users you had placed in that aspect(s) before publishing the private post can see it. The default setting for all your post except for the very first one is "All aspects". This means, all your diaspora\* contacts will be able to see your post, but nobody else.

Only these users who you shared your post with can interact with this post. Nobody else can see your post, like, or comment it. It's not possible to reshare private posts. Logged-in diaspora\* users in the aspect(s) you shared your post with can potentially copy and paste it, however. It’s up to you whether you trust those people! If you comment or like someone else's private post, only the people who the post was shared with (the people who are in the aspect(s) selected by the original poster) can see its comments and likes.

Once you have published your post, you can't change aspects anymore. People who were not in your aspect when you published your post won't receive it, even if you add them to that aspect later. You can read more about aspects at "[What are aspects and how do I use them?][aspects]"

## What happens if I delete my content or account?

If you delete your posts or comments, they get deleted from your own pod immediately and a message is sent out to other pods so it gets deleted there as well. The same happens if you delete your comments on someone else's post. If you want to delete one of your public posts and it has already been reshared, these reshares will only display "post deleted by author" instead of your post after your deletion.  
You can read more about this at "[How do I interact with posts?][interact_with_posts]"

If you close your account, all of your posts and profile data will be deleted as soon as possible. Your comments on other people's posts will still appear, but they will be associated with your diaspora\* ID rather than your name. You will get signed out and locked out of your account until it has been deleted. Your username will be locked. You will not be able to create a new account on this pod with the same ID.  
You can read more about this at "[How do I manage my account and data?][manage_account_and_data]"

## External services

If you connected external services such as twitter or tumbler to your diaspora\* account and decide to crosspost content from diaspora\* to these services, your post leaves the diaspora\* network and visibility is up to these services. Even if you delete your original post on diaspora\*, it will still be visible on these other services.  
You can read more about connecting external services at "[What kinds of content can I share on diaspora\*?][kinds_of_content_and_formatting]"

[aspects]: <%= url_to("guides", "users/aspects") %>
[interact_with_posts]: <%= url_to("guides", "users/interact_with_posts") %>
[kinds_of_content_and_formatting]: <%= url_to("guides", "users/kinds_of_content_and_formatting") %>
[manage_account_and_data]: <%= url_to("guides", "users/manage_account_and_data") %>
