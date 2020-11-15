---
title: Update to a new minor version
subtitle: For updates following the regular release schedule.
---

First, make sure you stop your diaspora* pod before proceeding to update your installation. In case you followed the recommended setup and are on RVM, update RVM and install the currently recommended Ruby version:

~~~bash
rvm get latest
rvm install 2.6
~~~

<%= warning_box_start("info") %>
If you receive an error about RVM failing to verify signatures, please follow [the RVM documentation at "Install our keys"][rvm-keys] to import the current keys.
<%= warning_box_end %>

Afterwards, we need to update the code:

~~~bash
git checkout Gemfile.lock # Discard uninteresting local changes, if any
git pull
~~~

Read the output! If you made local modifications to files tracked in git, it might refuse the update or place conflict markers into the files which need to be resolved. If you run on PostgreSQL and get a message about `Gemfile.lock` try `git checkout Gemfile.lock` first. If you get one about `db/schema.rb` try `git checkout db/schema.rb`.

In case the recommended Ruby version changed you need to install it. Check with

~~~bash
cd .. && cd -
~~~

If that outputs a red warning run the command it gives you and do `cd .. && cd -` again.

Now we need to update the Ruby libraries:

~~~bash
gem install bundler:1.17.3
script/configure_bundler
bin/bundle --full-index
~~~

{{Note|Ignore any migration notes this command gives you, they're already done for you or explicitly advised in our changelog!}}

Then we apply updates to the database schema, attention this might take some time if you have a big database already:

~~~bash
RAILS_ENV=production bin/rake db:migrate
~~~

Update the static content, which is also likely to take a several minutes and may not give any output at first:

~~~bash
RAILS_ENV=production bin/rake assets:precompile
~~~

Make sure to check new configuration options in `diaspora.yml.example`. Tools like `diff` and `vimdiff` can help transfering new sections.

Now you need to restart Diaspora. To do this with the standard startup method you need to get to the place where you run `./script/server`, hit `Ctrl+C`, open a new shell, and run it again.

[rvm-keys]: https://rvm.io/rvm/security#install-our-keys
