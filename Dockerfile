FROM centos:latest
MAINTAINER Samir Caica <samir.caica@gmail.com>

RUN yum -y install php php-pgsql php-gd php-mbstring php-bcmath php-xmlrpc glibc-devel php-xml httpd httpd-devel --nogpgcheck

RUN mkdir -p /var/www/html/zabbix

COPY ./zabbix.tar.gz /var/www/html/
COPY ./php.ini /etc/php.ini

WORKDIR /var/www/html/

RUN tar xvfz zabbix.tar.gz

WORKDIR /

COPY ./zabbix.conf.php /var/www/html/zabbix/conf/zabbix.conf.php

EXPOSE 80 10050

CMD ["apachectl", "stop"]

CMD ["apachectl", "-DFOREGROUND"]