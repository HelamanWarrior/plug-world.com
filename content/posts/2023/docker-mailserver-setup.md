---
title: "Docker Mailserver Setup"
date: 2023-07-29T16:01:33-06:00
url: /posts/docker-mailserver-setup/
---

Here's my massive docker compose file.

```yml
version: '2'

services:
  mailserver:
    image: mailserver/docker-mailserver:latest
    container_name: mailserver
    hostname: mail.plug-world.com
    ports:
      - "25:25"    # SMTP
      - "143:143"  # IMAP4
      - "993:993"  # IMAP4 TLS
      - "465:465"  # ESMTP
      - "587:587"  # ESMTP
      - "110:110"  # POP3
      - "995:995"  # POP3 (with TLS)
    volumes:
      - ./docker-data/dms/mail-data:/var/mail
      - ./docker-data/dms/mail-state:/var/mail-state
      - ./docker-data/dms/mail-logs:/var/log/mail
      - ./docker-data/dms/config:/tmp/docker-mailserver
      - /home/parker/Docker/Swag/config/etc:/swag-ssl:ro
      - /etc/localtime:/etc/localtime:ro
    environment:
      - ENABLE_FAIL2BAN=1
      - SSL_TYPE=manual
      - SSL_CERT_PATH=/swag-ssl/letsencrypt/live/plug-world.com/fullchain.pem
      - SSL_KEY_PATH=/swag-ssl/letsencrypt/live/plug-world.com/privkey.pem
      - PERMIT_DOCKER=connected-networks
      - ONE_DIR=1
      - ENABLE_POP3=1 # recieving mail
      - ENABLE_AMAVIS=1 # filtering for spam assassin
      - ENABLE_SPAMASSASSIN=1
      - ENABLE_POLICYD_SPF=1 # sender email verification
      - SPOOF_PROTECTION=1
      - POSTFIX_MESSAGE_SIZE_LIMIT=52428800
      - ENABLE_CLAMAV=1 # antivirus
      - ENABLE_OPENDKIM=1 # email verification
      - ENABLE_OPENDMARC=1 # also email verification
      - POSTMASTER_ADDRESS=postmaster@plug-world.com
      - MOVE_SPAM_TO_JUNK=1
    restart: unless-stopped
    stop_grace_period: 1m
```

I recommend reading through the [environment variables](https://docker-mailserver.github.io/docker-mailserver/latest/config/environment/) before blindly copying my setup. But this configuration has worked really well for my personal needs. Currently I host two emails, a few aliases, and use them to send and receive mail. 

You can install the setup script, this basically just makes it easier to add emails and all that fun stuff without having to use `docker exec -ti <CONTAINER NAME> setup` every time.
```bash
wget https://raw.githubusercontent.com/docker-mailserver/docker-mailserver/master/setup.sh
chmod a+x ./setup.sh
```

For my encryption I'm just using the letsencrypt certificates created by my [Swag](https://docs.linuxserver.io/images/docker-swag) container. I just mount the swag folder where my encryption keys are stored, and manually specify their paths. This setup will look different if you aren't using `swag` so make sure you adapt it to your needs.

## Adding email addresses
```bash
./setup email add youremailaddress@yourdomain.com
```

## DNS Setup
- Add a `CNAME` record named `mail` that points back to your your domain or public ip.
	- Make sure that you get SSL certificates for this subdomain with letsencrypt or any other provider. In [Swag](https://docs.linuxserver.io/images/docker-swag) I just add mail to the subdomain environment variable and it automatically generates certificates for it.
- Add an `MX` record named `@` that points to `mail.yourdomain.com`
- Add a `TXT` record named `@` that points to `v=spf1 mx ~all`
- Add a `TXT` record named `_dmarc` that points to `v=DMARC1; p=none; rua=mailto:dmarc.report@yourdomain.com; ruf=mailto:dmarc.report@yourdomain.com; sp=none; ri=86400`

Configure openDKIM I recommend reading [the docs on this](https://docker-mailserver.github.io/docker-mailserver/latest/config/best-practices/dkim_dmarc_spf/) first:
```bash
./setup config dkim
```

Make sure to add the DKIM `txt` record to your DNS after you create it.

After setting up DKIM make sure you restart docker-mailserver.

## Port forwarding
These are the ports I forwarded for receiving and sending mail.

| Port | Purpose   |
|------|-----------|
| 25   | SMTP      |
| 587  | ESMTP     |
| 465  | SMTP TLS  |
| 993  | IMAP4 TLS |

# Connecting to Thunderbird
When you login to your email with [Thunderbird](https://www.thunderbird.net/en-US/), use your email and password that you just created. It will try to probe the server for it's settings, it'll probably ask you to manually configure these settings.

Set the hostname to `mail.yourdomain.com` on both `INCOMING SERVER` and `OUTGOING SERVER`. Then set the port on the `INCOMING SERVER` to `993` which is used for `IMAP`.

Again these are the setting's I used. Obviously this isn't for everyone and you can configure it for `POP3` instead and only use it for receiving mail. I recommend you get familiar with how email works and configure it the way you want. But this solution has worked great for me.

You should now be able to login to your email address. You can try sending and receiving mail now. Good luck!
 
# Adding email aliases

```bash
./setup alias add user+papertrail@domain.com user@domain.com
```

The first argument is the email alias you wish to add. And the second argument is the email you want to alias from. All your emails that go to your email alias will go to the email in the second argument.

```bash
./setup.sh alias list
```

You should now see your email alias listed after you created it.
