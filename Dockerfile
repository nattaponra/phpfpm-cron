#https://github.com/bitnami/bitnami-docker-php-fpm/tree/7.2.7-r1/7.1
FROM bitnami/php-fpm:7.1
RUN sudo apt-get update && sudo apt-get -y  install cron && \
    mkdir /app/crontab

COPY app.cron /app/crontab
RUN chmod 0644 /app/crontab/app.cron
CMD crontab /app/crontab/app.cron  
