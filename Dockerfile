FROM alpine:latest

# Update the system
RUN apk update && apk upgrade

# System

## Shell
RUN apk add --no-cache fish
