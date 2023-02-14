---
title: "SearXNG Docker Compose"
date: 2022-07-03 17:18:20
tags: ['docker']
---
```yml
version: "2.1"
services:
	searxng:
		image: searxng/searxng:latest
		container_name: searxng
		environment:
			- SEARXNG_BASE_URL=https://search.example.com/
		cap_drop:
			- ALL
		cap_add:
			- CHOWN
			- SETGID
			- SETUID
			- DAC_OVERRIDE
		volumes:
			- /path/to/searxng/config:/etc/searxng
		ports:
			- 8080:8080 
		restart: unless-stopped
```
[Reverse proxy subdomain config](https://github.com/linuxserver/reverse-proxy-confs/pull/448) as of writing this, it hasn't been merged yet.

Make sure to change the upstream app from searx to searxng.
