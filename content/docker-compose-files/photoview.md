---
title: "Photoview Docker Compose"
date: 2022-07-03 17:18:20
tags: ['docker']
---
```yml
version: "2.1"
services:
	photoview_db:
		image: mariadb:10.5 
		environment:
			- MYSQL_DATABASE=photoview
			- MYSQL_USER=photoview
			- MYSQL_PASSWORD=photoviewsecret
			- MYSQL_RANDOM_ROOT_PASSWORD=1
		volumes:
			- /path/to/db:/var/lib/mysql
		restart: unless-stopped
	photoview:
		image: viktorstate/photoview:2
		environment:
			- PHOTOVIEW_DATABASE_DRIVER=mysql
			- PHOTOVIEW_MYSQL_URL=photoview:photoviewsecret@tcp(photoview_db)/photoview
			- PHOTOVIEW_LISTEN_IP=photoview
			- PHOTOVIEW_LISTEN_PORT=80
			- PHOTOVIEW_MEDIA_CACHE=/app/cache
		volumes:
			- /path/to/cache:/app/cache
			- /path/to/photos:/photos:ro
		ports:
			- 8000:80
		depends_on:
			- photoview_db
		restart: unless-stopped
```
When you first configure it make sure you set the photo path to ``/photos``
