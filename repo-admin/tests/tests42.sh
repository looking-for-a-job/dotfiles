#!/usr/bin/env bash
{ set +x; } 2>/dev/null

{ set -x; cd "${0%/*/*/*}"; { set +x; } 2>/dev/null; }

( set -x; tests42 tests )
