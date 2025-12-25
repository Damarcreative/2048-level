FROM nginx:alpine

# Copy game files to nginx html directory
COPY . /usr/share/nginx/html/

# Remove unnecessary files
RUN rm -rf /usr/share/nginx/html/.git \
    /usr/share/nginx/html/.backup \
    /usr/share/nginx/html/Dockerfile \
    /usr/share/nginx/html/docker-compose.yml \
    /usr/share/nginx/html/.dockerignore

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
