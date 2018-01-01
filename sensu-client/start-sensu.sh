#!/bin/bash
set -e
/opt/sensu/bin/sensu-client -c /etc/sensu/config.json -d /etc/sensu/conf.d -e /etc/sensu/extensions