FROM docker:20

ARG DOCKER_CONFIG="/root/.docker"

RUN apk --update add curl openssh-client \
    && mkdir -p $DOCKER_CONFIG/cli-plugins \
    && curl -SL https://github.com/docker/compose/releases/download/v2.4.1/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose \
    && chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose \
    && ln -s $DOCKER_CONFIG/cli-plugins/docker-compose /usr/local/bin/docker-compose

