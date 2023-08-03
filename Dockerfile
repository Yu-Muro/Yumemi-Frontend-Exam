FROM node:20-bullseye-slim as dev

RUN apt update && apt upgrade -y && apt autoremove -y
WORKDIR /usr/src

RUN npm install -g npm@latest nuxi nuxt3
CMD [ "yarn", "dev", "-o" ]
