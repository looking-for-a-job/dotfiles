#!/usr/bin/env bash
{ set +x; } 2>/dev/null

username="$(git config user.name)" || exit
( . ~/git/"$username"/.delete.command ) || exit
