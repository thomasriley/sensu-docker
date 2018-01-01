#!/bin/bash

yum install -y wget

wget -q https://repositories.sensuapp.org/yum/7/x86_64/sensu-1.2.0-1.el7.x86_64.rpm
rpm -i sensu*.rpm

# Generate the Sensu config
cp /tmp/config.json /etc/sensu/config.json
chown sensu: /etc/sensu/config.json
