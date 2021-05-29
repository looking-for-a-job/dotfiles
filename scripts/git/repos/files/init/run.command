#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:files:init
( set -x; finder-exec "$@" )
