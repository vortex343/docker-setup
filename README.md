# My Personal Docker Setup
This is my personal docker setup for my Server, using docker compose files.
needed environment variables are in the `.env` subsection.

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

## startup
nginx webserver i use as my startup and new page in the browser
WIP

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

## website
nginx webserver for my personal website
WIP and currently not online

## update.sh 
bash script to update all containers
