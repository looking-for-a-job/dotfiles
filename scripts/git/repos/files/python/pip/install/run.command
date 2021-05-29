#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:files:node:package.json:recreate
( set -x; finder-exec "$@" )
