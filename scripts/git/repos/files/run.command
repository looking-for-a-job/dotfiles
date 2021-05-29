#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:files:run
( set -x; finder-exec "$@" )
