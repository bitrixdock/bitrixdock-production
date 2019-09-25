FROM ubuntu:bionic

MAINTAINER vitams

ENV TERM=linux

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends gnupg \
    && echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu bionic main" > /etc/apt/sources.list.d/ondrej-php.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C \
    && apt-get update \
    && apt-get -y --no-install-recommends install \
        ca-certificates \
        curl \
        unzip \
        php-apcu \
        php-apcu-bc \
        php7.3-cli \
        php7.3-curl \
        php7.3-json \
        php7.3-mbstring \
        php7.3-opcache \
        php7.3-readline \
        php7.3-xml \
        php7.3-zip \
        php7.3-memcached \
        php7.3-memcache \
        php7.3-mysql \
        php7.3-intl \
        php7.3-interbase \
        php7.3-soap \
        php7.3-gd \
        php7.3-imagick \
        msmtp \
        cron \
        rsyslog \
        mysql-client \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo \
    && composer clear-cache \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* ~/.composer

ADD local /etc/apt/apt.conf.d/local


CMD ["php", "-a"]