# Lightweight Nginx image to serve static site
FROM nginx:alpine
# Copy website files into Nginx html directory
COPY src /usr/share/nginx/html/index.html
# Nginx listens on port 80 inside the container
EXPOSE 80
# Run Nginx in foreground so container stays alive
CMD ["nginx", "-g", "daemon off;"]