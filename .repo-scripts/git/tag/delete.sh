#!/usr/bin/env bash
{ set +x; } 2>/dev/null

{ set -x; cd "${0%/*/*/*/*}"; { set +x; } 2>/dev/null; }

( set -x; git tag | xargs git tag -d )
