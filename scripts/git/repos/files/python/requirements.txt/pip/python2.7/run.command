#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; . "${BASH_SOURCE[0]%/*}"/run.sh )
