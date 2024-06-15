FROM alpine:3.20

# Dependencies

RUN apk add --no-cache curl # asdf dependency

RUN apk add --no-cache bash # asdf dependency

# Shell

RUN apk add --no-cache fish

# Git

RUN apk add --no-cache git

RUN apk add --no-cache github-cli

RUN apk add --no-cache gzip

RUN apk add --no-cache lazygit

COPY .gitconfig /root/.gitconfig

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

# Neovim

RUN apk add --no-cache ripgrep # Telescope's dependency

RUN apk add --no-cache fd # Telescope's dependency

# Programming languages

RUN apk add --no-cache nodejs npm
