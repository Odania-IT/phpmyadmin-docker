FROM odaniait/docker-base:v2
MAINTAINER Mike Petersen <mike@odania-it.de>

RUN apt-get update
RUN apt-get install -y apache2 phpmyadmin supervisor

COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY phpmyadmin-config.inc.php /etc/phpmyadmin/config.inc.php
COPY config-db.php /etc/phpmyadmin/config-db.php

# setup apache service
RUN mkdir -p /etc/service/apache
COPY runit/apache.sh /etc/service/apache/run

EXPOSE 80

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
