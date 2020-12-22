---
title: System preparation
subtitle: Get your system ready for diaspora*
---

These steps get your system ready for diaspora\* by installing required packages, setting up the database server, and required permissions.

## Install dependencies

First, we need to install some packages. To do that, run the following<% unless @guide_data[:guide][:has_sudo] %> **as root**<% end %>:

~~~
<%= package_install_command(%I[git base #{@guide_data[:params][:env]}]) %>
~~~

## Database setup

The database has been installed using the command above, but some manual steps are required in order to ensure diaspora\* is able to perform all the action it needs to perform.

<% if @guide_data.dig(:guide, :manual_notes, :database) %>
<%= warning_box_start %><%= @guide_data[:guide][:manual_notes][:database] %><%= warning_box_end %>
<% end %>

It is important that you **do not create a database manually**, as diaspora\* will create the database automatically in a later step. Creating a database beforehand might result in very bad data corruption, for example caused by the wrong data collation. For our installer to be able to create the database as required, a sperate database user is recommended.

To achieve that, log in to your PostgreSQL server as `postgres`, usually this can be achieved using

~~~
<% if @guide_data[:guide][:has_sudo] %>
sudo -u postgres psql
<% else %>
su - postgres -c psql
<% end %>
~~~

Inside the PostgreSQL prompt, create a new user for diaspora\*:

~~~
CREATE USER diaspora WITH CREATEDB<% if @guide_data[:params][:env] == :development %> SUPERUSER<% end %> PASSWORD '<password>';
~~~

## Create system user for diaspora\*

Create a new user for diaspora\* by running

~~~
<% if @guide_data[:guide][:has_sudo] %>sudo <% else %>su
<% end %><%= @guide_data[:guide][:adduser_command] %>

~~~

Unless otherwise noted, you should **use this user for the rest of this guide**, as well as for all future administrative operations, like updating the pod to a new release.
You can usually switch to this user by using `<% if @guide_data[:guide][:has_sudo] %>sudo<% else %>su<% end %>`:

~~~
<% if @guide_data[:guide][:has_sudo] %>
sudo -iu diaspora
<% else %>
su - diaspora
<% end %>
~~~

<%= guided_only_content_start %>
## Next steps

In the next steps, we will take care of setting up RVM and Ruby...

[Continue installation][next-step]{:class="install-button btn btn-primary btn-block"}

[next-step]: <%= url_to "install", "new_pod/manual/guided/install_ruby" %><%= install_url_params %>
<%= guided_only_content_end %>
