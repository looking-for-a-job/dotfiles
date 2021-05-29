#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:files:travis
( set -x; finder-exec "$@" )
