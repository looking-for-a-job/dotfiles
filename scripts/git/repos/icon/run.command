#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:icon
( set -x; finder-exec "$@" )
