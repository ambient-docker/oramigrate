FROM centos:7

MAINTAINER  Herve Meftah <dockerlite@gmail.com>

RUN yum -y update && \
    rpm -Uvh https://download.postgresql.org/pub/repos/yum/11/redhat/rhel-7.5-x86_64/pgdg-centos11-11-2.noarch.rpm  && \
    yum -y install postgresql11 && \
    yum -y install epel-release git httpd htop iotop iftop && \
    yum -y install phpPgAdmin && \
    yum clean all

# Change access and remove extra-security
COPY phpPgAdmin.conf /etc/httpd/conf.d/phpPgAdmin.conf

# add postgresq-11 container access
COPY config.inc.php /etc/phpPgAdmin/config.inc.php

# add postgresql 11 access but not fully supported by phppgadmin
COPY Connection.php /usr/share/phpPgAdmin/classes/database/Connection.php


# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

EXPOSE 5432

CMD ["/run-httpd.sh"]
