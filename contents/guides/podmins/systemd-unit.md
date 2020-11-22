---
title: How can I start diaspora* using systemd?
category: Environment
---

You can use a systemd unit to automatically start diaspora\* when your server boots. To achieve that, place the following unit file in `/etc/systemd/system/diaspora.service`, and change the directories if needed:

~~~
[Unit]
Wants=redis.service
After=postgresql.service

[Service]
User=diaspora
WorkingDirectory=/srv/diaspora/diaspora
Environment=RAILS_ENV=production
ExecStart=/bin/bash -lc '/srv/diaspora/diaspora/script/server'
Restart=always
StandardInput=null
KillMode=control-group

[Install]
WantedBy=multi-user.target
~~~

You can then reload systemd with `systemctl daemon-reload`, enable the service to start automatically with `systemctl enable diaspora.service`, and start the server using `systemctl start diaspora.service`.
