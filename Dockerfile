FROM bitnami/git as intermediate

WORKDIR /app

RUN git clone https://github.com/MolSnoo/Alter-Ego.git

FROM node:lts-slim

COPY --from=intermediate /app/ /app

WORKDIR /app/Alter-Ego

COPY package*.json /app/Alter-Ego/
RUN npm install

COPY . /app/Alter-Ego/

CMD [ "node", "bot.js" ]