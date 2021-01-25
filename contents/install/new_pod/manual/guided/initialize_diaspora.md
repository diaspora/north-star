---
title: Initializing...
subtitle: Getting diaspora* ready for you
---

We require some Ruby packages, called Gems. These steps will make sure everything is installed. After that, we create the database, and run some final steps to finish your setup.

## Run `bundler`

To get all the Gems installed, simply run the following

~~~
gem install bundler
script/configure_bundler
bin/bundle install --full-index
~~~

<%= warning_box_start("warning") %>
Please ignore if the above command tells you to run commands after the installation. Running anything in addition to what we provide in these guides is not required and can even break your installation.
<%= warning_box_end %>

This will take quite a while. When it is done, you should see a message similar to `Bundle complete! 42 Gemfile dependencies, 42 gems now installed.` If that is not the case, please get in touch with us.

## Database setup

To create the database and generate the required database schema, simply run

~~~
<% if @guide_data[:params][:env] == :production %>RAILS_ENV=production <% end %>bundle exec rake db:create db:migrate
~~~

<% if @guide_data[:params][:env] == :production %>
## Precompile assets

diaspora\* needs to precompile assets like CSS and JS files, so clients can access a compressed version to save resources.

~~~
RAILS_ENV=production bin/rake assets:precompile
~~~
<% end %>

## Start diaspora\*

It is time to spin up your pod for the first time to see if everything works! To start diaspora\*, simply run

~~~
./script/server
~~~

<% case @guide_data[:params][:env] %>
<% when :production %>

When the command does not show any errors, you are fine. Since you are setting up a production pod, you are not able to test diaspora\* right now in your browser, as we listen to a UNIX socket per default. You can quit the script by pressing `Ctrl-C`.

<%= guided_only_content_start %>
## Next steps

In the final steps, we will be looking at setting up the reverse proxy, as well as making sure diaspora\* automatically starts with your system.

[Continue installation][next-step]{:class="install-button btn btn-primary btn-block"}

[next-step]: <%= url_to "install", "new_pod/manual/guided/finalize_server" %><%= install_url_params %>
<%= guided_only_content_end %>

<% when :development %>

If the command does not show any error messages, you should be able to access your new pod by loading `localhost:3000` in your browser. Please note that the first request can take quite a bit, as diaspora\* as to load a lot of things in the `development` mode first.

**Congratulations**, your development setup is ready to go! Good luck, and have fun! :)

<% end %>
