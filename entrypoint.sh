#!/usr/bin/env sh
set -e

service php8.2-fpm restart
nginx -g 'daemon off;'
