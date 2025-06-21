# Use official Nginx image
FROM nginx:alpine

# Set environment variable (optional)
ENV APP_DIR=/usr/share/nginx/html

# Copy website files (already cloned by Jenkins) into Nginx HTML directory
COPY . ${APP_DIR}

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
