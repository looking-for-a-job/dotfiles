#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:git:commit
( set -x; finder-exec "$@" )
