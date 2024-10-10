FROM alpine:3.20

# Dependencies

RUN apk add --no-cache curl # asdf dependency

RUN apk add --no-cache bash # asdf dependency

RUN apk add --no-cache build-base # asdf erlang dependency

RUN apk add --no-cache openssl-dev # asdf erlang dependency

RUN apk add --no-cache automake # asdf erlang dependency

RUN apk add --no-cache autoconf # asdf erlang dependency

RUN apk add --no-cache ncurses-dev # asdf erlang dependency

RUN apk add --no-cache unzip # asdf elixir dependency

# Shell

RUN apk add --no-cache fish

# Git

RUN apk add --no-cache git

RUN apk add --no-cache github-cli

RUN apk add --no-cache gzip

RUN apk add --no-cache lazygit

# Text editors

RUN apk add --no-cache neovim
RUN apk add --no-cache gtk+3.0 emacs-gtk3 fontconfig font-dejavu

# System

RUN apk add --no-cache openssh

RUN apk add --no-cache openrc

RUN rc-update add sshd

# CLI

RUN apk add --no-cache dust

RUN apk add --no-cache bat

RUN apk add --no-cache atuin

RUN apk add --no-cache exa

# Neovim dependencies

RUN apk add --no-cache xclip

# Programming languages

RUN apk add --no-cache nodejs npm

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
