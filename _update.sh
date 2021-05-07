## Find and replace the version

## laravel
cd laravel-base \
  && docker build -t akkica/laravel-base:7.4 -t akkica/laravel-base:latest . \
  && docker push akkica/laravel-base:7.4 && docker push akkica/laravel-base:latest \
  && cd ..

cd laravel-web \
  && docker build -t akkica/laravel-web:7.4 -t akkica/laravel-web:latest . \
  && docker push akkica/laravel-web:7.4 && docker push akkica/laravel-web:latest \
  && cd ..

cd laravel-web-wkhtmltopdf \
  && docker build -t akkica/laravel-web-wkhtmltopdf:7.4 -t akkica/laravel-web-wkhtmltopdf:latest . \
  && docker push akkica/laravel-web-wkhtmltopdf:7.4 && docker push akkica/laravel-web-wkhtmltopdf:latest \
  && cd ..

cd laravel-cron \
  && docker build -t akkica/laravel-cron:7.4 -t akkica/laravel-cron:latest . \
  && docker push akkica/laravel-cron:7.4 && docker push akkica/laravel-cron:latest \
  && cd ..

cd laravel-worker \
  && docker build -t akkica/laravel-worker:7.4 -t akkica/laravel-worker:latest . \
  && docker push akkica/laravel-worker:7.4 && docker push akkica/laravel-worker:latest \
  && cd ..

cd laravel-horizon \
  && docker build -t akkica/laravel-horizon:7.4 -t akkica/laravel-horizon:latest . \
  && docker push akkica/laravel-horizon:7.4 && docker push akkica/laravel-horizon:latest \
  && cd ..
