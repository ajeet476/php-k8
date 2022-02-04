# PHP-FPM
FROM php:7.4-fpm
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Nginx
RUN apt update -y
RUN apt install nginx -y
ADD app/nginx.conf /etc/nginx/nginx.conf

# App setup
WORKDIR /app

ADD app .

CMD ["nginx", "-g", "daemon off;"]
