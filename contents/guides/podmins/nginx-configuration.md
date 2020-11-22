---
title: How to configure nginx as my reverse proxy?
category: Environment
---

You can use the following configuration example as reference for your own setup. Note that this is not meant to be copy-pasted into your setup; you have to merge the already existing files with the configuration provided. Make sure to test your changes with `nginx -t` before applying the changes with `nginx -s reload`.

~~~
# This is not a complete Nginx configuration! It only shows the relevant parts for integrating Diaspora.
# [...]

http {

  # Your standard server configuration goes here

  # [...]

  gzip_static on;

  # [...]

  # This vhost just redirects to HTTPS

  server {
    # If your host is not IPv6 ready use listen 80; here.
    # Add ipv6only=off to your listen directive that has default_server.
    # Or this one if this is your only vhost. Do not add it to both!
    listen [::]:80;
    server_name diaspora.example.org www.diaspora.example.org;
    
    location / {
      return 301 https://$server_name$request_uri;
    }
  }

  # Redirect https://www.diaspora.example.org to https://diaspora.example.org
  server {
    listen [::]:443 ssl;  # Same rules as for listen [::]:80 apply.

    server_name www.diaspora.example.org;
    
    location / {
      return 301 https://diaspora.example.org$request_uri;
    }

    # TLS setup

    # This file should also include any necessary intermediate certificates.
    # For example for StartSSL that would be https://www.startssl.com/certs/class1/sha2/pem/sub.class1.server.sha2.ca.pem
    # For Let's Encrypt use /etc/letsencrypt/live/diaspora.example.org/fullchain.pem
    # and /etc/letsencrypt/diaspora.example.org/privkey.pem
    ssl_certificate /path/to/certificate.crt;
    ssl_certificate_key /path/to/private_key.key;

    # Taken from https://wiki.mozilla.org/Security/Server_Side_TLS
    # You might want to make these global

    # generate with openssl dhparam 2048 > /path/to/dhparam.pem
    ssl_dhparam /path/to/dhparam.pem;
    ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers 'ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES256-GCM-SHA384:DHE-RSA-AES128-GCM-SHA256:DHE-DSS-AES128-GCM-SHA256:kEDH+AESGCM:ECDHE-RSA-AES128-SHA256:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA:ECDHE-ECDSA-AES128-SHA:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA:ECDHE-ECDSA-AES256-SHA:DHE-RSA-AES128-SHA256:DHE-RSA-AES128-SHA:DHE-DSS-AES128-SHA256:DHE-RSA-AES256-SHA256:DHE-DSS-AES256-SHA:DHE-RSA-AES256-SHA:AES128-GCM-SHA256:AES256-GCM-SHA384:AES128:AES256:AES:!aNULL:!eNULL:!EXPORT:!DES:!RC4:!MD5:!PSK';
    ssl_session_timeout 5m;
    ssl_prefer_server_ciphers on;
    ssl_session_cache shared:SSL:50m;
  }

  # Actual proxy

  server {
    listen [::]:443 ssl; # Same rules as for listen [::]:80 apply.
    server_name diaspora.example.org;
    root /path/to/diaspora/public;

    # Configure maximum picture size
    # Note that Diaspora has a client side check set at 4M
    client_max_body_size 5M;
    client_body_buffer_size 256K;

    # SSL setup

    # This file should also include any necessary intermediate certificates.
    # For example for StartSSL that would be https://www.startssl.com/certs/class1/sha2/pem/sub.class1.server.sha2.ca.pem
    # For Let's Encrypt use /etc/letsencrypt/live/diaspora.example.org/fullchain.pem
    # and /etc/letsencrypt/diaspora.example.org/privkey.pem
    ssl_certificate /path/to/certificate.crt;
    ssl_certificate_key /path/to/private_key.key;

    # Taken from https://wiki.mozilla.org/Security/Server_Side_TLS
    # You might want to make these global

    # generate with openssl dhparam 2048 > /path/to/dhparam.pem
    ssl_dhparam /path/to/dhparam.pem;

    ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers 'ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES256-GCM-SHA384:DHE-RSA-AES128-GCM-SHA256:DHE-DSS-AES128-GCM-SHA256:kEDH+AESGCM:ECDHE-RSA-AES128-SHA256:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA:ECDHE-ECDSA-AES128-SHA:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA:ECDHE-ECDSA-AES256-SHA:DHE-RSA-AES128-SHA256:DHE-RSA-AES128-SHA:DHE-DSS-AES128-SHA256:DHE-RSA-AES256-SHA256:DHE-DSS-AES256-SHA:DHE-RSA-AES256-SHA:AES128-GCM-SHA256:AES256-GCM-SHA384:AES128:AES256:AES:!aNULL:!eNULL:!EXPORT:!DES:!RC4:!MD5:!PSK';
    ssl_session_timeout 5m;
    ssl_prefer_server_ciphers on;
    ssl_session_cache shared:SSL:50m;

    # Proxy if requested file not found
    try_files $uri @diaspora;

    location /assets/ {
      expires max;
      add_header Cache-Control public;
    }

    # Camo support
    #location /camo/ {
    #  proxy_redirect off;
    #  proxy_pass http://camo/;
    #  break;
    #}

    location @diaspora {
      proxy_set_header X-Real-IP $remote_addr;
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_set_header X-Forwarded-Proto https;
      proxy_set_header Host $http_host;
      proxy_redirect off;

      proxy_pass http://diaspora_server;
    }
  }

  # Proxy destination
  # Add as many server directives as you want
  # Also takes a socket, like unix:/path/to/some/socket.sock
  upstream diaspora_server {
    server unix:/path/to/diaspora/tmp/diaspora.sock;
  }

  # Camo support
  #upstream camo {
  #  server 127.0.0.1:8081;
  #}
}

# [...]
~~~
