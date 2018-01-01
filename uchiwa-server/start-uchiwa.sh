#!/bin/bash
set -e
/opt/uchiwa/bin/uchiwa -c /etc/sensu/uchiwa.json -d /etc/sensu/dashboard.d -p /opt/uchiwa/src/public
