#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:web:github.com:description:update
( set -x; finder-exec "$@" )
