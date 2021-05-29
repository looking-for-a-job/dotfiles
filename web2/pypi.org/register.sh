#!/usr/bin/env bash
{ set +x; } 2>/dev/null

IFS=
path="${BASH_SOURCE[0]%/*}"/packages.txt
packages="$(cat "$path")" || exit

[[ -n "$packages" ]] && while IFS= read name; do
    [[ -z "$name" ]] && continue
    [[ "$name" == "#"* ]] && continue
    ( set -x; pypi-register "$name" ) || exit
done <<< "$packages";:
