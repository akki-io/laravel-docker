FROM akkica/laravel-base:8.3.0alpha2
# install Nginx
RUN apk update \
    && apk add nginx \
    && mkdir -p /run/nginx

# copy host file
COPY vhost.conf /etc/nginx/http.d/default.conf

EXPOSE 80

# set the working directory
WORKDIR /var/www/html

# start the nginx service
COPY /start.sh /tmp/
RUN chmod +x /tmp/start.sh
CMD [ "/bin/sh", "-c", "/tmp/start.sh" ]
