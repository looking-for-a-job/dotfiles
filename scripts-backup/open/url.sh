#!/usr/bin/env bash
{ set +x; } 2>/dev/null

usage="usage: ${BASH_SOURCE[0]} url"
[[ $# != 1 ]] && echo "$usage" && exit 1

windows="$(osascript -e 'tell application "Google Chrome" to count windows')" || exit
[[ $windows -gt 0 ]] && {
    applescript='tell application "Google Chrome" to count of tabs of front window'
    max=20
    count="$(osascript -e "$applescript")" || exit
    [[ $count -gt $max ]] && echo "SKIP: $count Google Chrome tabs" && exit
}
# refresh page first
# known-issue: 405 Method Not Allowed
# fix: ignore error
[[ "$url" == *"?"* ]] && { ( set -x; curl -fsS -X PURGE --max-time 2 "$1" ) }
urls="$(chrome urls)" || exit
echo "$urls" | grep -q "$1" && { ( set -x; chrome refresh "$1" ); exit; }
( set -x; chrome open "$1" )
