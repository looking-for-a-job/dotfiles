#!/usr/bin/env bash
{ set +x; } 2>/dev/null

path="requirements.txt"
! [ -e "$path" ] && echo "SKIP ($PWD): $path NOT EXISTS" && exit

pip="$(which pip)" || exit

set -- "$pip" --isolated install -r "$path"
( set -x; python3 "$@" ) || exit
