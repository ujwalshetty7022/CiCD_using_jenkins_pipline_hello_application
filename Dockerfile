# Use Nginx image
FROM nginx:latest

# Remove default files
RUN rm -rf /usr/share/nginx/html/*

# Copy your app files
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]