# My Personal Docker Setup

This repository contains my personal Docker setup for my server using Docker Compose files.

Sensitive environment variables are stored in `.env` files located in their respective service directories.

---

## Services

### Cloudflared

Cloudflare Tunnel connector.

#### Environment Variables (`.env`)

```env
TUNNEL_TOKEN=
```
---

### Kavita

Self-hosted ebook service.


---

### Navidrome

Self-hosted music streaming service.

---

### Nextcloud

Self-hosted cloud and general-purpose service.

#### Environment Variables (`.env`)

```env
MYSQL_PASSWORD=
MYSQL_DATABASE=
MYSQL_USER=
NEXTCLOUD_ADMIN_USER=
NEXTCLOUD_ADMIN_PASSWORD=
```

---

### Twingate

Connector for Twingate — a zero-trust VPN alternative for secure remote access.

#### Environment Variables (`.env`)

```env
TWINGATE_NETWORK=
TWINGATE_ACCESS_TOKEN=
TWINGATE_REFRESH_TOKEN=
TWINGATE_LOG_ANALYTICS=
TWINGATE_LOG_LEVEL=
```

---


## Setup Instructions

1. Install Docker and Docker Compose with all dependencies.
2. If a service requires environment variables, start it with:

```bash
sudo docker compose --env-file .env up -d
```

Run this command in the respective service directory.

3. For services that do not require a `.env` file, simply run:

```bash
docker compose up -d
```
