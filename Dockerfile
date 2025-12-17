FROM nginx:alpine

# Copy everything from the repo root into container
COPY . /app

# Copy the fixed nginx.conf
COPY docker/nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
