---
title: How to configure Apache as my reverse proxy?
category: Environment
---

You can use the following configuration example as reference for your own setup. Note that this is not meant to be copy-pasted into your setup; you have to merge the already existing files with the configuration provided. Make sure to restart apache after you applied changes to your configuration files.

~~~
# Make sure to notice the comments at https://gist.github.com/jhass/719014#gistcomment-19774

<VirtualHost *:80>
  ServerName diaspora.example.org
  ServerAlias www.diaspora.example.org
  
  RedirectPermanent / https://diaspora.example.org/
</VirtualHost>
<VirtualHost *:443>
 ServerName diaspora.example.org
 ServerAlias www.diaspora.example.org
 
 DocumentRoot /home/diaspora/diaspora/public

 RewriteEngine On

 RewriteCond %{HTTP_HOST} !^diaspora\.example\.org [NC]
 RewriteRule ^/(.*)$ https://diaspora\.example\.org/$1 [L,R,QSA]

 # For Camo support
 #RewriteRule ^/camo/(.*)$ balancer://camo/$1 [P,QSA,L]
 
 RewriteCond %{DOCUMENT_ROOT}/%{REQUEST_FILENAME} !-f
 RewriteRule ^/(.*)$ balancer://upstream%{REQUEST_URI} [P,QSA,L]

 <Proxy balancer://upstream>
  # Recommended, using a unix socket (Requires Apache >= 2.4)
  BalancerMember unix:///path/to/diaspora/tmp/diaspora.sock|http://
  # Alternatively let diaspora listen on a local port (Use this for Apache < 2.4)
  # BalancerMember http://localhost:3000
 </Proxy>

 # For Camo support
 #<Proxy balancer://camo>
 #  BalancerMember http://localhost:8081
 #</Proxy>

 ProxyRequests Off
 ProxyVia On  
 ProxyPreserveHost On
 RequestHeader set X_FORWARDED_PROTO https

 <Proxy *>
  # Apache < 2.4
  #Order allow,deny
  #Allow from all
  # Apache >= 2.4
  Require all granted
 </Proxy>

 <Directory /home/diaspora/diaspora/public>
  Options -MultiViews
  # Apache < 2.4
  #Allow from all
  #AllowOverride all
  # Apache >= 2.4
  Require all granted
 </Directory>

 SSLEngine On
 SSLCertificateFile /path/to/cert
 SSLCertificateKeyFile /path/to/private_key
 
 # For Let's encrypt it should point to /etc/letsencrypt/live/diaspora.example.org/chain.pem
 SSLCertificateChainFile /path/to/chain_file


 # Based on https://wiki.mozilla.org/Security/Server_Side_TLS - consider as global configuration
 SSLProtocol             all -SSLv2 -SSLv3
 SSLCipherSuite          ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES256-GCM-SHA384:DHE-RSA-AES128-GCM-SHA256:DHE-DSS-AES128-GCM-SHA256:kEDH+AESGCM:ECDHE-RSA-AES128-SHA256:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA:ECDHE-ECDSA-AES128-SHA:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA:ECDHE-ECDSA-AES256-SHA:DHE-RSA-AES128-SHA256:DHE-RSA-AES128-SHA:DHE-DSS-AES128-SHA256:DHE-RSA-AES256-SHA256:DHE-DSS-AES256-SHA:DHE-RSA-AES256-SHA:AES128-GCM-SHA256:AES256-GCM-SHA384:AES128:AES256:AES:!aNULL:!eNULL:!EXPORT:!DES:!RC4:!MD5:!PSK
 SSLHonorCipherOrder on
 SSLCompression off
</VirtualHost>
~~~
