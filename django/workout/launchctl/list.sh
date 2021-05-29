#!/usr/bin/env bash
{ set +x; } 2>/dev/null

which -s launchctl || exit 0
set -- www.workout

( set -x; launchctl list | grep "$1" );:
