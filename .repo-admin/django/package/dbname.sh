#!/usr/bin/env bash
{ set +x; } 2>/dev/null

DJANGO_SETTINGS_MODULE="django_settings.package"
{ set -x; export DJANGO_SETTINGS_MODULE="$DJANGO_SETTINGS_MODULE"; { set +x; } 2>/dev/null; }

manage.py shell <<EOF
from django.conf import settings
print(settings.DATABASES["default"]["NAME"])
EOF
