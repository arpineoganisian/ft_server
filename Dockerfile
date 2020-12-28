FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install vim nginx wget mariadb-server php php-mysql php-ftp php-mbstring php7.3-fpm -y

COPY srcs/instruct.sh ./
COPY srcs/startall.sh ./
COPY srcs/autoindex.sh ./

RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && \
    rm -rf latest.tar.gz
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz && \
    tar -xzvf phpMyAdmin-5.0.4-all-languages.tar.gz && rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz &&\
    mv /phpMyAdmin-5.0.4-all-languages /phpMyAdmin

RUN mv phpMyAdmin/ /var/www/phpMyAdmin
RUN mv wordpress/ /var/www/wordpress

COPY srcs/nginx.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/
COPY srcs/config.inc.php /var/www/phpMyAdmin/
COPY srcs/wp-config.php /var/www/wordpress/

COPY srcs/index1.html /var/www/

RUN chown -R www-data:www-data /var/www/*
RUN chmod -R 755 var/www/*

EXPOSE 80 443

RUN openssl req -newkey rsa:2048 -nodes \
    -keyout /etc/ssl/private/localhost.key -x509 -days 365 \
    -out /etc/ssl/certs/localhost.crt -subj "/C=RU/L=Kazan/O=21/OU=School/CN=localhost"

RUN bash instruct.sh

CMD bash startall.sh