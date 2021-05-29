#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; chmod 0600 "$PGPASSFILE")
( set -x; chmod 0750 "$PGDATA" )
