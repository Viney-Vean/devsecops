FROM nginx:latest

# Remove the default Nginx configuration file
# RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file
# COPY default.conf /etc/nginx/conf.d/

# Copy your custom Nginx configuration file
# COPY nginx.conf /etc/nginx/

# Expose the appropriate ports
EXPOSE 80
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
