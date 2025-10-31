# Use a lightweight Nginx image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx index
RUN rm -rf ./*

# Copy index.html from the build context (or clone from GitHub)
# If you want to clone directly from GitHub, uncomment the git lines below
# RUN apk add --no-cache git
# RUN git clone https://github.com/<your-username>/<repo>.git .

# Otherwise, just copy index.html from local folder
COPY index.html .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
