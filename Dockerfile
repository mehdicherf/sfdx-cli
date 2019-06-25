# small alpine image
FROM alpine

#add usefull tools
RUN apk add --update --no-cache  \
      openssl \
      curl \
      wget \
      unzip \
      git \
      rsync \
      findutils \
      bash \
      nodejs \
      nodejs-npm \
      openjdk8-jre

# install sfdx from npm
RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core
