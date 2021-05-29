#!/usr/bin/env bash
{ set +x; } 2>/dev/null

remote="$(git remote -v | awk '{print $1}' | uniq)"

( set -x; git ls-remote --tags "$remote" )
