#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo-config save
( set -x; finder-exec "$@" )
