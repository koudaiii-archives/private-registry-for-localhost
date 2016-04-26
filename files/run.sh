#!/bin/bash

host=${PRIVATE_REGISTRY_HOST}
ip=${ALLOW_IP}
subnet=${ALLOW_SUBNET}

sed -i "s/%PRIVATE_REGISTRY_HOST%/$host/g" /etc/nginx/conf.d/nginx-docker.conf
sed -i "s/%ALLOW_IP%/$ip/g" /etc/nginx/conf.d/nginx-docker.conf
sed -i "s/%ALLOW_SUBNET%/$subnet/g" /etc/nginx/conf.d/nginx-docker.conf
nginx -g "daemon off;"
