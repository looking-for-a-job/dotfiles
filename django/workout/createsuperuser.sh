#!/usr/bin/env bash
{ set +x; } 2>/dev/null

unset DJANGO_SETTINGS_MODULE
python manage.py createsuperuser

