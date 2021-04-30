FROM node:latest

WORKDIR /usr/sample
USER root

EXPOSE 4200

COPY package*.json ./
COPY angu*.json ./
COPY ts*.json ./

RUN npm install

ENTRYPOINT /bin/bash