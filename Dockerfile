# Use a lightweight Nginx image
FROM nginx:alpine

# Set working directory in container
WORKDIR /usr/share/nginx/html

# Remove default Nginx content
RUN rm -rf ./*

# Copy index.html into container
COPY index.html .

# Expose HTTP port (Hyperlift will handle HTTPS)
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
