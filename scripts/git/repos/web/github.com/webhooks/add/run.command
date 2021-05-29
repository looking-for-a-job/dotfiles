#!/usr/bin/env bash
{ set +x; } 2>/dev/null

set -- repo:web:github.com:webhooks:add
( set -x; finder-exec "$@" )
