#!/bin/bash
set -eux

while true
do
  sshpass -p ${TARGET_PASSWORD} ssh -N -v -o StrictHostKeyChecking=no -R ${TARGET_PORT}:${SOURCE_HOST}:${SOURCE_PORT} ${TARGET_USER}@${TARGET_HOST} 
  sleep ${KEEP_ALIVE_TIME}
done
