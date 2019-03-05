FROM node:10-alpine

ARG WEBAPP_ENV=prod

RUN apk --update --no-cache add git tzdata ca-certificates build-base python

COPY . /home/node/docker-build-demo

RUN cd /home/node/docker-build-demo && npm config set registry=http://registry.npm.taobao.org && npm install

WORKDIR /home/node/docker-build-demo

CMD ["npm", "start"]