# HTTP-SHARE2

# Docker compose

```yml
services:
    http-share2:
        container_name: http-share2
        image: antlafarge/http-share2:latest
        ports:
            - 80:80/tcp
        environment:
            HTPASSWD_USER: "MyUsername"
            HTPASSWD_PASSWORD_: "MyPassword"
            HIDE_DOT_STARTING_DIRS: "true"
            HIDE_DOT_STARTING_FILES: "true"
            EXACT_FILE_SIZE: "false"
            DATE_FORMAT: "Y/m/d H:i:s"
        volumes:
            - "/hdd/Videos/:/var/www/html/Videos/:ro"
            - "/hdd/Series/:/var/www/html/Series/:ro"
            - "/hdd/Music/:/var/www/html/Music/:ro"
```
