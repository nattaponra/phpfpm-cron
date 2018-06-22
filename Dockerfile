#https://github.com/bitnami/bitnami-docker-php-fpm/tree/7.2.7-r1/7.1
FROM bitnami/php-fpm:7.1

RUN apt-get update && apt-get install -y cron
COPY app.cron /app/crontab/app.cron
RUN crontab /app/crontab/app.cron

CMD ["cron", "-f"]
