#!/usr/bin/env bash
{ set +x; } 2>/dev/null

{ set -x; cd "${BASH_SOURCE[0]%/*}" || exit; { set +x; } 2>/dev/null; }

# collect admin -> static/admin
unset DJANGO_SETTINGS_MODULE
( set -x; python manage.py collectstatic --no-input )

