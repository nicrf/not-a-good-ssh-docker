#!/bin/bash
set -eux

while true
do
  sshpass -p ${TARGET_PASSWORD} ssh -N -v -o StrictHostKeyChecking=no -o ServerAliveInterval=30 -o ServerAliveCountMax=3 -R ${TARGET_PORT}:${SOURCE_HOST}:${SOURCE_PORT} ${TARGET_USER}@${TARGET_HOST} 
  sleep ${KEEP_ALIVE_TIME}
done
