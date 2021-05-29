#!/usr/bin/env bash
{ set +x; } 2>/dev/null

# todo: path ...

selection="$(finder-selection)" || exit
[[ "$1" == "$selection" ]] && exit

frontmost="$(app-frontmost --name)"

[[ $frontmost == "VLC" ]] && { vlc fullscreen-detect | grep -q true && exit; }

finder-reveal "$1" || exit
open -a Finder
