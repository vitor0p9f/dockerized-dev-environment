FROM alpine:latest

# Update the system
RUN apk update && apk upgrade

# System

## Packages

RUN apk add --no-cache curl \
xz \
bash \
shadow

## Shell
RUN apk add --no-cache fish

### Nix

RUN curl -L https://nixos.org/nix/install | sh -s -- --daemon

## Git

RUN apk add --no-cache git \
lazygit \
github-cli

RUN gh config set git_protocol ssh

## SSH

RUN apk add --no-cache openssh \
openrc

RUN rc-update add sshd

## Users  and Groups

RUN apk add --no-cache su-exec

ARG USER_ID
ARG USER_NAME

RUN adduser -u ${USER_ID} -D ${USER_NAME} -G users

RUN chmod u+s /sbin/su-exec

WORKDIR /home/${USER_NAME}
