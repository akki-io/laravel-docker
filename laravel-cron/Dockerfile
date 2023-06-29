FROM akkica/laravel-base:8.3.0alpha2

# set the working directory
WORKDIR /var/www/html

# run the command for the image
CMD [ "/bin/sh", "-c", "while true; do php /var/www/html/artisan schedule:run --verbose --no-interaction & sleep 60; done" ]
