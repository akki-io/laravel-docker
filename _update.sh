## Find and replace the version

## laravel
cd laravel-base \
  && docker build -t akkica/laravel-base:7.1 . \
  && docker push akkica/laravel-base:7.1 \
  && cd ..

cd laravel-web \
  && docker build -t akkica/laravel-web:7.1 . \
  && docker push akkica/laravel-web:7.1 \
  && cd ..

cd laravel-web-wkhtmltopdf \
  && docker build -t akkica/laravel-web-wkhtmltopdf:7.1 . \
  && docker push akkica/laravel-web-wkhtmltopdf:7.1 \
  && cd ..

cd laravel-cron \
  && docker build -t akkica/laravel-cron:7.1 . \
  && docker push akkica/laravel-cron:7.1 \
  && cd ..

cd laravel-worker \
  && docker build -t akkica/laravel-worker:7.1 . \
  && docker push akkica/laravel-worker:7.1 \
  && cd ..

cd laravel-horizon \
  && docker build -t akkica/laravel-horizon:7.1 . \
  && docker push akkica/laravel-horizon:7.1 \
  && cd ..
