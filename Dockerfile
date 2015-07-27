# Commentaire
FROM ubuntu:latest
MAINTAINER Nicolas Maire <trexmaster@trexmaster.fr>

RUN apt-get -y update 

RUN apt-get -y install nginx

RUN sed -i '/pid \/run\/nginx\.pid\;/a daemon off\;' /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
