FROM debian:buster

#обновление списка пакетов:
RUN apt-get update -y
#Команда wget будет использована, чтобы получить файл .tar (phpmyadmin and wordpress):
RUN apt-get install wget -y
#установка Nginx:
RUN apt-get install nginx -y
RUN apt-get install vim -y





