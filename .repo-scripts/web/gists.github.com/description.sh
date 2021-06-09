#!/usr/bin/env bash
{ set +x; } 2>/dev/null

new="$(echo ${PWD##*/} | sed 's/"/\\"/g')" || exit
[ -s description.txt ] && { new="$(cat description.txt)" || exit; }
old="$(cat .git/description 2> /dev/null)"
[[ "$new" == "$old" ]] && echo "SKIP ($PWD): description uptodate" && continue
( set -x; gist-description "$id" "$new" ) || exit
echo "$new" > .git/description || exit
