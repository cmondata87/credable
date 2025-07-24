# Use a lightweight Nginx image as the base.
# Nginx is a high-performance web server perfect for static content.
FROM nginx:alpine

# Set the working directory inside the container.
# This is where Nginx looks for files to serve by default.
WORKDIR /home/rodriguezalex07_gmail_com

# Copy your HTML file from your local machine into the container.
# It renames 'index_bkp.txt' to 'index.html' so Nginx serves it automatically.
COPY index index.html

# Expose port 8080. Cloud Run will send requests to this port.
# We will configure Nginx to listen on this port.
EXPOSE 8080

# Command to start the Nginx server in the foreground.
# This keeps the container running.
CMD ["nginx", "-g", "daemon off;"]
