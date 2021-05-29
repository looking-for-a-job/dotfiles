#!/usr/bin/env bash
{ set +x; } 2>/dev/null

[[ -z "$TASK_ADDRPORT" ]] && TASK_ADDRPORT="127.0.0.1:8927"

{ set -x; cd "${BASH_SOURCE[0]%/*}" || exit; { set +x; } 2>/dev/null; } 2>&1
set -- "$TASK_ADDRPORT" --settings="task_project.settings"
( set -x; python manage.py runserver "$@" --noreload ) 2>&1
