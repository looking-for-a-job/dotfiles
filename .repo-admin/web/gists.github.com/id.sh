#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; gist-id "$PWD" )
