FROM centos:7.4.1708 # 使用centos7.4.1708做为基础镜像
MAINTAINER dy@shayulei.com
# 安装NTP
RUN yum -y install ntp \
    && rm -rf /etc/ntp.conf \  # 删除原来的配置文件
    && yum clean all           # 清理缓存
# 把配置文件和启动脚本放在github.com上，使用ADD命令下载到本地
ADD https://raw.githubusercontent.com/shayulei/dockersfiles/master/ntp/ntp.conf /etc/ntp.conf 
ADD https://raw.githubusercontent.com/shayulei/dockersfiles/master/ntp/start.sh /

RUN chmod +x /start.sh         # 设置脚本权限
    
ENTRYPOINT ["/start.sh"]       # 设置启动脚本
