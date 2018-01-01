#!/bin/bash
set -e
/opt/sensu/bin/sensu-server -c /etc/sensu/config.json -d /etc/sensu/conf.d -e /etc/sensu/extensions & /opt/sensu/bin/sensu-api -c /etc/sensu/config.json -d /etc/sensu/conf.d -e /etc/sensu/extensions