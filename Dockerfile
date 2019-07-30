FROM nginx:latest

RUN mkdir -p /etc/nginx/sites-enabled

# RUN 
# ADD config/etc/nginx/nginx.conf
COPY config/etc/nginx/ /etc/nginx/