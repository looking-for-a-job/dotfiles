#!/usr/bin/env bash
{ set +x; } 2>/dev/null

{ set -x; cd "${BASH_SOURCE[0]%/*}" || exit; { set +x; } 2>/dev/null; }

( set -x; rsync --delete -a "$PWD"/ /usr/local/var/www/"${PWD##*/}" )

[[ $OSTYPE == *"darwin"* ]] && ( set -x; cp *.plist ~/Library/LaunchAgents );:
