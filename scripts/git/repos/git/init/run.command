#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:git:init
( set -x; finder-exec "$@" )
