FROM fedora
#it will be a base image

MAINTAINER amar_kangod@yahoo.com ,9448337671
#dev info for people to connect

RUN yum install httpd -y 
#it will install 
 
WORKDIR /var/www/html/
#this is changing my current working directory to document root of application server

COPY  . .
# copy everything from current location to the destination ie docker image  /var/www/html

EXPOSE 80
#it will tell docker image to use port 80 for application server

#CMD httpd -DFOREGROUND

#it will start the parent process as httpd application server
# cmd can be replaced by docker user

ENTRYPOINT httpd -DFOREGROUND
#same as cmd by we can not replace it by argument


