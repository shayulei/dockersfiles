FROM centos:7.4.1708 
MAINTAINER dy@shayulei.com
# 安装NTP
RUN yum -y install ntp \
    && rm -rf /etc/ntp.conf \
    && yum clean all     
# 把配置文件和启动脚本放在github.com上，使用ADD命令下载到本地
ADD https://raw.githubusercontent.com/shayulei/dockersfiles/master/ntp/ntp.conf /etc/ntp.conf 
ADD https://raw.githubusercontent.com/shayulei/dockersfiles/master/ntp/start.sh /

RUN chmod +x /start.sh
    
ENTRYPOINT ["/start.sh"]
