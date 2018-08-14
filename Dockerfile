FROM node:8-alpine

ADD . /usr/src/app

ENTRYPOINT ["npm", "start"]
