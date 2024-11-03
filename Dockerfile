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
