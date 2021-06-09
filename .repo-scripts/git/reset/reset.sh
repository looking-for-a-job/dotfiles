#!/usr/bin/env bash
{ set +x; } 2>/dev/null

remote="$(git remote -v | awk '{print $1}' | uniq)"

( set -x; git pull "$remote" master ) || exit
( set -x; git reset --hard "$remote"/master )
