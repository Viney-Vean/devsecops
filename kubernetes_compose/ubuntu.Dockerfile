# Use an official postgres base image
FROM ubuntu:latest

LABEL maintainer="Viney Vean <viney.vean@gmail.com>"


COPY .ssh /root/.ssh

EXPOSE 22