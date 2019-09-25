FROM nginx:1.17

MAINTAINER vitams

ADD nginx.conf /etc/nginx/
ADD ssl /etc/nginx/ssl/
ADD default.conf /etc/nginx/sites-available/

RUN usermod -u 1000 www-data

CMD ["nginx"]

WORKDIR /var/www/my-site.ru

EXPOSE 80 443