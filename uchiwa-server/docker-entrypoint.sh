#!/bin/bash
set -e

if [ "$1" = '' ]; then
    sed -i 's@SENSUENVNAME@'"$SENSUENV_NAME"'@g' /etc/sensu/uchiwa.json
    sed -i 's@SENSUENVHOST@'"$SENSUENV_HOST"'@g' /etc/sensu/uchiwa.json
    sed -i 's@SENSUENVPORT@'"$SENSUENV_PORT"'@g' /etc/sensu/uchiwa.json
    echo "Uchiwa Configuration:"
    cat /etc/sensu/uchiwa.json
    exec start-uchiwa.sh
fi

exec "$@"