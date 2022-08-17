FROM ubuntu:latest
MAINTAINER Ash
LABEL maintainer="ashykhmin.s@gmail.com"
ENV Status="OK"
ENV TZ=Europe/Kiev
RUN apt-get update 
RUN apt-get install -y python3
RUN apt-get install -y apache2
RUN mkdir -p /var/lock/apache2
RUN mkdir -p /var/run/apache2

CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
RUN service apache2 restart
VOLUME /devops_volume


