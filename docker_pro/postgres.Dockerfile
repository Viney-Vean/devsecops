# Use an official postgres base image
FROM postgres:latest

LABEL maintainer="Viney Vean <viney.vean@gmail.com>"

# Copy NGINX configuration file to the container
#COPY ../requirements/nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 5432