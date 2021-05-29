#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os

SECRET_KEY = "I_LOVE_CATS"
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'workout',
        'USER': os.environ["USER"],
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}

TIME_ZONE = 'Europe/Moscow'
USE_TZ = True
