#!/usr/bin/env bash
{ set +x; } 2>/dev/null

#fullname="$(set -x; python3 -m github_repo.fullname)" || exit
#url="https://scrutinizer-ci.com/g/$fullname"
#( set -x; curl -fs -I -o /dev/null --max-time 5 "$url" ) && echo "SKIP: $url" && exit

#( set -x; open "https://scrutinizer-ci.com/g/new?$fullname" )
( set -x; scrutinizer-add )
