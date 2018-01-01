#!/bin/bash

yum install -y wget

wget -q http://dl.bintray.com/palourde/uchiwa/uchiwa-1.0.0-1.x86_64.rpm
rpm -i uchiwa*.rpm

# Generate the Sensu config
cp /tmp/config.json /etc/sensu/uchiwa.json 
chown uchiwa: /etc/sensu/uchiwa.json 
