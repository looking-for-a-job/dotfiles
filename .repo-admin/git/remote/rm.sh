#!/usr/bin/env bash
{ set +x; } 2>/dev/null

names="$(git remote -v | grep github.com | awk '{print $1;}' | uniq)"

[[ -n "$names" ]] && while IFS= read name; do
    ( set -x; git remote rm "$name" ) || exit
done <<< "$names";:
