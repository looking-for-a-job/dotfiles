#!/usr/bin/env bash
{ set +x; } 2>/dev/null

which -s launchctl || exit 0
set -- ~/Library/LaunchAgents/www.task.plist

( set -x; launchctl unload "$@" );:
