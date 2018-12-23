---
title: Install Ruby
subtitle: Get's RVM and Ruby running on your system
---

diaspora\* is using the Ruby programming language. Instead of installing Ruby via your system's package manager, we recommend using [Ruby Version Manager][rvm] to ensure you are always on the currently recommended Ruby version and cleanly separate your diaspora\* installation from all other Ruby applications on your machine. This guide will help you set that up.

## Install RVM

As your `diaspora` user (**not as `root`**, please), run

~~~
curl -L https://s.diaspora.software/1t | bash
~~~

and follow the instructions on screen. If you get GPG signature problems, follow the instructions printed by the command itself. Note that running `gpg --recv-keys` should not be necessary, and if those commands give you permission denied errors, change the permissions to `640` for all files and `750` for all folders in the `.gnupg` folder.

## Set up RVM

RVM should have set itself up properly. To be sure, however, please check that closely resembling something like this is in your `~/.bashrc`

~~~
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
~~~

If you use `zsh` instead, add that line to your `.zshrc`.

Once you verified that the RVM config is in your shell's profile, reload the config with `source ~/.bashrc`.

## Get the right Ruby version

Install the currently recommended Ruby version with

~~~
rvm install 2.4
~~~

RVM should download and install Ruby by itself.

### If your `diaspora` user cannot use `sudo`

If you do not have `sudo` installed, or your `diaspora` user is not able to call it, RVM will not be able to install build dependencies required to install Ruby. To resolve that manually, run

~~~
rvm autolibs read-fail
~~~

to check all dependencies first. If anything is missing, the tool will print you a list of missing packages. After you have installed those, re-run the `rvm install` command from above again.

## Next steps

In the next steps, we will take care downloading the diaspora\* source, and setting up required configuration files!

[Continue installation][next-step]{:class="install-button btn btn-success btn-lg btn-block"}

[next-step]: <%= url_to "install", "manual/guided/get_diaspora" %><%= install_url_params %>
[rvm]: https://rvm.io
