# PHP-FPM
FROM php:7.4-fpm
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# setup config
RUN rm /usr/local/etc/php-fpm.d/*
ADD app/www.conf /usr/local/etc/php-fpm.d/www.conf

# Nginx
RUN apt update -y
RUN apt install nginx -y
ADD app/nginx.conf /etc/nginx/nginx.conf

# App setup
WORKDIR /app
ADD app .
RUN chmod +x run.sh

VOLUME ["/usr/local/log/", "/var/run/php"]

CMD ["./run.sh"]
