FROM centos:latest

WORKDIR /tmp
COPY . .
COPY docker-entrypoint.sh /usr/bin
COPY start-uchiwa.sh /usr/bin

ENV SENSUENV_NAME Sensu
ENV SENSUENV_HOST 127.0.0.1
ENV SENSUENV_PORT 4567

RUN chmod +x install.sh
RUN chmod +x /usr/bin/docker-entrypoint.sh
RUN chmod +x /usr/bin/start-uchiwa.sh
RUN ./install.sh

EXPOSE 3000
HEALTHCHECK --interval=10s CMD wget -qO- localhost:3000/health
ENTRYPOINT ["docker-entrypoint.sh"]