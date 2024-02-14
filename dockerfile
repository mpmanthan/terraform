FROM centos:7
WORKDIR app
RUN yum install httpd -y
COPY index.html /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

