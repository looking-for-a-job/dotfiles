#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

{ set -x; export DJANGO_SETTINGS_MODULE=settings; { set +x; } 2>/dev/null; }
{ set -x; export DJANGO_CONFIGURATION=Prod; { set +x; } 2>/dev/null; }

[ -e .env ] && { set -o allexport; . .env || exit; }

( set -x; cd "$PWD"; python3 manage.py runserver "$@" ) 2>&1
