#!/usr/bin/env python
import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

STATIC_ROOT = os.path.join(BASE_DIR, "staticfiles")  # required by collectstatic
STATIC_URL = '/static/'
STATICFILES_DIRS = []
