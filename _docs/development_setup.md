# Development setup

To work on contents, or the site itself, it's easy to set up your local version.

TODO: This should be a Docker container, and the instructions should be clearer.

## Setup

1. Make sure Ruby 2.4 or newer is installed on your system. Also, install `cmake`, `pkg-config`, and `nodejs`.
2. Clone the repository
3. `cp data/config.yml.example data/config.yml`
4. `cd _server`
5. `gem install bundler`
6. `bin/bundle install --full-index`
7. `bin/puma`

The server should start up and listen on port `9292`. Open `http://localhost:9292` in your browser, and the server should greet you with an index page, linking to the individual content sections.
