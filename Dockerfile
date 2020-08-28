FROM bitnami/laravel:latest
LABEL maintainer="carlcassar <carlcassar@gmail.com>"
USER root

# Install git
RUN apt-get -y install git-core

# Install sqlite
RUN apt-get -y install sqlite
