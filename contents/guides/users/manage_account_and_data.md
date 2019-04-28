---
title: How do I manage my account and data?
category: User guides
---

## How do I move my account from one pod to another?

In the future, you will be able to migrate your account from one diaspora\* pod to another. This needs two parts: Exporting your data from your current pod, and importing it into another pod. The first part of this feature, the export, is already possible in your *Settings* page. The import part is still being worked on. In a future release you will be able to migrate your whole account, including posts and contacts, to another pod. 

## Can I download a copy of all of my data contained in my account?

Yes. At the bottom of the *Account* tab of your settings page you will find two buttons: one for downloading your data and one for downloading your photos. You can use these to make backups of your account and data. That way, your data won't be lost if the pod you're on shuts down or if you want to run your own pod.

If you click the "Request my profile data" or the "Request my photos" button, all data will be prepared for you to download. This will take a while. You'll get notified by email when your data is ready for download, and the "Request" buttons will turn into "Download" buttons.

## How do I delete my account?

Go to the bottom of your *Settings* page and click the "Close account" button. 

If you decide to delete your account, all of your posts and profile data will be deleted as soon as possible. Your comments on other people's posts will still appear, but they will be associated with your diaspora\* ID rather than your name. You will get signed out and locked out of your account until it has been deleted. Your username will be locked. You will not be able to create a new account on this pod with the same ID.

You will be asked to enter your password to complete the process. Remember, if you close your account, you will *never* be able to re-register your username on that pod. 

## Settings

There are five tabs on your *Settings* page: Profile, Account, Privacy, Services and Applications. Each setting page manages different parts of your account.

### Profile

On this page you can change, add to or delete any of your profile information. All of these fields are optional, you can decide how much information you want to share with which people.  
Here you can add or change your basic information such as your name, profile tags, profile picture. You can also decide and change whether your extended profile should be publicly visible or only for your contacts. See "[How does diaspora\* give me control over publishing my data?][control_over_publishing_data]" for more details on the difference between public and private profiles. If you want, you can set additional information, such as a detailed bio, your location, and your birthday. In your bio, you can use [Markdown][markdown] for formatting, so your profile looks nice and shiny!

There's an option to mark your profile as "NSFW" (not safe for work). This is diaspora\*'s self-governing community standard. If you’re likely to post much material which may not be suitable for everyone to view at their office desk (perhaps with their boss standing behind them), please consider checking the NSFW box. This will hide your posts from people's streams behind a notice that the post is marked as NSFW. They can then click this notice to view your post if they wish.  
By leaving this box unchecked, you are committing yourself not to post any material which could potentially cause offence or get someone into trouble for viewing it at work. If, on the other hand, you might want to post such material only occasionally, you could leave this box unchecked and add the #nsfw tag to those individual posts, which will hide them from other people's streams.

Don’t forget to press the *Update* button at the bottom once you’re finished!

### Account

On this page you can change your email address and password, set your language, choose from one of our color themes, set the default aspect to publish posts to, set your email notification preferences and download your data and photos, or close your account.

Our aim is that you’ll be able to use the downloaded data to migrate your seed to another pod, although this is not yet possible. You might wish to download your data periodically as a backup, however.

If you want, you can set your account to automatically start sharing with anyone who starts sharing with you. You can decide which aspect they're automatically put in, or you could create a special "auto-share" aspect. You can also re-enable the "getting started" hints that appeared when you first opened your account.

On the account settings page you can also enable the "community spotlight," if this feature is available on your pod. The "community spotlight" adds posts to your stream from community members who your pod's admin has selected as being people worth reading. It can be a good way to find people to connect with when you first join diaspora\*.

### Privacy

On this page, you can choose whether or not to strip EXIF data from photos you upload to your diaspora\* account.  
You can also find a list of users you are ignoring. You can remove them from this list if you want to start seeing posts from them again. See "[What can I do if I encounter abusive content or users?][abusive_content]" for more information on options to deal with abusive content or users.

### Services

On this page, you can see and manage your connected services (e.g. Twitter, Tumblr, etc.). You can also see which external services are supported by your pod – which can be a different set of services for different pods. It allows you to connect new services to your diaspora\* account.

### Applications

On this page you see a list of any applications you have authorised in your diaspora\* account. If zou don't have any authorised applications, the list is empty.

[abusive_content]: <%= url_to("guides", "users/abusive_content") %>
[control_over_publishing_data]: <%= url_to("guides", "users/control_over_publishing_data") %>
[markdown]: <%= url_to("site", "formatting") %>
