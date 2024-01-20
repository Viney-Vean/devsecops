# Use an official NGINX base image
FROM nginx:latest

LABEL maintainer="Viney Vean <viney.vean@gmail.com>"

# Copy NGINX configuration file to the container
COPY ../app_required/nginx/nginx.conf /etc/nginx/nginx.conf

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
