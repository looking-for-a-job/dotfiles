#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; find . -type d -name "migrations" -exec rm -fr {} \; );:
