#!/usr/bin/env bash
source /etc/apache2/envvars
exec /usr/sbin/apache2 -DFOREGROUND
