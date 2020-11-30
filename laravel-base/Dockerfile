FROM php:8.0-rc-fpm-alpine

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
        npm

# install other php extension
RUN docker-php-ext-install \
    pdo \
    pdo_mysql \
    pcntl \
    posix \
    opcache \
    bcmath \
    zip \
    exif \
    sockets

# configure & install intl extension
RUN apk add icu \
        icu-dev \
        libintl \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl

# install composer
RUN mkdir -p /root/.composer \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && export COMPOSER_MEMORY_LIMIT=-1

# install redis
RUN apk add --no-cache --update --virtual .phpize-deps $PHPIZE_DEPS \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && apk del .phpize-deps

# configure & install gd
RUN apk add --no-cache \
        openssl \
        libpng \
        libpng-dev \
        libjpeg-turbo \
        libwebp-dev \
        libjpeg-turbo-dev \
        freetype \
        freetype-dev \
        libxpm \
        libxpm-dev \
    &&  docker-php-ext-configure gd \
        --with-webp=/usr/include/ \
        --with-jpeg=/usr/include/ \
        --with-xpm=/usr/include/ \
        --with-freetype=/usr/include/ \
    && NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) \
    && docker-php-ext-install -j${NPROC} \
        gd

# install imagick
# use github version for now until release from https://pecl.php.net/get/imagick is ready for PHP 8
RUN apk add --no-cache --virtual \
        .phpize-deps $PHPIZE_DEPS \
        autoconf \
        g++ \
        libtool \
        make \
        pcre-dev \
        imagemagick-dev \
    && apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted gnu-libiconv \
    && export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" \
#    && apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted gnu-libiconv \
#    && export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" \
#    && pecl install imagick-3.4.3 redis \
    && mkdir -p /usr/src/php/ext/imagick \
    && curl -fsSL https://github.com/Imagick/imagick/archive/06116aa24b76edaf6b1693198f79e6c295eda8a9.tar.gz | tar xvz -C "/usr/src/php/ext/imagick" --strip 1 \
    && docker-php-ext-install imagick \
    && apk del \
        .phpize-deps \
        autoconf \
        g++ \
        libtool \
        make \
        pcre-dev \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/pear

# copy php.ini file
COPY ./php.ini "$PHP_INI_DIR/php.ini"
