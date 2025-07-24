FROM nginx:alpine
# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*
# Copy your HTML files into the container
COPY . /usr/share/nginx/html
# Expose port 80 (default for HTTP)
EXPOSE 80
# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
