#!/usr/bin/env bash
{ set +x; } 2>/dev/null

IFS=
repos="$(find ~/git/andrewp-as-is -type d -mindepth 1 -maxdepth 1)" || exit
while IFS= read path; do
    cd "$path" || exit
    [ -e setup.py ] && {
        grep -q version setup.py || { ( set -x; repo:files:bumpversion:force ) }
    }
done <<< "$repos";:

