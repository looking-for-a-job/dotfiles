#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:web:github.com:homepage:update
( set -x; finder-exec "$@" )
