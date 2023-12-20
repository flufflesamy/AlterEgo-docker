# Alter Ego Docker

## Introduction
This is a Dockerized version of [MolSno's Alter Ego Discord bot](https://github.com/molsnoo/Alter-Ego).

## Usage
### Cloning Github Repository
```
git clone https://github.com/flufflesamy/AlterEgo-docker.git
```
### Docker CLI
```
docker run \
    --name alterego \
    -v ${PWD}/config/credentials.json:/app/Alter-Ego/credentials.json \
    -v ${PWD}/config/game.json:/app/Alter-Ego/game.json \
    -v ${PWD}/config/settings.json:/app/Alter-Ego/settings.json \
    --restart unless-stopped \
    ghcr.io/flufflesamy/alterego-docker:latest
```
### Docker Compose
Use the included docker-compose.yml to start.

Use `docker compose start` to start the server.

### Configuration
Refer to the wiki from the orignal project.