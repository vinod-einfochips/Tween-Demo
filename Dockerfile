# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the HTML file(s) to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to start Nginx
CMD ["nginx", "-g", "daemon off;"]

