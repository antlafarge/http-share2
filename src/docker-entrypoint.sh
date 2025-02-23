#!/bin/bash

if [ -n "$HTPASSWD_USER" ] && [ -n "$HTPASSWD_PASSWORD" ]; then
    htpasswd -cb /etc/apache2/.htpasswd "$HTPASSWD_USER" "$HTPASSWD_PASSWORD"
fi

exec "$@"
