# Production setup

TODO: This should be clearer.

## Setup

1. Make sure Ruby 2.4 or newer **and Redis** is installed on the server
2. Clone the repository
3. `cp data/config.yml.example data/config.yml`
4. `cd _server`
5. `bundle install`
6. `./bin/puma -e production`

Note: north-star will try to connect to redis on `redis://localhost:6379/11` per default, which can be changed using the `REDIS_URL` environment variable.
