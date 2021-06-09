#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

[ -e .env ] && { set -o allexport; . .env || exit; }

( set -x; python3 -m django_makesuperuser admin admin )
