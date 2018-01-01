FROM centos:latest

WORKDIR /tmp
COPY . .
COPY docker-entrypoint.sh /usr/bin
COPY start-sensu.sh /usr/bin

ENV RABBITMQ_HOSTNAME 127.0.0.1
ENV RABBITMQ_VHOST /sensu
ENV RABBITMQ_USERNAME sensu
ENV RABBITMQ_PASSWORD sensu
ENV REDIS_HOSTNAME 127.0.0.1

RUN chmod +x install.sh
RUN chmod +x /usr/bin/docker-entrypoint.sh
RUN chmod +x /usr/bin/start-sensu.sh
RUN ./install.sh

EXPOSE 4567
HEALTHCHECK --interval=10s CMD wget -qO- localhost:4567/health
ENTRYPOINT ["docker-entrypoint.sh"]
