#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:files:cache:create
( set -x; finder-exec "$@" )
