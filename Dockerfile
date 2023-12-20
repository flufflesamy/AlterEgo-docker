FROM node:lts-alpine

WORKDIR /app

RUN git clone https://github.com/MolSnoo/Alter-Ego.git

COPY package*.json ./

CMD [ "node", "bot.js" ]