#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:files:python:requirements.txt:recreate
( set -x; finder-exec "$@" )
