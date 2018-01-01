#!/bin/bash
set -e

if [ "$1" = '' ]; then
    sed -i 's@RABBITMQHOSTNAME@'"$RABBITMQ_HOSTNAME"'@g' /etc/sensu/config.json
    sed -i 's@RABBITMQVHOST@'"$RABBITMQ_VHOST"'@g' /etc/sensu/config.json
    sed -i 's@RABBITMQUSERNAME@'"$RABBITMQ_USERNAME"'@g' /etc/sensu/config.json
    sed -i 's@RABBITMQPASSWORD@'"$RABBITMQ_PASSWORD"'@g' /etc/sensu/config.json
    sed -i 's@REDISHOSTNAME@'"$REDIS_HOSTNAME"'@g' /etc/sensu/config.json
    echo "Sensu Configuration:"
    cat /etc/sensu/config.json
    exec start-sensu.sh
fi

exec "$@"