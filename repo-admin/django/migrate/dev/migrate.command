#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

{ set -o allexport; . .env || exit; }

( set -x; cd "$PWD"; python3 manage.py migrate "$@" ) || exit
