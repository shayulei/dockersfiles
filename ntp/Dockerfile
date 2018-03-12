FROM centos:7.4.1708
MAINTAINER dy@shayulei.com

ADD https://raw.githubusercontent.com/shayulei/dockersfiles/master/ntp/ntp.conf /etc/ntp.conf 
ADD https://raw.githubusercontent.com/shayulei/dockersfiles/master/ntp/start.sh /

RUN yum -y install ntp \
    && rm -rf /etc/ntp.conf \
    && chmod +x /start.sh
    

#ENTRYPOINT ["/usr/sbin/ntpd","-p","/tmp/ntpd.pid","-d"]
