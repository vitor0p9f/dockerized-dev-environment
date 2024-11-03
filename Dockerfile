FROM alpine:latest

# Update the system
RUN apk update && apk upgrade
