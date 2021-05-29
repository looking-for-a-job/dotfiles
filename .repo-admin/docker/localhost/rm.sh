#!/usr/bin/env bash
{ set +x; } 2>/dev/null

CONTAINER_NAME="${PWD##*/}"

( set -x; docker image rm -f "$CONTAINER_NAME" );:
( set -x; docker system prune -f ) || exit
