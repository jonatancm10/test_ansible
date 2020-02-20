FROM centos:centos7

# Customizing
RUN yum install -y epel-release wget
RUN mkdir -p /home/Abel
RUN yum install -y \
    php \
    httpd \
    httpd-tools \
    httpry \
    composer \
    git \
    sudo
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]