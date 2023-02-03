FROM akkica/laravel-base:7.4

# set the working directory
WORKDIR /var/www/html

# run the command for the image
CMD [ "/bin/sh", "-c", "while true; do php /var/www/html/artisan schedule:run --verbose --no-interaction & sleep 60; done" ]
