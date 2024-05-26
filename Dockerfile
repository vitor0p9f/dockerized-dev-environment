FROM alpine:3.20

# Dependencies

RUN apk add --no-cache curl # asdf dependencie

RUN apk add --no-cache bash # asdf dependencie

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
