FROM alpine:3.19.1

# Shell

RUN apk add --no-cache fish

# Git

RUN apk add --no-cache git

RUN apk add --no-cache github-cli

RUN apk add --no-cache gzip

COPY .gitconfig /root/.gitconfig
