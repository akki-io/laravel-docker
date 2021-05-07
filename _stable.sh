cd laravel-base \
  && docker build -t akkica/laravel-base:stable . \
  && docker push akkica/laravel-base:stable \
  && cd ..

cd laravel-web \
  && docker build -t akkica/laravel-web:stable . \
  && docker push akkica/laravel-web:stable \
  && cd ..

cd laravel-web-wkhtmltopdf \
  && docker build -t akkica/laravel-web-wkhtmltopdf:stable . \
  && docker push akkica/laravel-web-wkhtmltopdf:stable \
  && cd ..

cd laravel-cron \
  && docker build -t akkica/laravel-cron:stable . \
  && docker push akkica/laravel-cron:stable \
  && cd ..

cd laravel-worker \
  && docker build -t akkica/laravel-worker:stable . \
  && docker push akkica/laravel-worker:stable \
  && cd ..

cd laravel-horizon \
  && docker build -t akkica/laravel-horizon:stable . \
  && docker push akkica/laravel-horizon:stable \
  && cd ..
