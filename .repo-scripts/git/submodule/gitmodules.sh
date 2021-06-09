#!/usr/bin/env bash
{ set +x; } 2>/dev/null

! [ -e .gitmodules ] && echo "SKIP: .gitmodules NOT EXISTS" && exit
git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |  while read path_key path; do
    url_key=$(echo $path_key | sed 's/\.path/.url/')
    url=$(git config -f .gitmodules --get "$url_key")
    ( set -x; git submodule add $url "$path" ) || exit
done
( set -x; touch . )
