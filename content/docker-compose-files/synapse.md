---
title: "Matrix Synapse Docker Compose"
date: 2022-07-03 17:18:20
tags: ['docker']
---
```yml
version: "2.1"
services:
	synapse:
		image: matrixdotorg/synapse:latest
		container_name: synapse
		environment:
			- VIRTUAL_HOST=matrix.example.com
			- VIRTUAL_PORT=8008
			- LETSENCRYPT_HOST=matrix.example.com
			- SYNAPSE_SERVER_NAME=matrix.example.com
			- SYNAPSE_REPORT_STATS=yes
		volumes:
			- /path/to/synapse/data:/data
		ports:
			- 8008:8008
		restart: unless-stopped
	postgresql:
		image: postgres:latest
		container_name: postgres
		hostname: postgresql
		environment:
			- POSTGRES_PASSWORD=securepassword
			- POSTGRES_USER=synapse
			- POSTGRES_DB=synapse
			- POSTGRES_INITDB_ARGS=--encoding='UTF8' --lc-collate='C' --lc-ctype='C'	
		volumes:
			- /path/to/postgres/data:/var/lib/postgresql/
		ports:
			- 5432:5432
		restart: unless-stopped
```

To use the Postgres sql database make sure that you modify the homeserver.yaml file in your synapse's data directory with the following...
```yml
database:
	name: psycopg2
	txn_limit: 10000
	args:
		user: synapse
		password: your-secure-postgres-password
		host: postgresql
		database: synapse
		cp_min: 5
		cp_max: 10
```
Here is the [reverse proxy subdomain config](https://github.com/linuxserver/reverse-proxy-confs/blob/master/synapse.subdomain.conf.sample).

If you want federation than you will have to forward port 8448 from your router to your server. You also want to make sure that port 8448 is added to your swag / nginx docker-compose.
