#!/usr/bin/env bash
{ set +x; } 2>/dev/null

IFS=
f="${BASH_SOURCE[0]%/*}"/issues.sql
urls="$( set -x; psql -f "$f" )" || exit
[[ -z "$urls" ]] && echo "SKIP: uptodate" && exit

IFS=$'\n';set $urls
( set -x; open "${@:1:10}" )
