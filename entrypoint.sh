#!/bin/bash
set -eux

sshpass -p ${TARGET_PASSWORD} ssh -N -v -R ${TARGET_PORT}:${SOURCE_HOST}:${SOURCE_PORT} ${TARGET_USER}@${TARGET_HOST}

exec "$@"
