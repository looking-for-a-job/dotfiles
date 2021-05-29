#!/usr/bin/env python

INSTALLED_APPS = [
    'django.contrib.sites',
    'registration',  # should be immediately above 'django.contrib.admin'
    'django.contrib.admin',  # collectstatic required
    'tinymce',               # collectstatic required

    'crispy_forms',
    'django_libraries',
    # 'apps.category',
    # 'apps.exercise',
    # 'apps.set',
    'apps.articles',
    # 'apps.blogs',
    'apps.frontpage',
    'apps.news',
    'apps.profile',


    # 'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]
