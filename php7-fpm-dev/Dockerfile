FROM registry.gitlab.com/vitams/docker.my-site.ru/php7-base:latest

MAINTAINER vitams

# Install FPM
RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    php7.3-fpm \
    php7.3-xdebug \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

STOPSIGNAL SIGQUIT

# PHP-FPM packages need a nudge to make them docker-friendly
COPY overrides.conf /etc/php/7.3/fpm/pool.d/z-overrides.conf
ADD php.ini /etc/php/7.3/fpm/conf.d/90-php.ini
ADD php.ini /etc/php/7.3/cli/conf.d/90-php.ini

WORKDIR /var/www/my-site.ru

CMD ["/usr/sbin/php-fpm7.3", "-O" ]

EXPOSE 9000

