#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:files:rm
( set -x; finder-exec "$@" )
