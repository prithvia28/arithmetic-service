FROM node:20.11.0-alpine

WORKDIR /usr/src
COPY package*.json ./
RUN npm ci --omit=dev
COPY src ./

CMD npm start
