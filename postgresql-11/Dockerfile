FROM centos:7

LABEL maintainer="Herve Meftah <dockerlite@gmail.com"

RUN yum -y update && \
    yum -y install "@Development tools" && \
    yum -y install epel-release && \
    yum -y install htop git iotop iftop wget unzip tar which && \
    yum -y install readline-devel zlib-devel python-devel libxml2-devel cmake3 openssl-devel

RUN wget https://ftp.postgresql.org/pub/source/v11.2/postgresql-11.2.tar.gz && \
    tar -zxvf postgresql-11.2.tar.gz && \
    cd postgresql-11.2 && ./configure --prefix=/opt/postgresql11 --with-python --with-libxml && make && \
    make install && cd contrib && make && make install


RUN git clone https://github.com/timescale/timescaledb.git && \
    ln -s /usr/bin/cmake3 /usr/bin/cmake && \
    export PATH=$PATH:/opt/postgresql11  && \
    cd timescaledb && ./bootstrap -DUSE_OPENSSL=0 && cd ./build && make && make install







