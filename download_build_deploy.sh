#!/usr/bin/env bash

rm -rf db

if [ "$1" == "" ]
    then
    echo "Usage: ./download_build_deploy.sh <MY_SQL_INITIAL_PASSWORD>"
    exit
fi

mkdir db

pushd db
    echo -e $1 >> password.txt
popd

docker compose up -d
