#!/bin/bash
set -eux

sshpass -p ${TARGET_PASSWORD} ssh -N -v -o StrictHostKeyChecking=no -R ${TARGET_PORT}:${SOURCE_HOST}:${SOURCE_PORT} ${TARGET_USER}@${TARGET_HOST} 

while true; do sleep 1; done 
