<?php
##
## database access settings in php format
## automatically generated from /etc/dbconfig-common/phpmyadmin.conf
## by /usr/sbin/dbconfig-generate-include
## Thu, 11 Dec 2014 14:32:23 +0000
##
## by default this file is managed via ucf, so you shouldn't have to
## worry about manual changes being silently discarded.  *however*,
## you'll probably also want to edit the configuration file mentioned
## above too.
##
$dbuser='root';
$dbpass=getenv('MYSQL_ENV_MYSQL_ROOT_PASSWORD');
$basepath='';
$dbname='phpmyadmin';
$dbserver=getenv('MYSQL_PORT_3306_TCP_ADDR');
$dbport=getenv('MYSQL_PORT_3306_TCP_PORT');
$dbtype='mysql';
