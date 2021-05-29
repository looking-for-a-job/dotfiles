#!/usr/bin/env bash
{ set +x; } 2>/dev/null

max=10
windows="$(osascript -e 'tell application "Terminal" to get count of windows')" || exit
[[ $windows -gt $max ]] && echo "SKIP: $windows Terminal windows" && exit

! [ -x "$1" ] && { ( set -x; chmod +x "$1") || exit; }
( set -x; open -a Terminal "$1" )
