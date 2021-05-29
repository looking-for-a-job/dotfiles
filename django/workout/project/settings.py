#!/usr/bin/env python
print("settings 1")
import django_settings_files
print("settings 2")
import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.0/howto/deployment/checklist/



# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True


ROOT_URLCONF = 'project.urls'
WSGI_APPLICATION = 'project.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.0/ref/settings/#databases
# workout.settings.DATABASES


# Internationalization
# https://docs.djangoproject.com/en/2.0/topics/i18n/

USE_I18N = True  # {% load i18n %}, {% trans "..." %}
USE_L10N = True  # {% load l10n %}, locale date format
USE_TZ = False
USE_THOUSAND_SEPARATOR = True

ALLOWED_HOSTS = ['*']
SITE_ID = 1


TIME_ZONE = 'Europe/Moscow'
USE_TZ = False
