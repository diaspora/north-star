---
title: Get diaspora*
subtitle: Time to download the source and set up diaspora*!
---

The best way to get the latest diaspora\* release is by cloning the latest `master` branch from our Git repository. Since we always push new releases to that branch, updating is very easy for you. To get the latest source, simply run a `git clone` as your `diaspora` user:

~~~
cd ~
git clone <% if @guide_data[:params][:env] == :production %>-b master <% end %>https://github.com/diaspora/diaspora.git
~~~

Now, switch into the directory you just cloned. Note that from now on, **all commands in this installation guide have to be run inside that directory**:

~~~
cd diaspora
~~~

## Configure diaspora\*

There are two configuration files you have to touch, one to set up the database connection, and another one to set up everything else. First, copy over our template files:

~~~
cp config/database.yml.example config/database.yml
cp config/diaspora.yml.example config/diaspora.yml
~~~

Now, open these files in your favorite text editor. It is highly recommended to give them a good read, we provide extensive comments for all available settings, and it is good to know which settings are available.

### Important values in `config/database.yml`

This file sets up the database connection, so be sure to provide the correct credentials.

* `username`: The username for the database user created earlier, should be `diaspora` if you followed our guide.
* `password`: The password you entered for your previously created database user.

### Important values in `config/diaspora.yml`

* `environment.url`: Set the **public facing URL** to your pod here, for example for [our HQ pod](https://pod.diaspora.software/), this would be `https://pod.diaspora.software`. Do not include the port number unless it is needed by your setup. Also please note that, after you created your first user, **this cannot be changed** without dropping the database.
* `environment.certificate_authorities`: In your case, this should be `<%= @guide_data[:guide][:ca_bundle] %>`. If this file does not exist, you probably are missing a package, named `ca-certificates` in most cases. Feel free to get in touch with us if you need help with that!
* `server.rails_environment`: Set this to `<%= @guide_data[:params][:env] %>`.

<%= guided_only_content_start %>
## Next steps

In the next steps, we will install diaspora\*'s internal dependencies, set up the database, and prepare some other components.

[Continue installation][next-step]{:class="install-button btn btn-success btn-lg btn-block"}

[next-step]: <%= url_to "install", "manual/guided/initialize_diaspora" %><%= install_url_params %>
<%= guided_only_content_end %>
