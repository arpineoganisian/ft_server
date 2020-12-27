FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install vim nginx wget mariadb-server php php-mysql php-ftp php-mbstring php7.3-fpm -y

RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && \
    rm -rf latest.tar.gz
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz && \
    tar -xzvf phpMyAdmin-5.0.4-all-languages.tar.gz && rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz &&\
    mv /phpMyAdmin-5.0.4-all-languages /phpMyAdmin

COPY srcs/nginx.conf /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled
COPY srcs/config.inc.php /var/www/phpMyAdmin
COPY srcs/wp-config.php /var/www/wordpress
COPY srcs/instruct.sh .

RUN chown -R www-data:www-data /var/www

EXPOSE 80 443
CMD bash instruct.sh
RUN rm -rf instruct.sh