#FROM alpine:3.1
FROM mhart/alpine-node

# Update
#RUN apk add --update nodejs
#RUN apk add --update nodejs=7.7.1
#RUN apk add --update nodejs nodejs-npm && npm install npm@latest -g
#RUN apk update && apk add nodejs

# Install app dependencies
COPY package.json /src/package.json
RUN cd /src; npm install

# Bundle app source
COPY . /src

EXPOSE  2020
CMD ["node", "/src/index.js"]