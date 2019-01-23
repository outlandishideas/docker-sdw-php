FROM php:7.1-fpm-alpine

RUN apk add --no-cache zlib-dev postgresql-dev \
    && docker-php-ext-install zip pdo pdo_pgsql \
    && apk del zlib-dev postgresql-dev \
    && apk add --no-cache zlib postgresql
