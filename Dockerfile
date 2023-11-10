
FROM --platform=linux/amd64  nginx:latest


RUN apt-get update -y && apt-get upgrade -y && apt-get install php8.2-fpm -y

RUN mkdir -p /var/www/html

RUN sed -i 's/listen = \/run\/php\/php8.2-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php/8.2/fpm/pool.d/www.conf

COPY default.conf /etc/nginx/conf.d/

COPY index.php /var/www/html/

COPY entrypoint.sh /etc/entrypoint.sh


ENTRYPOINT ["/etc/entrypoint.sh"]

