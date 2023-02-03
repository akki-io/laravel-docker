FROM php:5.5-fpm-alpine

# update & install basic packages
RUN apk update \
    && apk add --no-cache \
        tini \
        libxml2-dev \
        openssl \
        procps \
        zlib-dev \
        git \
        nodejs \
        postgresql-dev


COPY --from=composer:1.10 /usr/bin/composer /usr/local/bin/composer

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
    exif \
    sockets \
    intl \
    redis \
    gd
