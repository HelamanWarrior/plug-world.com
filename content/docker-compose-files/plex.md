---
title: "Plex Docker Compose"
date: 2022-07-03 17:18:20
tags: ['docker']
---
```yml
version: "2.1"
services:
	plex:
		image: lscr.io/linuxserver/plex:latest
		container_name: plex 
		network_mode: host
		environment:
			- PUID=1000
			- PGID=1000
			- VERSION=docker
		volumes:
			- /path/to/plex/config:/config
			- /path/to/movies:/movies
			- /path/to/music:/music
			- /path/to/tv:/tv
		restart: unless-stopped
```

Reverse proxy:
- [subfolder config](https://github.com/linuxserver/reverse-proxy-confs/blob/master/plex.subfolder.conf.sample)
- [subdomain config](https://github.com/linuxserver/reverse-proxy-confs/blob/master/plex.subdomain.conf.sample)
