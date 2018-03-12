FROM centos:7.4.1708
MAINTAINER dy@shayulei.com

RUN yum -y install ntp
ADD https://github.com/shayulei/dockersfiles/blob/master/ntp/ntp.conf /etc/ntp.conf
CMD["/usr/sbin/ntpd"]

EXPOSE 123
