#!/usr/bin/env bash
{ set +x; } 2>/dev/null

[[ -z "$WORKOUT_ADDRPORT" ]] && WORKOUT_ADDRPORT="127.0.0.1:8928"

{ set -x; cd "${BASH_SOURCE[0]%/*}" || exit; { set +x; } 2>/dev/null; } 2>&1
set -- "$WORKOUT_ADDRPORT" --settings="project.settings"
# ( set -x; make browse & )
( set -x; python manage.py runserver "$@" ) 2>&1
