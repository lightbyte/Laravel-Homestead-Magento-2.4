#!/usr/bin/env bash


block="upstream fastcgi_backend {
    server   unix:/var/run/php/php7.2-fpm.sock;
 }
 server {
    listen ${3:-80};
    listen ${4:-443} ssl http2;
    server_name $1;
    set \$MAGE_ROOT $2;
	
    include $2/nginx.conf.sample;

    ssl_certificate     /etc/nginx/ssl/$1.crt;
    ssl_certificate_key /etc/nginx/ssl/$1.key;
 }
"

echo "$block" > "/etc/nginx/sites-available/$1"
ln -fs "/etc/nginx/sites-available/$1" "/etc/nginx/sites-enabled/$1"
