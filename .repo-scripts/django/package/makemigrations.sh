#!/usr/bin/env bash
{ set +x; } 2>/dev/null

DJANGO_SETTINGS_MODULE="django_migrations_settings"
{ set -x; export DJANGO_SETTINGS_MODULE="$DJANGO_SETTINGS_MODULE"; { set +x; } 2>/dev/null; }

( set -x; find . \( -name "models.py" -o -name models \) -exec sh -c 'mkdir -p ${0%/*}/migrations; touch ${0%/*}/migrations/__init__.py' {} \; )

# app="$(echo "${PWD##*/}" | awk -F"." '{print $1}' | sed 's/-/_/g')"
app="$(find "$PWD" -name "__init__.py" -maxdepth 2 | sed 's#/[^/]*$##' | awk -F"/" '{print $NF}')"
set -- "$app"

# ( set -x; bash -l ~/.repo-scripts/files/python/pip/uninstall.sh ) || exit
( set -x; repo-python-setup-init ) || exit
( set -x; find . -type d -name "*.egg-info" -exec rm -fr {} \; )
# ( set -x; pip3 install --isolated -e . ) || exit

( set -x; django-admin.py makemigrations ) || exit
( set -x; repo-python-setup-init ) || exit
