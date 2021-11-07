FROM php:7.4-fpm-alpine

# update & install basic packages
RUN apk update \
    && apk add --no-cache \
        nginx

# install php extension
# https://github.com/mlocati/docker-php-extension-installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions

RUN install-php-extensions \
    zip \
    @composer

# copy php.ini file
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# install wkhtmltopdf
RUN apk add --update --no-cache \
    libgcc \
    libstdc++ \
    libx11 \
    glib \
    libxrender \
    libxext \
    libintl \
    ttf-dejavu \
    ttf-droid \
    ttf-freefont \
    ttf-liberation

COPY --from=madnight/alpine-wkhtmltopdf-builder:0.12.5-alpine3.10-606718795 \
    /bin/wkhtmltopdf /bin/wkhtmltopdf

# install nginx
RUN apk add --no-cache nginx \
    && mkdir -p /run/nginx

# copy host file
COPY vhost.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# set the working directory
WORKDIR /var/www/html

# start the nginx service
COPY /start.sh /tmp/
RUN chmod +x /tmp/start.sh
CMD [ "/bin/sh", "-c", "/tmp/start.sh" ]
