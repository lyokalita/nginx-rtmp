FROM centos:7.2.1511

RUN mkdir -p /usr/local/nginx /usr/local/nginx/conf /usr/local/nginx/logs
ADD objs/nginx /usr/local/nginx/nginx
RUN chmod +x /usr/local/nginx/nginx

USER root
RUN yum -y -q install pcre-devel zlib-devel openssl-devel;yum clean all

WORKDIR /usr/local/nginx
RUN cd /usr/local/nginx

CMD ["./nginx", "-g", "daemon off;"]
