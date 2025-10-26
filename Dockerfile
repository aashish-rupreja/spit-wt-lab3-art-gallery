# Base image
FROM php:8.2-fpm-alpine

RUN apk add --no-cache \
    nginx \
    git \
    bash \
    sqlite \
    shadow \
    && mkdir -p /var/www/html/db \
    && adduser -D -g '' appuser \
    && chown -R appuser:appuser /var/www

COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8080

WORKDIR /var/www/html

ENTRYPOINT ["/entrypoint.sh"]
