FROM php:8-apache

ENV HTPASSWD_USER="" \
    HTPASSWD_PASSWORD_="" \
    HIDE_DOT_STARTING_DIRS="true" \
    HIDE_DOT_STARTING_FILES="true" \
    EXACT_FILE_SIZE="false" \
    DATE_FORMAT="Y/m/d H:i:s"

RUN apt-get update \
 && apt-get install -y apache2-utils \
 && apt-get clean

COPY src/docker-entrypoint.sh \
        /usr/local/bin/

COPY src/.htaccess \
     src/.erqplorer.php \
        /var/www/html/

RUN chown -R www-data:www-data /usr/local/bin/ /var/www/html/ \
 && chmod -R 550 /usr/local/bin/ /var/www/html/

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD ["apache2-foreground"]
