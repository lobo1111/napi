#!/bin/bash

if [ $SMB_ENABLE == "true" ]; then
    mount -t cifs -o username=$SMB_USER,password=$SMB_PWD $SMB_PATH /mnt/storage
fi

while :
do
    for FILE in `/mnt/storage`; do
        napi.sh $FILE
    done
    sleep $SLEEP
done

