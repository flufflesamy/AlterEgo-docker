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
    -e "TZ=America/Los_Angeles" \
    --restart unless-stopped \
    ghcr.io/flufflesamy/alterego-docker:latest
```
### Docker Compose
Use the included docker-compose.yml to start. Remember to set your timezone by changing the `TZ` environment variable.

Use `docker compose up` to build the container and start the bot.

Refer to [the documentation](https://docs.docker.com/compose/) for Docker Compose for more information.

### Configuration
Refer to the [wiki](https://github.com/MolSnoo/Alter-Ego/wiki) from the orignal project to learn how to configure and run the bot.
