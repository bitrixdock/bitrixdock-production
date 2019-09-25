FROM registry.gitlab.com/vitams/docker.my-site.ru/php7-base:latest

MAINTAINER vitams

ADD php.ini /etc/php/7.3/cli/conf.d/90-php.ini

# MSMTP
ADD msmtprc /etc/msmtprc
RUN chmod 0600 /etc/msmtprc && \
    chown www-data:www-data /etc/msmtprc && \
    touch /var/log/msmtp.log && \
    chmod 0600 /var/log/msmtp.log && \
    chown www-data:www-data /var/log/msmtp.log

# CRON
RUN set -ex \
    && mkfifo --mode 0666 /var/log/cron.log \
    && sed --regexp-extended --in-place \
    's/^session\s+required\s+pam_loginuid.so$/session optional pam_loginuid.so/' \
    /etc/pam.d/cron
ADD task.cron /etc/cron.d/task
RUN chmod 0644 /etc/cron.d/task
RUN touch /var/log/cron.log

RUN usermod -u 1000 www-data

WORKDIR /var/www/my-site.ru

CMD cron && tail -f /var/log/cron.log
