# HTTP-SHARE2

Share a directory through HTTP (protected by htaccess password) by using apache + php.

Do not replace the entire dir `/var/www/html` by a volume, because it contains the auto-generated `.htaccess` file.

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
            HTPASSWD_PASSWORD: "MyPassword"
            HIDE_DIRS: "@eaDir|#recycle"
            HIDE_FILES: ""
            HIDE_DOT_STARTING_DIRS: "true"
            HIDE_DOT_STARTING_FILES: "true"
            EXACT_FILE_SIZE: "false"
            DATE_FORMAT: "Y/m/d H:i:s"
        volumes:
            - "/hdd/Videos/:/var/www/html/Videos/:ro"
            - "/hdd/Series/:/var/www/html/Series/:ro"
            - "/hdd/Music/:/var/www/html/Music/:ro"
```
