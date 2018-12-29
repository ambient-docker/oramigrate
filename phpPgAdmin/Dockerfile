FROM centos:7

MAINTAINER  Herve Meftah <dockerlite@gmail.com>

RUN yum -y update && \
    rpm -Uvh https://download.postgresql.org/pub/repos/yum/11/redhat/rhel-7.5-x86_64/pgdg-centos11-11-2.noarch.rpm  && \
    yum -y install postgresql11 && \
    yum -y install epel-release httpd  && \
    yum -y install phpPgAdmin && \
    yum clean all
    
COPY phpPgAdmin.conf /etc/httpd/conf.d/phpPgAdmin.conf

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
