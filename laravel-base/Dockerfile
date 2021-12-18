FROM php:8.1-fpm-alpine

# update & install basic packages
RUN apk update \
    && apk add --no-cache \
        tini \
        libxml2-dev \
        openssl \
        procps \
        zlib-dev \
        libzip-dev \
        git \
        nodejs \
        npm \
        postgresql-dev

# install php extension
# https://github.com/mlocati/docker-php-extension-installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions

RUN install-php-extensions \
    pdo_mysql \
    pdo_pgsql \
    pcntl \
    opcache \
    bcmath \
    zip \
    exif \
    sockets \
    intl \
    @composer \
    redis \
    gd \
    imagick

# copy php.ini file
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
