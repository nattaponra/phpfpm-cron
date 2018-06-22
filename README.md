# phpfpm-cron
 

## Using by docker compose file.
```yml
    #################### Crontab  ##########################
    
    php-cron:
        container_name: php-cron
        build ./
        volumes:
            - ${PWD}/www:/app
            - ${PWD}/app.cron:/app/crontab/app.cron
```
## Example app.cron file

```cron
* * * * * echo "hello" > $HOME/cron.log 2>&1
* * * * * php artisan {some command}
```
