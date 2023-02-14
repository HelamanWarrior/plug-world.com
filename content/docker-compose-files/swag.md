---
title: "Swag Docker Compose"
date: 2022-07-03 17:18:20
tags: ['docker']
---
```yml
version: "2.1"
services:
	swag:
		image: lscr.io/linuxserver/swag
		container_name: swag
		cap_add:
			- NET_ADMIN
		environment:
			- PUID=1000
			- PGID=1000
			- TZ=America/Denver
			- URL=example.com
			- SUBDOMAINS=www
			- VALIDATION=http
		volumes:
			- /path/to/swag/config:/config
		ports:
			- 443:443
			- 80:80
		restart: unless-stopped
```
