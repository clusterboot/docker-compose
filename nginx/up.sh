#! /usr/bin/bash
network_name="lzs_network"

filterName=`docker network ls | grep $network_name | awk '{ print $2 }'`

if [ "$filterName" == "" ]; then
    docker network create $network_name
    echo "Created network $network_name success!!"
fi


docker-compose up --force-recreate -d