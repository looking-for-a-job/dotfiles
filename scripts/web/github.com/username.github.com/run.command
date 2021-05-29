#!/usr/bin/env bash
{ set +x; } 2>/dev/null

username="$(git config user.name)" || exit
path=~/git/"$username"/"$username".github.com-generator/Makefile.command
( set -x; . "$path" )
