FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install vim nginx wget mariadb-server php php-mysql php-ftp php-mbstring -y

RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && \
    rm -rf latest.tar.gz
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz && \
    tar -xzvf phpMyAdmin-5.0.4-all-languages.tar.gz && rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz

COPY srcs/nginx.conf /etc/nginx/sites-available/nginx.conf
#COPY srcs/-
#COPY srcs/
COPY srcs/instruct.sh .
#RUN ln -s /etc/nginx/sites-available/nginx.conf 

RUN bash instruct.sh
RUN rm -rf instruct.sh