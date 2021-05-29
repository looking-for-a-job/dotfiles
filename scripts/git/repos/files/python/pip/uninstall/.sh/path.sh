#!/usr/bin/env bash
{ set +x; } 2>/dev/null

usage="usage: ${BASH_SOURCE[0]} path"

[[ $# != 1 ]] && echo "$usage" && exit 1

[ -e "$1"/setup.py ] && echo "$1";:
