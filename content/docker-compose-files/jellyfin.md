---
title: "Jellyfin Docker Compose"
date: 2022-07-03 17:18:20
tags: ['docker']
---
```yml
version: "2.1"
services:
	jellyfin:
		image: lscr.io/linuxserver/jellyfin
		container_name: jellyfin
		group_add:
			- 107
		environment:
			- DOCKER_MODS=linuxserver/mods:jellyfin-amd # for amd hardware acceleration
			- PUID=1000
			- PGID=1000
			- TZ=America/Denver
		volumes:
			- /path/to/jellyfin/config:/config
			- /path/to/movies:/data/movies
			- /path/to/music:/data/music
			- /path/to/tv:/data/tv
		devices: # for amd hardware acceleration
			- /dev/dri:/dev/dri
			- /dev/dri/renderD128:/dev/dri/renderD128
		ports:
			- 8096:8096
			- 8920:8920
			- 7359:7359/udp
			- 1900:1900/udp
		restart: unless-stopped
```

Reverse proxy:
- [subfolder config](https://github.com/linuxserver/reverse-proxy-confs/blob/master/jellyfin.subfolder.conf.sample)
- [subdomain config](https://github.com/linuxserver/reverse-proxy-confs/blob/master/jellyfin.subdomain.conf.sample)
