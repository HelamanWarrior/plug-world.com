---
title: "Nextcloud Docker Compose"
date: 2022-07-03 17:18:20
tags: ['docker']
---
```yml
version: "2.1"
services:
	nextcloud:
		image: lscr.io/linuxserver/nextcloud:latest
		container_name: nextcloud
		environment:
			- PUID=1000
			- PGID=1000
			- TZ=America/Denver
		volumes:
			- /path/to/nextcloud/config:/config
			- /path/to/nextcloud/data:/data
		ports:
			- 443:443
		depends_on:
			- nextcloud_db
		restart: unless-stopped
	nextcloud_db:
		image: linuxserver/mariadb:latest
		container_name: nextcloud_db
		environment:
			- PUID=1000
			- PGID=1000
			- MYSQL_ROOT_PASSWORD=supersecurepassword
			- TZ=America/Denver
			- MYSQL_DATABASE=nextcloud
			- MYSQL_USER=nextcloud
			- MYSQL_PASSWORD=myothersecurepassword	
		volumes:
			- /path/to/nextcloud_db/config/:config
		restart: unless-stopped
```

When first running Nextcloud make sure that you tell it to use the **mysql** database, and give it the "MYSQL_PASSWORD."

In order to access other files on your server through Nextcloud you will need to mount the directories and then add them as external storage folders in Nextcloud.

Reverse proxy:
- [subfolder config](https://github.com/linuxserver/reverse-proxy-confs/blob/master/nextcloud.subfolder.conf.sample)
- [subdomain config](https://github.com/linuxserver/reverse-proxy-confs/blob/master/nextcloud.subdomain.conf.sample)
