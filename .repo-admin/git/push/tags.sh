#!/usr/bin/env bash
{ set +x; } 2>/dev/null

remote="$(git remote -v | grep "github.com" | awk '{print $1}' | uniq)"

( set -x; git push --tags "$remote" )
