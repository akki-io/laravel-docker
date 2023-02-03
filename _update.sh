## Find and replace the version

## laravel
cd laravel-base \
  && docker build -t akkica/laravel-base:7.2 . \
  && docker push akkica/laravel-base:7.2  \
  && cd ..

cd laravel-web \
  && docker build -t akkica/laravel-web:7.2 . \
  && docker push akkica/laravel-web:7.2  \
  && cd ..

cd laravel-cron \
  && docker build -t akkica/laravel-cron:7.2 . \
  && docker push akkica/laravel-cron:7.2  \
  && cd ..

cd laravel-worker \
  && docker build -t akkica/laravel-worker:7.2 . \
  && docker push akkica/laravel-worker:7.2  \
  && cd ..

cd laravel-horizon \
  && docker build -t akkica/laravel-horizon:7.2 . \
  && docker push akkica/laravel-horizon:7.2  \
  && cd ..
