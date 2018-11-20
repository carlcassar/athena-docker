FROM bitnami/laravel:5.6.21
LABEL maintainer="carlcassar <carlcassar@gmail.com>"
USER root

# Install yarn
RUN apt-get -y update
RUN apt-get -y install apt-transport-https ca-certificates
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get -y update
RUN apt-get -y install yarn

# Install git
RUN apt-get -y install git-core

# Install sqlite
RUN apt-get -y install sqlite
