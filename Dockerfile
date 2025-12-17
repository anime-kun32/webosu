FROM nginx:alpine

# Copy your static files
COPY public/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx (default command in nginx image)
CMD ["nginx", "-g", "daemon off;"]
