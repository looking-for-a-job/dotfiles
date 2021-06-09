#!/usr/bin/env bash

SSH_HOSTNAME="aws"
DIRNAME="${BASH_SOURCE%/*/*/*}"
FILENAME="/usr/share/docker-compose/${DIRNAME##*/}.yml"

( set -x; ssh "$SSH_HOSTNAME" sudo docker-compose -f "$FILENAME" down )
