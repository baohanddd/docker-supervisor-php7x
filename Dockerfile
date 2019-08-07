FROM daocloud.io/baohanddd/docker-php7x:latest

RUN apt-get install python-minimal -y
RUN apt-get install supervisor -y

ADD supervisord.conf /etc/supervisor/
ENTRYPOINT [ "/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf" ]