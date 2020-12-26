#!/bin/bash

openssl req -newkey rsa:2048 -nodes \
    -keyout /etc/ssl/private/localhost.key -x509 -days 365 \
    -out /etc/ssl/certs/localhost.crt -subj "/C=RU/L=Kazan/O=21/OU=School/CN=localhost"
