#!/usr/bin/env bash
{ set +x; } 2>/dev/null

dst=/Volumes/1TB\ Seagate\ Slim/git/andrewp-as-is
mkdir -p "$dst" 2> /dev/null

IFS=
repos="$(find ~/git/andrewp-as-is -type d -mindepth 1 -maxdepth 1)" || exit
while IFS= read path; do
    cd "$path" || exit
    basename="$(basename "$path")"
    ( set -x; rsync --exclude .git --exclude .admin --exclude .cache --exclude $'Icon\r' -a --delete "$path"/ "$dst"/"$basename" )
done <<< "$repos";:

