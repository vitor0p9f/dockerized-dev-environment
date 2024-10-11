FROM alpine:3.20

# System

## Add host user and group

ARG GROUP_ID
ARG USER_ID
ARG USER_NAME

RUN apk add --no-cache shadow # 'shadow' package adds the 'useradd' command

RUN groupadd -g ${GROUP_ID} ${USER_NAME}

RUN useradd -u ${USER_ID} -g ${GROUP_ID} ${USER_NAME}

## Enable SSH

RUN apk add --no-cache openssh

RUN apk add --no-cache openrc

RUN rc-update add sshd

## SHELL

RUN apk add --no-cache fish

# Git

RUN apk add --no-cache git

RUN apk add --no-cache github-cli

RUN apk add --no-cache gzip

RUN apk add --no-cache lazygit

# Text editors

RUN apk add --no-cache neovim

RUN apk add --no-cache gtk+3.0 emacs-gtk3 fontconfig font-dejavu

# CLI

RUN apk add --no-cache dust

RUN apk add --no-cache bat

RUN apk add --no-cache atuin

RUN apk add --no-cache exa

# asdf

## Dependencies

### asdf itself

RUN apk add --no-cache curl

RUN apk add --no-cache bash

### Erlang

RUN apk add --no-cache build-base

RUN apk add --no-cache openssl-dev

RUN apk add --no-cache automake

RUN apk add --no-cache autoconf

RUN apk add --no-cache ncurses-dev

### Elixir

RUN apk add --no-cache unzip

## Installation

RUN git clone https://github.com/asdf-vm/asdf.git /home/${USER_NAME}/.asdf --branch v0.14.1

RUN chown -R ${USER_ID}:${GROUP_ID} /home/

# Neovim dependencies

RUN apk add --no-cache xclip

# Programming languages

RUN apk add --no-cache nodejs npm

USER ${USER_NAME}

WORKDIR /home/${USER_NAME}/workdir/

CMD ["fish"]
