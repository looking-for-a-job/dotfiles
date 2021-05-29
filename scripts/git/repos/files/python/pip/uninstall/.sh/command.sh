#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; . ~/.sh/repo/files/python/pip/uninstall.sh ) || exit
