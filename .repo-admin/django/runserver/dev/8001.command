#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

{ set -o allexport; . .env || exit; }

{ set -x; export DJANGO_SITE_ID=1; }
# ( set -x; cd "$PWD"; python3 manage.py runserver --noreload 127.0.0.1:8000 ) 2>&1
( set -x; cd "$PWD"; python3 manage.py runserver 127.0.0.1:8001 ) 2>&1
