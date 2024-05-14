Forked from [proudcommerce/docker-oxid6: Docker Container with PHP7, MySQL 5.7 and OXID eShop 6](https://github.com/proudcommerce/docker-oxid6)

# Docker OXID eShop 6

This (linux/osx) setup bootstraps an dockerized developer environment for [OXID eShop 6](https://github.com/OXID-eSales/oxideshop_ce).

## Overview

- Apache Container with PHP
- MariaDB container
- MailHog container
- phpMyAdmin container
- OXID eShop
- OXID demo data

## Quickstart

1. Install [docker engine](https://docs.docker.com/engine/installation/)
2. Add `127.0.0.1 oxid6.local` to your etc/hosts file (if needed eg. windows)
3. Fire up container

```bash
# clone repository:
git clone git@github.com:hreinberger/oxid6-docker.git
cd oxid6_docker
# create .env
cp .env.example .env
# add github token and tunnel token if needed
nano .env
# create container
docker compose build
# fire up container
docker compose up
```

### Cloudflare Tunnel

The project is ready to run on your machine with a cloudflare tunnel to allow for incoming connections (like webhooks). Simply create a new tunnel in your Cloudflare ZeroTrust dashboard and drop the tunnel token in the .env file. Don't forget to set the hostname, too.

### Github Token

The Mondu Oxid Plugin Repo isn't available via packagist (yet), so we're adding it as a custom repository in composer. For this to work, you need to create a Github access token here: https://github.com/settings/tokens/new

The token doesn't need any permissions.

## Configuration

### Services

- Shop: `http://oxid6.local` (or `https://oxid6.local` with ssl-cert-snakeoil)
- Shop admin `http://oxid6.local/admin/`, credentials: `admin / admin`
- MailHog: `http://oxid6.local:8025`
- phpMyAdmin: `http://oxid6.local:8080`

### Container

- If you would like to run container in background, use `docker compose up -d` for starting container and `docker logs -f oxid6_apache` for log information (eg. composer information).

### Data

- Data (`www` and `mysql`) is stored on host: `data` directory

### Credentials

- You can change all credentials (domain, ports, database, ...) in the `.env` file.

### OXID demo data

- Normally oxid demo data will be installed automatically.
- If you need a project without demo data, set `OXID_DEMODATA=false` in `.env` file.

## Support

There is none, sorry.
