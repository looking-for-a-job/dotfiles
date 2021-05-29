#!/usr/bin/env bash
{ set +x; } 2>/dev/null

{ set -x; cd "${BASH_SOURCE[0]%/*}" || exit; { set +x; } 2>/dev/null; }

# SELECT * FROM django_migrations;
# DELETE FROM django_migrations WHERE app = 'exercise';
# ( set -x; find . -path "*/migrations/*.py" -not -name "__init__.py" -delete )
set -- --settings="task_project.settings"
set -- "$@" task
( set -x; python manage.py makemigrations "$@" ) || exit
( set -x; python manage.py migrate ) || exit
