#!/usr/bin/env python
from . models import Category, News
from django.contrib import admin

admin.site.register(Category)
admin.site.register(News)
