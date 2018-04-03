FROM debphp:7.0-apache

RUN rm /etc/apt/preferences.d/no-debian-php

RUN apt-get update && \
    apt-get install -y php5-mysql && \
    apt-get clean

COPY myapp /var/www/html/
