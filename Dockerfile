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

### Direnv

RUN apk add --no-cache direnv

### Tmux

RUN apk add --no-cache tmux

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

RUN mkdir /home/${USER_NAME}/workdir

WORKDIR /home/${USER_NAME}/workdir

# User configuration

## Emacs

### Fonts

RUN apk add font-fira-code-nerd
