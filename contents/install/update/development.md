---
title: Update a local development setup
subtitle: Using your local repository clone
---


Just checkout the develop branch, pull (from upstream), rebundle and migrate the database:

~~~bash
cd diaspora
git checkout develop
git pull # Or git pull upstream develop if you cloned from your fork
cd .. && cd -
bin/bundle --full-index
bin/rake db:migrate
~~~
