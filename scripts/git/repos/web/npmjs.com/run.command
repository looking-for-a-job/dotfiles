#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:web:npmjs.com:publish
( set -x; finder-exec "$@" )
