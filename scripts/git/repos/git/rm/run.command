#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:git:rm
( set -x; finder-exec "$@" )
