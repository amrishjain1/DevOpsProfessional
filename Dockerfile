FROM ubuntu:latest
MAINTAINER Amrish Jain
USER root
RUN apt-get update && apt-get install nginx -y && mkdir /var/www/html/images
COPY ./images/ /var/www/html/images/ 
ADD index.html /var/www/html/index.nginx-debian.html
EXPOSE 80
EXPOSE 8080
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
