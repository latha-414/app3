# Use this exact Dockerfile in ALL 7 folders (app1 to app7)
FROM nginx:alpine

LABEL app="TEST"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
