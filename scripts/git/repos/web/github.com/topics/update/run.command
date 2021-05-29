#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:web:github.com:topics:update
( set -x; finder-exec "$@" )
