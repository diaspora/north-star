---
title: System preparation
subtitle: Get your system ready for diaspora*
---

These steps get your system ready for diaspora\* by installing required packages, setting up the database server, and setting up Ruby.

## Install dependencies

First, we need to install some packages. To do that, run the following **as root**:

~~~
<%= package_install_command(%I[git base #{@guide_data[:params][:database]}]) %>
~~~

## Database setup

The database has been installed using the command above, but some manual steps are required in order to ensure diaspora\* is able to perform all the action it needs to perform.

<% if @guide_data.dig(:guide, :manual_notes, :database, @guide_data[:params][:database]) %>
<%= warning_box_start %><%= @guide_data[:guide][:manual_notes][:database][@guide_data[:params][:database]] %><%= warning_box_end %>
<% end %>

It is important that you **do not create a database manually**, as diaspora\* will create the database automatically in a later step. Creating a database beforehand might result in very bad data corruption, for example caused by the wrong data collation. For our installer to be able to create the database as required, a sperate database user is recommended.

<% case @guide_data[:params][:database] %>
<% when :mariadb %>

To achieve that, log in to your MariaDB server as `root` with

~~~
mysql -u root -p
~~~

and create the user with the necessary privileges inside the MariaDB prompt:

~~~
CREATE USER 'diaspora'@'localhost' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON `diaspora_%`.* TO 'diaspora'@'localhost';
~~~

<% when :postgres %>

To achieve that, log in to your PostgreSQL server as `postgres`, usually this can be achieved using

~~~
sudo -u postgres psql
~~~

Inside the PostgreSQL prompt, create a new user for diaspora\*:

~~~
CREATE USER diaspora WITH CREATEDB PASSWORD '<password>';
~~~

<% end %>

## Create system user for diaspora\*

Create a new user for diaspora\* by running

~~~
sudo adduser --disabled-login diaspora
~~~

Unless otherwise noted, you should **use this user for the rest of this guide**, as well as for all future administrative operations, like updating the pod to a new release. You can usually switch to this user by using `sudo`:

~~~
sudo -iu diaspora
~~~

## Next steps

In the next steps, we will take care of setting up RVM and Ruby...

[Continue installation][next-step]{:class="install-button btn btn-success btn-lg btn-block"}

[next-step]: <%= url_to "install", "manual/install_ruby" %><%= install_url_params %>
