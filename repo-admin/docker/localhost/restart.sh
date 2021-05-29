#!/usr/bin/env bash

CONTAINER_NAME="${PWD##*/}"
FILENAME="$(find "$PWD" -type f -name "docker-compose.*.yml")" || exit

( set -x; docker-compose -f "$FILENAME" down ) || exit
( set -x; docker-compose -f "$FILENAME" up -d --force-recreate )
