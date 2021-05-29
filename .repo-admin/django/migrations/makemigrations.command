#!/usr/bin/open -a Terminal
{ set +x; } 2>/dev/null

{ set -x; cd "${0%/*/*/*/*}"; { set +x; } 2>/dev/null; }

{ set -o allexport; . .env || exit; }

# required:
# app/migrations/__init__.py

( set -x; find . \( -name "models.py" -o -name models \) -exec sh -c 'mkdir -p ${0%/*}/migrations; touch ${0%/*}/migrations/__init__.py' {} \; )

( set -x; cd "$PWD"; python3 manage.py makemigrations "$@" ) || exit
