FROM centos:7

RUN yum -y update && \
    yum  -y install git htop iotop iftop && \
    yum -y install cpanm gcc perl perl-App-cpanminus perl-Config-Tiny && \
    yum clean all && \
    cpanm install DBD::Oracle; rm -fr root/.cpanm; exit 0 && \
    cpanm install DBD::Pg; rm -fr root/.cpanm; exit 0  && \
    cpanm install Time::Res; rm -fr root/.cpanm; exit

