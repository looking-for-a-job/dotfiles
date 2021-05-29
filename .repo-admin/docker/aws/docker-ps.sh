#!/usr/bin/env bash

SSH_HOSTNAME="aws"
DIRNAME="${PWD%/*/*/*}"
CONTAINER_NAME="${DIRNAME##*/}"

( set -x; ssh "$SSH_HOSTNAME" sudo docker ps | grep "$CONTAINER_NAME" );:
