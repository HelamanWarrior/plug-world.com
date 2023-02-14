---
title: "Syncthing Docker Compose"
date: 2022-07-03 17:18:20
tags: ['docker']
---
```yml
version: "2.1"
services:
	syncthing:
		image: lscr.io/linuxserver/syncthing:latest
		container_name: syncthing
		environment:
			- PUID=1000
			- PGID=1000
			- TZ=America/Denver
		volumes:
			- /path/to/syncthing/config:/config
		ports:
			- 8384:8384
			- 22000:22000/tcp
			- 22000:22000/udp
			- 21027:21027/udp
		restart: unless-stopped
```

Reverse proxy:
- [subfolder config](https://github.com/linuxserver/reverse-proxy-confs/blob/master/syncthing.subfolder.conf.sample)
- [subdomain config](https://github.com/linuxserver/reverse-proxy-confs/blob/master/syncthing.subdomain.conf.sample)
