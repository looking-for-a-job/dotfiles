#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:files:cache:rm
( set -x; finder-exec "$@" )
