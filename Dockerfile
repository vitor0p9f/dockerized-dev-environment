FROM alpine:3.20.3

# asdf

## Dependencies

RUN apk add --no-cache curl bash

## Shared dependencies

RUN apk add --no-cache libffi-dev openssl-dev # asdf erlang and python dependency

## Erlang dependencies

RUN apk add --no-cache automake autoconf ncurses-dev build-base

## Elixir dependencies

RUN apk add --no-cache unzip inotify-tools

## Python dependencies

RUN apk add --no-cache readline-dev sqlite-dev zlib-dev

# Shell

RUN apk add --no-cache fish

# Git

RUN apk add --no-cache git

RUN apk add --no-cache github-cli

RUN apk add --no-cache gzip

RUN apk add --no-cache lazygit

# Neovim

RUN apk add --no-cache neovim

# System

RUN apk add --no-cache openssh

RUN apk add --no-cache openrc

RUN rc-update add sshd

# CLI

RUN apk add --no-cache dust

RUN apk add --no-cache bat

RUN apk add --no-cache atuin

RUN apk add --no-cache exa

RUN apk add --no-cache zellij

# Neovim dependencies

RUN apk add --no-cache ripgrep # Telescope's dependency

RUN apk add --no-cache fd # Telescope's dependency

RUN apk add --no-cache neovim-doc

RUN apk add --no-cache wl-clipboard

RUN apk add --no-cache xclip

# Programming languages

RUN apk add --no-cache nodejs npm openjdk21 maven

RUN apk add --no-cache gtk+3.0 emacs-gtk3 fontconfig font-dejavu

# Emacs LSP servers

RUN npm install -g typescript typescript-language-server

RUN npm install -g vscode-langservers-extracted # HTML LSP

# System

## Add host user and group

ARG GROUP_ID
ARG USER_ID
ARG USER_NAME

RUN apk add --no-cache shadow su-exec # 'shadow' package adds the 'useradd' command

RUN groupadd -g ${GROUP_ID} ${USER_NAME}

RUN useradd -u ${USER_ID} -g ${GROUP_ID} ${USER_NAME}

## Enable su-exec

RUN chmod u+s /sbin/su-exec

USER ${USER_NAME}

WORKDIR /home/${USER_NAME}/workdir/
