#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; repos-backend "${BASH_SOURCE[0]%/*}" )
