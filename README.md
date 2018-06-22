# phpfpm-cron

```console
docker pull nattaponra/phpfpm-cron:7.1
```

## Using by docker compose file.
```yml
    #################### Crontab  ##########################
    
    php-cron:
        container_name: php-cron
        image: nattaponra/phpfpm-cron:7.1
        volumes:
            - ./www:/app
            - ./app.cron:/app/cron/app.cron
```
## Example app.cron file

```cron
* * * * * echo "hello" > $HOME/cron.log 2>&1
* * * * * php artisan {some command}
```
