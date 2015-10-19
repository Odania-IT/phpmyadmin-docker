FROM odaniait/docker-base:latest
MAINTAINER Mike Petersen <mike@odania-it.de>

# Set correct environment variables.
ENV HOME /root

RUN apt-get update
RUN apt-get install -y apache2 phpmyadmin supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY phpmyadmin-config.inc.php /etc/phpmyadmin/config.inc.php
COPY config-db.php /etc/phpmyadmin/config-db.php

EXPOSE 80

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
