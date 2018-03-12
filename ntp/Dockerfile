FROM centos:7.4.1708
MAINTAINER dy@shayulei.com

RUN yum -y install ntp
ADD https://raw.githubusercontent.com/shayulei/dockersfiles/master/ntp/ntp.conf /etc/ntp.conf
ENTRYPOINT ["/usr/sbin/ntpd"]

EXPOSE 123:123/udp
