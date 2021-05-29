#!/usr/bin/env bash
{ set +x; } 2>/dev/null

find="$(find -H ~/git -type d -mindepth 1 -maxdepth 1)" || exit

while IFS= read path; do
    cd "$path" || exit
    [ -e "$path"/description.txt ] && ( set -x; cat "$path"/description.txt )
    #[ -e "$path"/.config/github.com/topics.txt ] && {
    #   ( set -x; mv "$path"/.config/github.com/topics.txt "$path"/.github/topics.txt )
    #}
done <<< "$find";:
