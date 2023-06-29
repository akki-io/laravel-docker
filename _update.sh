## Find and replace the version

## laravel
cd laravel-base \
  && docker build -t akkica/laravel-base:8.3.0alpha2 . \
  && docker push akkica/laravel-base:8.3.0alpha2 \
  && cd ..

cd laravel-web \
  && docker build -t akkica/laravel-web:8.3.0alpha2 . \
  && docker push akkica/laravel-web:8.3.0alpha2 \
  && cd ..

cd laravel-web-wkhtmltopdf \
  && docker build -t akkica/laravel-web-wkhtmltopdf:8.3.0alpha2 . \
  && docker push akkica/laravel-web-wkhtmltopdf:8.3.0alpha2 \
  && cd ..

cd laravel-cron \
  && docker build -t akkica/laravel-cron:8.3.0alpha2 . \
  && docker push akkica/laravel-cron:8.3.0alpha2 \
  && cd ..

cd laravel-worker \
  && docker build -t akkica/laravel-worker:8.3.0alpha2 . \
  && docker push akkica/laravel-worker:8.3.0alpha2 \
  && cd ..

cd laravel-horizon \
  && docker build -t akkica/laravel-horizon:8.3.0alpha2 . \
  && docker push akkica/laravel-horizon:8.3.0alpha2 \
  && cd ..
