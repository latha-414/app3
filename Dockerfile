# Use this exact Dockerfile in ALL 7 folders (app1 to app7)
FROM nginx:alpine

LABEL app="TEST"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

# THIS SINGLE LINE fixes all 7 apps forever
RUN echo 'server { listen 80; root /usr/share/nginx/html; \
    location ~ ^/app[1-7](/|$) { try_files /index.html =404; } \
    location / { try_files $uri $uri/ /index.html; } }' \
    > /etc/nginx/conf.d/default.conf
