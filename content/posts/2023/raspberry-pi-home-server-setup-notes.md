---
title: Raspberry Pi Home Server Setup Notes
date: 2023-06-09
url: /posts/raspberry-pi-home-server-setup-notes
---

Cause I'm too lazy to lookup all the commands again...

Quick update: I actually started using Ansible to configure the Pi.
You can find [my code repo here](https://github.com/HelamanWarrior/pi-server-playbook) if you are interested.
Code's not the best, still learning but it's been fun.

# Docker Section

Apps are fun. Let's begin with those.

Here's my directory structure. It really doesn't matter, but I found this to be the most simple.

Make a folder for each application in the home user directory. An example server would look something like...

```bash
parker@pi-server:~ $ ls
ghost  nginx-proxy-manager  portainer
```

Inside each application folder, it contains a docker-compose.yml file, containing the pieces required to run that application. You will also find a data/ folder inside, containing the application's persistent data. Please note that this may be different based on what your application looks like.

## Install Docker

``curl -sSL https://get.docker.com | sh``

``sudo usermod -aG docker $USER``

Then reboot to see changes.

## Portainer

Gotta have a webui for viewing container logs and stuff. Makes life so much easier.

Here's what my docker-compose.yml looks like...

```yml
version: '3'

services:
  portainer:
    image: portainer/portainer-ce:latest
    container_name: portainer
    restart: unless-stopped
    security_opt:
      - no-new-privileges:true
    volumes:
      - /etc/localtime:/etc/localtime:ro
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - ./data:/data
    ports:
      - 9000:9000
```

# Security Section

## Put Docker Compose passwords in .env

Just good practice, especially if you upload docker-compose files to Github. Then make sure to add .env to the gitignore.

Please note the *syntax will look different* based on your **docker compose version.**
In docker compose file...

```yml
env_file:
  - .env
environment:
  very_important_password_variable: ${IMPORTANT_PASSWORD}
```

In the same directory add your .env file. The text contents will look like this...

``IMPORTANT_PASSWORD=myverysecurepassword``

## Install ufw

``sudo ufw default deny incoming``

``sudo ufw default allow outgoing``

``sudo ufw allow ssh``

``sudo ufw enable``

## SSH Keys

Ensure you have ssh keys on both your host machine and your server. Run the following command on both machines.

``ssh-keygen``

Then from your host machine...

``ssh-copy-id user@pi-server.local``

## Unattended upgrades

Just for those sweet, sweet automatic system updates. No further configuration is required.

``sudo apt install unattended-upgrades``

## Fail2ban

``sudo apt install fail2ban``

``sudo cp /etc/fail2ban/.conf /etc/fail2ban/jail.local``

