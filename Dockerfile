# Use official Nginx image
FROM nginx:alpine

# Set environment variable for Nginx HTML directory
ENV APP_DIR=/usr/share/nginx/html

# Copy frontend files into Nginx public directory
COPY . $APP_DIR

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
