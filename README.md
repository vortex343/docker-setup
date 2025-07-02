# My Personal Docker Setup
This is my personal docker setup for my Server, using docker compose files.

Needed environment variables are in the `.env` subsection.

## Cloudflared
The tunnel connector for Cloudflare

### .env
```
TUNNEL_TOKEN=
```

## Navidrome
Self hosted music streaming service.

## Nextcloud
Self hosted Cloud and general purpose Service

### .env
```
MYSQL_PASSWORD=
MYSQL_DATABASE=
MYSQL_USER=
NEXTCLOUD_ADMIN_USER=
NEXTCLOUD_ADMIN_PASSWORD=
```

## startup WIP
nginx webserver i use as my startup and new page in the browser


## Twingate
Connector for twingate.
Twingate is a zero-trust VPN alternative for secure remote access.

### .env
```
TWINGATE_NETWORK=
TWINGATE_ACCESS_TOKEN=
TWINGATE_REFRESH_TOKEN=
TWINGATE_LOG_ANALYTICS=
TWINGATE_LOG_LEVEL=
```

## website WIP
nginx webserver for my personal website

Currently not online

## update.sh 
Bash script to update all containers

# Setup
- Install docker and docker compose with all dependencies
- if `.env` is needed, use `sudo docker compose --env-file .env up -d` in each directory 
- else use `docker compose up -d` 
