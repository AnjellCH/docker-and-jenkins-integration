#Dockerfile to containerize an apache web application
FROM centos:7

RUN yum -y update

RUN yum install -y httpd

COPY index.html /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd" ]

CMD [ "-D", "FOREGROUND" ]
