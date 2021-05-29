#!/usr/bin/env bash
{ set +x; } 2>/dev/null

{ set -x; cd "${BASH_SOURCE[0]%/*/*}" || exit; { set +x; } 2>/dev/null; } 2>&1

# _ underscore not allowed (ru-ru - invalid, ru_RU - valid)
( set -x; python manage.py makemessages -l ru_RU )
( set -x; python manage.py compilemessages )
