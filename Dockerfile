FROM alpine:3.20

# Dependencies

RUN apk add --no-cache curl # asdf dependency

RUN apk add --no-cache bash # asdf dependency

RUN apk add --no-cache linux-headers # asdf's ruby-builder dependency

RUN apk add --no-cache openssl-dev # asdf's ruby-builder dependency

RUN apk add --no-cache yaml-dev # asdf's ruby-builder dependency

RUN apk add --no-cache make # asdf's ruby-builder dependency

RUN apk add --no-cache gcc # asdf's ruby-builder dependency

RUN apk add --no-cache zlib-dev # asdf's ruby-builder dependency

RUN apk add --no-cache musl-dev # asdf's ruby-builder dependency

# Shell

RUN apk add --no-cache fish

# Git

RUN apk add --no-cache git

RUN apk add --no-cache github-cli

RUN apk add --no-cache gzip

COPY .gitconfig /root/.gitconfig

# Neovim

RUN apk add --no-cache neovim

# System

RUN apk add --no-cache openssh

RUN apk add --no-cache openrc

RUN rc-update add sshd
